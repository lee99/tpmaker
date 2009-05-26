<?php
class importdb extends Action
{//类定义开始

	/*
	本类专为导入表结构专用,从现有的表结构里导入成一下tpmaker项目
	*/

	var $projectid;//项目id号
	var $importdb_name;//项目id号
	var $db_config;//项目id号
	var $perword;//项目id号

	
	function getconf(){
		$this->db_config='mysql://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.$this->importdb_name;
		return $this->db_config;
	}

	function getalltable()
	{
		//获得所有表的信息
		$dbname=$this->importdb_name;
		$db	=	DB::getInstance();
		$db->addConnect($this->getconf(),1);
		if($db->switchConnect(1))
		{
			$ts = $db->query("SELECT * FROM INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='".$dbname."'");//所有表
			//$tables = $db->getTables();
			//tp的默认取得表的方法,但是取出的值不能满足应用
			//dump($ts);//所有表
			/*
			[0] => array(21) {
			["TABLE_CATALOG"] => NULL
			["TABLE_SCHEMA"] => string(9) "ns_crm_v2"
			["TABLE_NAME"] => string(8) "ad_label"
			["TABLE_TYPE"] => string(10) "BASE TABLE"
			["ENGINE"] => string(6) "MyISAM"
			["VERSION"] => string(2) "10"
			["ROW_FORMAT"] => string(5) "Fixed"
			["TABLE_ROWS"] => string(3) "615"
			["AVG_ROW_LENGTH"] => string(2) "13"
			["DATA_LENGTH"] => string(4) "7995"
			["MAX_DATA_LENGTH"] => string(16) "3659174697238527"
			["INDEX_LENGTH"] => string(5) "10240"
			["DATA_FREE"] => string(1) "0"
			["AUTO_INCREMENT"] => string(4) "1119"
			["CREATE_TIME"] => string(19) "2008-12-09 09:15:48"
			["UPDATE_TIME"] => string(19) "2008-12-09 09:26:57"
			["CHECK_TIME"] => NULL
			["TABLE_COLLATION"] => string(15) "utf8_general_ci"
			["CHECKSUM"] => NULL
			["CREATE_OPTIONS"] => string(0) ""
			["TABLE_COMMENT"] => string(0) ""
			}
	
			*/
	
			foreach ($ts as $v=>$t){
				$tables[$v]['tablename']=$t['TABLE_NAME'];
				$tables[$v]['conment']=($t['TABLE_COMMENT']=='')?$t['TABLE_NAME']:$t['TABLE_COMMENT'];
			}
	
			$db->switchConnect(0);
			return $tables;
			
		}else{
			$db->switchConnect(0);
			msg('数据连接错误!请查正再试!<br>',0);
			exit;
		}
	}

	function getallField($data)
	{
		//获得表的所有信息信息
		$db	=DB::getInstance();
		$db->addConnect($this->getconf(),1);
		$db->switchConnect(1);
		//$field = $db->getFields($data);
		//tp的默认取得表的方法,但是取出的值不能满足应用
		/*
		[1] => array(9) {
		["Field"] => string(4) "u_id"
		["Type"] => string(7) "int(11)"
		["Collation"] => NULL
		["Null"] => string(3) "YES"
		["Key"] => string(0) ""
		["Default"] => NULL
		["Extra"] => string(0) ""
		["Privileges"] => string(31) "select,insert,update,references"
		["Comment"] => string(8) "人才ID"
		}
		*/
		$field=$db->query("show full fields from $data");
		$db->switchConnect(0);
		//dump($field);// 列出所有的表属性
		return $field;
	}


