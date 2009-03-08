<?php
/////////////////////////////////////////////////////////////////////////////
// @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//说明
//+----------------------------------------------------------
/////////////////////////////////////////////////////////////////////////////


class {name}Action extends PublicAction{

	
	public function index(){
		$this->display();
	}	
	
{index_act}
	public function ajaxlist(){

		$list=D("{modelname}");

		$order=!empty($_REQUEST["order"])?$_REQUEST["order"]:$list->getPk(); //排序字段,默认为"Pk"
		$sortd=!empty($_REQUEST["sort"])?$_REQUEST["sort"]:"asc"; //排序顺序,默认为"asc"
		$orderBy=$order." ".$sortd;//组合排序条件

		$feilds='{list_fields}';

        $condition=Array();//搜索的条件
        //$condition['title']=array('like',"a%");//高级搜索过滤

    if(!empty($_REQUEST['searchkey'])){
		//搜索相关
		$searchkey=$_REQUEST["searchkey"];
		$searchtype=!empty($_REQUEST['searchtype'])?$_REQUEST['searchtype']:'OR';//默认的公共搜索条件为OR

		$this->assign("searchkey",$_REQUEST["searchkey"]);//显示关键字
		$this->assign("searchurl",$_SERVER["REQUEST_URI"]);//当前的URL
		$this->assign("searchtype",$_REQUEST["searchtype"]);//当前的搜索类型

        $ser_c=array('like',"%$searchkey%");//公共的过滤条件
        $condition['{search_fields}']=array({search_ser_c},$searchtype);//模糊搜索关键字全局过滤
    }

		
		$count= $list->count($condition);//获取分页总数量
		$p= new ajaxpage($count);
		$page=$p->ajaxshow();//显示分页
		$this->assign("page",$page);//显示分页
		$limit=$p->firstRow.",".$p->listRows;//设定分面的大小

		$limit=($limit==",")?'':$limit;//分页的大小

		$list=$list
			->where($condition)
			->field($feilds)
			->order($orderBy)
			->limit($limit)
			->findAll();

		$this->assign("list",$list);

		$this->display();

	}
{/index_act}




{insert_act}
	public function insert(){
		$list=D("{modelname}");
		$data=$_REQUEST;

        /*
		if(!empty($_FILES)) {
          $file= $this->_upload();//如果有文件上传 上传附件
			foreach ($file as $key=>$value){
				$data[$key]=$value['savename'];
			}
        }
        */

        if($list->create($data)) {
            if($list->add($data)){
                $this->success('数据增加成功！');
            }else{
                $this->error('数据增加错误！');
            }
        }else{
             $this->error($list->getError());
        }

	}
{/insert_act}



{del_act}
	public function delete(){//删除的操作
		$list=D("{modelname}");
		$list->delete($_REQUEST["id"]);
		redirect(__URL__."/index");
	}
{/del_act}


{update_act}
	public function update(){
		$list=D("{modelname}");
		$data=$_REQUEST;

		/*
        if(!empty($_FILES)) {
          $file= $this->_upload();//如果有文件上传 上传附件
			foreach ($file as $key=>$value){
				$data[$key]=$value['savename'];
			}
        }
        */
		
        if($vo = $list->create($data)) {
            if($list->save($data)){
                $this->success('数据更新成功！');
            }else{
                $this->error('数据更新错误！');
            }
        }else{
             $this->error($list->getError());
        }
	}
{/update_act}



{edit_act}
	public function edit(){
		$result=D("{modelname}");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		{assignlist}
		$this->display();
	}
{/edit_act}


{view_act}
	public function view(){
		$result=D("{modelname}");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		{assignlist}
		$this->display();
	}
{/view_act}


{add_act}
	public function add(){
		$this->display();
	}
{/add_act}


}
?>