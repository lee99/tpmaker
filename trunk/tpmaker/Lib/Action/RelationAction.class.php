<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\RelationAction.class.php
/////////////////////////////////////////////////////////////////////////////
class RelationAction extends AdminAction{

	public function Index(){

		$list=D('Relation');
		$list=$list->findAll();

		dump($list);
		$this->assign('list',$list);
		//$this->display();

	}



	public function add(){
		$list=D('Relation');
		//$Relation->find($_REQUEST['id']);
		$list->master_db='master_db';
		$list->master_table='master_table';
		$list->master_field='master_field';
		if($list->add()){
			msg('ok');
		}else {
			msg('fuck');
		}
		//redirect(__URL__."/index");
	//dump($list);
	}




	public function delete(){
		$list=D('Relation');
		//$Relation->find($_REQUEST['id']);
		//$list->master_db='master_db';
		//$list->master_table='master_table';
		//$list->master_field='master_field';
		if($list->delete("master_db='master_db' and .........")){
			msg('ok');
		}else {
			msg('out');
		}
		//redirect(__URL__."/index");
	//dump($list);
	}






}



?>