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

		$apptree=D('apptree');
		$list=$apptree->findAll('projectid='.$_SESSION[workingprojectid],'*');
		$listtop=$apptree->find('id='.$_GET[id],'*');
		$this->assign('list',$list);
		$this->assign('listtop',$listtop);
		//dump($listtop);
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
		$var=	$_REQUEST;//数组转换
		$dataall=$list->create($var);
		$list->save($dataall);
		//dump($var);
		$this->ajaxReturn('','操作成功！',1);
	}

	public function addform(){
		$list=D('apptree');
		$add_date=$_REQUEST;
		$add_date[id]='';
		if($_REQUEST[type]==0){
			$add_date[tid]=0;
		}
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);

	}

}



?>