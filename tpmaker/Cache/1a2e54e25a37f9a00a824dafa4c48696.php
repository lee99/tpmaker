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
<script language="Javascript">
function expandLeft()
{
    var MainFrame = parent.document.getElementById('myFrame');
    var Control   = document.getElementById("ControlLeft");
    if(MainFrame.cols == "180,9,*")
    {
        MainFrame.cols = "0,9,*";
        Control.src    = IMG_PATH+"late_right.gif";
    }
    else
    {
        MainFrame.cols = "180,9,*";
        Control.src    = IMG_PATH+"late_left.gif";
    }
}
</script>


<a href="#" onclick="expandLeft();"  >
<div style="text-align:left;height:600px;margin:0;padding:0;cursor:hand;" onmouseover="this.style.backgroundColor='#DBDFE7';"  onmouseout="this.style.backgroundColor='#F6F6F6';">
<table height="100%" style="border:0;border-collapse:collapse;">
<tr><td style="padding:0;vertical-align:middle;margin:0;border:0;">

<img id="ControlLeft" src="/tpmaker/Tpl/default/Public/images/late_left.gif" />
</td></tr>
</table>
</div>
</a>


</BODY>
</HTML>