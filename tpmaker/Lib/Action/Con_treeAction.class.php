<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Con_treeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Con_treeAction extends AdminAction{

	public function Index(){

		$con_tree=D('Con_tree');
		$count= $con_tree->count();
		import("ORG.Util.Page");
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='id'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序
		//$this->assign('url',$url);
		$searchkey=$_REQUEST['searchkey'];
		$searchurl=$_SERVER['REQUEST_URI'];
		$this->assign('searchkey',$searchkey);
		$this->assign('searchurl',$searchurl);
		$p= new Page($count,$listRows);
		//$con_tree->Cache(true);
		$list=$con_tree->findAll('id <> 0','*',$orderBy,$p->firstRow.','.$p->listRows);

		//dump($list);
		$page=$p->show();
		$this->assign('list',$list);
		$this->assign('page',$page);
		$this->display();

	}



	public function delete(){
		$con_tree=D('Con_tree');
		//$con_tree->find($_REQUEST['id']);
		$con_tree->delete($_REQUEST['id']);
	 $this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	//dump($con_tree);
	}


	public function updateform(){
		$list=D('Con_tree');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
		//dump($_REQUEST);
	}

	public function addform(){
		$list=D('Con_tree');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}

}



?>