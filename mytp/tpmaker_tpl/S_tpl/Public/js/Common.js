
function showTip(info){
	$('tips').innerHTML	=	info;
}
function sendForm(formId,action,response,target,effect){
	// Ajax方式提交表单
	if (CheckForm($(formId)))//表单数据验证
	{
		ThinkAjax.sendForm(formId,action);
	}
	//Form.reset(formId);
}
rowIndex = 0;


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



function show(){
	if (document.getElementById('menu').style.display!='none')
	{
	document.getElementById('menu').style.display='none';
	document.getElementById('main').className = 'full';
	}else {
	document.getElementById('menu').style.display='inline';
	document.getElementById('main').className = 'main';
	}
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



function showHideSearch(){
	if (document.getElementById('searchM').style.display=='inline')
	{
		document.getElementById('searchM').style.display='none';
		document.getElementById('showText').value ='高级';
		document.getElementById('key').style.display='inline';
	}else {
		document.getElementById('searchM').style.display='inline';
		document.getElementById('showText').value ='隐藏';
		document.getElementById('key').style.display='none';

	}
}

function sortBy (field,sort){
	location.href = REQUEST_URI+"?p=1&order="+field+"&sort="+sort;
}


	//+---------------------------------------------------
	//|	打开模式窗口，返回新窗口的操作值
	//+---------------------------------------------------
	function PopModalWindow(url,width,height)
	{
		var result=window.showModalDialog(url,"win","dialogWidth:"+width+"px;dialogHeight:"+height+"px;center:yes;status:no;scroll:no;dialogHide:no;resizable:no;help:no;edge:sunken;");
		return result;
	}

function add(){
 location.href  = URL+"/add/";
}	
	
	
function view(id){
	var keyValue;
	if (id)
	{
		keyValue = id;
	}else {
		keyValue = getSelectCheckboxValue();
	}
	if (!keyValue)
	{
		alert('请选择查看项！');
		return false;
	}
	location.href =  URL+"/view/id/"+keyValue;
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


//LIST的效果设定

var lastrowoffset = 0; // footer row
var usecss = true; // use css
var rowclass = 'ewTableRow'; // row class
var rowaltclass = 'ewTableAltRow'; // row alternate class
var rowmoverclass = 'ewTableHighlightRow'; // row mouse over class
var rowselectedclass = 'ewTableSelectRow'; // row selected class
var roweditclass = 'ewTableEditRow'; // row edit class
var rowcolor = '#FFFFFF'; // row color
var rowaltcolor = '#F5F5F5'; // row alternate color
var rowmovercolor = '#FFCCFF'; // row mouse over color
var rowselectedcolor = '#CCFFFF'; // row selected color
var roweditcolor = '#FFFF99'; // row edit color


// Set mouse over color
function ew_mouseover(row) {
	row.mover = true; // mouse over
	if (!row.selected) {
		if (usecss)
			row.className = rowmoverclass;
		else
			row.style.backgroundColor = rowmovercolor;
	}
}

// Set mouse out color
function ew_mouseout(row) {
	row.mover = false; // mouse out
	if (!row.selected) {
		ew_setcolor(row);
	}
}

// Set row color
function ew_setcolor(row) {
	if (row.selected) {
		if (usecss)
			row.className = rowselectedclass;
		else
			row.style.backgroundColor = rowselectedcolor;
	}
	else if (row.edit) {
		if (usecss)
			row.className = roweditclass;
		else
			row.style.backgroundColor = roweditcolor;
	}
	else if ((row.rowIndex-firstrowoffset)%2) {
		if (usecss)
			row.className = rowaltclass;
		else
			row.style.backgroundColor = rowaltcolor;
	}
	else {
		if (usecss)
			row.className = rowclass;
		else
			row.style.backgroundColor = rowcolor;
	}
}

// Set selected row color
function ew_click(row) {
	if (row.deleteclicked)
		row.deleteclicked = false; // reset delete button/checkbox clicked
	else {
		var bselected = row.selected;
		ew_clearselected(); // clear all other selected rows
		if (!row.deleterow) row.selected = !bselected; // toggle
		ew_setcolor(row);
	}
}

// Clear selected rows color
function ew_clearselected() {
	var table = document.getElementById(tablename);
	for (var i = firstrowoffset; i < table.rows.length; i++) {
		var thisrow = table.rows[i];
		if (thisrow.selected && !thisrow.deleterow) {
			thisrow.selected = false;
			ew_setcolor(thisrow);
		}
	}
}