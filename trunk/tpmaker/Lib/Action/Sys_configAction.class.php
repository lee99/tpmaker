<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_configAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_configAction extends AdminAction{

	public function Index(){

		$type=D('Sys_configtype');
		$type=$type->findAll();
		$this->assign('type',$type);

		$list=D('Sys_config');
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		if($_REQUEST['pid']!='') { $thiswhere = 'pid='.$_REQUEST['pid']; }else{ $thiswhere = ''; } //排序方向
		$orderBy=$order.' '.$sortd;//排序
		$count= $list->count($thiswhere);
		

		$p=$this->tpPage($count,20,'page');
		//$list->Cache(true);
		$list=$list->findAll($thiswhere,'*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($list);
		
		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$list=D('Sys_config');
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];

		$listdel=D('Sys_config');
		$listdel->delete($_REQUEST[id]);
	  $this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$pid);
	}



	public function updateform(){
		$list=D('Sys_config');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$_REQUEST['ppid']);
		//dump($_REQUEST);
	}

	public function addform(){
		$list=D('Sys_config');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$_REQUEST['ppid']);
	}


}



?>