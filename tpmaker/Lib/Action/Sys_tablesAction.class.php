<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sys_tablesAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sys_tablesAction extends AdminAction{

	public function Index(){

		$pro=D('sys_projects');
		$pro=$pro->getByid($_REQUEST[pid]);
		$projecturl=$pro['proname'];
		$this->assign('projecturl',$projecturl);//当前操作的项目路径
		$this->assign('projectname',$pro['caption']);//当前操作的数据库
		$wherevalue='issystem=0 and pid='.$_REQUEST[pid];//过滤条件
		$list=D('sys_tables');
		$count= $list->count($wherevalue);
		import("ORG.Util.Page");
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p= new Page($count,$listRows);

		$list=$list->findAll($wherevalue,'*',$orderBy,$p->firstRow.','.$p->listRows);

		//dump($list);
		$page=$p->show();
		$this->assign('list',$list);
		$this->assign('page',$page);
		$this->display();

	}


	public function Adv(){

	$this->Index();

	}



	public function delete(){
		$list=D('sys_tables');
		//$sys_tables->find($_REQUEST['id']);
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];


		$listdel=D('sys_tables');
		$listdel->delete($_REQUEST[id]);

		$delis=explode(',',$_REQUEST['id']);
		//dump($delis);
		foreach ($delis as $delpid){
			delbypid('sys_fields',$delpid,'pid');
		}


	 redirect(__URL__."/index/pid/".$pid);



//

	}


	public function updateform(){
		$list=D('sys_tables');
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
		if($_REQUEST['title_add']!=''){
			$add_date['pid']=$_REQUEST['pid'];
			$add_date['caption']=$_REQUEST['caption_add'];
			$add_date['title']=$_REQUEST['title_add'];
			$add_date['searchtype']=$_REQUEST['searchtype_add'];
			$add_date['edittype']=$_REQUEST['edittype_add'];
			$add_date['ismodel']=$_REQUEST['ismodel_add'];
			$add_date['datemodelid']=$_REQUEST['datemodelid_add'];
			$add_date['add']=$_REQUEST['add_add'];
			$add_date['del']=$_REQUEST['del_add'];
			$add_date['search']=$_REQUEST['search_add'];
			$add_date['edit']=$_REQUEST['edit_add'];
			$add_date['seqNo']=$_REQUEST['seqNo_add'];
			$add_date['isaction']=$_REQUEST['isaction_add'];
			$list->add($add_date);
		}
		$this->ajaxReturn('','操作成功！',1);

	}
}



?>