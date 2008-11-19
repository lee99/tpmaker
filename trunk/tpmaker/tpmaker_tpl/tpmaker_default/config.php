<?php
if (!defined('THINK_PATH')){ 
	exit();
}
	return array(
		'DB_TYPE'=>		'mysql',
		'DB_HOST'=>		'localhost',		//连接mysql主机
		'DB_NAME'=>		'{dbname}',			//数据库名
		'DB_USER'=>		'{dbuser}',			//mysql用户
		'DB_PWD'=>		'{dbpassword}',		//mysql密码
		'DB_PORT'=>		'3306',				//端口
		'DB_PREFIX'=>	'{tbpre}',			//数据表的前缀
		'PROject_NAME'=>'{caption}',		//本项目的名字
	);

?>