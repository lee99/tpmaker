<?php
class InfosAction extends PublicAction {



	public function Index(){

		$list=D("Infos");
		
		$order=!empty($_REQUEST["order"])?$_REQUEST["order"]:'id'; //排序字段,默认为"id"
		$sortd=!empty($_REQUEST["sort"])?$_REQUEST["sort"]:"asc"; //排序顺序,默认为"asc"
		$orderBy=$order." ".$sortd;//组合排序条件
		
		$feilds='id,intNumber,strType_f,strType_s,strQuestion,strA,strB,strC,strD,strType_x,pic,strRight_answer,strYour_answer,Hint,chengji,seq_no,id';
		
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
        $condition['id,intNumber,strType_f,strType_s,strQuestion,strA,strB,strC,strD,strType_x,pic,strRight_answer,strYour_answer,Hint,chengji,seq_no,id']=array($ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,$ser_c,id,$searchtype);//模糊搜索关键字全局过滤   	
    }

		import("ORG.Util.Page");//引用分页类
		$count= $list->count($condition);//获取分页总数量
		$p= new Page($count);
		$page=$p->show();//显示分页
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
	
	
	
	public function Delete(){//删除的操作
		$list=D("Infos");
		$list->delete($_REQUEST["id"]);
		redirect(__URL__."/index");
	}
	
	
	
	public function Insert(){
		$list=D("Infos");
		$data=$_REQUEST;
		
        if(!empty($_FILES)) {
          $file= $this->_upload();//如果有文件上传 上传附件
			foreach ($file as $key=>$value){
				$data[$key]=$value['savename'];
			}
        }		
        
        if($vo = $list->create($data)) {
            if($list->add($data)){
                $this->success('数据增加成功！');
            }else{
                $this->error('数据增加错误！');
            }
        }else{
             $this->error($list->getError());
        } 
        
	}
	

	
	public function Update(){
		$list=D("Infos");
		$data=$_REQUEST;
		
        if(!empty($_FILES)) {
          $file= $this->_upload();//如果有文件上传 上传附件
			foreach ($file as $key=>$value){
				$data[$key]=$value['savename'];
			}
        }	
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
	
	
	
	public function Edit(){
		$result=D("Infos");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		/*
		$this->assign("id",$list["id"]);
		$this->assign("intNumber",$list["intNumber"]);
		$this->assign("strType_f",$list["strType_f"]);
		$this->assign("strType_s",$list["strType_s"]);
		$this->assign("strQuestion",$list["strQuestion"]);
		$this->assign("strA",$list["strA"]);
		$this->assign("strB",$list["strB"]);
		$this->assign("strC",$list["strC"]);
		$this->assign("strD",$list["strD"]);
		$this->assign("strType_x",$list["strType_x"]);
		$this->assign("pic",$list["pic"]);
		$this->assign("strRight_answer",$list["strRight_answer"]);
		$this->assign("strYour_answer",$list["strYour_answer"]);
		$this->assign("Hint",$list["Hint"]);
		$this->assign("chengji",$list["chengji"]);
		$this->assign("seq_no",$list["seq_no"]);

		*/
		$this->display(); 
	}
	
	
	
	public function View(){
		$result=D("Infos");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		/*
		$this->assign("id",$list["id"]);
		$this->assign("intNumber",$list["intNumber"]);
		$this->assign("strType_f",$list["strType_f"]);
		$this->assign("strType_s",$list["strType_s"]);
		$this->assign("strQuestion",$list["strQuestion"]);
		$this->assign("strA",$list["strA"]);
		$this->assign("strB",$list["strB"]);
		$this->assign("strC",$list["strC"]);
		$this->assign("strD",$list["strD"]);
		$this->assign("strType_x",$list["strType_x"]);
		$this->assign("pic",$list["pic"]);
		$this->assign("strRight_answer",$list["strRight_answer"]);
		$this->assign("strYour_answer",$list["strYour_answer"]);
		$this->assign("Hint",$list["Hint"]);
		$this->assign("chengji",$list["chengji"]);
		$this->assign("seq_no",$list["seq_no"]);

		*/
		$this->display(); 
	}
	
	
	
	public function Add(){
		$this->display(); 
	}
	
	

}
?>