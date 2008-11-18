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
var URL = '/tpmaker/index.php/Sys_tables';
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
		ThinkAjax.sendForm('form_update','/tpmaker/index.php/Sys_tables/updateform/',complete,'result');
	}
	function addbtn(){
		ThinkAjax.sendForm('form_add','/tpmaker/index.php/Sys_tables/addform/',complete,'result');
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
<script LANGUAGE="JavaScript">
function viewfields(id){
 location.href  ="/tpmaker/index.php/sys_fields/index/pid/"+id;
}
</script>
<fieldset >
	<legend>当前项目的数据表: <font class="blue"><?php echo ($projectname) ?></font></legend>

<!--  功能操作区域  -->
<table width="100%"   cellpadding=0 cellspacing=0 >
	<tr>
		<td width="60%">
	<input type="button"  onclick="location.href='/tpmaker/index.php/Sys_tables/index/pid/<?php echo ($_GET['pid']) ?>'" class="button1" value="刷新">	
	<input type="button"  onclick="del()" class="button1" value="删除数据">
	<input type="button"  onclick="upbtn()" class="button1" value="更新数据">
	<input type="button"  onclick="location.href='/tpmaker/index.php/Sys_tables/sort/pid/<?php echo ($_GET['pid']) ?>'" class="button1" value="排序">
	<input type="button"  onclick="location.href='/tpmaker/index.php/Sys_tables/adv/pid/<?php echo ($_GET['pid']) ?>'" class="button1" value="+高级视图模式">
		</td>
		<td >
		<DIV  id="myMenuID"></DIV>
      <script language="JavaScript" type="text/javascript">
		var myMenu =
		[
			['▲','高级操作列表',null,null,'本项目高级操作列表',
				['+', 'COPY本项目生成新项目', 'javascript:gourlbyaction("copy,<?php echo ($_GET['pid']) ?>");', null,'COPY本项目生成新项目'],
				['+', '生成本项目程序文件', 'javascript:gourlbyaction("buidepro,<?php echo ($_GET['pid']) ?>");', null, '生成本项目程序文件'],
				['+', '查看本项目效果[需先生成]', '/<?php echo ($projecturl) ?>', 'blank', '查看本项目效果[需先生成]'],
				['+', '生成本项目数据字典', 'javascript:gourlbyaction("buide,<?php echo ($_GET['pid']) ?>");', null, '生成本项目数据字典'],
			],
		];
		cmDraw ('myMenuID', myMenu, 'hbr', cmThemeOffice, 'ThemeOffice');
		</script> 
		</td>
		<td align="right"><?php echo ($page) ?></td>
	</tr>
</table>

<!-- 功能操作区域结束 -->
</fieldset>
<fieldset>

<!-- 列表显示区域  -->
		<!-- Myhtml 系统列表组件开始 --><form name="form_update" id="form_update" method="POST">

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
				<A HREF="javascript:sortBy('title','<?php echo getsorttype('title');?>','index')" title="按照表名[英名]排序">表名[英名]<?php echo getsorttype('title',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('list','<?php echo getsorttype('list');?>','index')" title="按照列表排序">列表<?php echo getsorttype('list',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('view','<?php echo getsorttype('view');?>','index')" title="按照详细排序">详细<?php echo getsorttype('view',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('add','<?php echo getsorttype('add');?>','index')" title="按照增加排序">增加<?php echo getsorttype('add',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('del','<?php echo getsorttype('del');?>','index')" title="按照删除排序">删除<?php echo getsorttype('del',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('edit','<?php echo getsorttype('edit');?>','index')" title="按照编辑排序">编辑<?php echo getsorttype('edit',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('search','<?php echo getsorttype('search');?>','index')" title="按照搜索排序">搜索<?php echo getsorttype('search',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('searchtype','<?php echo getsorttype('searchtype');?>','index')" title="按照搜索形式排序">搜索形式<?php echo getsorttype('searchtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('isaction','<?php echo getsorttype('isaction');?>','index')" title="按照活动    排序">活动    <?php echo getsorttype('isaction',1);?></A></Th><th >操作</th></TR>
		<?php if(is_array($list)): ?><?php $i = 0; ?><?php if( count($list)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><td><input type="checkbox" name="key"	value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>"> </td><TD>
			<input name="id[]" type="hidden" value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>">
			</TD><TD>
			<input name="caption[]" value="<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>" size="20">
			</TD><TD>
			<input name="title[]" value="<?php echo (is_array($list)?$list["title"]:$list->title) ?>" size="8">
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
			</TD><TD><A HREF="javascript:viewfields('<?php echo (is_array($list)?$list["id"]:$list->id) ?>')">查看</A> 
				</TD>
		</TR><?php endforeach; ?><?php endif; ?><?php endif; ?>
		</table><?php if(C("TOKEN_ON")):?><input type="hidden" name="<?php echo C("TOKEN_NAME");?>" value="<?php echo Session::get(C("TOKEN_NAME")); ?>"/><?php endif;?></form>
		<!--form_update完成 -->
		
		        <!--form_add开始 -->
		        <form name="form_add" id="form_add" method="POST">

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
				<A HREF="javascript:sortBy('title','<?php echo getsorttype('title');?>','index')" title="按照表名[英名]排序">表名[英名]<?php echo getsorttype('title',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('list','<?php echo getsorttype('list');?>','index')" title="按照列表排序">列表<?php echo getsorttype('list',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('view','<?php echo getsorttype('view');?>','index')" title="按照详细排序">详细<?php echo getsorttype('view',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('add','<?php echo getsorttype('add');?>','index')" title="按照增加排序">增加<?php echo getsorttype('add',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('del','<?php echo getsorttype('del');?>','index')" title="按照删除排序">删除<?php echo getsorttype('del',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('edit','<?php echo getsorttype('edit');?>','index')" title="按照编辑排序">编辑<?php echo getsorttype('edit',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('search','<?php echo getsorttype('search');?>','index')" title="按照搜索排序">搜索<?php echo getsorttype('search',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('searchtype','<?php echo getsorttype('searchtype');?>','index')" title="按照搜索形式排序">搜索形式<?php echo getsorttype('searchtype',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('isaction','<?php echo getsorttype('isaction');?>','index')" title="按照活动    排序">活动    <?php echo getsorttype('isaction',1);?></A></Th><th >操作</th></TR>
		

        <TR><td><img src="/tpmaker/Tpl/default/Public/images/right_up.gif" border=0></td><TD>
			
			</TD><TD>
			<input name="caption" value="" size="20">
			</TD><TD>
			<input name="title" value="" size="8">
			</TD><TD>
			<?php echo makeselect('list','sub_yesno',$list['list']);?>
			</TD><TD>
			<?php echo makeselect('view','sub_yesno',$list['view']);?>
			</TD><TD>
			<?php echo makeselect('add','sub_yesno',$list['add']);?>
			</TD><TD>
			<?php echo makeselect('del','sub_yesno',$list['del']);?>
			</TD><TD>
			<?php echo makeselect('edit','sub_yesno',$list['edit']);?>
			</TD><TD>
			<?php echo makeselect('search','sub_yesno',$list['search']);?>
			</TD><TD>
			<?php echo makeselect('searchtype','tab_searchtype',$list['searchtype']);?>
			</TD><TD>
			<?php echo makeselect('isaction','sub_yesno',$list['isaction']);?>
			</TD><td><input type="button"  class="button1" onClick="addbtn();" value="增加"></td></TR><!--form_add完成 --></TABLE><?php if(C("TOKEN_ON")):?><input type="hidden" name="<?php echo C("TOKEN_NAME");?>" value="<?php echo Session::get(C("TOKEN_NAME")); ?>"/><?php endif;?></form><!--Myhtml系统列表组件结束 -->
<input type="hidden" name="pid" value="<?php echo ($_REQUEST['pid']) ?>">
<!--  分页显示区域 -->
</fieldset>

</BODY>
</HTML>