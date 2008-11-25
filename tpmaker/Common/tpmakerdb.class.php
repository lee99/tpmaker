<?php
class tpmakerdb extends Action
{//类定义开始

	 /**
     +----------------------------------------------------------
     * 标签库定义项目表
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $projecttable = 'sys_projects';
    /**
    +----------------------------------------------------------
     * 标签库定义项目ID
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $projectid = '';


    /**
     +----------------------------------------------------------
     * 标签表名称
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $tables = 'sys_tables';
    /**
    +----------------------------------------------------------
     * 标签库定义项目ID
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $tablesid = '';

    /**
    +----------------------------------------------------------
     * 定义是否先检查是否存在如果存在则不做
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $dropcheck = true;

	/**
    +----------------------------------------------------------
     * 取得公共的项目的所有信息
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
function getprojects(){
			$list=D($this->projecttable);
		   $data=$list->getByid($this->projectid);
		   return $data;
}
	/**
    +----------------------------------------------------------
     * 取得公共的表的所有信息
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
function gettables($id){
			$list=D($this->tables);
			if ($id==''){$id=$this->tablesid;}
			$data=$list->getByid($id);
		   return $data;
}
  	/**
    +----------------------------------------------------------
     * 取得公共的表的所有信息
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
function getfieldsbytbid($id){
		$data=$this->gettables($id);
		if($data['datemodelid']!=0){$datemodelid=$data['datemodelid'];}//取出公用的数据模型
		$fields=D('sys_fields');
		$fields=$fields->findAll('pid='.$id .' or pid='.$datemodelid ,'*','seqNo ASC');//取出所有表和数据模型表
		
		//因为搜索出来的数据可能会因为有公共数据库而引起重复,所以有以下的操作过滤重重的项目.
		//相同的数据以数据库自己的排序先后为取舍标准
		
		foreach ($fields as $date){//
			if(!in_array($date['name'],$tmparray)){
				$newdate[]=$date;
			}
				$tmparray[]=$date['name'];//累加以判断是否name有重复
		}
		return $newdate;
}

function creattable($tableid){
	$date=$this->getprojects();
	$project_caption = $date['caption'];//项目名称
	$project_proname = $date['proname'];//名称[英]
	$project_tbpre = $date['tbpre'];//数据库前辍
	$project_dbname = $date['dbname'];//数据库名
	$tables=$this->gettables($tableid);
	$treutablename=$project_tbpre.$tables['title'];
	$thiscaption=$tables['caption'];
	if(!$this->dropcheck){
		$sql_infoherd="DROP TABLE IF EXISTS `".$treutablename."`;";
		msg("正在删除数据表:[".$thiscaption."]<br>");
		$this->dosql($sql_infoherd);
	}
	$pkname=$this->getpkname($tables['id']);
	if(trim($pkname)==''){
		msg("表:[".$thiscaption."]没有定义主键,请检查!<br>",0);
		exit();
	}


	$sql_head="CREATE TABLE IF NOT EXISTS `$treutablename` (";
	$sql_body=$this->makebodysql($tables['id']);
	$sql_foot="  PRIMARY KEY  (`$pkname`) )
	ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='$thiscaption' AUTO_INCREMENT=1 ;";
	$sql_infoherd=$sql_head.$sql_body.$sql_foot;

	msg("正在生成数据表:[".$thiscaption."]<br>");
	$this->dosql($sql_infoherd,'生成数据表:['.$treutablename.']');

}

function getpkname($id){
	//获得主键的名字
	$dates=$this->getfieldsbytbid($id);
	$list=D('sub_fieldtype');
	foreach ($dates as $date){
		$r=$list->getbyid($date['fieldtype']);
		if($r['primary']==1 && $pkname==''){
			$pkname= $date['name'];
		}
	}
	return $pkname;
}


function makebodysql($id){
	//生成instert sql
	$dates=$this->getfieldsbytbid($id);
	foreach ($dates as $date){
		$sql.=$this->sqlbytpye($date['fieldtype'],$date['caption'],$date['name'],$date['fieldlenght']);
	}
	return $sql;
}

function sqlbytpye($id,$caption,$name,$fieldlenght){
	$list=D('sub_fieldtype');
	$date=$list->getbyid($id);
	$thiscaption	=	$caption;//注释
	$thisname		=	$name;//名称
	$thistype		=	$date['thistype'];//类型
	if(!empty($fieldlenght) or $fieldlenght!=0){
		$thisleng=$fieldlenght;
	}else {
		$thisleng=$date['leng'];//字段长度
	}

	if($date['notnull']==1){
		$thisnotnull="NOT NULL ";
	}else{
		$thisnotnull="NULL ";
	}
	$thistype=$date['type'];
	$thisdefault=$date['default'];//默认值
	if($date['autoInc']==1){//自动增加
		$thisautoInc='auto_increment';
	}else{
		$thisautoInc='';
	}

	$sql="  `$thisname` $thistype($thisleng) $thisnotnull $thisautoInc COMMENT '$thiscaption',";
	//`pid` int(11) NOT NULL default '0' COMMENT '说明',
	return $sql;


}

function buideall(){
	$this->creatdb();
	$list=D($this->tables);
	$date=$list->findall('pid='.$this->projectid);
	foreach ($date as $gdate){
		$this->creattable($gdate['id']);
	}

}

function creatdb(){
	$date=$this->getprojects();
	$project_caption = $date['caption'];//项目名称
	$project_proname = $date['proname'];//名称[英]
	$project_tbpre = $date['tbpre'];//数据库前辍
	$project_dbname = $date['dbname'];//数据库名
	if(!$this->dropcheck){
		$sql_infoherd="DROP DATABASE IF EXISTS `".$project_dbname."` ;";
		$this->dosql($sql_infoherd);
	}

	$sql_infoherd="CREATE DATABASE `".$project_dbname."` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;";
	$this->dosql($sql_infoherd,'生成数据库:['.$project_proname.']<br>');
}





function dosql($sql,$info){
	$project_host=C('DB_HOST');
	$project_dbuser=C('DB_USER');
	$project_dbpassword=C('DB_PWD');
	$date=$this->getprojects();
	$project_caption = $date['caption'];//项目名称
	$project_proname = $date['proname'];//名称[英]
	$project_tbpre = $date['tbpre'];//数据库前辍
	$project_dbname = $date['dbname'];//数据库名

	$link = mysql_connect($project_host,$project_dbuser,$project_dbpassword) or die($this->ErrorInfo());

	if ($link){

		@mysql_query("USE `".$project_dbname."`;");
		@mysql_query("SET NAMES 'utf8'");

			$sql=trim($sql);
			@mysql_query($sql)or die($this->ErrorInfo($sql));
			//msg($dosql."<hr>");
		@mysql_close($link);
		if(!empty($info)){
			msg("正在操作数据库:[".$info."]<br>操作完成<br><br>");
		}
	}else{
		msg("数据库连接不成功,请检查!",0);
	}
}



function ErrorInfo($msg='')
{
	return "<ul style='font-size:12px;color:#696969;border:1px solid #696969;'>注意!: 系统错误<li style='list-style-type:none'>错误提示: ".mysql_error()."</li><li style='list-style-type:none'>错误代码: ".mysql_errno()."</li><li style='list-style-type:none'>信息: ".$msg."</li>
	</ul>";
}

}

?>