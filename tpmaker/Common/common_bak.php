<?php

function toDate($time,$format='Y年m月d日 H:i:s')
{
	if( empty($time)) {
		return '';
	}
    $format = str_replace('#',':',$format);
	return date(auto_charset($format),$time);
}


function getPluginNameUri($pluginId)
{
    $dao = D("PlugIn");
    $vo  = $dao->find('id="'.$pluginId.'"','','id,uri,name');
    $uri  =  '<a href="'.$vo->uri.'" target="_blank" >'.$vo->name.'</a>';
    return $uri;
}

function getUserType($typeId)
{
	if(Session::is_set('userType')) {
		$type	=	Session::get('userType');
		return $type[$typeId];
	}
	$dao	=	D("UserType");
	$typeList	=	$dao->findAll('','','id,name,status');
	$type	=	$typeList->getCol('id,name');
	$name	=	$type[$typeId];
	Session::set('userType',$type);
    return $name;

}



function getGroupName($id)
{
    if($id==0) {
    	return '无上级组';
    }
	if(Session::is_set('groupName')) {
		$name	=	Session::get('groupName');
		return $name[$id];
	}
	$dao	=	D("Group");
	$list	=	$dao->findAll('','','id,name');
	$nameList	=	$list->getCol('id,name');
	$name	=	$nameList[$id];
	Session::set('groupName',$nameList);
    return $name;

}

function getUserName($userId)
{
    if($userId==0) {
    	return '';
    }
	if(Session::is_set('userName')) {
		$name	=	Session::get('userName');
		return $name[$userId];
	}
	$dao	=	D("User");
	$list	=	$dao->findAll('','','id,nickname');
	$nameList	=	$list->getCol('id,nickname');
	$name	=	$nameList[$userId];
	Session::set('userName',$nameList);
    return $name;
}

function dateDiff($date1,$date2)
{
	import('ORG.Date.Date');
	$date	=	new Date(intval($date1));
	$return	=	$date->dateDiff($date2);
	if($return<=1) {
		$return =	'今天';
	}elseif($return <=2) {
		$return = '昨天';
	}elseif($return <=7) {
		$return = $date->cWeekday;
	}
	elseif($return>7 && $return <14) {
		$return = '上周';
	}
	else {
		$return = '两周前';
	}
	return $return;
}

/**
 +----------------------------------------------------------
 * 取得标题的截断显示 默认截断长度为12 个字
 *
 +----------------------------------------------------------
 * @param string $title 标题
 * @param integer $length 截断长度 默认12
 +----------------------------------------------------------
 * @return string
 +----------------------------------------------------------
 */
function getShortTitle($title,$length=12)
{
    return msubstr ($title,0,$length,OUTPUT_CHARSET);
}


function getUser($id)
{
	if(Session::is_set('user')) {
		$user	=	Session::get('user');
		return $user[$id];
	}
	import('@.Dao.UserDao');
	$dao	=	new UserDao();
	$userList	=	$dao->findAll('','','id,name,nickname');
	$user	=	$userList->getCol('id,name');
	$name	=	$user[$id];
	Session::set('user',$user);
    return $name;
}

function getMenu() {

	$dao=D("Node");
	$vo	=$dao->findAll('menulevel=0');
	//$uri=$vo->$id;
	//$tablist=
	//dump($vo);
	foreach($vo->getIterator() as $key=>$menulist) {

		$tablist.=buideMenu($menulist->id);

	}
	return $tablist;

}


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

 function copytable($daoname,$inpid,$pidf='pid',$inoldid){
 		 $daoname;//modelname
 		 $inpid;//新的上级参数值
 		 $pidf;//上级参数的字[PID]
 		 $inoldid;//原来的上级的值
 		 
		$table=D($daoname);//引入MODEL
		$tabledata=$table->findall($pidf.'='.$inoldid);//找出相应的数据
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
?>