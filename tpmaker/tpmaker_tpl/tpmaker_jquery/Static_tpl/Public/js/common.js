//+---------------------------------------------------
//|	先声明当前列表中选中的值为数组
//+---------------------------------------------------
var selectRowIndex = Array();


//+---------------------------------------------------
//|	快速方法获得当前的对象
//+---------------------------------------------------
function $byid(objectId){
	return reobj=(typeof(objectId)=="object") ? objectId : document.getElementById(objectId);
}

//+---------------------------------------------------
//|	JS对list数据的排序
//+---------------------------------------------------
function sortBy (field,sort){
	location.href = clearurl(REQUEST_URI,"/?")+"/?p=1&order="+field+"&sort="+sort;
}

//+---------------------------------------------------
//|	打开模式窗口，返回新窗口的操作值
//+---------------------------------------------------
function PopModalWindow(url,width,height)
{
	var result=window.showModalDialog(url,"win","dialogWidth:"+width+"px;dialogHeight:"+height+"px;center:yes;status:no;scroll:no;dialogHide:no;resizable:no;help:no;edge:sunken;");
	return result;
}


//+---------------------------------------------------
//|	查看当前的数据的详细页面
//+---------------------------------------------------
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
		alert('请选择查看详细的项！');
		return false;
	}
	location.href =  URL+"/read/id/"+keyValue;
}


//+---------------------------------------------------
//|	编辑数据页面
//+---------------------------------------------------
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
		alert('请选择编辑的项！');
		return false;
	}
	location.href =  URL+"/edit/id/"+keyValue;
}


//+---------------------------------------------------
//|	删除数据的js方法,可以删除多条数据,具体转到delete
//+---------------------------------------------------
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

//+---------------------------------------------------
//|	删除数据后在本面同时删除相应的元素
//+---------------------------------------------------
function doDelete(){
	var Table = $byid('checkList');
	var len	=	selectRowIndex.length;
	for (var i=len-1;i>=0;i-- )
	{
		//删除表格行
		Table.deleteRow(selectRowIndex[i]);
	}
	selectRowIndex = Array();
}

//+---------------------------------------------------
//|	删除附件的方法
//+---------------------------------------------------
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
		$byid('result').style.display = 'block';
		ThinkAjax.send(URL+"/delAttach/","id="+keyValue+'&_AJAX_SUBMIT_=1');
		if (showId != undefined)
		{
			$byid(showId).innerHTML = '';
		}
	}
}


//+---------------------------------------------------
//清除URL里面的元素，主要是因为如果有很多个#的锚点没办法定位
//url为输入和地址,ps符号
//+---------------------------------------------------
function clearurl(url,ps){
	var   s=url;
	var   sarray=new   Array();
	sarray=s.split(ps);
	var   sa=sarray[0];
	// alert(sa);
	return sa;

}

//+---------------------------------------------------
//|	获得选中Checkbox元素的第一值,以进行下一步如删除等操作
//+---------------------------------------------------
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


//+---------------------------------------------------
//|	获得选中Checkbox元素的所有值,以进行下一步如删除等操作
//+---------------------------------------------------
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

/**
* X-browser event handler attachment and detachment
* TH: Switched first true to false per http://www.onlinetools.org/articles/unobtrusivejavascript/chapter4.html
*
* @argument obj - the object to attach event to
* @argument evType - name of the event - DONT ADD "on", pass only "mouseover", etc
* @argument fn - function to call
*/
function addEvent(obj, evType, fn){
	if (obj.addEventListener){
		obj.addEventListener(evType, fn, false);
		return true;
	} else if (obj.attachEvent){
		var r = obj.attachEvent("on"+evType, fn);
		return r;
	} else {
		return false;
	}
}
function removeEvent(obj, evType, fn, useCapture){
	if (obj.removeEventListener){
		obj.removeEventListener(evType, fn, useCapture);
		return true;
	} else if (obj.detachEvent){
		var r = obj.detachEvent("on"+evType, fn);
		return r;
	} else {
		alert("Handler could not be removed");
	}
}

/**
*lee99.显示js自定义对话框
* Gets the full width/height because it's different for most browsers.
*/
function getViewportHeight() {
	if (window.innerHeight!=window.undefined) return window.innerHeight;
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientHeight;
	if (document.body) return document.body.clientHeight;

	return window.undefined;
}
function getViewportWidth() {
	var offset = 17;
	var width = null;
	if (window.innerWidth!=window.undefined) return window.innerWidth;
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientWidth;
	if (document.body) return document.body.clientWidth;
}

/**
* Gets the real scroll top
*/
function getScrollTop() {
	if (self.pageYOffset) // all except Explorer
	{
		return self.pageYOffset;
	}
	else if (document.documentElement && document.documentElement.scrollTop)
	// Explorer 6 Strict
	{
		return document.documentElement.scrollTop;
	}
	else if (document.body) // all other Explorers
	{
		return document.body.scrollTop;
	}
}
function getScrollLeft() {
	if (self.pageXOffset) // all except Explorer
	{
		return self.pageXOffset;
	}
	else if (document.documentElement && document.documentElement.scrollLeft)
	// Explorer 6 Strict
	{
		return document.documentElement.scrollLeft;
	}
	else if (document.body) // all other Explorers
	{
		return document.body.scrollLeft;
	}
}
