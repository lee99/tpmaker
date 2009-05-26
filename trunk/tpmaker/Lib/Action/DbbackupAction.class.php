<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_projectsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class DbbackupAction extends AdminAction{

	public function index(){


		$this->display();

	}

	public function export_db(){
		$this->display();
	}


	public function export_db_go(){
		require COMMON_PATH."tp_common.php";//引入自定义的类
		import("Think.Db.Db");	//D('');也可以
		$db	=	DB::getInstance();
		$tables = $db->getTables();

		foreach ($tables as $tbname){
			$coumt=$db->getFields($tbname);
			$modelname=str_replace(C('DB_PREFIX'),'',$tbname);
			//msg($modelname);
			$row=D($modelname);
			$row=$row->findAll();
			if($_GET[dbform]){//同时备份表结构
				msg('正在备份表结构......<br>',0);
				$sql= "DROP TABLE `$tbname`;\n";
				$field=$db->query("show create table $tbname");
				$sql.= $field[0]['Create Table'].";\n\n";
				$dbdatasql.= $sql;
				unset($sql);
				msg('表:'.$tbname.'备份表结构信息成功!<br>');
			}
			if($_GET[dbdata]){//只备份表数据
				msg('正在备份表数据......<br>',0);
				$sql = "TRUNCATE `$tbname`;\n";//写入清空表信息
				msg('表:'.$tbname.'写入清空表信息成功!<br>');
				$values = array();
				foreach ($row as $value) {
					$sql = "INSERT INTO `{$tbname}` VALUES (";
					foreach($value as $v) {
						$sql_tmp[]="'".mysql_real_escape_string($v)."'";
					}
					$sql .=join(',',$sql_tmp);
					$sql .= ");\n";
					$dbdatasql.= $sql;
					unset($sql);
					unset($sql_tmp);
				}
				msg('分析表:'.$tbname.'成功!<br>');
			}
		}
		$sqlbody=$dbdatasql."\n".$dbdatasql."\n\n\n";
		writefile('./Backup/SQL/tpmaker_'.date('Ymd-His').'.sql',$sqlbody);
		msg('备份表数据成功.<br>',0);

	}







	public function importdb(){//导入数据库
		$list=D('Sys_projects');
		$data=$list->getByid($_REQUEST['id']);
		$db_config = 'mysql://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.$data['dbname'];
		$db	=	DB::getInstance();
		$db->addConnect($db_config,1);
		$db->switchConnect(1);
		$tables = $db->getTables();
		foreach ($tables as $tbname){
			$fe=$db->getFields($tbname);
			dump($fe);
		}
		dump($tables);
		$db->switchConnect(0);
	}



	public function importsql(){//导入数据库
		require COMMON_PATH."tp_common.php";//引入自定义的类
		import("Think.Db.Db");
		$sqlfile='./Backup/SQL/'.$_GET['sqlfile'];
		$db_config = 'mysql://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.C('DB_NAME');
		$db	=	DB::getInstance();
		$db->addConnect($db_config,1);
		$db->switchConnect(1);
		$content=file_get_contents($sqlfile);
		$sqls=explode(';',$content);
		foreach ($sqls as $v=>$sql){
			$db->query($sql);
			msg($v.' SQL:'.substr($sql,0,80).'......,成功!<br>');
		}

		$db->switchConnect(0);
		msg('导入数据库'.$sqlfile.'操作成功!',0);
	}



	public function inport_db(){//导入数据库
		import("ORG.Io.Dir");
		$path='./Backup/SQL/';
		$fil=array('.','..','.svn');
		$dir=Dir::getList($path);
		$f=array_diff($dir,$fil);
		$this->assign('list',$f);
		$this->assign('path',$path);
		$this->display();
	}


}



?>