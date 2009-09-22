<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sub_searchtypeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sub_searchtypeAction extends AdminAction{

	public function index(){

		$list=D('Sub_searchtype');
		$count= $list->count();

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,20,'page');
		$list=$list->field('*')->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();

		//dump($list);

		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$list=D('Sub_searchtype');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($Sub_searchtype);
	}



	public function updateform(){
		$list=D('Sub_searchtype');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
		//dump($_REQUEST);
	}

	public function addform(){
		$list=D('Sub_searchtype');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}

}



?>