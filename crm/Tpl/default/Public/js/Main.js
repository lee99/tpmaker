/**
 * 旧的用法,返回DOM对象,通过ID的方法
 */

function $id(obj){
//旧的用法
 return reobj=(typeof(obj)=="object") ? obj : document.getElementById(obj);
}


/**
 * add one option of a select to another select.
 */
function addItem(ItemList,Target)
{
    for(var x = 0; x < ItemList.length; x++)
    {
        var opt = ItemList.options[x];
        if (opt.selected)
        {
            flag = true;
            for (var y=0;y<Target.length;y++)
            {
                var myopt = Target.options[y];
                if (myopt.value == opt.value)
                {
                    flag = false;
                }
            }
            if(flag)
            {
                Target.options[Target.options.length] = new Option(opt.text, opt.value, 0, 0);
            }
        }
    }
}

function addOptionByTextValue(Target,Text,Value)
{
    RawLength = Target.length;
    NewLength = Target.length+Value.length;
    for(I=RawLength;I<NewLength;I++)
    {
        Target.options[I] = new Option(Text[I-RawLength], Value[I-RawLength], 0, 0);
    }
}


/**
 * move one selected option from a select.
 */
function delItem(ItemList)
{
    for(var x=ItemList.length-1;x>=0;x--)
    {
        var opt = ItemList.options[x];
        if (opt.selected)
        {
            ItemList.options[x] = null;
        }
    }
}

function delAllItem(ItemList)
{   for(var x=ItemList.length-1;x>=0;x--)
    {
        var opt = ItemList.options[x];
        ItemList.options[x] = null;
    }
}

/**
 * join items of an select with ",".
 */
function joinItem(ItemList)
{
    var OptionList = new Array();
    for (var x=0; x<ItemList.length;x++)
    {
        OptionList[x] = ItemList.options[x].value;
    }
    return OptionList.join(",");
}

/**
 * select all items of a select
 */
function selectItem(ItemList)
{
    for(var x=ItemList.length-1;x>=0;x--)
    {
        var opt = ItemList.options[x];
        opt.selected = true;
    }
}

/**
 * unselect all items of a select
 */
function selectNoItem(ItemList)
{
    for(var x=ItemList.length-1;x>=0;x--)
    {
        var opt = ItemList.options[x];
        opt.selected = false;
    }
}

/**
 * select one item of a select
 */
function selectOneItem(ItemList,ItemValue)
{
    for(I = 0;I < ItemList.options.length; I++)
    {
        if(ItemValue == ItemList.options[I].value)
        {
           ItemList.options[I].selected = true;
           return;
        }
    }
}

/**
 * move one selected option up from a select.
 */
function upItem(ItemList)
{
    for(var x=1;x<ItemList.length;x++)
    {
        var opt = ItemList.options[x];
        if(opt.selected)
        {
            tmpUpValue = ItemList.options[x-1].value;
            tmpUpText  = ItemList.options[x-1].text;
            ItemList.options[x-1].value = opt.value;
            ItemList.options[x-1].text  = opt.text;
            ItemList.options[x].value = tmpUpValue;
            ItemList.options[x].text  = tmpUpText;
            ItemList.options[x-1].selected = true;
            ItemList.options[x].selected = false;
            break;
        }
    }
}

/**
 * move one selected option down from a select.
 */
function downItem(ItemList)
{
    for(var x=0;x<ItemList.length-1;x++)
    {
        var opt = ItemList.options[x];
        if(opt.selected)
        {
            tmpUpValue = ItemList.options[x+1].value;
            tmpUpText  = ItemList.options[x+1].text;
            ItemList.options[x+1].value = opt.value;
            ItemList.options[x+1].text  = opt.text;
            ItemList.options[x].value = tmpUpValue;
            ItemList.options[x].text  = tmpUpText;
            ItemList.options[x+1].selected = true;
            ItemList.options[x].selected = false;
            break;
        }
    }
}

function getItemTextByNum(ItemList, i)
{
    if(ItemList.options[i].innerText)
    {
        return ItemList.options[i].innerText;
    }
    else if(ItemList.options[i].textContent)
    {
        return ItemList.options[i].textContent;
    }
    else
    {
        return '';
    }
}

function getItemTextByValue(ItemList, ItemValue)
{
    for(I = 0;I < ItemList.options.length; I++)
    {
        if(ItemValue == ItemList.options[I].value)
        {
           return getItemTextByNum(ItemList, I);
        }
    }
}

/**
 * return option's text which is selected
 */

function getItemSelectText(ItemList)
{
    for(I = 0;I < ItemList.options.length; I++)
    {
        if(ItemList.options[I].selected)
        {
           return getItemTextByNum(ItemList, I);
        }
    }
    return getItemText(ItemList, 0);
}



function expandTop(Mode)
{
    try{
    var RightFrame = parent.document.getElementById('RightFrame');
    //var Control    = parent.document.getElementById("ControlTop");
    if(Mode == 'Open')
    {
        RightFrame.rows = "135,*";
        //Control.src     = "Image/ArrowUp.gif";
    }
    else
    {
        RightFrame.rows = "0,*";
        //Control.src     = "Image/ArrowDown.gif";
    }
    }catch(e){};
}


