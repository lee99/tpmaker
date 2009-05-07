<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\apptreeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class ApptreeAction extends AdminAction{

	public function Index(){

		$apptree=D('apptree');
		$list=$apptree->findAll('projectid='.$_SESSION[workingprojectid],'*');
		$listtop=$apptree->find('id='.$_GET[id],'*');
		$this->assign('list',$list);
		$this->assign('listtop',$listtop);
		//dump($listtop);
		$this->display();

	}
	
	
	public function addsort(){

		$table=D('sys_tables');
		$apptree=D('apptree');
		$treelist=$apptree->findAll('type=0 and projectid='.$_SESSION[workingprojectid]);
		$table=$table->findAll('ismodel<>1 and pid='.$_SESSION[workingprojectid]);
		$treeselect=$apptree->findAll('type<>0 and pid='.$_GET[pid]);//选中的子项目
		$this->assign('treelist',$treelist);
		$this->assign('table',$table);
		$this->assign('treeselect',$treeselect);
		//dump($treeselect);
		$this->display();

	}
	
	
	public function saveapptree(){

		$list=D('apptree');
		$tids=explode(',',$_POST['sortvaue']);//数组转换
		$list->delete('type=1 and link ="" and pid='.$_POST[pid]);
		for ($i=0;$i<count($tids);$i++){
			$passshort=id_To_EValue('apptree','shortname','id',$_POST[pid]);
			$passtitle=id_To_EValue('sys_tables','caption','id',$tids[$i]);
			$passtitle=substr($passtitle,strpos($passtitle,']')+1);
			$adddate[$i]['pid']=$_POST[pid];
			$adddate[$i]['tid']=$tids[$i];
			$adddate[$i]['title']=$passtitle;
			$adddate[$i]['shortname']=$passshort.'_'.$i;
			$adddate[$i]['type']=1;
			$adddate[$i]['projectid']=$_SESSION[workingprojectid];
			$adddate[$i]['seqNo']=$i;
			$list->create($adddate[$i]);
			$list->add();
		}
		//dump($adddate);
		//exit;
		
		$this->ajaxReturn('','操作成功！',1);


	}



	public function delete(){
		$list=D('apptree');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($apptree);
	}



	public function updateform(){
		$list=D('apptree');
		$var=	$_REQUEST;//数组转换
		$dataall=$list->create($var);
		$list->save($dataall);
		//dump($var);
		$this->ajaxReturn('','操作成功！',1);
	}

	public function addform(){
		$list=D('apptree');
		$add_date=$_REQUEST;
		$add_date[id]='';
		if($_REQUEST[type]==0){
			$add_date[tid]=0;
		}
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);

	}

}



?>