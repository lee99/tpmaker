<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_viewmodelAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_viewfieldsAction extends AdminAction{

	public function index(){

		$wherevalue='vid='.$_GET['vid'];//过滤条件
		$list=D('Sys_viewfields');
		$count= $list->count($wherevalue);

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,30,'page');

		//$list=$list->field('*')->where($wherevalue)->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])-
		$list=$list->field('*')->where($wherevalue)->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();

		//dump($list);
		$this->assign('list',$list);
		$this->assign('list_search',$list);
		$this->display();

	}





	public function delete(){
		$list=D('Sys_viewfields');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$list->delete($_REQUEST[id]);
		$this->success('操作成功！');

//

	}




	public function updateform(){
		$list=D('Sys_viewfields');
		$allcout=count($_REQUEST['id']);
		for ($i = 0; $i <$allcout; $i++) {
			$data['id'] =$_REQUEST['id'][$i];
			$data['caption'] =$_REQUEST['caption'][$i];
			$data['newtitle'] =$_REQUEST['newtitle'][$i];
			$data['searchtype'] =$_REQUEST['searchtype'][$i];
			$data['islist'] =$_REQUEST['islist'][$i];
			$data['iswrap'] =$_REQUEST['iswrap'][$i];
			$data['issearch'] =$_REQUEST['issearch'][$i];
			$data['searchtype'] =$_REQUEST['searchtype'][$i];
			$data['advsearchtype'] =$_REQUEST['advsearchtype'][$i];
			$list->save($data);
		}
		//如果不为空白的就加上

		$this->ajaxReturn('','操作成功！',1);

	}




}


?>