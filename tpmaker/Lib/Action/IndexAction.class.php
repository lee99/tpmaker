<?php
/**
 * Enter description here...
 *
 */
class IndexAction extends AdminAction{

	public function Index(){
		 $this->display();
	}

	public function Left(){

		//生成猎取第一条记录或取得ID
		if($_REQUEST['id']!=''){
			$passid=$_REQUEST['id'];
		}else {
			$pass=D('Sys_projects');
			$pass=$pass->first('isaction=1');
			$passid=$pass['id'];
		}

		//生成project的树
		$projects=D('Sys_projects');
		$plist=$projects->findAll('id='.$passid);
		$this->assign('project',$plist);

		$workingproject=$projects->getbyid($passid);//设定现在工作的SESSION
		Session::set('workingproject',$workingproject);
		Session::set('workingprojectid',$passid);
		//dump($_SESSION['workingproject']);




		//生成table的树
		$ptables=D('Sys_tables');
		$wherevalue='issystem=0 and pid='.$passid;//过滤条件
		$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		$this->assign('table',$tlist);
		//dump($tlist);

		//生成系统table的树
		$ptables=D('Sys_tables');
		$wherevalue='issystem=1 and pid='.$passid;//过滤条件
		$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		$this->assign('systable',$tlist);
		//dump($tlist);

		$this->display();
	}

	public function Main(){
		//前台说明
		$this->display();
	}
	
	public function Mid(){
		//中间
		$this->display();
	}


	public function Sysinfo(){
		//后台管理及参数设定说明
		$this->display();
	}

	public function Buide(){
		//生成猎取第一条记录或取得ID
		if($_REQUEST['id']){
			$passid=$_REQUEST['id'];
		}

		//生成project的树
		$projects=D('Sys_projects');
		$plist=$projects->getbyid($passid);
		$this->assign('proname',$plist['proname']);
		$this->display();
	}

	public function Top(){
		$projects=D('Sys_projects');
		$plist=$projects->findAll('isaction = 1');
		$plist0=$projects->findAll('isaction = 0');
		$this->assign('project',$plist);
		$this->assign('project0',$plist0);
		$this->display();
	}
	public function Sys(){
		//生成其它的树
		$con_tree=D('con_tree');
		$list=$con_tree->findAll('tid <> 0');
		//dump($list);
		$this->assign('tree',$list);
		$this->display();
	}
}



?>