/**
 * get obj by elementid
 */
function idObj(ElementId)
{
    return document.getElementById(ElementId);
}





function unselectAllOption(objId)
{
    var options = $id(objId).getElementsByTagName('div');
    for(var i=0;i<options.length;i++)
    {
        if(options[i].selected)
        {
            unselectDivSelectOption(options[i].id);
            return;
        }
    }
}



function hiddenObj(objId)
{
    var objIdList=objId.split(',');
    for(i=0;i<objIdList.length;i++)
    {
        $id(objIdList[i]).style.display = "none";
    }
}

function displayObj(objId)
{
    var objIdList=objId.split(',');
    for(i=0;i<objIdList.length;i++)
    {
        $id(objIdList[i]).style.display = "block";
    }
}

function disableObj(objId)
{
    var objIdList=objId.split(',');
    for(i=0;i<objIdList.length;i++)
    {
        $id(objIdList[i]).style.disabled = "disabled";
    }
}



/**
 * create an select.
 */
function createSelect(SelectName,TextArray,ValueArray,SelectedValue)
{
    SelectString  = '<select name="' + SelectName + '" id="' + SelectName + '" class="FullSelect">';
    for(I = 0; I <= TextArray.length - 1;I ++)
    {
        Selected = '';
        if(SelectedValue != '' && ValueArray[I] == SelectedValue)
        {
           Selected = ' selected="selected" ';
        }
        SelectString += '<option value="' + ValueArray[I] + '"'+ Selected +'>' + TextArray[I] + '</option>';
    }
    SelectString += '</select>';
    return SelectString;
}


/**
 * set the Operator list to select correct item according to the query field selected.
 */
function setQueryOperator(I)
{
    var FieldName = $id('Field'+I).value;
    var tmpStr = '';
    for(j=0;j<FieldType.length;j++)
    {
        tmpStr = FieldType[j];
        if(tmpStr.indexOf(FieldName) >= 0)
        {
            delAllItem($id("Operator"+I));
            addOptionByTextValue($id("Operator"+I), FieldOperationTypeText[j].split(','),FieldOperationTypeValue[j].split(','));
            break;
        }
    }

    return;

    //if (FieldName.match("Title|Path"))
    //{
    //    selectOneItem($id("Operator" + I),"LIKE");
    //}
    //else
    //{
    //    selectOneItem($id("Operator" + I),"=");
    //}
}



//lee99
function setQueryValue(I, Reset)
{
    var tdObj = $id('ValueTd'+I);
    var FieldName = $id('Field'+I).value;
    var FieldValue = $id('Value'+I).value;

    if(typeof(Reset) != "undefined" && Reset == 'reset')
    {
        FieldValue = '';
    }

    if(!$id('AutoComplete').checked)
    {
        tdObj.innerHTML = createInput("Value" + I,FieldValue);
        return true;
    }

    if (FieldName.match("ProjectName") && ($id('Operator'+I).value == '=' || $id('Operator'+I).value == '!='))
    {
        tdObj.innerHTML = createSelect("Value" + I,ProjectNameText,ProjectNameValue,FieldValue);
    }
    else if (FieldName.match("ScriptStatus"))
    {
        tdObj.innerHTML = createSelect("Value" + I,ScriptStatusText,ScriptStatusValue,FieldValue);
    }
    else if (FieldName.match("ScriptedBy"))
    {
        tdObj.innerHTML = createSelect("Value" + I,ScriptedByText,ScriptedByValue,FieldValue);
    }
    else if (FieldName.match("BugStatus|CaseStatus|ResultStatus"))
    {
        tdObj.innerHTML = createSelect("Value" + I,StatusText,StatusValue,FieldValue);
    }
    else if (FieldName.match("Severity"))
    {
        tdObj.innerHTML = createSelect("Value" + I,SeverityText,SeverityValue,FieldValue);
    }
    else if (FieldName.match("BugType|CaseType"))
    {
        tdObj.innerHTML = createSelect("Value" + I,TypeText,TypeValue,FieldValue);
    }
    else if (FieldName.match("BugOS|ResultOS"))
    {
        tdObj.innerHTML = createSelect("Value" + I,OSText,OSValue,FieldValue);
    }
    else if (FieldName.match("BugBrowser|ResultBrowser"))
    {
        tdObj.innerHTML = createSelect("Value" + I,BrowserText,BrowserValue,FieldValue);
    }
    else if (FieldName.match("Resolution"))
    {
        tdObj.innerHTML = createSelect("Value" + I,ResolutionText,ResolutionValue,FieldValue);
    }
    else if (FieldName.match("HowFound"))
    {
        tdObj.innerHTML = createSelect("Value" + I,HowFoundText,HowFoundValue,FieldValue);
    }
    else if (FieldName.match("OpenedBy|ResolvedBy|ClosedBy|LastEditedBy|ModifiedBy|MailTo"))
    {
        tdObj.innerHTML = createSelect("Value" + I,UserText,UserValue,FieldValue);
    }
    else if (FieldName.match("AssignedTo"))
    {
        tdObj.innerHTML = createSelect("Value" + I,ACUserText,ACUserValue,FieldValue);
    }
    else if (FieldName.match("Date"))
    {
        if(FieldValue == '') FieldValue = getDateTime();
        tdObj.innerHTML = createInput("Value" + I,FieldValue,getDateTime());
    }
    else if (FieldName.match("Priority"))
    {
        tdObj.innerHTML = createSelect("Value" + I,PriorityText,PriorityValue,FieldValue);
    }
    else if (FieldName.match("Method"))
    {
        tdObj.innerHTML = createSelect("Value" + I,MethodText,MethodValue,FieldValue);
    }
    else if (FieldName.match("Plan"))
    {
        tdObj.innerHTML = createSelect("Value" + I,PlanText,PlanValue,FieldValue);
    }
    else if (FieldName.match("MarkForDeletion"))
    {
        tdObj.innerHTML = createSelect("Value" + I,MarkForDeletionText,MarkForDeletionValue,FieldValue);
    }
    else if (FieldName.match("ResultValue"))
    {
        tdObj.innerHTML = createSelect("Value" + I,ResultValueText,ResultValueText,FieldValue);
    }
    else
    {
        tdObj.innerHTML = createInput("Value" + I,FieldValue);
    }
}

