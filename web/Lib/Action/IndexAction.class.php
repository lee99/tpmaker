<?php
class IndexAction extends Action{

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



		//生成table的树
		$leftdate=array(
			array( 'id' =>'138','caption' =>'客户列表','name' =>'nsclient'),array( 'id' =>'135','caption' =>'行业分类','name' =>'calling'),array( 'id' =>'128','caption' =>'发布语言分类','name' =>'lang'),array( 'id' =>'125','caption' =>'网站静态信息','name' =>'sta_infos'),array( 'id' =>'126','caption' =>'网站静态信息分类','name' =>'sta_infos_type'),array( 'id' =>'137','caption' =>'Ns公司招聘','name' =>'nsjob'),array( 'id' =>'127','caption' =>'热门职位','name' =>'hotjob'),array( 'id' =>'157','caption' =>'对外资料分类','name' =>'outfiletype'),array( 'id' =>'159','caption' =>'对外资料管理','name' =>'outfile'),array( 'id' =>'162','caption' =>'FLASH广告管理','name' =>'flashad'),array( 'id' =>'160','caption' =>'对外信息分类','name' =>'outnewstype'),array( 'id' =>'161','caption' =>'对外信息管理','name' =>'outnews'),array( 'id' =>'163','caption' =>'成功案例管理','name' =>'projects'),array( 'id' =>'139','caption' =>'留言类型分类','name' =>'contacttype'),array( 'id' =>'136','caption' =>'网上留言管理','name' =>'contact'),
		);
		$this->assign('left',$leftdate);
		//dump($leftdate);
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
		$this->display();
	}	

}



?>