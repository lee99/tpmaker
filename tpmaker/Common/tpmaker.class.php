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
     * 模块的位置,默认'tpmaker_default'
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
    var $tpmaker_template = 'tpmaker_default';


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
		$fields=D('sys_fields');
		$fields=$fields->findAll('pid='.$id .' or pid='.$datemodelid ,'*','seqNo ASC');//取出所有表和数据模型表
		return $fields;
}
    /**
    +----------------------------------------------------------
     * 生成基本目录
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function makeprodir() {
		   $app_path=$this->getapppath();//获取生成程序的根目录
		   $tpl_path=$this->gettplpath();//获取程序模板的根目录
		    //deldir($app_path);////common.php文件
			mk_dir($app_path.'/Lib/Model/');
			mk_dir($app_path.'/Lib/Action/');
			mk_dir($app_path.'/Cache/');//生成Cache目录
			mk_dir($app_path.'/Common/');//生成Common目录
			mk_dir($app_path.'/Conf/');//生成Conf目录
			mk_dir($app_path.'/Data/');//生成Data目录
			mk_dir($app_path.'/Lang/');//生成Lang目录
			mk_dir($app_path.'/Logs/');//生成Logs目录
			mk_dir($app_path.'/Temp/');//生成Temp目录
			mk_dir($app_path.'/Tpl/default/Public/');//生成Tpl目录
			copyfile($tpl_path.'/common.php',$app_path.'/Common/common.php');////common.php文件
			copyfile($tpl_path.'/PublicAction.class.php',$app_path.'/Lib/Action/PublicAction.class.php');
				////PublicAction.class.php文件
			copydir($tpl_path.'/Static_tpl',$app_path.'/Tpl/default');////common.php文件
	}


    /**
    +----------------------------------------------------------
     * 生成基本index.php
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function makeproindex($id) {
		require_once COMMON_PATH."tpl.class.php";//引入自定义的类
			   $app_path=$this->getapppath();//获取生成程序的根目录
			   $tpl_path=$this->gettplpath();//获取程序模板的根目录
			   $filename=$app_path.'/index.php';
			   $data=$this->getprojects();
			   $tpl=new tpl($tpl_path.'/index.php');
			   $tpl->tplsign("think_pach",$data['think_pach']); //替换
			   $tpl->tplsign("proname",$data['proname']); //替换
				$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
	}

    /**
    +----------------------------------------------------------
     * 生成基本index的ACTION
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function makeproindexaction() {

	   $app_path=$this->getapppath();//获取生成程序的根目录
	   $tpl_path=$this->gettplpath();//获取程序模板的根目录
	   $filename=$app_path.'/Index.php';
		$table=D($this->tables);
	   $tabledata=$table->findAll('pid='.$this->projectid.' and ismodel <>1 and isaction =1','*','seqNo ASC');
	   foreach ($tabledata as $tb){
	   $left.="array( 'id' =>'".$tb['id']."','caption' =>'".$tb['caption']."','name' =>'".uplower($tb['title'])."'),";
	   }
	   $leftcontent=file_get_contents($tpl_path.'/Action_tpl/indexAction.class.php');
	   $leftcontent=str_replace("/*left*/",$left,$leftcontent);
	   $filename=$app_path.'/Lib/Action/IndexAction.class.php';
	   writefile($filename,$leftcontent);
	}

    /**
    +----------------------------------------------------------
     * 生成基本config.php
     +----------------------------------------------------------
     * @var string
     * @access protected
     +----------------------------------------------------------
     */
	function makeproconf($id) {
		require_once COMMON_PATH."tpl.class.php";//引入自定义的类
		$app_path=$this->getapppath();//获取生成程序的根目录
	    $tpl_path=$this->gettplpath();//获取程序模板的根目录
		$data=$this->getprojects();
		$filename=$app_path.'/Conf/config.php';
		$tpl=new tpl($tpl_path.'/config.php');
		$tpl->tplsign("dbname",$data['dbname']); //替换
		$tpl->tplsign("dbuser",$data['dbuser']); //替换
		$tpl->tplsign("dbpassword",$data['dbpassword']); //替换
		$tpl->tplsign("tbpre",$data['tbpre']); //替换
		$tpl->tplsign("caption",$data['caption']); //替换
		$filecontent=$tpl->tplreturn();
		writefile($filename,$filecontent);
	}