	function table2project($data){
		//所有表的信息写入tpmaker
		$list=D('Sys_tables');
		for ($i = 0; $i <count($data); $i++) {
		//for ($i = 0; $i <2; $i++) {
			$title=ereg_replace("^".$this->perword,'',$data[$i]['tablename']);
			//把去掉了前缀的表名提取出来
			$true_title=$data[$i]['tablename'];
			//真实的title
			$d['pid'] =$this->projectid;
			$d['caption'] =$data[$i]['conment'];
			$d['title'] =$title;
			$d['searchtype'] =1;
			$d['edittype'] =1;
			$d['ismodel'] =0;
			$d['datemodelid'] =0;
			$d['add'] =1;
			$d['del'] =1;
			$d['search'] =1;
			$d['edit'] =1;
			$d['seqNo'] =$i;
			$d['isaction'] =1;
			$d['issystem'] =0;

			$list->create($d);
			$insertId=$list->add($d);

			$t[]=array(
			'tablename'=>$true_title,
			'newid'=>$insertId
			);
			dump($d);
			dump($t);
			exit;
			msg("创建表:".$title.",操作成功!<br>");
		}
		return $t;
	}

	function checkinputdata($data){
		//本配置和"Sub_fieldtype"的配置是一致的,如有更改请同步更改
		$a=explode('(',$data['Type']);
		$a=$a[0];
		$b=intval(remover($data['Type'],'(',')'));
		switch ($a){
			case 'text':
				$typeid=3;//[text][]
				break;
			case 'datetime':
				$typeid=18;
				break;
			case 'date':
				$typeid=17;
				break;
			case 'time':
				$typeid=19;
				break;
			case 'year':
				$typeid=20;
				break;
			case 'varchar':
				if($b>40){
					$typeid=4;	//[varchar][240]
				}else{
					$typeid=1;	//[varchar][40]
				}
				break;
			case 'int':
				if($b>4){
					$typeid=2;	//[INI][11]
				}else{
					$typeid=5;	//[tinyint][4]
				}
				break;
			default:
				$typeid=1;
					
		}
		
		if($data['Extra']=='auto_increment'){
			$typeid=6;
			//是否自动加入
			//[autoid][11]
			return $typeid;
		}
		
		return $typeid;

	}


	function field2table($data,$newid){
		//所有字段的信息写入tpmaker
		//$newid新表的id
		$list=D('Sys_fields');
		for ($i = 0; $i <count($data); $i++) {
			$dt=$data[$i];
			$mytypeid=$this->checkinputdata($dt);//字属性
			$d['pid'] =$newid;//所属的表
			$d['caption'] =($dt['Comment']=='')?$dt['Field']:$dt['Comment'];//中文
			$d['name'] =$dt['Field'];//英文
			$d['islist'] =($dt['Extra']=='auto_increment')?0:1;//是否列表
			$d['fieldtype'] =$mytypeid;//字属性
			//$d['fieldlenght'] =0;//字符长度
			//$d['request'] =0;//必填
			//$d['validate'] =0;//验证形式
			//$d['validate_tex'] =0;//自定义错误
			//$d['validate_reg'] =0;//自定义正则
			$d['viewtype'] =($dt['Extra']=='auto_increment')?0:1;//查看类型
			$d['isview'] =($dt['Extra']=='auto_increment')?0:1;//是否列表
			$d['edittype'] =($dt['Extra']=='auto_increment')?0:1;//编辑类型
			$d['isedit'] =0;//是否编辑
			$d['addtype'] =1;//增加类型
			$d['isadd'] =($dt['Extra']=='auto_increment')?0:1;//是否增加
			$d['islistwidth'] ='';//列表长度
			$d['islistviewtype'] =0;//列表查看类型
			$d['iswrap'] =($mytypeid==3 || $mytypeid==4)?0:1;//是否排序
			$d['indexvar'] =$dt['Default'];//默认值
			$d['autotype'] =0;//自动填充类型
			$d['issystem'] =0;//是否系统保留
			//$d['outkey'] =0;//外键索引
			//$d['outkeyis'] =0;//是否
			//$d['outkeyid'] =0;//外键ID
			//$d['outkeyf'] =0;//外键值
			//$d['outkeywhere'] =0;//外键条件
			//$d['searchtype'] =0;//搜索形式
			//$d['advsearchtype'] =0;//高级搜索形式
			$d['seqNo'] =$i;//高级搜索形式
			$d['modelid'] =0;//数据模版ID
			$list->create($d);
			$list->add($d);
			//exit;
			msg("&nbsp;&nbsp;&nbsp;&nbsp;导入数据表字段:".$d['caption'].",操作成功!<br>");
		}
	}

}
?>