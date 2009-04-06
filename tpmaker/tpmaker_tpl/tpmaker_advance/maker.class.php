<?php
require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
class maker extends tpmaker
{//类定义开始

	function makeprodir() {
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		deldir($app_path);////common.php文件
		tpmk_dir($app_path.'/Lib/Model/');
		tpmk_dir($app_path.'/Lib/Action/');
		tpmk_dir($app_path.'/Cache/');//生成Cache目录
		tpmk_dir($app_path.'/Common/');//生成Common目录
		tpmk_dir($app_path.'/Conf/');//生成Conf目录
		tpmk_dir($app_path.'/Data/');//生成Data目录
		tpmk_dir($app_path.'/Lang/');//生成Lang目录
		tpmk_dir($app_path.'/Logs/');//生成Logs目录
		tpmk_dir($app_path.'/Temp/');//生成Temp目录
		tpmk_dir($app_path.'/Lib/Com/');//生成Com目录
		tpmk_dir($app_path.'/Tpl/default/Public/');//生成Tpl目录
		copyfile($tpl_path.'/common.php',$app_path.'/Common/common.php');////common.php文件
		copyfile($tpl_path.'/Action_tpl/PublicAction.class.php',$app_path.'/Lib/Action/PublicAction.class.php');
		copyfile($tpl_path.'/Action_tpl/PublicAction.class.php',$app_path.'/Lib/Action/PublicAction.class.php');
		////PublicAction.class.php文件
		copydir($tpl_path.'/Static_tpl',$app_path.'/Tpl/default');////common.php文件
		copydir($tpl_path.'/Com_tpl',$app_path.'/Lib/Com');////common.php文件
		$this->installtags();//安装标签
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
		$tpl=new tpl($tpl_path.'/Action_tpl/IndexAction.class.php');
		//dump($leftdate);
		$tpl->tplblocksign("topdate",$topdate); //替换
		$filecontent=$tpl->tplreturn();
		$filename=$app_path.'/Lib/Action/IndexAction.class.php';
		writefile($filename,$filecontent);
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
		
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		$data=$this->gettables($id);
		$name=uplower($data['title']);//第一个字母变成大写,其它变成小写
		if($data['datemodelid']!=0){$datemodelid=$data['datemodelid'];}//取出公用的数据模型
		$fields=D('sys_fields');
		$fields=$fields->findAll('pid='.$id .' or pid='.$datemodelid ,'*','seqNo ASC');//取出所有表和数据模型表
		$filename=$app_path.'/Lib/Model/'.$name.'Model.class.php';

		foreach ($fields as $field){
			if($field['request']==1){//require_once验证设置
				$val_var_req[]=array(
				'v_name'=>$field['name'],
				'v_rag'=>'require',
				'v_caption'=>$field['caption'].'不能为空！',
				'v_time'=>1,
				'v_note'=>$field['caption'].",条件:必填",
				);
			}
			if($field['validate']!=1 && $field['validate']!=''&& $field['validate']!=0){//其它验证设置
				$validate=D('sub_validate');
				$validate=$validate->getByid($field['validate']);
				if($field['validate_tex']!=''){
					$v_text=$field['validate_tex'];
				}else{
					$v_text=$validate['v_note'];
				}
				$val_var_val[]=array(
				'v_name'=>$field['name'],
				'v_rag'=>$validate['v_rag'],
				'v_con'=>$validate['v_con'],
				'a_reg'=>$validate['a_reg'],
				'v_caption'=>$field['caption'].":".$v_text,
				'v_time'=>$validate['v_time'],
				'v_note'=>$field['caption'].",条件:".$validate['title'],
				//array(验证字段,验证规则,错误提示,验证条件,附加规则,验证时间) //note
				//array({v_name},{v_rag},{v_con},{a_reg},{v_caption},{v_time}) //{v_note}
				);
			}
		}

		////////生成自动验证结束

		////////生成自动填充开始
		foreach ($fields as $field){

			if($field['autotype']!=1 ){//其它填充设置
				$auto=D('sub_auto');
				$auto=$auto->getByid($field['autotype']);
				if($field['indexvar']!=''){$a_text=$field['indexvar'];}else{$a_text=$auto['content'];}
				$val_var_auto[]=array(
				'a_name'=>$field['name'],
				'a_text'=>$a_text,
				'a_condition'=>$auto['condition'],
				'a_regular'=>$auto['regular'],
				'a_note'=>$field['caption'].",条件:".$auto['title'],
				);
				//
			}
		}
		////////生成自动填充结束
		$tpl=new tpl($tpl_path.'/Model_tpl/model.tpl');
		$tpl->tplsign("name",$name); //替换
		$tpl->tplblocksign("val_var_req",$val_var_req); //替换
		$tpl->tplblocksign("val_var_val",$val_var_val); //替换
		$tpl->tplblocksign("val_var_auto",$val_var_auto); //替换
		$filecontent=$tpl->tplreturn();
		writefile($filename,$filecontent);
	}

