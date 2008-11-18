<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo (C("WEB_TITLE")) ?></title>
<link rel="stylesheet" type="text/css" href="/tpmaker/Tpl/default/Public/css/tpmaker.css" />

<script type="text/javascript">
var JS_PATH ="/tpmaker/Tpl/default/Public/js/";
var IMG_PATH ="/tpmaker/Tpl/default/Public/images/";
var URL = '/tpmaker/index.php/Index';
var APP	 =	 '/tpmaker/index.php';
var PUBLIC = '/Public';
var REQUEST_URI = '<?php echo (is_array($_SERVER)?$_SERVER["REQUEST_URI"]:$_SERVER->REQUEST_URI) ?>';
</script>
<script type='text/javascript' src='/Public/Js/Base.js'></script> 
<script type='text/javascript' src='/Public/Js/prototype.js'></script> 
<script type='text/javascript' src='/Public/Js/Ajax/ThinkAjax.js'></script> 
<script type='text/javascript' src='/Public/Js/Form/CheckForm.js'></script> 
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/Common.js"></script>
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/dtree.js"></script>
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/JSCookMenu.js"></script>
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/tabpane/local/webfxlayout.js"></script>
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/tabpane/local/webfxapi.js"></script>
	<script type="text/javascript" src="/tpmaker/Tpl/default/Public/js/tabpane/js/tabpane.js"></script>
<link type="text/css" rel="StyleSheet" href="/tpmaker/Tpl/default/Public/js/tabpane/css/tab.webfx.css" />
<style type="text/css">

.dynamic-tab-pane-control .tab-page {
	height:		255px;
	overflow:	auto;
}

</style>

<SCRIPT language='JavaScript'>
<!--
var cmThemeOfficeBase = IMG_PATH;

var cmThemeOffice =
{

  	// HTML code to the left of the folder item
  	mainFolderLeft: '&nbsp;',
  	// HTML code to the right of the folder item
  	mainFolderRight: '&nbsp;',
	// HTML code to the left of the regular item
	mainItemLeft: '&nbsp;',
	// HTML code to the right of the regular item
	mainItemRight: '&nbsp;',

	// sub menu display attributes

	// 0, HTML code to the left of the folder item
	folderLeft: '<img alt="" src="' + cmThemeOfficeBase + 'spacer.gif">',
	// HTML code to the right of the folder item
	folderRight: '<img alt="" src="' + cmThemeOfficeBase + 'arrow.gif">',
	// HTML code to the left of the regular item
	itemLeft: '<img alt="" src="' + cmThemeOfficeBase + 'spacer.gif">',
	// HTML code to the right of the regular item
	itemRight: '<img alt="" src="' + cmThemeOfficeBase + 'blank.gif">',
	// 4, cell spacing for main menu
	mainSpacing: 0,
	// 5, cell spacing for sub menus
	subSpacing: 0,
	// 6, auto dispear time for submenus in milli-seconds
	delay: 500
};

// for horizontal menu split
var cmThemeOfficeHSplit = [_cmNoAction, '<td class="ThemeOfficeMenuItemLeft"></td><td colspan="2"><div class="ThemeOfficeMenuSplit"></div></td>'];
var cmThemeOfficeMainHSplit = [_cmNoAction, '<td class="ThemeOfficeMainItemLeft"></td><td colspan="2"><div class="ThemeOfficeMenuSplit"></div></td>'];
var cmThemeOfficeMainVSplit = [_cmNoAction, '&nbsp;'];
//-->
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript">
 <!--
 	ThinkAjax.updateTip = '<IMG SRC="/tpmaker/Tpl/default/Public/images/loading2.gif" WIDTH="16" HEIGHT="16" BORDER="0" ALT="loading..." align="absmiddle"> 数据处理中...';

	function upbtn(){
		ThinkAjax.sendForm('form_update','/tpmaker/index.php/Index/updateform/',complete,'result');
	}
	function addbtn(){
		ThinkAjax.sendForm('form_add','/tpmaker/index.php/Index/addform/',complete,'result');
	}
	function complete(data,status){
		if (status==1)
		{
		location.href=REQUEST_URI;
		}
	}

 //-->
 </SCRIPT>
</head>
<body  height="100%" topmargin="0" marginheight="0" leftmargin="0" marginwidth="0">
<div class="dtree">

<script type="text/javascript">
<!--

	d = new dTree('d');
