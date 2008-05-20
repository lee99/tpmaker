<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\DesignerAction.class.php
/////////////////////////////////////////////////////////////////////////////
class DesignerAction extends AdminAction{

	public function Index(){

		require COMMON_PATH."tpmaker.class.php";//引入自定义的类
	   $list=D('sys_tables');
	   $tabledata=$list->findall('ismodel=0 and pid='.$_REQUEST['id']);
	   $this->assign('tables',$tabledata);
		//dump($data);
		$t=new tpmaker();
		$t->projectid=$_REQUEST['id'];
		foreach ($tabledata as $subtables){
			$subtable[$subtables['title']]=$t->getfieldsbytbid($subtables['id']);
		}
		$this->assign('subtables',$subtable);
		$this->display();

	}



	public function delete(){
		$list=D('Designer');
		//$Designer->find($_REQUEST['id']);
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($Designer);
	}


	public function updateform(){
		$list=D('Designer');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
		//dump($_REQUEST);
	}

	public function addform(){
		$list=D('Designer');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}

}



?>