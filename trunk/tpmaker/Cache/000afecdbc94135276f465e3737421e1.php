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
var URL = '/tpmaker/index.php/sys_fields';
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
		ThinkAjax.sendForm('form_update','/tpmaker/index.php/sys_fields/updateform/',complete,'result');
	}
	function addbtn(){
		ThinkAjax.sendForm('form_add','/tpmaker/index.php/sys_fields/addform/',complete,'result');
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
<SCRIPT LANGUAGE="JavaScript">
 <!--


function outkeyseting(id){ //设定外键
 //location.href  = URL+"/outkeyseting/id/"+id;
 window.open(URL+"/outkeyseting/id/"+id, 'mini');
}


function setissystem(id){ //系统保留的参数
 //location.href  = URL+"/outkeyseting/id/"+id;
 window.open(URL+"/setissystem/id/"+id, 'mini');
}

 //-->
 </SCRIPT>
<!-- 主体内容  -->

<fieldset >
	<legend>当前数据表的数据结构: <font class="blue"><?php echo ($tablename) ?></font></legend>

<!--  功能操作区域  -->
<table width="100%"   cellpadding=0 cellspacing=0 >
	<tr>
		<td width="70%">

	<input type="button" onclick="window.open('/tpmaker/index.php/sys_fields/table/id/<?php echo ($_GET['pid']) ?>', 'mini');" class="button1" value="查看表信息">
	<input type="button" onclick="location.href='/tpmaker/index.php/sys_fields/index/pid/<?php echo ($_GET['pid']) ?>'" class="button1" value="刷新">
	<input type="button" onclick="window.open('/tpmaker/index.php/sys_fields/add/pid/<?php echo ($_GET['pid']) ?>', 'mini');" class="button1" value="增加数据">
	<input type="button" onclick="del()" class="button1" value="删除数据">
	<input type="button" class="button1" onclick="upbtn();" value="更新数据">
	<input type="button" onclick="window.open('/tpmaker/index.php/sys_fields/sort/pid/<?php echo ($_GET['pid']) ?>', 'mini');" class="button1" value="排序数据">
		</td>
		<td align="left">
		<DIV  id="myMenuID"></DIV>
      <script language="JavaScript" type="text/javascript">
		var myMenu =
		[
			['▲','本数据表高级操作列表',null,null,'高级操作列表',
				['+', '套用默认选项于本数据表', '', null,'套用默认选项于本数据表'],
				['+', '拷贝本表生成新数据表', '/tpmaker/index.php/sys_fields/copyselect/pid/<?php echo ($_GET['id']) ?>', 'mini', '拷贝本表生成新数据表'],
				['+', '基于本数据表生成视图', '', null, '基于本数据表生成视图'],
				['+', '检查本数据表合理性', '', null, '检查本数据表合理性'],
			],
		];
		cmDraw ('myMenuID', myMenu, 'hbr', cmThemeOffice, 'ThemeOffice');
		</script> 
		</td>
		<td align="right" >


			<table width="100%" cellpadding=0 cellspacing=0>
			<tr >
			<td align="right"><?php echo ($page) ?></td>
			</tr>
			</table>

		</td>
	</tr>
</table>

<!-- 功能操作区域结束 -->
</fieldset>
<fieldset>

<form name="form_update" id="form_update" method="POST">
<!-- 列表显示区域  -->
<div class="tab-pane" id="tabPane1">

<script type="text/javascript">
tp1 = new WebFXTabPane( document.getElementById( "tabPane1" ) );
</script>

  <div class="tab-page" id="tabPage10">
		<h2 class="tab">系统自定义数据表</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage10" ) );</script>
		

		<TABLE id="checkList" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<th width="8">
				<input type="checkbox" id="check" onclick="CheckAll('checkList')">
			</th>
			<Th>
				</Th>
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('name','<?php echo getsorttype('name');?>','index')" title="按照表名[英文]排序">表名[英文]<?php echo getsorttype('name',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('fieldtype','<?php echo getsorttype('fieldtype');?>','index')" title="按照字段属性排序">字段属性<?php echo getsorttype('fieldtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('fieldlenght','<?php echo getsorttype('fieldlenght');?>','index')" title="按照字段长度排序">字段长度<?php echo getsorttype('fieldlenght',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('seqNo','<?php echo getsorttype('seqNo');?>','index')" title="按照排序   排序">排序   <?php echo getsorttype('seqNo',1);?></A></Th></TR>
		<?php if(is_array($list)): ?><?php $i = 0; ?><?php if( count($list)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><td><input type="checkbox" name="key"	value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>"> </td><TD>
			<input name="id[]" type="hidden" value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>">
			</TD><TD>
			<input name="caption[]" value="<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>" size="12">
			</TD><TD>
			<input name="name[]" value="<?php echo (is_array($list)?$list["name"]:$list->name) ?>" size="8">
			</TD><TD>
			<?php echo makeselect('fieldtype[]','sub_fieldtype',$list['fieldtype']);?>
			</TD><TD>
			<input name="fieldlenght[]" value="<?php echo (is_array($list)?$list["fieldlenght"]:$list->fieldlenght) ?>" size="4">
			</TD><TD>
			<input name="seqNo[]" value="<?php echo (is_array($list)?$list["seqNo"]:$list->seqNo) ?>" size="1">
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>
  <div class="tab-page" id="tabPage3" >
		<h2 class="tab">基本操作和默认值设定</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage3" ) );</script>
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('viewtype','<?php echo getsorttype('viewtype');?>','index')" title="按照详细信息类型排序">详细信息类型<?php echo getsorttype('viewtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('edittype','<?php echo getsorttype('edittype');?>','index')" title="按照编辑形式排序">编辑形式<?php echo getsorttype('edittype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('addtype','<?php echo getsorttype('addtype');?>','index')" title="按照增加形式排序">增加形式<?php echo getsorttype('addtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('indexvar','<?php echo getsorttype('indexvar');?>','index')" title="按照默认值[支持函数]排序">默认值[支持函数]<?php echo getsorttype('indexvar',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('autotype','<?php echo getsorttype('autotype');?>','index')" title="按照自动填充排序">自动填充<?php echo getsorttype('autotype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('issystem','<?php echo getsorttype('issystem');?>','index')" title="按照系统保留       排序">系统保留       <?php echo getsorttype('issystem',1);?></A></Th><th >操作</th></TR>
		<?php if(is_array($list_val)): ?><?php $i = 0; ?><?php if( count($list_val)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list_val as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>
			</TD><TD>
			<?php echo makeselect('viewtype[]','sub_viewtype',$list['viewtype']);?>
			</TD><TD>
			<?php echo makeselect('edittype[]','sub_edittype',$list['edittype']);?>
			</TD><TD>
			<?php echo makeselect('addtype[]','sub_addtype',$list['addtype']);?>
			</TD><TD>
			<input name="indexvar[]" value="<?php echo (is_array($list)?$list["indexvar"]:$list->indexvar) ?>" size="20">
			</TD><TD>
			<?php echo makeselect('autotype[]','Sub_auto',$list['autotype']);?>
			</TD><TD>
			<?php echo makeselect('issystem[]','sub_issystem',$list['issystem']);?>
			</TD><TD><A HREF="javascript:setissystem('<?php echo (is_array($list)?$list["id"]:$list->id) ?>')">设定保留信息</A> 
				</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>

  <div class="tab-page" id="tabPage1">
		<h2 class="tab">LIST设定</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage1" ) );</script>
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('islist','<?php echo getsorttype('islist');?>','index')" title="按照是否列表排序">是否列表<?php echo getsorttype('islist',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('islistviewtype','<?php echo getsorttype('islistviewtype');?>','index')" title="按照列表查看类型排序">列表查看类型<?php echo getsorttype('islistviewtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('islistwidth','<?php echo getsorttype('islistwidth');?>','index')" title="按照列表长度排序">列表长度<?php echo getsorttype('islistwidth',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('iswrap','<?php echo getsorttype('iswrap');?>','index')" title="按照是否排序    排序">是否排序    <?php echo getsorttype('iswrap',1);?></A></Th></TR>
		<?php if(is_array($list_genneral)): ?><?php $i = 0; ?><?php if( count($list_genneral)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list_genneral as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>
			</TD><TD>
			<?php echo makeselect('islist[]','sub_yesno',$list['islist']);?>
			</TD><TD>
			<?php echo makeselect('islistviewtype[]','sub_viewtype',$list['islistviewtype']);?>
			</TD><TD>
			<input name="islistwidth[]" value="<?php echo (is_array($list)?$list["islistwidth"]:$list->islistwidth) ?>" size="4">
			</TD><TD>
			<?php echo makeselect('iswrap[]','sub_yesno',$list['iswrap']);?>
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>
  <div class="tab-page" id="tabPage2" >
		<h2 class="tab">系统验证设定</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage2" ) );</script>
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('request','<?php echo getsorttype('request');?>','index')" title="按照必填排序">必填<?php echo getsorttype('request',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('validate','<?php echo getsorttype('validate');?>','index')" title="按照验证形式排序">验证形式<?php echo getsorttype('validate',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('validate_tex','<?php echo getsorttype('validate_tex');?>','index')" title="按照错误提示[不填为默认]排序">错误提示[不填为默认]<?php echo getsorttype('validate_tex',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('validate_reg','<?php echo getsorttype('validate_reg');?>','index')" title="按照自定义正则验证   排序">自定义正则验证   <?php echo getsorttype('validate_reg',1);?></A></Th></TR>
		<?php if(is_array($list_val)): ?><?php $i = 0; ?><?php if( count($list_val)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list_val as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>
			</TD><TD>
			<?php echo makeselect('request[]','sub_yesno',$list['request']);?>
			</TD><TD>
			<?php echo makeselect('validate[]','sub_validate',$list['validate']);?>
			</TD><TD>
			<input name="validate_tex[]" value="<?php echo (is_array($list)?$list["validate_tex"]:$list->validate_tex) ?>" size="40">
			</TD><TD>
			<input name="validate_reg[]" value="<?php echo (is_array($list)?$list["validate_reg"]:$list->validate_reg) ?>" size="40">
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>

<div class="tab-page" id="tabPage4">
		<h2 class="tab">搜索设定</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage4" ) );</script>
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('issearch','<?php echo getsorttype('issearch');?>','index')" title="按照是否搜索排序">是否搜索<?php echo getsorttype('issearch',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('searchtype','<?php echo getsorttype('searchtype');?>','index')" title="按照一般搜索形式排序">一般搜索形式<?php echo getsorttype('searchtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('advsearchtype','<?php echo getsorttype('advsearchtype');?>','index')" title="按照高级搜索形式   排序">高级搜索形式   <?php echo getsorttype('advsearchtype',1);?></A></Th></TR>
		<?php if(is_array($list_search)): ?><?php $i = 0; ?><?php if( count($list_search)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list_search as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>
			</TD><TD>
			<?php echo makeselect('issearch[]','sub_yesno',$list['issearch']);?>
			</TD><TD>
			<?php echo makeselect('searchtype[]','sub_searchtype',$list['searchtype']);?>
			</TD><TD>
			<?php echo makeselect('advsearchtype[]','sub_searchtype',$list['advsearchtype']);?>
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>
<div class="tab-page" id="tabPage5">
		<h2 class="tab">当前外键属性</h2>
		<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage5" ) );</script>
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('outkeyis','<?php echo getsorttype('outkeyis');?>','index')" title="按照是否排序">是否<?php echo getsorttype('outkeyis',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('outkey','<?php echo getsorttype('outkey');?>','index')" title="按照外键表排序">外键表<?php echo getsorttype('outkey',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('outkeyid','<?php echo getsorttype('outkeyid');?>','index')" title="按照外键表ID排序">外键表ID<?php echo getsorttype('outkeyid',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('outkeyf','<?php echo getsorttype('outkeyf');?>','index')" title="按照外键表栏目排序">外键表栏目<?php echo getsorttype('outkeyf',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('outkeywhere','<?php echo getsorttype('outkeywhere');?>','index')" title="按照外键表过滤条件   排序">外键表过滤条件   <?php echo getsorttype('outkeywhere',1);?></A></Th><th >操作</th></TR>
		<?php if(is_array($list_outkey)): ?><?php $i = 0; ?><?php if( count($list_outkey)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list_outkey as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>
			</TD><TD>
			<?php echo makeselect('outkeyis[]','sub_yesno',$list['outkeyis']);?>
			</TD><TD>
			<input name="outkey[]" value="<?php echo (is_array($list)?$list["outkey"]:$list->outkey) ?>" size="8">
			</TD><TD>
			<input name="outkeyid[]" value="<?php echo (is_array($list)?$list["outkeyid"]:$list->outkeyid) ?>" size="6">
			</TD><TD>
			<input name="outkeyf[]" value="<?php echo (is_array($list)?$list["outkeyf"]:$list->outkeyf) ?>" size="40">
			</TD><TD>
			<input name="outkeywhere[]" value="<?php echo (is_array($list)?$list["outkeywhere"]:$list->outkeywhere) ?>" size="20">
			</TD><TD><A HREF="javascript:outkeyseting('<?php echo (is_array($list)?$list["id"]:$list->id) ?>')">快速设定</A> 
				</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
</div>

<input type="hidden" name="pid" value="<?php echo ($_REQUEST['pid']) ?>">


<?php if(C("TOKEN_ON")):?><input type="hidden" name="<?php echo C("TOKEN_NAME");?>" value="<?php echo Session::get(C("TOKEN_NAME")); ?>"/><?php endif;?></form>
</fieldset>

<iframe scrolling="auto"  width="100%" height="200px" name="mini" src="/tpmaker/index.php/sys_fields/Table/id/<?php echo ($_REQUEST['pid']) ?>"  frameborder="0"></iframe>


</BODY>
</HTML>