//Node(id, pid, name, url, title, target, icon, iconOpen, open)


	
	//生成project的树形菜单
	<?php if(is_array($project)): ?><?php $i = 0; ?><?php if( count($project)==0 ) : echo "" ; ?><?php else: ?><?php foreach($project as $key=>$project_vo): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?>d.add('project<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>',-1,'<?php echo (is_array($project_vo)?$project_vo["caption"]:$project_vo->caption) ?>[查看数据表]','/tpmaker/index.php/Sys_tables/index/pid/<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>',null,'mainFrame',IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');<?php endforeach; ?><?php endif; ?><?php endif; ?>	
	
	//生成model的树形菜单
	<?php if(is_array($project)): ?><?php $i = 0; ?><?php if( count($project)==0 ) : echo "" ; ?><?php else: ?><?php foreach($project as $key=>$project_vo): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?>d.add('sharemodel<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','dbbase<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','公共数据模型',null,null,null,IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');
	d.add('config<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','project<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','项目配置设定',null,null,null,IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');
	d.add('systemdb<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','dbmodel<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','系统保留数据结构',null,null,null,IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');
	d.add('dbbase<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','dbmodel<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','基本数据结构','/tpmaker/index.php/Sys_tables/index/pid/<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>',null,'mainFrame',IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');
	d.add('dbdesign<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','dbmodel<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','扩展数据结构',null,null,null,IMG_PATH+'b_relations.png',IMG_PATH+'b_relations.png');
	d.add('dbdesign01<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','dbdesign<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','基本数据模型关系图','/tpmaker/index.php/designer/index/id/<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>',null,'mainFrame');
	d.add('dbmodel<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','project<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','数据模型',null,null,null,IMG_PATH+'b_import.png',IMG_PATH+'b_import.png');
	d.add('creat<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','config<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>','项目生成','/tpmaker/index.php/index/buide/id/<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>',null,'mainFrame');<?php endforeach; ?><?php endif; ?><?php endif; ?>
	
	//生成table的树形菜单
	<?php if(is_array($table)): ?><?php $i = 0; ?><?php if( count($table)==0 ) : echo "" ; ?><?php else: ?><?php foreach($table as $key=>$table_vo): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><?php if($table_vo[ismodel] == 1): ?>d.add('table<?php echo (is_array($table_vo)?$table_vo["id"]:$table_vo->id) ?>','sharemodel<?php echo (is_array($table_vo)?$table_vo["pid"]:$table_vo->pid) ?>','<?php echo (is_array($table_vo)?$table_vo["caption"]:$table_vo->caption) ?>','/tpmaker/index.php/sys_fields/index/pid/<?php echo (is_array($table_vo)?$table_vo["id"]:$table_vo->id) ?>',null,'mainFrame');	
	<?php else: ?>
	d.add('table<?php echo (is_array($table_vo)?$table_vo["id"]:$table_vo->id) ?>','dbbase<?php echo (is_array($table_vo)?$table_vo["pid"]:$table_vo->pid) ?>','<?php echo (is_array($table_vo)?$table_vo["caption"]:$table_vo->caption) ?>','/tpmaker/index.php/sys_fields/index/pid/<?php echo (is_array($table_vo)?$table_vo["id"]:$table_vo->id) ?>',null,'mainFrame',IMG_PATH+'imgfolder<?php echo (is_array($table_vo)?$table_vo["isaction"]:$table_vo->isaction) ?>.gif',IMG_PATH+'imgfolder<?php echo (is_array($table_vo)?$table_vo["isaction"]:$table_vo->isaction) ?>.gif');<?php endif; ?><?php endforeach; ?><?php endif; ?><?php endif; ?>
		
	//生成系统保留table的树形菜单
	<?php if(is_array($systable)): ?><?php $i = 0; ?><?php if( count($systable)==0 ) : echo "" ; ?><?php else: ?><?php foreach($systable as $key=>$systable_vo): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?>d.add('table<?php echo (is_array($systable_vo)?$systable_vo["id"]:$systable_vo->id) ?>','systemdb<?php echo (is_array($systable_vo)?$systable_vo["pid"]:$systable_vo->pid) ?>','<?php echo (is_array($systable_vo)?$systable_vo["caption"]:$systable_vo->caption) ?>','/tpmaker/index.php/sys_fields/index/pid/<?php echo (is_array($systable_vo)?$systable_vo["id"]:$systable_vo->id) ?>',null,'mainFrame',IMG_PATH+'imgfolder_l.gif',IMG_PATH+'imgfolder_l.gif');<?php endforeach; ?><?php endif; ?><?php endif; ?>
	
		document.write(d);
		window.open("/tpmaker/index.php/Sys_tables/index/pid/<?php echo (is_array($project_vo)?$project_vo["id"]:$project_vo->id) ?>",'mainFrame');
		//-->
</script>

</div>


</BODY>
</HTML>