function makepromodel($id) {
	//生成基本MODEL

	   $data=$this->gettables($id);
	   $app_path=$this->getapppath();//获取生成程序的根目录
	   $tpl_path=$this->gettplpath();//获取程序模板的根目录
		$name=uplower($data['title']);//第一个字母变成大写,其它变成小写
		if($data['datemodelid']!=0){$datemodelid=$data['datemodelid'];}//取出公用的数据模型
		$fields=D('sys_fields');
		$fields=$fields->findAll('pid='.$id .' or pid='.$datemodelid ,'*','seqNo ASC');//取出所有表和数据模型表
	   $filename=$app_path.'/Lib/Model/'.$name.'Model.class.php';
$filecontent.="<?php\n
class ".$name."Model extends Model {\n\n";

////////生成自动验证开始
$filecontent.="\t protected \$_validate=array( ////自动验证设置 \n\n";
foreach ($fields as $field){
	if($field['request']==1){//require_once验证设置
		$filecontent.="\t\t array('".$field['name']."','require_once','".$field['caption']."不能为空！',1),\t//".$field['caption'].",条件:必填\n";
	}
	if($field['validate']!=1){//其它验证设置
		$validate=D('sub_validate');
		$validate=$validate->getByid($field['validate']);
		if($field['validate_tex']!=''){$v_text=$field['validate_tex'];}else{$v_text=$validate['v_note'];}
		$filecontent.="\t\t array('".$field['name']."','".$validate['v_rag']."','".$field['caption'].":".$v_text."',".$validate['v_con'].",'".$validate['a_reg']."','".$validate['v_time']."'),\t//".$field['caption'].",条件:".$validate['title']."\n";
		//
	}
}
$filecontent.="\n\t ); \n\n";
////////生成自动验证结束

////////生成自动填充开始
$filecontent.="\t protected \$_auto=array( ////自动验证设置 \n\n";
foreach ($fields as $field){
	if($field['autotype']!=0){//其它填充设置
		$auto=D('sub_auto');
		$auto=$auto->getByid($field['autotype']);
		if($field['indexvar']!=''){$a_text=$field['indexvar'];}else{$a_text=$auto['content'];}
		$filecontent.="\t\t array('".$field['name']."','".$a_text."','".$auto['condition']."','".$auto['regular']."'),\t//".$field['caption'].",条件:".$auto['title']."\n";
		//
	}
}
$filecontent.="\n\t ); \n";
////////生成自动填充结束


$filecontent.="\n}\n?>";
	writefile($filename,$filecontent);
}



function makeproaction($id) {
	//生成基本Action
	   $data=$this->gettables($id);
	   $app_path=$this->getapppath();//获取生成程序的根目录
	   $tpl_path=$this->gettplpath();//获取程序模板的根目录
	   $name=uplower($data['title']);//第一个字母变成大写,其它变成小写
	   $filename=$app_path.'/Lib/Action/'.$name.'Action.class.php';
	$filecontent.="<?php\nclass ".$name."Action extends PublicAction {\n\n";


	//index()的ACTION生成
	$indexaction=file_get_contents($tpl_path.'/Action_tpl/action_index.tpl');
	$indexaction=str_replace("/*modelname*/",$name,$indexaction);
	$fields=$this->getfieldsbytbid($id);
	$list_fields=$this->makerows($fields,'islist');
	$indexaction=str_replace("/*list_fields*/",$list_fields,$indexaction);
	$search_fields=$this->makerows($fields,'issearch');
	$indexaction=str_replace("/*search_fields*/",$search_fields,$indexaction);
	$search_ser_c=$this->makerows($fields,'issearch','$ser_c');
	$indexaction=str_replace("/*search_ser_c*/",$search_ser_c,$indexaction);
	$filecontent.=$indexaction;


	//delete()的ACTION生成
	$deleteaction=file_get_contents($tpl_path.'/Action_tpl/action_delete.tpl');
	$deleteaction=str_replace("/*modelname*/",$name,$deleteaction);
	$filecontent.=$deleteaction;

	//insert()的ACTION生成
	$insertaction=file_get_contents($tpl_path.'/Action_tpl/action_insert.tpl');
	$insertaction=str_replace("/*modelname*/",$name,$insertaction);
	$filecontent.=$insertaction;

	//uptate()的ACTION生成
	$saveaction=file_get_contents($tpl_path.'/Action_tpl/action_update.tpl');
	$saveaction=str_replace("/*modelname*/",$name,$saveaction);
	$filecontent.=$saveaction;


	//edit()的ACTION生成
	$editaction=file_get_contents($tpl_path.'/Action_tpl/action_edit.tpl');
	$editaction=str_replace("/*modelname*/",$name,$editaction);
	$assignlist=$this->makeassignlist($fields);
	$editaction=str_replace("/*assignlist*/",$assignlist,$editaction);
	$filecontent.=$editaction;


	//view()的ACTION生成
	$viewaction=file_get_contents($tpl_path.'/Action_tpl/action_view.tpl');
	$viewaction=str_replace("/*modelname*/",$name,$viewaction);
	$assignlist=$this->makeassignlist($fields);
	$viewaction=str_replace("/*assignlist*/",$assignlist,$viewaction);
	$filecontent.=$viewaction;

	//add()的ACTION生成
	$addaction=file_get_contents($tpl_path.'/Action_tpl/action_add.tpl');
	$filecontent.=$addaction;


	$filecontent.="\n\n}\n?>";
	writefile($filename,$filecontent);
}

function makeprotpl($id) {
	//生成基本Action
	$data=$this->gettables($id);
	$app_path=$this->getapppath();//获取生成程序的根目录
	$tpl_path=$this->gettplpath();//获取程序模板的根目录
	$name=uplower($data['title']);//第一个字母变成大写,其它变成小写
	$caption=$data['caption'];
	mk_dir($app_path.'/Tpl/default/'.$name.'/');//生成目录

	//生成INDEX.HMTL包括LIST及SEARCH的
	$filename=$app_path.'/Tpl/default/'.$name.'/index.html';//生成的模板文件名
	$filecontent=file_get_contents($tpl_path.'/Html_tpl/index.html');//源模板文件名
	$fields=$this->getfieldsbytbid($id);
	$listshowsort=$this->makerowslistsort($fields,'islist');
	$listshowtd=$this->makerowslisttd($fields,'islist');
	$filecontent=str_replace("[listshowsort]",$listshowsort,$filecontent);
	$filecontent=str_replace("[listshowtd]",$listshowtd,$filecontent);
	$filecontent=str_replace("[tablecaption]",$caption,$filecontent);

	writefile($filename,$filecontent);

	//生成Add.HMTL
	$filename=$app_path.'/Tpl/default/'.$name.'/add.html';//生成的模板文件名
	$filecontent=file_get_contents($tpl_path.'/Html_tpl/add.html');//源模板文件名
	$fields=$this->getfieldsbytbid($id);
	$rowscontent=$this->makerowscontent($fields,'addtype','rows.tpl');
	$filecontent=str_replace("[tablecaption]",$caption,$filecontent);
	$filecontent=str_replace("[rowscontent]",$rowscontent,$filecontent);
	writefile($filename,$filecontent);

	//生成Edit.HMTL
	$filename=$app_path.'/Tpl/default/'.$name.'/edit.html';//生成的模板文件名
	$filecontent=file_get_contents($tpl_path.'/Html_tpl/edit.html');//源模板文件名
	$fields=$this->getfieldsbytbid($id);
	$rowscontent=$this->makerowscontent($fields,'edittype','rows.tpl');
	$filecontent=str_replace("[tablecaption]",$caption,$filecontent);
	$filecontent=str_replace("[rowscontent]",$rowscontent,$filecontent);
	writefile($filename,$filecontent);


	//生成Veiw.HMTL
	$filename=$app_path.'/Tpl/default/'.$name.'/view.html';//生成的模板文件名
	$filecontent=file_get_contents($tpl_path.'/Html_tpl/view.html');//源模板文件名
	$fields=$this->getfieldsbytbid($id);
	$rowscontent=$this->makerowscontent($fields,'viewtype','rows.tpl');
	$filecontent=str_replace("[tablecaption]",$caption,$filecontent);
	$filecontent=str_replace("[rowscontent]",$rowscontent,$filecontent);
	writefile($filename,$filecontent);
}


function makerowscontent($datas,$actiontype,$tpl) {
	$tpl_path=$this->gettplpath();//获取程序模板的根目录
	//$datas传过来的数据
	//类型的
	//相应判定的模板文件
	$rowcontent=file_get_contents($tpl_path.'/Html_tpl/'.$tpl);//源模板文件名
	if(count($datas)>0){
		foreach ($datas as $data){
			$vartype=$data[$actiontype];
			//$varname=$data['name'];
			$varname=$this->maketags($data[$actiontype],$actiontype,$data['name'],$data['indexvar'],$data['outkey'],$data['outkeyid'],$data['outkeyf'],$data['outkeywhere']);
			$varcaption=$data['caption'];

			$contents=str_replace("[vartype]",$vartype,$rowcontent);//替换方式
			$contents=str_replace("[varname]",$varname,$contents);//替换表名
			$contents=str_replace("[varcaption]",$varcaption,$contents);//替换名称
			$filecontent.=$contents;
		}

	}
		return $filecontent;
}


function maketags($typeid,$actiontype,$name,$value,$outtable,$outkey,$outfield,$outcondition,$outorder,$outadd,$id,$class,$style,$disabled,$readonly,$othervar) {
	$tag=D('sub_'.$actiontype);//指定MODEL
	//echo $actiontype.'<br>';
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
        if($tag['usetype']==2){
        	 if(empty($value)){	$htmltages.=' value="'.$name.'"';}//查看形式的标签是不同的
		}else{
			 if(empty($value)){	$htmltages.=' value="{$list.'.$name.'}"';}
		}

        if(!empty($readonly)){	$htmltages.=' readonly="'.$readonly.'"';}
        if(!empty($othervar)){	$htmltages.=' othervar="'.$othervar.'"';}

        $htmltages.=$outtagets;
        $htmltages.="/>";


return $htmltages;


}


function makerows($datas,$field,$varc) {
	//$datas传过来的数据
	//$field相应判定的表
	//$field相应判定的表
	if(count($datas)>0){
		foreach ($datas as $data){
			if($data[$field]==1){//require_once验证设置
				if($varc==''){
					//$list_fields.=uplower($data['name']).',';
					$list_fields.=$data['name'].',';
				}else{
					$list_fields.=$varc.',';
				}

			}
		}
	//$list_fields=substr($list_fields,0,-1);//去掉最后一个的","
	$list_fields.='id';//默认加上id作为主键
	}else{
	$list_fields="*";
	}
		return $list_fields;
}

function makerowslistsort($datas,$datefield) {
	//$datas传过来的数据
	//通过传过来的数据生成LIST相应的项
	//$datefield为相应的对应的项目
	$tpl_path=$this->gettplpath();//获取程序模板的根目录
	$tplcontent=file_get_contents($tpl_path.'/Html_tpl/index_sort.html');//源模板文件名

		foreach ($datas as $data){
			if($data[$datefield]==1){
			$filecontent=str_replace("[name]",$data['name'],$tplcontent);
			$filecontent=str_replace("[caption]",$data['caption'],$filecontent);
			$content.=$filecontent;
			}
		}

		return $content;
}

function makerowslisttd($datas,$datefield) {
	//$datas传过来的数据
	//通过传过来的数据生成LIST相应的项
	//$datefield为相应的对应的项目
	$tpl_path=$this->gettplpath();//获取程序模板的根目录
	$tplcontent=file_get_contents($tpl_path.'/Html_tpl/index_td.html');//源模板文件名

		foreach ($datas as $data){
			if($data[$datefield]==1){
			$viewtags=$this->maketags($data['viewtype'],'viewtype',$data['name'],$data['indexvar'],$data['outkey'],$data['outkeyid'],$data['outkeyf'],$data['outkeywhere']);
			$filecontent=str_replace("[name]",$data['name'],$tplcontent);
			$filecontent=str_replace("[caption]",$data['caption'],$filecontent);
			$filecontent=str_replace("[viewtags]",$viewtags,$filecontent);
			$content.=$filecontent;
			}
		}

		return $content;
}

function makeassignlist($datas) {
	//$datas传过来的数据
	//通过传过来的数据生成LIST相应的项
	if(count($datas)>0){
		foreach ($datas as $data){
			$list_fields.="\t\t".'$this->assign("'.$data['name'].'",$list["'.$data['name'].'"]);'."\n";
			//$list_fields.=$data['name'].':'.$data['caption'].",";
		}
	}
		return $list_fields;
}


}

?>