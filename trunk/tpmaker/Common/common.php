<?php

function getsorttype($talbe,$img=0){

	 if($_REQUEST['order']==$talbe){
           if($_REQUEST['sort']=="desc"){
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
			$thisdao=D($tb);
			$thisdao->Cache(true); 
			$list=$thisdao->find($o_col.'='.$id,$col);
		return $list[$col];
		}	
	}

function getcolor($id)
	{
		if(S('color'.$id)==""){
			$thisdao=D('sub_color');
			$list=$thisdao->find('id='.$id,'title');
			S('color'.$id,$list['title']);
			return $list['title'];
		}		
		else
		{
			return S('color'.$id);
		}	
	}
	
function makeselect($name,$table,$idt='',$where='',$option='title',$f_idvalue='id'){
	//$option外键的说明
	//$where外键的过滤
	//$f_idvalue外键的id
	//$idt现在的值
	if($option==''){$option='title';}
	if($where==''){$where='';}
	if($idt==''){$idt='';}
	if($f_idvalue==''){$f_idvalue='id';}
	$tmp= "	<select name=".$name.">";
		$thisdao=D($table);
		$thisdao->Cache(true); 
		$list=$thisdao->findAll($where);
		foreach ($list as $row) {
			if ($idt==$row[$f_idvalue] ){$var="selected";}
			$thiscolor=getcolor($row['id']);
			$tmp.="<option value='".$row[$f_idvalue]."'  ".$var."  style='background:".$thiscolor.";' title='参数:".$row[$f_idvalue]."标题:".$row[$option]."'>".$row[$option]."</option>";	
			$var='';
			$thiscolor='';
		}
		$tmp.= "</select>";


	echo $tmp;
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
		$list=$thisdao->findAll($where,$option.','.$id,$order);
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
 		 $daoname;//modelname
 		 $inpid;//新的上级参数值
 		 $pidf;//上级参数的字[PID]
 		 $inoldid;//原来的上级的值
 		 
		$table=D($daoname);//引入MODEL
		

		foreach ($tabledata as $creatdb){
			$creatdb[$pidf]=$inpid;
			$oldid=$creatdb['id'];
			$table->create($creatdb);
			$table->add();
			$newid=$table->getLastInsID();
			copytable('sys_fields',$newid,'pid',$oldid);
		}
}


function delbypid($daoname,$inpid,$pidf='pid'){
	$table=D($daoname);//引入MODEL
	$tabledata=$table->findall($pidf.'='.$inpid);//找出相应的数据
	foreach ($tabledata as $creatdb){
		$oldid=$creatdb['id'];
		delbypid('sys_fields',$oldid,'pid');
	}
	$table->deleteAll('pid='.$inpid);
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


function toDate($time,$format='Y年m月d日 H:i:s') 
{
	if( empty($time)) {
		return '';
	}
    $format = str_replace('#',':',$format);
	return date(auto_charset($format),$time);
}
?>