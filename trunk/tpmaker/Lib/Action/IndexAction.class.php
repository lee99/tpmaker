<?php
/**
 * Enter description here...
 *
 */
class IndexAction extends AdminAction{

	public function index(){
		 $this->display();
	}

	public function left(){

		//生成猎取第一条记录或取得ID
		if($_REQUEST['id']!=''){
			$passid=$_REQUEST['id'];
		}else {
			$pass=D('Sys_projects');
			$pass=$pass->where('isaction=1')->find();
			$passid=$pass['id'];
		}

		//生成project的树
		$projects=D('Sys_projects');
		//$plist=$projects->findAll('id='.$passid);
		//$plist=$projects->where('id='.$passid)->findall();
		//$this->assign('project',$plist);

		$workingproject=$projects->getbyid($passid);//设定现在工作的SESSION
		Session::set('workingproject',$workingproject);
		Session::set('workingprojectid',$passid);
		//dump($_SESSION['workingproject']);




		//生成table的树
		$ptables=D('Sys_tables');
		$wherevalue='issystem=0 and pid='.$passid;//过滤条件
		//$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		$tlist=$ptables->where($wherevalue)->field('*')->order('seqNo')->findall();
		$this->assign('table',$tlist);
		//dump($tlist);

		//生成系统table的树
		$ptables=D('Sys_tables');
		$wherevalue='issystem=1 and pid='.$passid;//过滤条件
		//$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		$tlist=$ptables->where($wherevalue)->field('*')->order('seqNo')->findall();
		$this->assign('systable',$tlist);
		//dump($tlist);

		//生成系统Sys_viewmodel的树
		$ptables=D('Sys_viewmodel');
		$wherevalue='projectid='.$_SESSION['workingprojectid'];//过滤条件
		//$tlist=$ptables->findAll($wherevalue,'*','seqNo');
		$tlist=$ptables->where($wherevalue)->field('*')->order('seqNo')->findall();
		$this->assign('view',$tlist);
		//dump($tlist);

		$this->display();
	}

	public function main(){
		//前台说明
		$this->display();
	}

	public function mid(){
		//中间
		$this->display();
	}


	public function sysinfo(){
		//后台管理及参数设定说明
		$this->display();
	}

	public function buide(){
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

	public function top(){
		$projects=D('Sys_projects');
		$plist=$projects->where('isaction = 1')->findAll();
		$plist0=$projects->where('isaction = 0')->findAll();
		$this->assign('project',$plist);
		$this->assign('project0',$plist0);
		$this->display();
	}
	public function sys(){
		//生成其它的树
		$Con_tree=D('Con_tree');
		//$list=$Con_tree->findAll('tid <> 0');
		$list=$Con_tree->where('tid <> 0')->findall();
		//dump($list);
		$this->assign('tree',$list);
		$this->display();
	}
}



?>