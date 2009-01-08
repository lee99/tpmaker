<?php
//+---------------------------------------------------
//|	tpmaker1.05 tpl:tpmaker_jquery
//+---------------------------------------------------
class IndexAction extends PublicAction{

	public function index(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销
		 $this->display();
	}

	public function left(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_RUN_TIME',false);			// 运行时间显示
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销



		//生成table的树
		$leftdate=array(
{leftdate}			array( 'id' =>'{id}','caption' =>'{caption}','name' =>'{title}'),
{/leftdate}
);
		$this->assign('left',$leftdate);
		//dump($leftdate);
		$this->display();
	}

	public function main(){
		$this->display();
	}

	public function top(){
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