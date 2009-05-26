<?php
return array(

	'WEB_LOG_RECORD'=>true,	 // 默认进行日志记录
	'LOG_FILE_SIZE'=>2097152,	// 日志文件大小限制

	/* 防刷新设置 */
	'LIMIT_RESFLESH_ON'=>true,	// 默认关闭防刷新机制
	'LIMIT_REFLESH_TIMES'=>30,	// 页面防刷新时间 默认3秒

	/* 模板设置 */
	'TMPL_CACHE_ON'=>true,		// 默认开启模板缓存
	'TMPL_CACHE_TIME'=>-1,		// 模板缓存有效期 -1 永久 单位为秒


	/* 运行时间设置 */
	'SHOW_RUN_TIME'=>false,			// 运行时间显示
	'SHOW_ADV_TIME'=>true,			// 显示详细的运行时间
	'SHOW_DB_TIMES'=>true,			// 显示数据库查询和写入次数
	'SHOW_CACHE_TIMES'=>true,		// 显示缓存操作次数
	'SHOW_USE_MEM'=>true,			// 显示内存开销
	'SHOW_PAGE_TRACE'=>true,		// 显示页面Trace信息 由Trace文件定义和Action操作赋值

);

?>
