<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\apptreeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class ApptreeAction extends AdminAction{

	public function Index(){

		$list=D('apptree');
		$list=$list->findAll('projectid='.$_SESSION[workingprojectid],'*');
		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$list=D('apptree');
		//$apptree->find($_REQUEST['id']);
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($apptree);
	}



	public function updateform(){
		$list=D('apptree');
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
		$list=D('apptree');
		$add_date=$_REQUEST;
		if($_REQUEST[type]==0){
			$add_date[tid]=0;
		}
		$list->create($add_date);
		$list->add($add_date);
		redirect(__URL__."/index/");

//redirect(__URL__."/index");
	}

}



?>