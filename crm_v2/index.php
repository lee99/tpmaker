<?php

	define('THINK_PATH', '../ThinkPHP');
	define('APP_NAME', 'crm_v2');//定义项目名称，如果不定义，默认为入口文件名称
	define('APP_PATH', '.');

	require(THINK_PATH.'/ThinkPHP.php');//加载ThinkPHP框架公共入口文件


	$App = new App();//实例化一个网站应用实例
	$App->run();//执行应用程序


?>