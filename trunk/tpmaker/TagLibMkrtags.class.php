<?php
import('Think.Template.TagLib');
Class TagLibMkrtags extends TagLib
{


    public function _input($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'input');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = $tag['class']; 			//表单class//没值则用NAME为值
        $style      = $tag['style']; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<INPUT type="text" id="'.$id.'" name="'.$name.'" value="'.$value.'"  class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. '>';

 		return $parseStr;
    }


    public function _files($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'files');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<INPUT type="file" id="'.$id.'" name="'.$name.'" >';

 		return $parseStr;
    }

    public function _select($attr)
    {
    	$tag        = $this->parseXmlAttr($attr,'select');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],1,-1);						//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $outtable   = $tag['outtable'];               					//表单[outtable]//没值则
        $outkey     = $tag['outkey'];               					//表单[outkey]//没值则
        $outfield   = $tag['outfield'];               					//表单[outfield]//没值则
        $outcondition   = $tag['outcondition'];               			//表单[outcondition]//没值则
        $outorder   = $tag['outorder'];               					//表单[outorder]//没值则
        $outadd     = $tag['outadd'];               					//表单[outadd]//没值则
		if(!empty($outtable)){
	        if($outtable=='Array'){
				$optionval=explode(',',$outfield);
				if(!empty($outkey)){
					$optionkey=explode(',',$outkey);
					$options=array_combine($optionkey,$optionval);
				}else{
					$options=$optionval;
				}
				$parseStr   = '<?php  $options=array(';

				foreach($options as $key=>$val){
					$parseStr   .= '"'.$key.'" => "'.$val.'", ';
				}
				$parseStr .= '); ?>';
			}else{
				$options=makeoption($outtable,$outkey,$outcondition,$outfield,$outorder,$outadd);
				$parseStr   .= '<?php  $options=makeoption("'.$outtable.'","'.$outkey.'","'.$outcondition.'","'.$outfield.'","'.$outorder.'","'.$outadd.'"); ?>';
			}
		}


        $parseStr .= '<select id="'.$id.'" name="'.$name.'" class="'.$class.'"  style="'.$style.'" >';

        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
            	if(substr($value,0,1)=="$"){//如果是变量
            		$tempvalue=explode('.',$value);
            		if(count($tempvalue)>1){//如果是数组
            			$value=$tempvalue[0].'["'.$tempvalue[1].'"]';
            		}
            	}else{
            		$value='"'.$value.'"';
            	}
                $parseStr   .='<?php if('.$value.'== $key) { ?>';
                $parseStr   .= '<option selected="selected" value="<?php echo $key ?>"><?php echo $val ?></option>';
                $parseStr   .= '<?php }else { ?><option value="<?php echo $key ?>"><?php echo $val ?></option>';
                $parseStr   .= '<?php } ?>';
            }else {
                $parseStr   .= '<option value="<?php echo $key ?>"><?php echo $val ?></option>';
            }
            $parseStr   .= '<?php } ?>';
        }
        $parseStr   .= '</select>';
        return $parseStr;
    }

    public function _outtable($attr)
    {
    	$tag        = $this->parseXmlAttr($attr,'outtable');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],1,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $outtable   = $tag['outtable'];               					//表单[outtable]//没值则
        $outkey     = $tag['outkey'];               					//表单[outkey]//没值则
        $outfield   = $tag['outfield'];               					//表单[outfield]//没值则
        $outcondition   = $tag['outcondition'];               			//表单[outcondition]//没值则
        $outorder   = $tag['outorder'];               					//表单[outorder]//没值则
        $outadd     = $tag['outadd'];               					//表单[outadd]//没值则
		if(!empty($outtable)){
	        if($outtable=='Array'){
				$optionval=explode(',',$outfield);
				if(!empty($outkey)){
					$optionkey=explode(',',$outkey);
					$options=array_combine($optionkey,$optionval);
				}else{
					$options=$optionval;
				}
				$parseStr   = '<?php  $options=array(';

				foreach($options as $key=>$val){
					$parseStr   .= '"'.$key.'" => "'.$val.'", ';
				}
				$parseStr .= '); ?>';
			}else{
				$options=makeoption($outtable,$outkey,$outcondition,$outfield,$outorder,$outadd);
				$parseStr   .= '<?php  $options=makeoption("'.$outtable.'","'.$outkey.'","'.$outcondition.'","'.$outfield.'","'.$outorder.'","'.$outadd.'"); ?>';
			}
		}


        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
            	if(substr($value,0,1)=="$"){//如果是变量
            		$tempvalue=explode('.',$value);
            		if(count($tempvalue)>1){//如果是数组
            			$value=$tempvalue[0].'["'.$tempvalue[1].'"]';
            		}
            	}else{
            		$value='"'.$value.'"';
            	}
                $parseStr   .='<?php if('.$value.'== $key) { ?>';
                $parseStr   .= '<?php echo $val ?>';
                $parseStr   .= '<?php } ?>';
            }else {
                $parseStr   .= '<?php echo $val ?>';
            }
            $parseStr   .= '<?php } ?>';
        }
        return $parseStr;
    }



    public function _selectmultiple($attr)
    {
    	$tag        = $this->parseXmlAttr($attr,'selectmultiple');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $outtable   = $tag['outtable'];               					//表单[outtable]//没值则
        $outkey     = $tag['outkey'];               					//表单[outkey]//没值则
        $outfield   = $tag['outfield'];               					//表单[outfield]//没值则
        $outcondition   = $tag['outcondition'];               			//表单[outcondition]//没值则
        $outorder   = $tag['outorder'];               					//表单[outorder]//没值则
        $outadd     = $tag['outadd'];               					//表单[outadd]//没值则
		if(!empty($outtable)){
	        if($outtable=='Array'){
				$optionval=explode(',',$outfield);
				if(!empty($outkey)){
					$optionkey=explode(',',$outkey);
					$options=array_combine($optionkey,$optionval);
				}else{
					$options=$optionval;
				}
				$parseStr   = '<?php  $options=array(';

				foreach($options as $key=>$val){
					$parseStr   .= '"'.$key.'" => "'.$val.'", ';
				}
				$parseStr .= '); ?>';
			}else{
				$options=makeoption($outtable,$outkey,$outcondition,$outfield,$outorder,$outadd);
				$parseStr   .= '<?php  $options=makeoption("'.$outtable.'","'.$outkey.'","'.$outcondition.'","'.$outfield.'","'.$outorder.'","'.$outadd.'"); ?>';
			}
		}
		$parseStr   = '<script language="JavaScript" src="'.WEB_PUBLIC_URL.'/mkrtagsjs/selectmultiple.js"></script>';
		 $parseStr   .= '<?php
		 $value="'.$value.'";//写入相应的值
		 $tmpvale=explode(",",$value);//看看是不是多选的值,以","号为分隔
		if(count($tmpvale)>1){ $value=$tmpvale; }else{ $value=$value; } ?>';

		 $parseStr   .= '
  <table border="0" width="400">
    <tr>
      <th><center>可选择的项目</center></th>
      <th></th>
      <th><center>已选择的项目</center></th>
    </tr>
    <tr>
      <td width="40%"><select style="width:100%;" multiple name="'.$name.'left" id="'.$name.'left" size="8"  ondblclick="moveSelected(document.all.'.$name.'left,document.all.'.$name.'right);" >';
        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
                $parseStr   .='<?php if($value== $key  || in_array($key,$value) ) { ?>';
                $parseStr   .= ' ';
                $parseStr   .= '<?php }else { ?><option value="<?php echo $key ?>"><?php echo $val ?></option>';
                $parseStr   .= '<?php } ?>';
            }else {
                $parseStr   .= '<option value="<?php echo $key ?>"><?php echo $val ?></option>';
            }
            $parseStr   .= '<?php } ?>';
        }
	$parseStr   .= '
        </select>
      </td>
      <td  align="center">
		<input type="button" value=">>>>>>>" onClick="moveAll(document.all.'.$name.'left,document.all.'.$name.'right);"><br>
        <input type="button" value="<<<<<<<" onClick="moveAll(document.all.'.$name.'right,document.all.'.$name.'left);"><br>
		<input type="button" value="上移一格" onClick="moveUp(document.all.'.$name.'right);moveUp(document.all.'.$name.'left);"><br>
        <input type="button" value="下移一格" onClick="moveDown(document.all.'.$name.'right);moveDown(document.all.'.$name.'left);"><br>
        <input type="button" value="上移到顶" onClick="moveUp(document.all.'.$name.'right,true);moveUp(document.all.'.$name.'left,true);"><br>
        <input type="button" value="下移到顶" onClick="moveDown(document.all.'.$name.'right,true);moveDown(document.all.left,true);"><br>

      </td>
      <td width="40%"><select style="width:100%;" multiple name="'.$name.'right"  id="'.$name.'right" size="8"  ondblclick="moveSelected(document.all.'.$name.'right,document.all.'.$name.'left);">';
        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
                $parseStr   .='<?php if($value== $key  || in_array($key,$value) ) { ?>';
                $parseStr   .= '<option selected="selected" value="<?php echo $key ?>"><?php echo $val ?></option>';
                $parseStr   .= '<?php }?>';
            }else {
                $parseStr   .= '<option value="<?php echo $key ?>"><?php echo $val ?></option>';
            }
            $parseStr   .= '<?php } ?>';
        }
	$parseStr   .= '

        </select>
      </td>
    </tr>
  </table>
		 ';

        return $parseStr;
    }


        public function _radio($attr)
    {
    	$tag        = $this->parseXmlAttr($attr,'radio');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $outtable   = $tag['outtable'];               					//表单[outtable]//没值则
        $outkey     = $tag['outkey'];               					//表单[outkey]//没值则
        $outfield   = $tag['outfield'];               					//表单[outfield]//没值则
        $outcondition   = $tag['outcondition'];               			//表单[outcondition]//没值则
        $outorder   = $tag['outorder'];               					//表单[outorder]//没值则
        $outadd     = $tag['outadd'];               					//表单[outadd]//没值则
		if(!empty($outtable)){
	        if($outtable=='Array'){
				$optionval=explode(',',$outfield);
				if(!empty($outkey)){
					$optionkey=explode(',',$outkey);
					$options=array_combine($optionkey,$optionval);
				}else{
					$options=$optionval;
				}
				$parseStr   = '<?php  $options=array(';

				foreach($options as $key=>$val){
					$parseStr   .= '"'.$key.'" => "'.$val.'", ';
				}
				$parseStr .= '); ?>';
			}else{
				$options=makeoption($outtable,$outkey,$outcondition,$outfield,$outorder,$outadd);
				$parseStr   .= '<?php  $options=makeoption("'.$outtable.'","'.$outkey.'","'.$outcondition.'","'.$outfield.'","'.$outorder.'","'.$outadd.'"); ?>';
			}
		}



        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
                $parseStr   .='<?php if("'.$value.'"== $key) { ?>';
                $parseStr   .= '<label><input id="'.$id.'" name="'.$name.'" type="radio"  value="<?php echo $key ?>" checked="checked" /><?php echo $val ?></label> ';
                $parseStr   .= '<?php }else { ?><label><input id="'.$id.'" name="'.$name.'" type="radio"  value="<?php echo $key ?>" /><?php echo $val ?></label> ';
                $parseStr   .= '<?php } ?>';
            }else {
                $parseStr   .= '<label><input id="'.$id.'" name="'.$name.'" type="radio"  value="<?php echo $key ?>" /><?php echo $val ?></label>';
            }
            $parseStr   .= '<?php } ?>';
        }

        return $parseStr;
    }


        public function _checkboxGroup($attr)
    {
    	$tag        = $this->parseXmlAttr($attr,'checkboxGroup');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $outtable   = $tag['outtable'];               					//表单[outtable]//没值则
        $outkey     = $tag['outkey'];               					//表单[outkey]//没值则
        $outfield   = $tag['outfield'];               					//表单[outfield]//没值则
        $outcondition   = $tag['outcondition'];               			//表单[outcondition]//没值则
        $outorder   = $tag['outorder'];               					//表单[outorder]//没值则
        $outadd     = $tag['outadd'];               					//表单[outadd]//没值则
		if(!empty($outtable)){
	        if($outtable=='Array'){
				$optionval=explode(',',$outfield);
				if(!empty($outkey)){
					$optionkey=explode(',',$outkey);
					$options=array_combine($optionkey,$optionval);
				}else{
					$options=$optionval;
				}
				$parseStr   = '<?php  $options=array(';

				foreach($options as $key=>$val){
					$parseStr   .= '"'.$key.'" => "'.$val.'", ';
				}
				$parseStr .= '); ?>';
			}else{
				$options=makeoption($outtable,$outkey,$outcondition,$outfield,$outorder,$outadd);
				$parseStr   .= '<?php  $options=makeoption("'.$outtable.'","'.$outkey.'","'.$outcondition.'","'.$outfield.'","'.$outorder.'","'.$outadd.'"); ?>';
			}
		}

		 $parseStr   .= '<?php
		 $value="'.$value.'";//写入相应的值
		 $tmpvale=explode(",",$value);//看看是不是多选的值,以","号为分隔
		if(count($tmpvale)>1){ $value=$tmpvale; }else{ $value=$value; } ?>';
        if(!empty($options)) {
            $parseStr   .= '<?php  foreach($options as $key=>$val) { ?>';
            if(!empty($value)) {
                $parseStr   .='<?php if($value== $key  || in_array($key,$value) ) { ?>';
                $parseStr   .= '<label><input id="'.$id.'_tmpval" name="'.$name.'_tmpval" type="checkbox"  value="<?php echo $key ?>" checked="checked" onchange="'.$name.'updatevalue();" /><?php echo $val ?></label> ';
                $parseStr   .= '<?php }else { ?><label><input id="'.$id.'_tmpval" name="'.$name.'_tmpval" type="checkbox"  value="<?php echo $key ?>"  onchange="'.$name.'updatevalue();" /><?php echo $val ?></label> ';
                $parseStr   .= '<?php } ?>';
            }else {
                $parseStr   .= '<label><input id="'.$id.'_tmpval" name="'.$name.'_tmpval" type="checkbox"  value="<?php echo $key ?>"  onchange="'.$name.'updatevalue();" /><?php echo $val ?></label>';
            }
            $parseStr   .= '<?php } ?>';
        }
	 $parseStr   .= '
	 <input type="hidden" value="'.$value.'"  id="'.$id.'" name="'.$name.'">
	 <script  type="text/javascript">
function '.$name.'updatevalue(){
var s = document.getElementsByName("'.$name.'_tmpval");
var treuval = document.getElementsByName("'.$name.'");
var s2 = "";
for( var i = 0; i < s.length; i++ )
{
if ( s[i].checked ){
s2 += s[i].value+",";
}
}
s2 = s2.substr(0,s2.length-1);
treuval.value=s2;
//alert(treuval.value);
}
</script>';
        return $parseStr;
    }


    public function _calendar($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'calendar');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = !empty($tag['value'])?$tag['value']:date("Y-m-d");//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '
