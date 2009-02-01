/*
多选及排序的JS
*/



function moveLeftOrRight(fromObj,toObj)
{
	var fromObjOptions=fromObj.options;
	for(var i=0;i<fromObjOptions.length;i++){
		if(fromObjOptions[i].selected){
			toObj.appendChild(fromObjOptions[i]);
			i--;
		}
	}
	resetAutoWidth(fromObj);
	resetAutoWidth(toObj);
}

function moveLeftOrRightAll(fromObj,toObj)
{
	var fromObjOptions=fromObj.options;
	if(fromObjOptions.length>40) {
		if(!confirm("你将要操作超过40个数据,你确定进行操作吗?")) return false;
	}
	for(var i=0;i<fromObjOptions.length;i++){
		fromObjOptions[0].selected=true;
		toObj.appendChild(fromObjOptions[i]);
		i--;
	}
	resetAutoWidth(fromObj);
	resetAutoWidth(toObj);
}

function moveUp(selectObj)
{
	var theObjOptions=selectObj.options;
	for(var i=1;i<theObjOptions.length;i++) {
		if( theObjOptions[i].selected && !theObjOptions[i-1].selected ) {
			swapOptionProperties(theObjOptions[i],theObjOptions[i-1]);
		}
	}
}

function moveDown(selectObj)
{
	var theObjOptions=selectObj.options;
	for(var i=theObjOptions.length-2;i>-1;i--) {
		if( theObjOptions[i].selected && !theObjOptions[i+1].selected ) {
			swapOptionProperties(theObjOptions[i],theObjOptions[i+1]);
		}
	}
}

function moveToTop(selectObj){
	var theObjOptions=selectObj.options;
	var oOption=null;
	for(var i=0;i<theObjOptions.length;i++) {
		if( theObjOptions[i].selected && oOption) {
			selectObj.insertBefore(theObjOptions[i],oOption);
		}
		else if(!oOption && !theObjOptions[i].selected) {
			oOption=theObjOptions[i];
		}
	}
}

function moveToBottom(selectObj){
	var theObjOptions=selectObj.options;
	var oOption=null;
	for(var i=theObjOptions.length-1;i>-1;i--) {
		if( theObjOptions[i].selected ) {
			if(oOption) {
				oOption=selectObj.insertBefore(theObjOptions[i],oOption);
			}
			else oOption=selectObj.appendChild(theObjOptions[i]);
		}
	}

}

function selectAllOption(selectObj){
	var theObjOptions=selectObj.options;
	for(var i=0; i<theObjOptions.length; i++){
		theObjOptions[i].selected=true;

	}

}


function   getS(os)
{
	var   so   =   [];
	for(var   i=0;i<os.length;i++)
	if(os[i].selected)so[so.length]=os[i].value
	document.frm.sortvaue.value= so.join(",")
}

/* private function */
function swapOptionProperties(option1,option2){
	//option1.swapNode(option2);
	var tempStr=option1.value;
	option1.value=option2.value;
	option2.value=tempStr;
	tempStr=option1.text;
	option1.text=option2.text;
	option2.text=tempStr;
	tempStr=option1.selected;
	option1.selected=option2.selected;
	option2.selected=tempStr;
}

function resetAutoWidth(obj){
	var tempWidth=obj.style.getExpression("width");
	if(tempWidth!=null) {
		obj.style.width="auto";
		obj.style.setExpression("width",tempWidth);
		obj.style.width=null;
	}
}