<?php

function uplower($name) {
	//第一个字母变成大写,其它变成小写
		$firstString = substr($name , 0 , 1); 	   //取出NAME中的第一個字元
		$firstString = strtoupper($firstString);    //取出NAME中的第一個字元
		$otherString = substr($name , 1); 			//取出NAME中第一個字元以後的全部字元
		$otherString = strtolower($otherString); 	//取出NAME中第一個字元以後的全部字元
		$name= $firstString.$otherString;
		return $name;
}


function getsorttype($talbe,$img=0){

	$reqs[]=$_REQUEST;
	 if($reqs['order']==$talbe){
           if($reqs['sort']=="desc"){
            		$sorttype="asc";
            }else{
            		$sorttype="desc";
            }
	    if($img==1){//如果显示图标的话就返图标
			$sorttype= '<img border="0" src="'.APP_PUBLIC_URL.'/images/'.$sorttype.'.gif">';
	    }
    }else{
        $sorttype="asc";
	    if($img==1){//如果显示图标的话就返图标
			$sorttype= '';
	    }
    }

    	return $sorttype;

}

function id_To_EValue($tb,$col,$o_col,$id)
	{
		if(trim($id)=="")
			return "参数错误";
		else
		{
			$iddao=D($tb);
			//$iddao->Cache(true);
			$idlist=$iddao->find($o_col.'='.$id,$col);
		return $idlist[$col];
		}
	}

function getcolor($id)
	{
		if(S('color'.$id)==""){
			$thisdao=D('Sub_color');
			$list=$thisdao->where('id='.$id)->field('title')->find();
			S('color'.$id,$list['title']);
			return $list['title'];
		}
		else
		{
			return S('color'.$id);
		}
	}

function getfielddetail($datetype)
	{
	$field=D('Sub_fieldtype');
	$fielddate=$field->getbyid($datetype);

		if($fielddate['primary']==1){
			$date['img']='FieldKey_small.png';
			$date['iskey']=1;
		}else{
			switch ($fielddate['type']){
			case 'VARCHAR':
				$date['img']='Field_small_char.png';
				$date['iskey']=0;
				break;
			case 'TEXT':
				$date['img']='Field_small_char.png';
				$date['iskey']=0;
				break;
			case 'CHAR':
				$date['img']='Field_small_char.png';
				$date['iskey']=0;
				break;
			case 'INT':
				$date['img']='Field_small_int.png';
				$date['iskey']=0;
				break;
			case 'SMALLINT':
				$date['img']='Field_small_int.png';
				$date['iskey']=0;
				break;
			default:
				$date['img']='Field_small_char.png';
				$date['iskey']=0;
				break;
			}
		}
		$date['type']=$fielddate['type'];
		$date['leng']=$fielddate['leng'];
		//dump($date);
		return $date;

}

function makecontion($searchField,$searchOper,$searchString){//jqgrid的参数与TP的参数相对
			switch ($searchOper){
			case 'eq'://等于
				$date[$searchField]=array('EQ',$searchString);
				break;
			case 'ne'://不等
				$date[$searchField]=array('NEQ',$searchString);
				break;
			case 'lt'://少于
				$date[$searchField]=array('LT',$searchString);
				break;
			case 'le'://小于或等于
				$date[$searchField]=array(array('LT',$searchString),array('EQ',$searchString),'or');
				break;
			case 'gt'://大于
				$date[$searchField]=array('GT',$searchString);
				break;
			case 'ge'://大于或等于
				$date[$searchField]=array(array('GT',$searchString),array('EQ',$searchString),'or');;
				break;
			case 'bw'://开始于
				$date[$searchField]=array('LIKE',$searchString."%");
				break;
			case 'ew'://结束于
				$date[$searchField]=array('LIKE',"%".$searchString);
				break;
			case 'cn'://包含
				$date[$searchField]=array('LIKE',"%".$searchString."%");
				break;
			default:
				$date[$searchField]=array('EQ',$searchString);
				break;
			}
			return $date;
}

function makeselect($name,$table,$idt='',$where='',$option='title',$f_idvalue='id',$iscache=false){
	//$option外键的说明
	//$where外键的过滤
	//$f_idvalue外键的id
	//$idt现在的值
	if($option==''){$option='title';}
	if($where==''){$where='';}
	if($idt==''){$idt='';}
	if($f_idvalue==''){$f_idvalue='id';}
	$tmp= "	<select name=".$name." style='width:120px'>";
		$thisdao=D($table);
		if($iscache){
		$thisdao->Cache(true);
		}
		$list=$thisdao->where($where)->findAll();
		$tmp.= "<option >请选择</option>";
		foreach ($list as $row) {
			if ($idt==$row[$f_idvalue] ){$var="selected";}
			$thiscolor=getcolor($row['id']);
			$tmp.="<option value='".$row[$f_idvalue]."'  ".$var."  style='background:".$thiscolor.";' title='参数:".$row[$f_idvalue]."标题:".$row[$option]."'>".$row[$option]."</option>";
			$var='';
			$thiscolor='';
		}

		$tmp.= "</select>";
	return  $tmp;
}

