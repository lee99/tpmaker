<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sys_projectsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class dbbackupAction extends AdminAction{

	public function Index(){


		$this->display();

	}

	public function export_db(){
		$this->display();
	}


	public function export_db_go(){
		dump($_REQUEST);
		exit;
		require COMMON_PATH."tp_common.php";//引入自定义的类
		import("Think.Db.Db");	//D('');也可以
	   	$db	=	DB::getInstance();
		$tables = $db->getTables();
		msg('正在备份表数据',1);
		foreach ($tables as $tbname){
			$coumt=$db->getFields($tbname);
			$modelname=str_replace(C('DB_PREFIX'),'',$tbname);
			//msg($modelname);
			$row=D($modelname);
			$row=$row->findAll();
			
		    $values = array();
		    foreach ($row as $value) {
		    	$sql = "INSERT INTO `{$tbname}` VALUES (";
		    	foreach($value as $v) {
		    	 $sql .="'".mysql_real_escape_string($v)."',";
		    	}
		    	$sql=substr($sql,0,-1);
		    	$sql .= ");\n";
		    $tempsql.= $sql;
		    $sql='';
		    msg('备份表:'.$tbname.'成功.');
		    }
		   
		}
		 writefile('./Backup/SQL/tpmaker_'.date('Ymd-His').'.sql',$tempsql);
		 msg('备份表数据成功.',1);

	}


	public function import_db(){
		$list=D('sys_projects');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);

	}





	public function importdb(){//导入数据库
	   $list=D('sys_projects');
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
	
	

	public function inport_db(){//导入数据库
		$this->display();
	}


}



?>