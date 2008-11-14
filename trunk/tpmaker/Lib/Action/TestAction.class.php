<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_htmltagsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class testAction extends AdminAction{

	public function Index(){

		$glist=D('test');
		$count= $glist->count();
		import("ORG.Util.Page");
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p= new Page($count,$glistRows);
		$glist=$glist->findAll('','*',$orderBy,$p->firstRow.','.$p->listRows);

		//dump($glist);
		$page=$p->show();
		$this->assign('list',$glist);
		$this->assign('page',$page);
		$this->display();

	}



	public function delete(){
		$glist=D('test');
		//$test->find($_REQUEST['id']);
		$glist->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($test);
	}



	public function updateform(){
		$glist=D('test');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$gdataall=$glist->create($var);
		$glist->save();
		}
		$this->ajaxReturn('','操作成功！',1);
	}

	public function addform(){
		$glist=D('test');
		$add_date=$_REQUEST;
		$glist->create($add_date);
		$glist->add($add_date);
		$this->ajaxReturn('','操作成功！',1);
	}

	public function json(){
		$col=array('id','title','othervar','seqNo','usetype','color','color');
		$this->jqjson('id',$col);	
	}

}



?>