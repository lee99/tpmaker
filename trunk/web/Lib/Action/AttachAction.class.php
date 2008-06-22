<?php
class AttachAction extends TpmakerAction {



	public function Index(){

		$list=D("Attach");
		
		$order=!empty($_REQUEST["order"])?$_REQUEST["order"]:'id'; //排序字段,默认为"id"
		$sortd=!empty($_REQUEST["sort"])?$_REQUEST["sort"]:"asc"; //排序顺序,默认为"asc"
		$orderBy=$order." ".$sortd;//组合排序条件
		
		$feilds='id,name,remark,downloadTime,module,id';
		
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
        $condition['id,name,remark,id']=array($ser_c,$ser_c,$ser_c,id,$searchtype);//模糊搜索关键字全局过滤   	
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
		$list=D("Attach");
		$list->delete($_REQUEST["id"]);
		redirect(__URL__."/index");
	}
	
	
	
	public function Insert(){
		$list=D("Attach");
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
		$list=D("Attach");
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
		$result=D("Attach");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		/*
		$this->assign("id",$list["id"]);
		$this->assign("name",$list["name"]);
		$this->assign("type",$list["type"]);
		$this->assign("uploadTime",$list["uploadTime"]);
		$this->assign("downCount",$list["downCount"]);
		$this->assign("size",$list["size"]);
		$this->assign("hash",$list["hash"]);
		$this->assign("extension",$list["extension"]);
		$this->assign("verify",$list["verify"]);
		$this->assign("remark",$list["remark"]);
		$this->assign("downloadTime",$list["downloadTime"]);
		$this->assign("updateTime",$list["updateTime"]);
		$this->assign("savepath",$list["savepath"]);
		$this->assign("savename",$list["savename"]);
		$this->assign("module",$list["module"]);
		$this->assign("version",$list["version"]);
		$this->assign("recordId",$list["recordId"]);
		$this->assign("userId",$list["userId"]);
		$this->assign("create_at",$list["create_at"]);
		$this->assign("update_on",$list["update_on"]);
		$this->assign("seqNo",$list["seqNo"]);

		*/
		$this->display(); 
	}
	
	
	
	public function View(){
		$result=D("Attach");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		/*
		$this->assign("id",$list["id"]);
		$this->assign("name",$list["name"]);
		$this->assign("type",$list["type"]);
		$this->assign("uploadTime",$list["uploadTime"]);
		$this->assign("downCount",$list["downCount"]);
		$this->assign("size",$list["size"]);
		$this->assign("hash",$list["hash"]);
		$this->assign("extension",$list["extension"]);
		$this->assign("verify",$list["verify"]);
		$this->assign("remark",$list["remark"]);
		$this->assign("downloadTime",$list["downloadTime"]);
		$this->assign("updateTime",$list["updateTime"]);
		$this->assign("savepath",$list["savepath"]);
		$this->assign("savename",$list["savename"]);
		$this->assign("module",$list["module"]);
		$this->assign("version",$list["version"]);
		$this->assign("recordId",$list["recordId"]);
		$this->assign("userId",$list["userId"]);
		$this->assign("create_at",$list["create_at"]);
		$this->assign("update_on",$list["update_on"]);
		$this->assign("seqNo",$list["seqNo"]);

		*/
		$this->display(); 
	}
	
	
	
	public function Add(){
		$this->display(); 
	}
	
	

}
?>