function makeoption($table,$id='id',$where='',$option='title',$order,$outadd){
	//$option外键的说明
	//$where外键的过滤
	//$f_idvalue外键的id
	//$idt现在的值
	if($option==''){$option='title';}
	if($where==''){$where='';}
	if($id==''){$id='';}
	if($order==''){$order='id desc';}
	if($outadd==''){$outadd='>';}
		$thisdao=D($table);
		//$thisdao->Cache(true);
		$options=explode(',',$option);
		$list=$thisdao->where($where)->field($option.','.$id)->order($order)->findAll();
		for ($i = 0; $i < count($list); $i++) {
				$optionkey[]=$list[$i][$id];
				foreach($options as $optionlist){
					$var.=$outadd.$list[$i][$optionlist];
				}
				$optionval[]=$var;
				$var='';
			}
		$tmp=array_combine($optionkey,$optionval);

	return  $tmp;
}

 function copytable($daoname,$inpid,$pidf='pid',$inoldid){
 	//用途拷贝一个表生成一个新表
 		 $daoname;//modelname
 		 $inpid;//新的上级参数值
 		 $pidf;//上级参数的字[PID]
 		 $inoldid;//原来的上级的值

		$table=D($daoname);//引入MODEL
		$tabledata=$table->where("$pidf=$inoldid")->findall();


		foreach ($tabledata as $creatdb){
			$creatdb[$pidf]=$inpid;
			$oldid=$creatdb['id'];
			$creatdb['id']='';//clear id as null
			$table->create($creatdb);
			$table->add();
			$newid=$table->getLastInsID();
			copytable('Sys_fields',$newid,'pid',$oldid);
		}

}


function delbypid($daoname,$inpid,$pidf='pid'){
	$table=D($daoname);//引入MODEL
	$tabledata=$table->where($pidf.'='.$inpid)->findall();//找出相应的数据
	foreach ($tabledata as $creatdb){
		$oldid=$creatdb['id'];
		delbypid('Sys_fields',$oldid,'pid');
	}
	//$table->deleteAll('pid='.$inpid);
	$table->where('pid='.$inpid)->delete();
}

function clean_html($value){
  $value = htmlspecialchars($value, ENT_QUOTES);
  $value = strtr($value, array(
    '('   => '&#40;',
    ')'   => '&#41;'
  ));
  return nl2br($value);
}

function un_clean_html($value){
  $value = htmlspecialchars_decode($value);
  $value = strtr($value, array(
    '&#40;'   => '(',
    '&#41;'   => ')'
  ));
  return nl2br($value);
}



function remover($string, $sep1, $sep2)
{
	//获得两个字符串里的值
	$len_sep1=strpos($string,$sep1);//sep1所在的位置
	if($len_sep1===false){//看看有没有第一个字符
		return false;
	}else{
		$leng1=strlen($sep1); //计算第一个字符占位数
		$leng2=strlen($sep2); //计算第2个字符占位数
		$len_sep2=strpos($string,$sep2);//sep2所在的位置
		$string = substr($string,$len_sep1+$leng1);//除去sep2
		return $string;
	}
}

function toDate($time,$format='Y年m月d日 H:i:s')
{
	if( empty($time)) {
		return '';
	}
    $format = str_replace('#',':',$format);
	return date(auto_charset($format),$time);
}


function msg($info,$isok=1)
{
	$msgtime=microtime();
	if($isok==1){
	echo "<font style='font-size:12px'>".$info."</font>";
	}else{
	echo "<font style='font-size:12px;color:red'>".$info."</font>";
	}
	echo "<a name='".$msgtime."'></a>";
	echo "<script language='JavaScript'>document.location.href='#".$msgtime."';</script>";
	 ob_flush();
	 flush();
}

function tpmk_dir($dir, $mode = 0755)
{//tp的生成缓存经常没法完全加载,所以改了
  if (is_dir($dir) || @mkdir($dir,$mode)) return true;
  if (!tpmk_dir(dirname($dir),$mode)) return false;
  return @mkdir($dir,$mode);
}

function tpmkdirs($dirs,$mode=0777)
{//tp的生成缓存经常没法完全加载,所以改了
    if(is_string($dirs)) {
        $dirs  = explode(',',$dirs);
    }
    foreach ($dirs as $dir){
        if(!is_dir($dir))  mkdir($dir,$mode);
    }
}

?>