	function makeprotectmodel() {
		//生成保留MODEL
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		$name='apptree';
		$filename=$app_path.'/Lib/Model/'.$name.'Model.class.php';
		$tpl=new tpl($tpl_path.'/Model_tpl/model.tpl');
		$tpl->tplsign("name",$name); //替换
		$tpl->tplblocksign("val_var_req",null); //替换
		$tpl->tplblocksign("val_var_val",null); //替换
		$tpl->tplblocksign("val_var_auto",null); //替换
		$filecontent=$tpl->tplreturn();
		writefile($filename,$filecontent);
	}
	
	
	function makeproviewmodel($id) {
		//生成基本VIEWMODEL
		
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		$tpl=new tpl($tpl_path.'/Model_tpl/viewmodel.tpl');


		$field=D('Sys_viewfields');
		$tables=$field->findall('vid='.$id,'distinct `tid`');//查出无序的数据
		foreach ($tables as $tb){
			$f=$field->findall("vid=$id and tid=$tb[tid]");
			$tablename=id_To_EValue('sys_tables','title','id',$tb[tid]);
			$tablecaption=id_To_EValue('sys_tables','caption','id',$tb[tid]);
			$tablefield=$this->makeviewfield($f);//生成字段
			$val_var_field[$i]['tablename']=$tablename;
			$val_var_field[$i]['caption']=$tablecaption;
			$val_var_field[$i]['field']=$tablefield;
			$i++;
		}

		$condition=D('Sys_viewcondition');
		$condition=$condition->findall('vid='.$id);

		$viewmodel=D('Sys_viewmodel');
		$viewmodel=$viewmodel->find('id='.$id);

		$filename=$app_path.'/Lib/Model/'.$viewmodel['title'].'ViewModel.class.php';
		$tpl->tplsign("name",$viewmodel['title']); //替换
		$tpl->tplblocksign("val_var_field",$val_var_field); //替换
		$tpl->tplblocksign("val_var_condition",$condition); //替换

		$filecontent=$tpl->tplreturn();
		writefile($filename,$filecontent);
	}


