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
var URL = '/tpmaker/index.php/Sys_projects';
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
		ThinkAjax.sendForm('form_update','/tpmaker/index.php/Sys_projects/updateform/',complete,'result');
	}
	function addbtn(){
		ThinkAjax.sendForm('form_add','/tpmaker/index.php/Sys_projects/addform/',complete,'result');
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
function viewtable(id){
 window.open("/tpmaker/index.php/Index/Left/id/"+id,'leftFrame');
}
function buidepro(id){
 location.href  ="/tpmaker/index.php/Sys_tables/buidepro/id/"+id;
}


</script>
<fieldset >
	<legend>项目整体管理</legend>

<!--  功能操作区域  -->

<table width="100%"   cellpadding=0 cellspacing=0 >
	<tr>
		<td width="60%">
	<input type="button" name="delete" onclick="location.href='/tpmaker/index.php/Sys_projects/index/'" class="button1" value="刷新">
	<input type="button"  onclick="upbtn();" class="button1" value="更新本页数据">
	<input type="button" onclick="del()" class="button1" value="删除数据">
	
		</td>
		<td align="left">
		<DIV  id="myMenuID"></DIV>
      <script language="JavaScript" type="text/javascript">
		var myMenu =
		[
			['▲','项目列表高级操作',null,null,'选中项目高级操作列表',
				['+', 'COPY选中项目生成新项目', 'javascript:gourlbyaction("copy");', null,'COPY选中项目生成新项目'],
				['+', '生成选中项目程序文件', 'javascript:gourlbyaction("buidepro");', null, '生成选中项目程序文件'],
				['+', '数据库相关操作', null, null, '数据库相关操作',
					['+', '选中项目导入数据', 'javascript:gourlbyaction("importdb");', null,'选中项目导入数据'],
					['+', '选中项目导出数据', 'javascript:gourlbyaction("exportdb");', null,'选中项目导出数据'],
					['+', '选中项目创建数据', 'javascript:gourlbyaction("buidedb");', null,'选中项目创建数据'],
				],

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
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照项目名称排序">项目名称<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('proname','<?php echo getsorttype('proname');?>','index')" title="按照名称[英]排序">名称[英]<?php echo getsorttype('proname',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbname','<?php echo getsorttype('dbname');?>','index')" title="按照数据库名排序">数据库名<?php echo getsorttype('dbname',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbuser','<?php echo getsorttype('dbuser');?>','index')" title="按照用户名排序">用户名<?php echo getsorttype('dbuser',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbpassword','<?php echo getsorttype('dbpassword');?>','index')" title="按照密码排序">密码<?php echo getsorttype('dbpassword',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('tbpre','<?php echo getsorttype('tbpre');?>','index')" title="按照前辍排序">前辍<?php echo getsorttype('tbpre',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('think_pach','<?php echo getsorttype('think_pach');?>','index')" title="按照TP路径排序">TP路径<?php echo getsorttype('think_pach',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('isaction','<?php echo getsorttype('isaction');?>','index')" title="按照是否活动排序">是否活动<?php echo getsorttype('isaction',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('seqNo','<?php echo getsorttype('seqNo');?>','index')" title="按照排序   排序">排序   <?php echo getsorttype('seqNo',1);?></A></Th><th >操作</th></TR>
		<?php if(is_array($list)): ?><?php $i = 0; ?><?php if( count($list)==0 ) : echo "" ; ?><?php else: ?><?php foreach($list as $key=>$list): ?><?php ++$i;?><?php $mod = (($i % 2 )==0)?><TR  ><td><input type="checkbox" name="key"	value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>"> </td><TD>
			<input name="id[]" type="hidden" value="<?php echo (is_array($list)?$list["id"]:$list->id) ?>">
			</TD><TD>
			<input name="caption[]" value="<?php echo (is_array($list)?$list["caption"]:$list->caption) ?>" size="8">
			</TD><TD>
			<input name="proname[]" value="<?php echo (is_array($list)?$list["proname"]:$list->proname) ?>" size="8">
			</TD><TD>
			<input name="dbname[]" value="<?php echo (is_array($list)?$list["dbname"]:$list->dbname) ?>" size="6">
			</TD><TD>
			<input name="dbuser[]" value="<?php echo (is_array($list)?$list["dbuser"]:$list->dbuser) ?>" size="4">
			</TD><TD>
			<input name="dbpassword[]" value="<?php echo (is_array($list)?$list["dbpassword"]:$list->dbpassword) ?>" size="6">
			</TD><TD>
			<input name="tbpre[]" value="<?php echo (is_array($list)?$list["tbpre"]:$list->tbpre) ?>" size="2">
			</TD><TD>
			<input name="think_pach[]" value="<?php echo (is_array($list)?$list["think_pach"]:$list->think_pach) ?>" size="8">
			</TD><TD>
			<?php echo makeselect('isaction[]','sub_yesno',$list['isaction']);?>
			</TD><TD>
			<input name="seqNo[]" value="<?php echo (is_array($list)?$list["seqNo"]:$list->seqNo) ?>" size="1">
			</TD><TD><A HREF="javascript:buidepro('<?php echo (is_array($list)?$list["id"]:$list->id) ?>')">生成项目</A> <A HREF="javascript:viewtable('<?php echo (is_array($list)?$list["id"]:$list->id) ?>')">查看项目</A> 
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
				<A HREF="javascript:sortBy('caption','<?php echo getsorttype('caption');?>','index')" title="按照项目名称排序">项目名称<?php echo getsorttype('caption',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('proname','<?php echo getsorttype('proname');?>','index')" title="按照名称[英]排序">名称[英]<?php echo getsorttype('proname',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbname','<?php echo getsorttype('dbname');?>','index')" title="按照数据库名排序">数据库名<?php echo getsorttype('dbname',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbuser','<?php echo getsorttype('dbuser');?>','index')" title="按照用户名排序">用户名<?php echo getsorttype('dbuser',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('dbpassword','<?php echo getsorttype('dbpassword');?>','index')" title="按照密码排序">密码<?php echo getsorttype('dbpassword',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('tbpre','<?php echo getsorttype('tbpre');?>','index')" title="按照前辍排序">前辍<?php echo getsorttype('tbpre',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('think_pach','<?php echo getsorttype('think_pach');?>','index')" title="按照TP路径排序">TP路径<?php echo getsorttype('think_pach',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('isaction','<?php echo getsorttype('isaction');?>','index')" title="按照是否活动排序">是否活动<?php echo getsorttype('isaction',1);?></A></Th>
			<Th>
				<A HREF="javascript:sortBy('seqNo','<?php echo getsorttype('seqNo');?>','index')" title="按照排序   排序">排序   <?php echo getsorttype('seqNo',1);?></A></Th><th >操作</th></TR>
		

        <TR><td><img src="/tpmaker/Tpl/default/Public/images/right_up.gif" border=0></td><TD>
			
			</TD><TD>
			<input name="caption" value="" size="8">
			</TD><TD>
			<input name="proname" value="" size="8">
			</TD><TD>
			<input name="dbname" value="" size="6">
			</TD><TD>
			<input name="dbuser" value="" size="4">
			</TD><TD>
			<input name="dbpassword" value="" size="6">
			</TD><TD>
			<input name="tbpre" value="" size="2">
			</TD><TD>
			<input name="think_pach" value="" size="8">
			</TD><TD>
			<?php echo makeselect('isaction','sub_yesno',$list['isaction']);?>
			</TD><TD>
			<input name="seqNo" value="" size="1">
			</TD><td><input type="button"  class="button1" onClick="addbtn();" value="增加"></td></TR><!--form_add完成 --></TABLE><?php if(C("TOKEN_ON")):?><input type="hidden" name="<?php echo C("TOKEN_NAME");?>" value="<?php echo Session::get(C("TOKEN_NAME")); ?>"/><?php endif;?></form><!--Myhtml系统列表组件结束 -->


</fieldset>

</BODY>
</HTML>