<link rel="stylesheet" type="text/css" media="all" href="'.WEB_PUBLIC_URL.'/mkrtagsjs/calendar/calendar-win2k-cold-1.css" title="win2k-1" />
<script type="text/javascript" src="'.WEB_PUBLIC_URL.'/mkrtagsjs/calendar/calendar.js"></script>
<script type="text/javascript" src="'.WEB_PUBLIC_URL.'/mkrtagsjs/calendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="'.WEB_PUBLIC_URL.'/mkrtagsjs/calendar/calendar-setup.js"></script>
 		';
 		$parseStr  .= '<INPUT type="text" id="'.$id.'_input" name="'.$name.'" value="'.$value.'"  class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. '>
 		<input type="button"   value="选择" title="手动选择日期" id="'.$id.'_select" alt="择日" class="'.$class.'" style="cursor:pointer;cursor:hand;" />
<script type="text/javascript">
Calendar.setup(
{
inputField : "'.$id.'_input", // ID of the input field
ifFormat : "%Y-%m-%d", // the date format
button : "'.$id.'_select" // ID of the button
}
);
</script>
 		';

 		return $parseStr;
    }


    public function _textarea($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'textarea');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<textarea  id="'.$id.'" name="'.$name.'"  '.$othervar.' class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. '>'.$value.'</textarea>';

 		return $parseStr;
    }


    public function _word($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'word');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:'_editor'; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则
        $width		=	'100%';
        $height     =	'160px';
        $ajax     =	false;


 		$parseStr   =	'<!-- 编辑器调用开始 --><script type="text/javascript" src="__ROOT__/Public/Js/FCKeditor/fckeditor.js"></script><textarea  id="'.$id.'" name="'.$name.'"  '.$othervar.' class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. '>'.$value.'</textarea><script type="text/javascript"> var oFCKeditor = new FCKeditor( "'.$id.'","'.$width.'","'.$height.'" ) ; oFCKeditor.BasePath = "__ROOT__/Public/Js/FCKeditor/" ; oFCKeditor.ReplaceTextarea() ;</script><!-- 编辑器调用结束 -->';
 		if($ajax){
 		$parseStr   .=	'<input type="button" value="保存编辑器" onclick="document.getElementById(\''.$id.'\').value = getContents(\''.$id.'\');"> <input type="button" value="重设编辑器" onclick="setContents(\''.$id.'\',document.getElementById(\''.$id.'\').value);">';
 		}

 		return $parseStr;
    }


    public function _hidden($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'hidden');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<INPUT type="hidden" id="'.$id.'" name="'.$name.'" value="'.$value.'" '.$othervar.' >';

 		return $parseStr;
    }

    public function _password($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'password');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<script language="JavaScript" src="'.WEB_PUBLIC_URL.'/mkrtagsjs/checkpassword.js"></script>';
 		$parseStr   .= '
