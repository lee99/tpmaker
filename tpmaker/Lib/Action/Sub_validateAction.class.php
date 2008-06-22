<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_validateAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sub_validateAction extends AdminAction{

	public function Index(){

		$list=D('sub_validate');
		$count= $list->count();
		import("ORG.Util.Page");
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p= new Page($count,$listRows);
		$list=$list->findAll('','*',$orderBy,$p->firstRow.','.$p->listRows);

		//dump($list);
		$page=$p->show();
		$this->assign('list',$list);
		$this->assign('page',$page);
		$this->display();

	}



	public function delete(){
		$list=D('sub_validate');
		//$sub_validate->find($_REQUEST['id']);
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($sub_validate);
	}


	public function updateform(){
		$list=D('sub_validate');
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
		$list=D('sub_validate');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}

}



?>