<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_htmltagsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sub_htmltagsAction extends AdminAction{

	public function index(){

		$list=D('sub_htmltags');
		$count= $list->count();

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,20,'page');
		$list=$list->findAll('','*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($glist);

		$this->assign('list',$list);

		$this->display();

	}



	public function delete(){
		$glist=D('sub_htmltags');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$glist->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($sub_htmltags);
	}



	public function updateform(){
		$glist=D('sub_htmltags');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$gdataall=$glist->create($var);
		$glist->save();
		}
		$this->ajaxReturn('','操作成功！',1);
	}

	public function addform(){
		$glist=D('sub_htmltags');
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