	function makeproaction($id) {
		//生成基本Action
		
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		$data=$this->gettables($id);
		$name=uplower($data['title']);//第一个字母变成大写,其它变成小写
		$tpl=new tpl($tpl_path.'/Action_tpl/action.tpl');
		$filename=$app_path.'/Lib/Action/'.$name.'Action.class.php';


		//index()的ACTION生成
		if($data['list']==1 || $data['search']==1){
			$index_act[0]['modelname']=$name;
			$fields=$this->getfieldsbytbid($id);
			$list_fields=$this->makerows($fields,'islist');
			$index_act[0]['list_fields']=$list_fields;
			$search_fields=$this->makerows($fields,'issearch');
			$index_act[0]['search_fields']=$search_fields;
			$search_ser_c=$this->makerows($fields,'issearch','$ser_c');
			$index_act[0]['search_ser_c']=$search_ser_c;
		}


		//delete()的ACTION生成
		if($data['del']==1){
			$del_act[0]['modelname']=$name;
		}

		//insert()的ACTION生成
		if($data['add']==1){
			$insert_act[0]['modelname']=$name;
		}

		//uptate()的ACTION生成
		if($data['edit']==1){
			$update_act[0]['modelname']=$name;
		}

		//edit()的ACTION生成
		if($data['edit']==1){
			$assignlist=$this->makeassignlist($fields);
			$edit_act[0]['modelname']=$name;
			$edit_act[0]['assignlist']=$assignlist;
		}

		//view()的ACTION生成
		if($data['view']==1){
			$assignlist=$this->makeassignlist($fields);
			$view_act[0]['modelname']=$name;
			$view_act[0]['assignlist']=$assignlist;
		}

		//add()的ACTION生成
		if($data['add']==1){
			$add_act[0]['modelname']=$name;
		}

		$tpl->tplsign("name",$name); //替换
		$tpl->tplblocksign("index_act",$index_act); //替换
		$tpl->tplblocksign("del_act",$del_act); //替换
		$tpl->tplblocksign("insert_act",$insert_act); //替换
		$tpl->tplblocksign("update_act",$update_act); //替换
		$tpl->tplblocksign("edit_act",$edit_act); //替换
		$tpl->tplblocksign("view_act",$view_act); //替换
		$tpl->tplblocksign("add_act",$add_act); //替换
		$filecontent=$tpl->tplreturn();
		writefile($filename,$filecontent);
	}