<table >
	<tr><td><INPUT  type="password" id="'.$id.'" name="'.$name.'" value="'.$value.'"  class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. ' onkeyup="ps.update(this.value);"></td>';
 		$parseStr   .= '
<td>
	<script language="javascript">
	var ps = new PasswordStrength();
	ps.setSize("300","20");
	ps.setMinLength(2);
	</script>
</td>
	</tr>
	<tr><td><INPUT  type="password" id="'.$id.'_2" name="'.$name.'_2" class="'.$class.'"  style="'.$style.'" '.$othervar.' ></td><td>确认密码</td></tr>

</table>
';

 		return $parseStr;
    }



    /**
     +----------------------------------------------------------
     * list标签解析
     * 格式： <html:list datasource="" show="" />
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @param string $attr 标签属性
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     */
    public function _list($attr)
    {
        $tag        = $this->parseXmlAttr($attr,'list');
         $id         = $tag['id'];                       //表格ID
        $datasource = $tag['datasource'];               //列表显示的数据源VoList名称
        $pk         = empty($tag['pk'])?'id':$tag['pk'];//主键名，默认为id
        $style      = $tag['style'];                    //样式名
        $name       = !empty($tag['name'])?$tag['name']:'vo';                 //Vo对象名
        $action     = $tag['action'];                   //是否显示功能操作
        $checkbox   = $tag['checkbox'];                 //是否显示Checkbox
        if(isset($tag['actionlist'])) {
            $actionlist = explode(',',trim($tag['actionlist']));    //指定功能列表
        }

        if(substr($tag['show'],0,1)=='$') {
            $show   = $this->tpl->get(substr($tag['show'],1));
        }else {
            $show   = $tag['show'];
        }
        $show       = explode(',',$show);                //列表显示字段列表

        //计算表格的列数
        $colNum     = count($show);
        if(!empty($checkbox))   $colNum++;
        if(!empty($action))     $colNum++;

        //显示开始
		$parseStr	= "\n<!-- Myhtml 系统列表组件开始 -->\n";
        $parseStr  .= '
<script type="text/javascript">
<!--
var firstrowoffset = 1; // first data row start at
var tablename = "'.$id.'"; // table name
//-->
</script>
		<TABLE id="'.$id.'" class="'.$style.'" >
		';
        $parseStr  .= '<TR class="row" >
		';
        //列表需要显示的字段
        $fields = array();
        foreach($show as $key=>$val) {
        	$fields[] = explode(':',$val);
        }
        if(!empty($checkbox) && 'true'==strtolower($checkbox)) {//如果指定需要显示checkbox列
            $parseStr .='
			<th width="8">
				<input type="checkbox" id="check" onclick="CheckAll(\''.$id.'\')">
			</th>';
        }
        foreach($fields as $field) {//显示指定的字段
            $property = explode('|',$field[0]);
            $showname = explode('|',$field[1]);
            if(isset($showname[1])) {
                $parseStr .= '
			<Th width="'.$showname[1].'">';
            }else {
                $parseStr .= '
			<Th>
				';
            }
            $showname[2] = isset($showname[2])?$showname[2]:$showname[0];

            $trimtalbename=trim($property[0]);
           // dump($property);

            $parseStr .= '<A class="titleth" HREF="javascript:sortBy(\''.$trimtalbename.'\',\'{:getsorttype(\''.$trimtalbename.'\')}\',\''.ACTION_NAME.'\')" title="按照'.$showname[2].'排序">'.$showname[0].'{:getsorttype(\''.$trimtalbename.'\',1)}</A>

			</Th>
			';

        }
        if(!empty($action)) {//如果指定显示操作功能列
            $parseStr .= '<th >操作区域</th>';
        }

        $parseStr .= '</TR>
		';

        $parseStr .= '<volist name="'.$datasource.'" id="'.$name.'" >
        <php> if(($key%2)==0){ $tablesclass="ewTableAltRow";} else { $tablesclass="ewTableRow";}</php>
					<TR class="{$tablesclass}" onmouseover="ew_mouseover(this);" onmouseout="ew_mouseout(this);" onclick="ew_click(this);"  >';	//支持鼠标移动单元行颜色变化 具体方法在js中定义

        if(!empty($checkbox)) {//如果需要显示checkbox 则在每行开头显示checkbox
            $parseStr .= '<td><input type="checkbox" name="key"	value="{$'.$name.'.'.$pk.'}"> </td>';
        }
        foreach($fields as $field) {
            //显示定义的列表字段
            $parseStr   .=  '<TD>
			';

            $property = explode('|',$field[0]);
			//生成表单

			$parseStr .='{$'.trim($name).'.'.trim($property[0]).'}';


            $parseStr .= '
			</TD>';
        }
        if(!empty($action)) {//显示功能操作
            if(!empty($actionlist[0])) {//显示指定的功能项
                $parseStr .= '<TD>';
                foreach($actionlist as $val) {
                    // edit:编辑 表示 脚本方法名:显示名称
                    $a = explode(':',$val);
                    $b = explode('|',$a[1]);
                    if(count($b)>1) {
                        $c = explode('|',$a[0]);
                        if(count($c)>1) {
                            $parseStr .= '<A HREF="javascript:'.$c[1].'(\'{$'.$name.'.'.$pk.'}\')"><?php if(0== (is_array($'.$name.')?$'.$name.'["status"]:$'.$name.'->status)){ ?>'.$b[1].'<?php } ?></A><A HREF="javascript:'.$c[0].'({$'.$name.'.'.$pk.'})"><?php if(1== (is_array($'.$name.')?$'.$name.'["status"]:$'.$name.'->status)){ ?>'.$b[0].'<?php } ?></A> ';
                        }else {
                            $parseStr .= '<A HREF="javascript:'.$a[0].'(\'{$'.$name.'.'.$pk.'}\')"><?php if(0== (is_array($'.$name.')?$'.$name.'["status"]:$'.$name.'->status)){ ?>'.$b[1].'<?php } ?><?php if(1== (is_array($'.$name.')?$'.$name.'["status"]:$'.$name.'->status)){ ?>'.$b[0].'<?php } ?></A> ';
                        }

                    }else {
                        $parseStr .= '<A HREF="javascript:'.$a[0].'(\'{$'.$name.'.'.$pk.'}\')">'.$a[1].'</A> ';
                    }

                }
                $parseStr .= '
				</TD>';
            }else { //显示默认的功能项，包括编辑、删除
                $parseStr .= '
				<TD>
						<A HREF="javascript:edit({$'.$name.'.'.$pk.'})">编辑</A> <A onfocus="javascript:getTableRowIndex(this)" HREF="javascript:del({$'.$name.'.'.$pk.'})">删除</A>
				</TD>';
            }

        }
        $parseStr	.= '
		</TR>
		</volist>
		';

        $parseStr.='

		</TABLE>';
        $parseStr	.= "\n<!--Myhtml系统列表组件结束 -->\n";
        return $parseStr;
    }



    public function _text($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'text');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],2,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<span    class="'.$class.'"  style="'.$style.'" >{$'.$value.'|auto_charset|clean_html'.$othervar.' }<input type="hidden" id="'.$id.'" name="'.$name.'" value="{$'.$value.'|auto_charset|clean_html'.$othervar.' }" ></span>';

 		return $parseStr;

    }

    public function _htmltext($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'htmltext');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],2,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<span    class="'.$class.'"  style="'.$style.'" >{$'.$value.'|auto_charset|un_clean_html'.$othervar.' }<input type="hidden" id="'.$id.'" name="'.$name.'" value="{$'.$value.'|auto_charset|clean_html'.$othervar.' }" ></span>';

 		return $parseStr;

    }


    public function _time($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'time');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],2,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<span    class="'.$class.'"  style="'.$style.'" >{$'.$value.'|toDate|auto_charset'.$othervar.' }</span>';
 		return $parseStr;

    }



    public function _image($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'time');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],2,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<span    class="'.$class.'"  style="'.$style.'" ><a href="__ROOT__/Public/Uploads/{$'.$value.'}" target="_blank"  ><img src="__ROOT__/Public/Uploads/{$'.$value.'}" border="0" title="查看原图大小"></a></span>';
 		return $parseStr;

    }


    public function _filedown($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'time');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = substr($tag['value'],2,-1);									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<span    class="'.$class.'"  style="'.$style.'" ><a href="__ROOT__/Public/Uploads/{$'.$value.'}" target="_blank"  >查看或下载文件</a></span>';
 		return $parseStr;

    }

    public function _temp($attr)
    {
		$tag        = $this->parseXmlAttr($attr,'input');
        $name       = $tag['name']; 									//表单名称[name]
        $id       	= !empty($tag['id'])?$tag['id']:$tag['name']; 		//表单ID[id]//没值则用NAME为值
        $value      = $tag['value'];									//表单[value]//没值则
        $class      = empty($tag['class'])?$tag['class']:''; 			//表单class//没值则用NAME为值
        $style      = empty($tag['style'])?$tag['style']:''; 			//表单[style]//没值则
        $disabled   = $tag['disabled']==1?'disabled':'';                //表单[disabled]//没值则
        $readonly   = $tag['readonly']==1?'readonly':'';               	//表单[readonly]//没值则
        $othervar   = $tag['othervar'];               					//表单[othervar]//没值则

 		$parseStr   = '<INPUT  id="'.$id.'" name="'.$name.'" value="'.$value.'"  class="'.$class.'"  style="'.$style.'" '.$othervar.' '. $disabled.' '. $readonly. '>';

 		return $parseStr;

    }

}