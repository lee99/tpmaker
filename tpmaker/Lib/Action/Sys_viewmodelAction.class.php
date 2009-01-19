<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_viewmodelAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_viewmodelAction extends AdminAction{

	public function Index(){

		$wherevalue='projectid='.$_SESSION['workingprojectid'];//过滤条件
		$list=D('Sys_viewmodel');
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




	public function delete(){
		$list=D('Sys_viewmodel');
		//$Sys_viewmodel->find($_REQUEST['id']);
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];


		$listdel=D('Sys_viewmodel');
		$listdel->delete($_REQUEST[id]);

		$delis=explode(',',$_REQUEST['id']);
		//dump($delis);
		foreach ($delis as $delpid){
			//delbypid('sys_fields',$delpid,'pid');
		}

		redirect(__URL__."/index");
	}




	public function updateform(){
		$list=D('Sys_viewmodel');
		$allcout=count($_REQUEST['id']);
		for ($i = 0; $i <$allcout; $i++) {

			$data['id'] =$_REQUEST['id'][$i];
			$data['caption'] =$_REQUEST['caption'][$i];
			$data['title'] =$_REQUEST['title'][$i];
			$data['seqNo'] =$_REQUEST['seqNo'][$i];
			$data['infos'] =$_REQUEST['infos'][$i];
			$list->save($data);
		}
		//如果不为空白的就加上

		$this->ajaxReturn('','操作成功！',1);

	}


	public function addform(){
		$list=D('Sys_viewmodel');
		$date=$_REQUEST;
		$date['projectid']=$_SESSION['workingprojectid'];
		$date['title']=uplower($date['title']);
		$date['title'].="View";
		$list->create();
		$list->add($date);
		$this->ajaxReturn('','操作成功！',1);
	}



	public function add(){
		require_once COMMON_PATH."tpmakerdb.class.php";//引入自定义的类
		$d=new tpmakerdb();
		$ptables=D('Sys_tables');
		$wherevalue='ismodel=0 and pid='.$_SESSION['workingprojectid'];//过滤条件
		$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		
		foreach ($tlist as $key=>$tabid) {
			$tabsid=$tabid[id];
			$tlist[$key]['sub']=$d->getfieldsbytbid($tabsid);
		}
		//dump($tlist);
		$this->assign('table',$tlist);
		$this->assign('table_view',$tlist);
		$this->display();
	}

}


?>