	function makeprotpl($id) {
		//生成基本Action
		
		$app_path=$this->getapppath();//获取生成程序的根目录
		$tpl_path=$this->gettplpath();//获取程序模板的根目录
		$data=$this->gettables($id);
		$tablename=uplower($data['title']);//第一个字母变成大写,其它变成小写
		$caption=$data['caption'];
		$fields=$this->getfieldsbytbid($id);
		tpmk_dir($app_path.'/Tpl/default/'.$tablename.'/');//生成目录
		
		$islist=($data['list']==1)?true:false;	//是否列表
		$issearch=($data['search']==1)?true:false;	//issearch
		$isadd=($data['add']==1)?true:false;	//是否增加
		$isedit=($data['edit']==1)?true:false;	//是否允许编辑
		$isview=($data['view']==1)?true:false;	//是否允许查看详细
		$isdel=($data['del']==1)?true:false;	//是否允许删除数据
		
		
		//生成INDEX.HMTL包括LIST及SEARCH的
		if($islist){
			$filename=$app_path.'/Tpl/default/'.$tablename.'/index.html';//生成的模板文件名
			$tpl=new tpl($tpl_path.'/Html_tpl/index.html');//源模板文件名
			$tpl->tplsign('tablecaption',$caption);//替换
			$tpl->tplsign('tablelist',$tablename);//替换表名
			$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
		}

		//生成ajaxlist.HMTL
		if($islist || $issearch){
			$filename=$app_path.'/Tpl/default/'.$tablename.'/ajaxlist.html';//生成的模板文件名
			$tpl=new tpl($tpl_path.'/Html_tpl/ajaxlist.html');//源模板文件名
			$listshowsort=$this->makerowslistsort($fields,'islist');
			$listshowtd=$this->makerowslisttd($fields,'islist');
			$tpl->tplblocksign('listshowsort',$listshowsort);//替换
			$tpl->tplblocksign('listshowtd',$listshowtd);//替换
			
			$tpl->tplissign('issearch',$issearch);//替换是否搜索
			$tpl->tplissign('isadd',$isadd);//替换是否增加
			$tpl->tplissign('isedit',$isedit);//替换是否编辑
			$tpl->tplissign('isview',$isview);//替换查看详细
			$tpl->tplissign('isdel',$isdel);//替换删除数据
			
			$tpl->tplsign('tablecaption',$caption);//替换
			$tpl->tplsign('tablelist',$tablename);//替换表名
			$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
		}
		
		

		//生成Add.HMTL
		if($isadd){
			$filename=$app_path.'/Tpl/default/'.$tablename.'/add.html';//生成的模板文件名
			$tpl=new tpl($tpl_path.'/Html_tpl/add.html');//源模板文件名
			if(count($fields)>0){
				foreach ($fields as $field){
					$vartype=$field['addtype'];
					$varname=$this->maketags($field['addtype'],'addtype',$field['name'],$field['indexvar'],$field['outkey'],$field['outkeyid'],$field['outkeyf'],$field['outkeywhere']);
					$varcaption=$field['caption'];
					$rows_contents[]=array("rows_type"=>$vartype,"rows_name"=>$varname,"rows_caption"=>$varcaption);//替换方式
				}
			}
			$tpl->tplblocksign('rows_contents',$rows_contents);
			
			$tpl->tplissign('issearch',$issearch);//替换是否搜索
			$tpl->tplissign('isadd',$isadd);//替换是否增加
			$tpl->tplissign('isedit',$isedit);//替换是否编辑
			$tpl->tplissign('isview',$isview);//替换查看详细
			$tpl->tplissign('isdel',$isdel);//替换删除数据
			
			$tpl->tplsign('tablecaption',$caption);//替换
			$tpl->tplsign('tablename',$tablename);//替换表名
			$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
			unset($rows_contents);
		}

		//生成Edit.HMTL
		if($isedit){
			$filename=$app_path.'/Tpl/default/'.$tablename.'/edit.html';//生成的模板文件名
			$tpl=new tpl($tpl_path.'/Html_tpl/edit.html');//源模板文件名
			if(count($fields)>0){
				foreach ($fields as $field){
					$vartype=$field['edittype'];
					$varname=$this->maketags($field['edittype'],'edittype',$field['name'],$field['indexvar'],$field['outkey'],$field['outkeyid'],$field['outkeyf'],$field['outkeywhere']);
					$varcaption=$field['caption'];
					$rows_contents[]=array("rows_type"=>$vartype,"rows_name"=>$varname,"rows_caption"=>$varcaption);//替换方式
				}
			}
			$tpl->tplblocksign('rows_contents',$rows_contents);
			
			$tpl->tplissign('issearch',$issearch);//替换是否搜索
			$tpl->tplissign('isadd',$isadd);//替换是否增加
			$tpl->tplissign('isedit',$isedit);//替换是否编辑
			$tpl->tplissign('isview',$isview);//替换查看详细
			$tpl->tplissign('isdel',$isdel);//替换删除数据
			
			$tpl->tplsign('tablecaption',$caption);//替换
			$tpl->tplsign('tablename',$tablename);//替换表名
			$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
			unset($rows_contents);
		}


		//生成Veiw.HMTL
		if($isview){
			$filename=$app_path.'/Tpl/default/'.$tablename.'/view.html';//生成的模板文件名
			$tpl=new tpl($tpl_path.'/Html_tpl/view.html');//源模板文件名
			if(count($fields)>0){
				foreach ($fields as $field){
					$vartype=$field['viewtype'];
					$varname=$this->maketags($field['viewtype'],'viewtype',$field['name'],$field['indexvar'],$field['outkey'],$field['outkeyid'],$field['outkeyf'],$field['outkeywhere']);
					$varcaption=$field['caption'];
					$rows_contents[]=array("rows_type"=>$vartype,"rows_name"=>$varname,"rows_caption"=>$varcaption);//替换方式
				}
			}
			$tpl->tplblocksign('rows_contents',$rows_contents);
			
			$tpl->tplissign('issearch',$issearch);//替换是否搜索
			$tpl->tplissign('isadd',$isadd);//替换是否增加
			$tpl->tplissign('isedit',$isedit);//替换是否编辑
			$tpl->tplissign('isview',$isview);//替换查看详细
			$tpl->tplissign('isdel',$isdel);//替换删除数据
			
			$tpl->tplsign('tablecaption',$caption);//替换
			$tpl->tplsign('tablename',$tablename);//替换表名
			$filecontent=$tpl->tplreturn();
			writefile($filename,$filecontent);
			unset($rows_contents);
		}
		
		unset($data);
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
		/*
		array(33) {
		  ["id"] => string(4) "4721"
		  ["pid"] => string(4) "1001"
		  ["name"] => string(2) "id"
		  ["caption"] => string(5) "ID号"
		  ["islist"] => string(1) "0"
		  ["fieldtype"] => string(1) "6"
		  ["fieldlenght"] => string(1) "0"
		  ["request"] => string(1) "0"
		  ["validate"] => string(1) "0"
		  ["validate_tex"] => string(0) ""
		  ["validate_reg"] => string(0) ""
		  ["viewtype"] => string(1) "0"
		  ["isview"] => string(1) "0"
		  ["edittype"] => string(1) "0"
		  ["isedit"] => string(1) "0"
		  ["addtype"] => string(1) "1"
		  ["isadd"] => string(1) "0"
		  ["islistwidth"] => string(0) ""
		  ["islistviewtype"] => string(1) "0"
		  ["iswrap"] => string(1) "1"
		  ["indexvar"] => string(0) ""
		  ["autotype"] => string(1) "1"
		  ["issystem"] => string(1) "0"
		  ["outkey"] => string(0) ""
		  ["outkeyis"] => string(1) "0"
		  ["outkeyid"] => string(0) ""
		  ["outkeyf"] => string(0) ""
		  ["outkeywhere"] => string(0) ""
		  ["searchtype"] => string(1) "0"
		  ["advsearchtype"] => string(1) "1"
		  ["issearch"] => string(1) "0"
		  ["seqNo"] => string(1) "1"
		  ["modelid"] => string(1) "0"
		}
		*/
		foreach ($datas as $data){
			if($data[$datefield]==1){
				$content[$i][listshowsort_name]=$data['name'];
				$content[$i][listshowsort_caption]=$data['caption'];
				$i++;
			}
		}

		return $content;
	}

