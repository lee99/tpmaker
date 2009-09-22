<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Con_treeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Con_treeAction extends AdminAction{

	public function index(){

		$Con_tree=D('Con_tree');
		$count= $Con_tree->count();

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='id'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,20,'page');
		//$Con_tree->Cache(true);
		//$list=$Con_tree->findAll('id <> 0','*',$orderBy,$p['firstRow'].','.$p['listRows']);
		$list=$Con_tree->field('*')->where('id <> 0')->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();

		//dump($list);

		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$Con_tree=D('Con_tree');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$Con_tree->delete($_REQUEST['id']);
	    $this->ajaxReturn('','操作成功！',1);


	}


	public function updateform(){
		$list=D('Con_tree');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);

	}

	public function addform(){
		$list=D('Con_tree');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$tid=$list->add($add_date);
		$d['id']=$tid;
		$d['tid']=$tid;
		$list->create($d);
		$list->save();
		$this->ajaxReturn('','操作成功！',1);


	}

}



?>