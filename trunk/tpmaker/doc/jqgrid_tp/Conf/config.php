<?php
if (!defined('THINK_PATH')) exit();
return array(
	'DB_TYPE'=>'mysql',
	'DB_HOST'=>'localhost',
	'DB_NAME'=>'tp_maker',
	'DB_USER'=>'root',
	'DB_PWD'=>'123456',
	'DB_PORT'=>'3306',
	'DB_PREFIX'=>'tp_',

	'WEB_TITLE'=>'HBSS CMS V2.0',
	'DEBUG_MODE'=>false,
	'WEB_LOG_RECORD'=>false,
	'WEB_LOG_ERROR'=>false,

	/* 数据库设置 */
	'DB_DEPLOY_TYPE'=>0,			// 数据库部署方式 0 集中式（单一服务器） 1 分布式（主从服务器）
	'DB_CACHE_ON'=>true,			// 默认关闭数据库缓存
	'SQL_DEBUG_LOG'=>true,			// 记录SQL语句到日志文件

	/* 数据缓存设置 */
	'DATA_CACHE_TIME'=>-1,			// 数据缓存有效期
	'DATA_CACHE_COMPRESS'=>false,		// 数据缓存是否压缩缓存
	'DATA_CACHE_CHECK'=>false,		// 数据缓存是否校验缓存
	'DATA_CACHE_TYPE'=>'File',		// 数据缓存类型 支持 File Db Apc Memcache Shmop Sqlite Xcache Apachenote Eaccelerator
	'DATA_CACHE_SUBDIR'=>false,		// 使用子目录缓存 （自动根据缓存标识的哈希创建子目录）
	'SHARE_MEM_SIZE'=>1048576,		// 共享内存分配大小
	//'DEFAULT_TEMPLATE'=>'newui',		// 默认模板
	// 'URL_MODEL'=>0,

);

?>
