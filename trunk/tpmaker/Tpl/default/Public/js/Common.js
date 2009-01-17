function $(obj){
    return reobj=(typeof(obj)=="object") ? obj : document.getElementById(obj);
}

function checkboxvalue(inid,outid){
	if($(inid).checked==true){
		$(outid).value=1;
	}else{
		$(outid).value=0;
	}
	//alert($(outid).value);
}

function hideW(){
	var myFx = new Fx.Style('msg_tip', 'height',{duration:600}).custom(200,0);
	var myFx = new Fx.Style('msg_tip', 'opacity',{duration:600}).custom(1,0);
	//$('msg_tip').style.display = 'none';
}
function openMsg(id){
	hideW();
	readMsg(id);
}

function showTip(data,status){
	if (status==1)
	{
		showMsgTip(data);
	}
}

function sendForm(formId,action,response,target,effect){
	// Ajax方式提交表单
	if (CheckForm($(formId),target))//表单数据验证
	{
		ThinkAjax.sendForm(formId,action,response,target);
	}
	//Form.reset(formId);
}
rowIndex = 0;

function prepareIE(height, overflow){
	bod = document.getElementsByTagName('body')[0];
	bod.style.height = height;
	//bod.style.overflow = overflow;

	htm = document.getElementsByTagName('html')[0];
	htm.style.height = height;
	//htm.style.overflow = overflow;
}

function hideSelects(visibility){
   selects = document.getElementsByTagName('select');
   for(i = 0; i < selects.length; i++) {
		   selects[i].style.visibility = visibility;
	}
}
document.write('<div id="overlay" class="none"></div><div id="lightbox" class="none"></div>');



function allSelect(){
	var	colInputs = document.getElementsByTagName("input");
	for	(var i=0; i < colInputs.length; i++)
	{
		colInputs[i].checked= true;
	}
}
function allUnSelect(){
	var	colInputs = document.getElementsByTagName("input");
	for	(var i=0; i < colInputs.length; i++)
	{
		colInputs[i].checked= false;
	}
}

function InverSelect(){
	var	colInputs = document.getElementsByTagName("input");
	for	(var i=0; i < colInputs.length; i++)
	{
		colInputs[i].checked= !colInputs[i].checked;
	}
}

function WriteTo(id){
	var type = $F('outputType');
	switch (type)
	{
	case 'EXCEL':WriteToExcel(id);break;
	case 'WORD':WriteToWord(id);break;

	}
	return ;
}


function CheckAll(strSection)
	{
		var i;
		var	colInputs = document.getElementById(strSection).getElementsByTagName("input");
		for	(i=1; i < colInputs.length; i++)
		{
			colInputs[i].checked=colInputs[0].checked;
		}
	}
function add(){
 location.href  = URL+"/add/";
}

function gourlbyaction(action,id){//通用的URL中转
	var keyValue;
	var pass=1;
	if (!action){
		alert('没有指定相应动作,请检查！');
		pass=0;
	}
	if (id){
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValues();
	}
	if (!keyValue){
		alert('请选择项目！');
		pass=0;
	}
	if (pass==1){
 	location.href  =URL+"/"+action+"/id/"+keyValue;
	}

}




function sortBy (field,sort){
	location.href = clearurl(REQUEST_URI,"/?")+"/?p=1&order="+field+"&sort="+sort;
}

function forbid(id){
	location.href = URL+"/forbid/id/"+id;
}

function resume(id){
	location.href = URL+"/resume/id/"+id;
}
function output(){
	location.href = URL+"/output/";
}
function member(id){
	location.href = URL+"/../Member/edit/id/"+id;
}
function chat(id){
	location.href = URL+"/../Chat/index/girlId/"+id;
}
function login(id){
	location.href = URL+"/../Login/index/type/4/id/"+id;
}
function child(id){
	location.href = URL+"/index/pid/"+id;
}
function action(id){
	location.href = URL+"/action/groupId/"+id;
}

function access(id){
	location.href= URL+"/access/id/"+id;
}
function app(id){
	location.href = URL+"/app/groupId/"+id;
}

function module(id){
	location.href = URL+"/module/groupId/"+id;
}

function user(id){
	location.href = URL+"/user/id/"+id;
}



function clearurl(url,ps){
	//清除URL里面的元素，主要是因为如果有很多个#的锚点没办法定位
	//url为输入和地址,ps符号

	var   s=url;
	var   sarray=new   Array();
	sarray=s.split(ps);
	var   sa=sarray[0];
	// alert(sa);
	return sa;

}

	//+---------------------------------------------------
	//|	打开模式窗口，返回新窗口的操作值
	//+---------------------------------------------------
	function PopModalWindow(url,width,height)
	{
		var result=window.showModalDialog(url,"win","dialogWidth:"+width+"px;dialogHeight:"+height+"px;center:yes;status:no;scroll:no;dialogHide:no;resizable:no;help:no;edge:sunken;");
		return result;
	}

function read(id){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValue();
	}
	if (!keyValue)
	{
		alert('请选择编辑项！');
		return false;
	}
	location.href =  URL+"/read/id/"+keyValue;
}

