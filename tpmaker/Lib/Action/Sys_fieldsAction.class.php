<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sys_fieldsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sys_fieldsAction extends AdminAction{

	public function Index(){

		$list=D('sys_fields');
		$count= $list->count('pid='.$_REQUEST[pid]);
		import("ORG.Util.Page");
		$listRows=10;
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序
		//$this->assign('url',$url);
		$searchkey=$_REQUEST['searchkey'];
		$searchurl=$_SERVER['REQUEST_URI'];
		$this->assign('searchkey',$searchkey);
		$this->assign('searchurl',$searchurl);
		$p= new Page($count,$listRows);
		//$list->Cache(true);
		$list=$list->findAll('pid='.$_REQUEST[pid],'*',$orderBy,$p->firstRow.','.$p->listRows);
		$list_val=$list;//验证的设定
		$list_genneral=$list;//一般属性设定
		$list_search=$list;//搜索形式设定
		$list_outkey=$list;//外键设定

		//dump($list);
		$page=$p->show();
		$this->assign('list',$list);
		$this->assign('list_val',$list_val);//验证的设定
		$this->assign('list_genneral',$list_genneral);//一般属性设定
		$this->assign('list_search',$list_search);//搜索形式设定
		$this->assign('list_outkey',$list_outkey);//外键设定
		$this->assign('page',$page);
		$this->display();

	}



	public function delete(){
		$list=D('sys_fields');
		//$sys_fields->find($_REQUEST['id']);
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];

		$listdel=D('sys_fields');
		$listdel->delete($_REQUEST[id]);
	  //$this->ajaxReturn('','操作成功！',1);
	  redirect(__URL__."/index/pid/".$pid);



	}


	public function updateform(){
		$list=D('sys_fields');

		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$var['pid']=$_REQUEST['pid'];
		$dataall=$list->create($var);
		$list->save();
		}

		//dump($_REQUEST);

		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$_REQUEST['pid']);


	}

	public function insert(){
		$list=D('sys_fields');
		$list->create();
		$list->add();
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$_REQUEST['pid']);
	}


	public function copyselect(){
    $this->display();
	}

	public function add(){
    $this->display();
	}



	public function copy(){
		$list=D('sys_tables');
		$listdata=$list->getByid($_REQUEST['oldid']);
			$listdata['pid']=$_REQUEST['newpid'];
			$listdata['caption']=$_REQUEST['newtitle'];
			$list->create($listdata);
			$list->add();
		$listnewid=$list->getLastInsID();
		$newfield=D('sys_fields');
		$newfielddate=$newfield->findall('pid='.$_REQUEST['oldid']);
		foreach ($newfielddate as $creatdb){
			$creatdb['pid']=$listnewid;
			$newfield->create($creatdb);
			$newfield->add();
		}
		redirect(__APP__."/sys_projects/index");
	}
}



?>