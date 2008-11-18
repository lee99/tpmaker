<?php
/**
 * Enter description here...
 *
 */
class IndexAction extends AdminAction{

	public function Index(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销
		 $this->display();
	}

	public function Left(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销


		//生成猎取第一条记录或取得ID
		if($_REQUEST['id']){
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
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销
		$projects=D('Sys_projects');
		$plist=$projects->findAll('isaction = 1');
		$this->assign('project',$plist);
		$this->display();
	}	
	public function Sys(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销
		//生成其它的树
		$con_tree=D('con_tree');
		$list=$con_tree->findAll('id <> 0');
		$this->assign('tree',$list);
		$this->display();
	}
}



?>