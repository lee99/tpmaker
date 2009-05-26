<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_tablesAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_tablesAction extends AdminAction{

	public function index(){

		$pro=D('Sys_projects');
		$pro=$pro->getByid($_REQUEST[pid]);
		$projecturl=$pro['proname'];
		$this->assign('projecturl',$projecturl);//当前操作的项目路径
		$this->assign('projectname',$pro['caption']);//当前操作的数据库
		$wherevalue='ismodel=0 and issystem=0 and pid='.$_REQUEST[pid];//过滤条件
		$list=D('Sys_tables');
		$count= $list->count($wherevalue);

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,20,'page');

		$list=$list->findAll($wherevalue,'*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($list);
		$this->assign('list',$list);
		$this->display();

	}


	public function Adv(){

		$pro=D('Sys_projects');
		$pro=$pro->getByid($_REQUEST[pid]);
		$projecturl=$pro['proname'];
		$this->assign('projecturl',$projecturl);//当前操作的项目路径
		$this->assign('projectname',$pro['caption']);//当前操作的数据库
		$wherevalue='issystem=0 and pid='.$_REQUEST[pid];//过滤条件
		$list=D('Sys_tables');
		$count= $list->count($wherevalue);

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,20,'page');

		$list=$list->findAll($wherevalue,'*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($list);
		$this->assign('list',$list);
		$this->display();

	}


	public function System(){

		$pro=D('Sys_projects');
		$pro=$pro->getByid($_REQUEST[pid]);
		$projecturl=$pro['proname'];
		$this->assign('projecturl',$projecturl);//当前操作的项目路径
		$this->assign('projectname',$pro['caption']);//当前操作的数据库
		$wherevalue='issystem=1 and pid='.$_REQUEST[pid];//过滤条件
		$list=D('Sys_tables');
		$count= $list->count($wherevalue);

		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,10,'page');

		$list=$list->findAll($wherevalue,'*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($list);

		$this->assign('list',$list);

		$this->display();

	}



	public function delete(){
		$list=D('Sys_tables');
		//$Sys_tables->find($_REQUEST['id']);
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];


		$listdel=D('Sys_tables');
		$listdel->delete($_REQUEST[id]);

		$delis=explode(',',$_REQUEST['id']);
		//dump($delis);
		foreach ($delis as $delpid){
			delbypid('Sys_fields',$delpid,'pid');
		}


	 redirect(__URL__."/index/pid/".$pid);



//

	}




	public function updateform(){
		$list=D('Sys_tables');
		$allcout=count($_REQUEST['id']);
		for ($i = 0; $i <$allcout; $i++) {

			$data['id'] =$_REQUEST['id'][$i];
			$data['caption'] =$_REQUEST['caption'][$i];
			$data['title'] =$_REQUEST['title'][$i];
			$data['searchtype'] =$_REQUEST['searchtype'][$i];
			$data['edittype'] =$_REQUEST['edittype'][$i];
			$data['ismodel'] =$_REQUEST['ismodel'][$i];
			$data['datemodelid'] =$_REQUEST['datemodelid'][$i];
			$data['add'] =$_REQUEST['add'][$i];
			$data['del'] =$_REQUEST['del'][$i];
			$data['search'] =$_REQUEST['search'][$i];
			$data['edit'] =$_REQUEST['edit'][$i];
			$data['seqNo'] =$_REQUEST['seqNo'][$i];
			$data['isaction'] =$_REQUEST['isaction'][$i];
			$list->save($data);
		}
		//如果不为空白的就加上

		$this->ajaxReturn('','操作成功！',1);

	}


	public function addform(){
		$list=D('Sys_tables');
		$date=$_REQUEST;
		$date['pid']=$_SESSION['workingproject']['id'];
		$list->create();
		$list->add($date);
		$this->ajaxReturn('','操作成功！',1);
	}


}


?>