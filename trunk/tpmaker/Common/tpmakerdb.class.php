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
		return $fields;
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
		$this->dosql($sql_infoherd);
	}	

	
	$sql_head="CREATE TABLE IF NOT EXISTS `$treutablename` (";
	$sql_body=$this->makebodysql($tables['id']);
	$sql_foot="  PRIMARY KEY  (`id`) ) 
	ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='$thiscaption' AUTO_INCREMENT=1 ;";
	$sql_infoherd=$sql_head.$sql_body.$sql_foot;
	
	//echo $sql_infoherd."<HR>";
	$this->dosql($sql_infoherd,'生成数据表:'.$treutablename);
	
}

function makebodysql($id){
	$dates=$this->getfieldsbytbid($id);
	foreach ($dates as $date){
		$sql.=$this->sqlbytpye($date['fieldtype'],$date['caption'],$date['name'],$date['fieldlenght']);
	}
	return $sql;
}

function sqlbytpye($id,$caption,$name,$fieldlenght){
	$list=D('sub_fieldtype');
	$date=$list->getbyid($id);
	$thiscaption=$caption;//注释
	$thisname=$name;//名称
	$thistype      = $date['thistype'];//类型 
	if(!empty($fieldlenght) or $fieldlenght!=0){
		$thisleng=$fieldlenght;
	}else {
		$thisleng=$date['leng']; 
	}
	
	if($date['notnull']==1){
		$thisnotnull="NOT NULL ";
	}else{
		$thisnotnull="NULL ";
	}
	$thistype=$date['type'];	
	$thisdefault=$date['default'];

	$sql="  `$thisname` $thistype($thisleng) $thisnotnull COMMENT '$thiscaption',";
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
	$this->dosql($sql_infoherd,'生成数据库:'.$project_proname);
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
			@mysql_query($sql)or die($this->ErrorInfo());
			//echo $dosql."<hr>";
		@mysql_close($link);
		if(!empty($info)){
			echo "正在操作数据库...操作:".$info."....完成<br>";
		}
	}else{
		echo "数据库连接不成功,请检查!";
	}
}



function ErrorInfo()
{
	return "<ul style='font-family:Courier;font-size:11px;background:#FDF5E6;color:#696969;margin:3px;padding:10px;border:1px solid #696969;'>Notice!: System Error<li style='font-family:Courier;list-style-type:none'>ErrInfo: ".mysql_error()."</li><li style='font-family:Courier;list-style-type:none'>ErrCode: ".mysql_errno()."</li><li style='font-family:Courier;list-style-type:none'>ErrURIs: ".$_SERVER['REQUEST_URI']."</li></ul>";
}

}

?>