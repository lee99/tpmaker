<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo (C("PROject_NAME")) ?></title>


<script type="text/javascript">
var JS_PATH ="/grid/Tpl/default/Public/js/";
var IMG_PATH ="/grid/Tpl/default/Public/images/";
var URL = '/grid/index.php/index';
var APP	 =	 '/grid/index.php';
var PUBLIC = '/Public';
var REQUEST_URI = '<?php echo (is_array($_SERVER)?$_SERVER["REQUEST_URI"]:$_SERVER->REQUEST_URI) ?>';

//编辑grid设置
var gridimgpath = '/grid/Tpl/default/Public/themes/ns/images';
var griddatatype = 'json';


</script>
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/css/css.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/themes/tree.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/themes/tabs.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/themes/ns/grid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/themes/jqModal.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/grid/Tpl/default/Public/themes/ui.datepicker.css" />

<script src="/grid/Tpl/default/Public/js/jquery.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jquery.splitter.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jquery.jqTree.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jquery.jqDynTabs.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/ui.datepicker.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jquery.jqGrid.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jqModal.js" type="text/javascript"></script>
<script src="/grid/Tpl/default/Public/js/jqDnR.js" type="text/javascript"></script>
<script type="text/javascript" src="/grid/Tpl/default/Public/js/styleswitch.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){
jQuery("#list2").jqGrid({
    // the url parameter tells from where to get the data from server
    // adding ?nd='+new Date().getTime() prevent IE caching
    url:'http://127.0.0.1/jgrid/server.php?q=2&nd='+new Date().getTime(),
    datatype:griddatatype,
   	colNames:['中文测试No','Date', 'Client', 'Amount','Tax','Total','Closed','Ship via','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55,editable:false,editoptions:{readonly:true,size:10}},
   		{name:'invdate',index:'invdate', width:80,editable:true,editoptions:{size:10}},
   		{name:'name',index:'name', width:90,editable:true,editoptions:{size:25}},
   		{name:'amount',index:'amount', width:60, align:"right",editable:true,editoptions:{size:10}},
   		{name:'tax',index:'tax', width:60, align:"right",editable:true,editoptions:{size:10}},
   		{name:'total',index:'total', width:60,align:"right",editable:true,editoptions:{size:10}},
		{name:'closed',index:'closed',width:55,align:'center',editable:true,edittype:"checkbox",editoptions:{value:"Yes:No"}},
		{name:'ship_via',index:'ship_via',width:70, editable: true,edittype:"select",editoptions:{value:"FE:FedEx;TN:TNT"}},
   		{name:'note',index:'note', width:100, sortable:false,editable: true,edittype:"textarea", editoptions:{rows:"2",cols:"20"}}
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	imgpath: gridimgpath,
   	pager: jQuery('#pagernav'),
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"Navigator Example",
    editurl:"someurl.php",
	//height:210
}).navGrid('#pagernav',
{}, //options
{height:'100%',reloadAfterSubmit:false}, // edit options
{height:'100%',reloadAfterSubmit:false}, // add options
{reloadAfterSubmit:false}, // del options
{} // search options
);});
</script>
</head>
<body>
<!-- the grid definition in html is a table tag with class 'scroll' -->
<table id="list2" class="scroll" cellpadding="0" cellspacing="0"></table>
<div id="pagernav" class="scroll" style="text-align:center;"></div>

<!-- pager definition. class scroll tels that we want to use the same theme as grid -->
<div id="pager2" class="scroll" style="text-align:center;"></div>
</body>
</html>