function edit(id){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValue();
	}
	if (!keyValue)
	{
		alert('请选择编辑项！');
		return false;
	}
	location.href =  URL+"/edit/id/"+keyValue;
}
var selectRowIndex = Array();
function del(id){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValues();
	}
	if (!keyValue)
	{
		alert('请选择删除项！');
		return false;
	}

	if (window.confirm('确实要删除选择项吗？'))
	{
		location.href =  URL+"/delete/id/"+keyValue;
		//ThinkAjax.send(URL+"/delete/","id="+keyValue+'&_AJAX_SUBMIT_=1',doDelete);
	}
}
function doDelete(){
		var Table = $('checkList');
		var len	=	selectRowIndex.length;
		for (var i=len-1;i>=0;i-- )
		{
			//删除表格行
			Table.deleteRow(selectRowIndex[i]);
		}
		selectRowIndex = Array();
}
	function delAttach(id,showId){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValues();
	}
	if (!keyValue)
	{
		alert('请选择删除项！');
		return false;
	}

	if (window.confirm('确实要删除选择项吗？'))
	{
		$('result').style.display = 'block';
		ThinkAjax.send(URL+"/delAttach/","id="+keyValue+'&_AJAX_SUBMIT_=1');
		if (showId != undefined)
		{
			$(showId).innerHTML = '';
		}
	}
}

function clearData(){
	if (window.confirm('确实要清空全部数据吗？'))
	{
	location.href = URL+"/clear/";
	}
}
function takeback(id){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValues();
	}
	if (!keyValue)
	{
		alert('请选择回收项！');
		return false;
	}

	if (window.confirm('确实要回收选择项吗？'))
	{
	location.href = URL+"/takeback/id/"+keyValue;
	}
}


function getSelectCheckboxValue(){
	var obj = document.getElementsByName('key');
	var result ='';
	for (var i=0;i<obj.length;i++)
	{
		if (obj[i].checked==true)
				return obj[i].value;

	}
	return false;
}

function getSelectCheckboxValues(){
	var obj = document.getElementsByName('key');
	var result ='';
	var j= 0;
	for (var i=0;i<obj.length;i++)
	{
		if (obj[i].checked==true){
				selectRowIndex[j] = i+1;
				result += obj[i].value+",";
				j++;
		}
	}
	return result.substring(0, result.length-1);
}

 function   change()
  {
	  var   oObj   =   event.srcElement;
	  if(oObj.tagName.toLowerCase()   ==   "td")
	  {
		  	  /*
	  var   oTable   =   oObj.parentNode.parentNode;
	  for(var   i=1;   i<oTable.rows.length;   i++)
	  {
	  oTable.rows[i].className   =   "out";
	  oTable.rows[i].tag   =   false;
	  }   */
	var obj= document.getElementById('checkList').getElementsByTagName("input");
	  var   oTr   =   oObj.parentNode;
	  var row = oObj.parentElement.rowIndex-1;
	  if (oTr.className == 'down')
	  {
		  	oTr.className   =   'out';
			obj[row].checked = false;
		    oTr.tag   =   true;
	  }else {
			oTr.className   =   'down';
			obj[row].checked = true;
		    oTr.tag   =   true;
	  }
 	  }
  }

  function   out()
  {
  var   oObj   =   event.srcElement;
  if(oObj.tagName.toLowerCase()   ==   "td")
  {
  var   oTr   =   oObj.parentNode;
  if(!oTr.tag)
  oTr.className   =   "out";
  }
  }

  function   over()
  {
  var   oObj   =   event.srcElement;
  if(oObj.tagName.toLowerCase()   ==   "td")
  {
  var   oTr   =   oObj.parentNode;
  if(!oTr.tag)
  oTr.className   =   "over";
  }
  }


//---------------------------------------------------------------------
// 多选改进方法 by Liu21st at 2005-11-29
//
//
//-------------------------begin---------------------------------------

function searchItem(item){
	for(i=0;i<selectSource.length;i++)
		if (selectSource[i].text.indexOf(item)!=-1)
		{selectSource[i].selected = true;break;}
}

function addItem(){
	for(i=0;i<selectSource.length;i++)
		if(selectSource[i].selected){
			selectTarget.add( new Option(selectSource[i].text,selectSource[i].value));
			}
		for(i=0;i<selectTarget.length;i++)
			for(j=0;j<selectSource.length;j++)
				if(selectSource[j].text==selectTarget[i].text)
					selectSource[j]=null;
}

function delItem(){
	for(i=0;i<selectTarget.length;i++)
		if(selectTarget[i].selected){
		selectSource.add(new Option(selectTarget[i].text,selectTarget[i].value));

		}
		for(i=0;i<selectSource.length;i++)
			for(j=0;j<selectTarget.length;j++)
			if(selectTarget[j].text==selectSource[i].text) selectTarget[j]=null;
}

function delAllItem(){
	for(i=0;i<selectTarget.length;i++){
		selectSource.add(new Option(selectTarget[i].text,selectTarget[i].value));

	}
	selectTarget.length=0;
}
function addAllItem(){
	for(i=0;i<selectSource.length;i++){
		selectTarget.add(new Option(selectSource[i].text,selectSource[i].value));

	}
	selectSource.length=0;
}

function getReturnValue(){
	for(i=0;i<selectTarget.length;i++){
		selectTarget[i].selected = true;
	}
}

function loadBar(fl)
//fl is show/hide flag
{
  var x,y;
  if (self.innerHeight)
  {// all except Explorer
    x = self.innerWidth;
    y = self.innerHeight;
  }
  else
  if (document.documentElement && document.documentElement.clientHeight)
  {// Explorer 6 Strict Mode
   x = document.documentElement.clientWidth;
   y = document.documentElement.clientHeight;
  }
  else
  if (document.body)
  {// other Explorers
   x = document.body.clientWidth;
   y = document.body.clientHeight;
  }

    var el=document.getElementById('loader');
	if(null!=el)
	{
		var top = (y/2) - 50;
		var left = (x/2) - 150;
		if( left<=0 ) left = 10;
		el.style.visibility = (fl==1)?'visible':'hidden';
		el.style.display = (fl==1)?'block':'none';
		el.style.left = left + "px"
		el.style.top = top + "px";
		el.style.zIndex = 2;
	}
}