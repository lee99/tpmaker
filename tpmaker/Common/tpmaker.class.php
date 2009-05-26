<?php
class tpmaker extends Action
{//类定义开始

	/**
     +----------------------------------------------------------
     * 标签库定义项目表
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	var $projecttable = 'Sys_projects';
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
	var $tables = 'Sys_tables';
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
     * 模块的位置,默认'tpmaker_default'
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	var $tpmaker_template = 'tpmaker_default';


	public function tpmaker () {
		require COMMON_PATH."tpl.class.php";//引入自定义的类
	}

	/**
    +----------------------------------------------------------
     * 取得公共的APP路径名
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function getapppath(){


		$list=D($this->projecttable);
		$data=$list->getByid($this->projectid);
		$app_path='../'.$data['proname'];
		$this->tpmaker_template=$data[tplname];
		return $app_path;

	}


	/**
    +----------------------------------------------------------
     * 取得程序模板TPL的位置
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function gettplpath(){

		$tpl_path='tpmaker_tpl/'.$this->tpmaker_template;
		return $tpl_path;
	}

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
		$fields=D('Sys_fields');
		$fields=$fields->findAll('pid='.$id .' or pid='.$datemodelid ,'*','seqNo ASC');//取出所有表和数据模型表
		return $fields;
	}

	/**
    +----------------------------------------------------------
     * 安装自己的标签在thinkphp的目录里面
     +----------------------------------------------------------
     * Myhtml这个为thinkmaker专用的
     * Mkrtags这个为生成后的代码库专用的
     +----------------------------------------------------------
     */
	function installtags() {
		copyfile(APP_PATH.'/tpmaker_tpl/tphtmltags/TagLib/TagLibMkrtags.class.php',THINK_PATH.'/Lib/Think/Template/TagLib/TagLibMkrtags.class.php');//安装标签
		copyfile(APP_PATH.'/tpmaker_tpl/tphtmltags/TagLib/TagLibMyhtml.class.php',THINK_PATH.'/Lib/Think/Template/TagLib/TagLibMyhtml.class.php');//安装标签
		copyfile(APP_PATH.'/tpmaker_tpl/tphtmltags/Tags/mkrtags.xml',THINK_PATH.'/Lib/Think/Template/Tags/mkrtags.xml');//安装标签
		copyfile(APP_PATH.'/tpmaker_tpl/tphtmltags/Tags/myhtml.xml',THINK_PATH.'/Lib/Think/Template/Tags/myhtml.xml');//安装标签
		copydir(APP_PATH.'/tpmaker_tpl/tphtmltags/Public',THINK_PATH.'/../Public');//安装标签相关js

	}



	function maketags($typeid,$actiontype,$name,$value,$outtable,$outkey,$outfield,$outcondition,$outorder,$outadd,$id,$class,$style,$disabled,$readonly,$othervar) {
		$tag=D('sub_'.$actiontype);//指定MODEL
		//msg($actiontype.'<br>');
		$tag=$tag->getByid($typeid);//取得相应的值

		$tagtype    = !empty($tagtype)?$tagtype:$tag['htmltype']; 		//表单[htmltype]//没值则
		$name       = !empty($name)?$name:$tag['htmlname'];	//表单名称[htmlname]
		$id       	= !empty($id)?$id:$tag['htmlid']; 		//表单ID[htmlid]//没值则用NAME为值
		$id       	= !empty($id)?$id:$name; 		//表单ID[$name]//没值则用NAME为值
		$value      = !empty($value)?$value:$tag['htmlvar']; 		//表单[htmlvar]//没值则
		$class      = !empty($class)?$class:$tag['htmlclass']; 		//表单[htmlclass]//没值则
		$style      = !empty($style)?$style:$tag['htmlstyle']; 		//表单[htmlstyle]//没值则
		$disabled   = !empty($disabled)?$disabled:$tag['isdisabled'];//表单[isdisabled]//没值则
		$readonly   = !empty($readonly)?$readonly:$tag['isreadonly']; 		//表单[isreadonly]//没值则
		$othervar   = !empty($othervar)?$othervar:$tag['othervar']; 		//表单[othervar]//没值则
		$outtable   = !empty($outtable)?$outtable:$tag['outtable']; 		//表单[outtable]//没值则
		$outkey   	= !empty($outkey)?$outkey:$tag['outkey']; 		//表单[outkey]//没值则
		$outfield   = !empty($outfield)?$outfield:$tag['outfield']; 		//表单[outfield]//没值则
		$outcondition   = !empty($outcondition)?$outcondition:$tag['outcondition']; 		//表单[outcondition]//没值则
		$outorder   = !empty($outorder)?$outorder:$tag['outorder']; 		//表单[outorder]//没值则
		$outadd   = !empty($outadd)?$outadd:$tag['outadd']; 		//表单[outadd]//没值则

		if(empty($outtable)){
			$outkey   	='';
			$outfield   	='';
			$outcondition   	='';
			$outorder   	='';
			$outadd   	='';
			$outtagets='';
		}else{
			$outtagets=' outtable="'.uplower($outtable).'"  outfield="'.$outfield.'"  outkey="'.$outkey.'"  outcondition="'.$outcondition.'"  outorder="'.$outorder.'"  outadd="'.$outadd.'" ';
		}

		$htmltages='<mkrtags:'.$tagtype.' id="'.$id.'" name="'.$name.'" ';
		if(!empty($class)){	$htmltages.=' class="'.$class.'"';}
		if(!empty($style)){	$htmltages.=' style="'.$style.'"'; }
		if(!empty($disabled)){	$htmltages.=' disabled="'.$disabled.'"';}
		switch ($actiontype){
			case 'viewtype':
				$htmltages.=' value="$list.'.$name.'"';
				break;
			case 'edittype':
				$htmltages.=' value="$list.'.$name.'"';
				break;
			case 'addtype':
				$htmltages.=' value="'.$value.'"';
				break;
		}
		/*
		if($tag['usetype']==2){
			if(empty($value)){	$htmltages.=' value="'.$name.'"';}//查看形式的标签是不同的
		}else{
			if(empty($value)){	$htmltages.=' value="$list.'.$name.'"';}
		}
		*/

		if(!empty($readonly)){	$htmltages.=' readonly="'.$readonly.'"';}
		if(!empty($othervar)){	$htmltages.=' othervar="'.$othervar.'"';}

		$htmltages.=$outtagets;
		$htmltages.="/>";


		return $htmltages;


	}



}

?>