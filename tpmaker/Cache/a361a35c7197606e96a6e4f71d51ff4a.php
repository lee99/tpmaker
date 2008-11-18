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
<!-- 主体内容  -->
<SCRIPT LANGUAGE="JavaScript">
 <!--


	function upbtnthis(){
		ThinkAjax.sendForm('form_update','/tpmaker/index.php/Sys_tables/updateform/',complete,'result');
	}

	function complete(data,status){
		if (status==1)
		{
		location.href=REQUEST_URI;
		//parent.location.reload();
		}
	}

 //-->
 </SCRIPT>
<fieldset >
	<legend>本数据表基本信息</legend>
<form  id="form_update" method="POST" name='form_update'>
<!-- 列表显示区域  -->
<input type="button"  onclick="upbtnthis();" class="button1" value="更新本页数据">
<input type="button" onclick="window.open('/tpmaker/index.php/sys_fields/copyselect/pid/<?php echo ($_GET['id']) ?>', 'mini');" class="button1" value="拷贝生成新表">
		

		<TABLE id="checkList" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				</Th>
			<Th>
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','table')" title="按照标题排序">标题<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('title','<?php echo getsorttype('title');?>','table')" title="按照表名[英名]排序">表名[英名]<?php echo getsorttype('title',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('ismodel','<?php echo getsorttype('ismodel');?>','table')" title="按照模板排序">模板<?php echo getsorttype('ismodel',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('datemodelid','<?php echo getsorttype('datemodelid');?>','table')" title="按照公用数据模板   排序">公用数据模板   <?php echo getsorttype('datemodelid',1);?></A></Th></TR>
		<?php if(is_array($list)): ?><?php $i = 0; ?><?php if( count($list)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<input name="id[]" type="hidden" value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>">
			</TD><TD>
			<input name="caption[]" value="<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>" size="20">
			</TD><TD>
			<input name="title[]" value="<?php echo (is_array($list)?$list["title"]:$list->title) ?>" size="20">
			</TD><TD>
			<?php echo makeselect('ismodel[]','sub_yesno',$list['ismodel']);?>
			</TD><TD>
			<?php echo makeselect('datemodelid[]','sys_tables',$list['datemodelid'],'ismodel<>0 and pid='.$list['pid']);?>
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
		

		<TABLE id="checkList2" class="list"  cellpadding="0" cellspacing="1">
		<TR class="row" >
		
			<Th>
				<A HREF="javascript:sortBy('edittype','<?php echo getsorttype('edittype');?>','table')" title="按照操作模式排序">操作模式<?php echo getsorttype('edittype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('list','<?php echo getsorttype('list');?>','table')" title="按照列表排序">列表<?php echo getsorttype('list',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('view','<?php echo getsorttype('view');?>','table')" title="按照详细排序">详细<?php echo getsorttype('view',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('add','<?php echo getsorttype('add');?>','table')" title="按照增加排序">增加<?php echo getsorttype('add',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('del','<?php echo getsorttype('del');?>','table')" title="按照删除排序">删除<?php echo getsorttype('del',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('edit','<?php echo getsorttype('edit');?>','table')" title="按照编辑排序">编辑<?php echo getsorttype('edit',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('search','<?php echo getsorttype('search');?>','table')" title="按照搜索排序">搜索<?php echo getsorttype('search',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('searchtype','<?php echo getsorttype('searchtype');?>','table')" title="按照搜索形式排序">搜索形式<?php echo getsorttype('searchtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('isaction','<?php echo getsorttype('isaction');?>','table')" title="按照活动   排序">活动   <?php echo getsorttype('isaction',1);?></A></Th></TR>
		<?php if(is_array($list2)): ?><?php $i = 0; ?><?php if( count($list2)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list2 as $key=>$list2): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><TD>
			<?php echo makeselect('edittype[]','tab_edittype',$list['edittype']);?>
			</TD><TD>
			<?php echo makeselect('list[]','sub_yesno',$list['list']);?>
			</TD><TD>
			<?php echo makeselect('view[]','sub_yesno',$list['view']);?>
			</TD><TD>
			<?php echo makeselect('add[]','sub_yesno',$list['add']);?>
			</TD><TD>
			<?php echo makeselect('del[]','sub_yesno',$list['del']);?>
			</TD><TD>
			<?php echo makeselect('edit[]','sub_yesno',$list['edit']);?>
			</TD><TD>
			<?php echo makeselect('search[]','sub_yesno',$list['search']);?>
			</TD><TD>
			<?php echo makeselect('searchtype[]','tab_searchtype',$list['searchtype']);?>
			</TD><TD>
			<?php echo makeselect('isaction[]','sub_yesno',$list['isaction']);?>
			</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table>
		<!--form_update完成 -->
		</TABLE><!--Myhtml系统列表组件结束 -->
<input type="hidden" name="pid" value="<?php echo ($_REQUEST['pid']) ?>">


<?php if(C("TOKEN_ON")):?><input type="hidden" name="<?php echo C("TOKEN_NAME");?>" value="<?php echo Session::get(C("TOKEN_NAME")); ?>"/><?php endif;?></form>
</fieldset>
<fieldset>
<legend>说明</legend>
如果本表的活动状态为否的话,则本表不生成相应的代码!<br>

</fieldset>

</BODY>
</HTML>