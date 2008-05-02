<?php
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
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销


		//生成猎取第一条记录或取得ID
		if($_REQUEST['id']){
			$passid=$_REQUEST['id'];
		}else {
			$pass=D('Sys_projects');
			$pass=$pass->first();
			$passid=$pass['id'];
		}
		
		//生成project的树
		$projects=D('Sys_projects');
		$plist=$projects->findAll('id='.$passid);
		$this->assign('project',$plist);
		

		//生成table的树
		$ptables=D('Sys_tables');
		$tlist=$ptables->findAll('pid='.$passid);
		$this->assign('table',$tlist);
		//dump($tlist);

		$this->display();
	}

	public function Main(){
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
		$plist=$projects->findAll();
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