	function makeviewfield($datas) {
		//$datas传过来的数据

		foreach ($datas as $data){
			if($data[title]!=$data[newtitle]){
				$filecontent="'".$data[title]."'=>'".$data[newtitle]."',";
				$content.=$filecontent;
			}else{
				$filecontent="'".$data[newtitle]."',";
				$content.=$filecontent;
			}
		}

		return $content;
	}

	function makerowslisttd($datas,$datefield) {
		//$datas传过来的数据
		//通过传过来的数据生成LIST相应的项
		//$datefield为相应的对应的项目
		/*
		array(33) {
		  ["id"] => string(4) "4721"
		  ["pid"] => string(4) "1001"
		  ["name"] => string(2) "id"
		  ["caption"] => string(5) "ID号"
		  ["islist"] => string(1) "0"
		  ["fieldtype"] => string(1) "6"
		  ["fieldlenght"] => string(1) "0"
		  ["request"] => string(1) "0"
		  ["validate"] => string(1) "0"
		  ["validate_tex"] => string(0) ""
		  ["validate_reg"] => string(0) ""
		  ["viewtype"] => string(1) "0"
		  ["isview"] => string(1) "0"
		  ["edittype"] => string(1) "0"
		  ["isedit"] => string(1) "0"
		  ["addtype"] => string(1) "1"
		  ["isadd"] => string(1) "0"
		  ["islistwidth"] => string(0) ""
		  ["islistviewtype"] => string(1) "0"
		  ["iswrap"] => string(1) "1"
		  ["indexvar"] => string(0) ""
		  ["autotype"] => string(1) "1"
		  ["issystem"] => string(1) "0"
		  ["outkey"] => string(0) ""
		  ["outkeyis"] => string(1) "0"
		  ["outkeyid"] => string(0) ""
		  ["outkeyf"] => string(0) ""
		  ["outkeywhere"] => string(0) ""
		  ["searchtype"] => string(1) "0"
		  ["advsearchtype"] => string(1) "1"
		  ["issearch"] => string(1) "0"
		  ["seqNo"] => string(1) "1"
		  ["modelid"] => string(1) "0"
		}
		*/

		foreach ($datas as $data){
			if($data[$datefield]==1){
				//生成标签
				$viewtags=$this->maketags($data['viewtype'],'viewtype',$data['name'],$data['indexvar'],$data['outkey'],$data['outkeyid'],$data['outkeyf'],$data['outkeywhere']);
				
				$content[$i][listshowtd_name]=$data['name'];
				$content[$i][listshowtd_caption]=$data['caption'];
				$content[$i][listshowtd_viewtags]=$viewtags;
				$i++;
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