/**
 * create an input.
 */
 //lee99
function createInput(InputName,InputValue, Title)
{
    if(typeof(Title) == 'undefined') Title = '';
    return '<input type="text" title="' + Title + '" name="' + InputName + '"  id="' + InputName + '" value="' + InputValue + '"' + ' size=5 style="width:95%">';
}

/**
 * Get current datetime
 */
 //lee99
function getDateTime()
{
    objDate = new Date();
    var tempMonth = objDate.getMonth()+1;
    var tempDay = objDate.getDate();
    if(tempMonth < 10) tempMonth = "0"+""+tempMonth;
    if(tempDay < 10) tempDay = "0"+""+tempDay;
    return objDate.getFullYear() + "-" + tempMonth + "-" + tempDay + " " + objDate.getHours() + ":" + objDate.getMinutes();
}

function setQueryForm(I)
{
    setQueryOperator(I);
    setQueryValue(I,'reset');
}

function superAddObjValue(objID,addValue)
{
    $id(objID).value += ',' + addValue;
}

function openWindow(Url,WindowName,Width,Height)
{
    if(typeof(WindowName) == 'undefined')
    {
        WindowName = 'newTestWindow';
    }
    if(typeof(Width) == 'undefined' || typeof(Height) == 'undefined')
    {
        var opened=window.open(Url,WindowName,'height='+screen.width+',width='+screen.width+', toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes');
    }
    else
    {
        //var opened=window.open(Url,WindowName,'height='+Height+', width='+Width+', toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, status=no');
        var opened=window.open(Url,WindowName,'height='+Height+', width='+Width);
    }
    opened.focus();

}

/*============================Cookie===========================================*/
var TestCookie =
{
    read: function (name)
    {
        var arrCookies = document.cookie.split ('; ');
        for (var i=0; i<arrCookies.length; i++)
        {
            var arrCookie = arrCookies[i].split ('=');

            if (arrCookie[0] == name)
            {
                return decodeURIComponent (arrCookie[1]);
            }
        }
        return false;
    },

    write: function (name, value, expires, path)
    {
        if (expires)
        {
            var date = new Date ();
            date.setTime (date.getTime () + (((((expires * 24) * 60) * 60) * 1000)));
            expires = '; expires=' + date.toGMTString ();
        }
        else expires = '';

        if (!path) path = '/';

        document.cookie = name+'='+encodeURIComponent (value)+expires+'; path='+path;
    },

    remove: function (name)
    {
        this.write (name, '', -1);
    }
}

function setConfirmExitArrays()
{
    for(var i = 0; i < ConfirmIds.length; i++)
    {
        var elem = $id(ConfirmIds[i]);
        if (elem)
        {
            if(elem.type == 'checkbox' || elem.type == 'radio')
            {
                ConfirmValues[i] = elem.checked;
            }
            else
            {
                ConfirmValues[i] = elem.value;
            }
        }
    }
}

function confirmWhenExit()
{
    if(NeedToConfirm)
    {
        for (var i = 0; i < ConfirmValues.length; i++)
        {
            var elem = $id(ConfirmIds[i]);
            if(elem)
            {
                if((elem.type == 'checkbox' || elem.type == 'radio') && ConfirmValues[i] != elem.checked) return ConfirmText;
                else if (!(elem.type == 'checkbox' || elem.type == 'radio') && elem.value != ConfirmValues[i]) return ConfirmText;
            }
        }
    }
}

function setNeedConfirm()
{
    var tempSetNeedConfirm=function(){NeedToConfirm=true;}
    setTimeout(tempSetNeedConfirm,300);
}


