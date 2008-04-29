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
		D();
	   	$db	=	DB::getInstance();
		$tables = $db->getTables();
		foreach ($tables as $tbname){
			$coumt=$db->getFields($tbname);
			$modelname=str_replace(C('DB_PREFIX'),'',$tbname);
			//echo $modelname;
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
		    echo $sql;
		    $sql='';
		    }
		    

		}
		//dump($tables);
		//$db->switchConnect(0);
	
		
	}


	public function import_db(){
		$list=D('sys_projects');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
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
	
	




}



?>