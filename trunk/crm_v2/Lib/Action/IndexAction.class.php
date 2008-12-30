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

	public function Leftframe(){
		C('SHOW_PAGE_TRACE',false); 		//本页不显示TRACE
		C('SHOW_ADV_TIME',false);			// 显示详细的运行时间
		C('SHOW_DB_TIMES',false);			// 显示数据库查询和写入次数
		C('SHOW_CACHE_TIMES',false);		// 显示缓存操作次数
		C('SHOW_USE_MEM',false);			// 显示内存开销

		$this->display();
	}

	public function Mainframe(){
		//前台说明
		$this->display();
	}
	
	
	public function Switchframe(){
		//中间
		$this->display();
	}

	public function Topframe(){
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