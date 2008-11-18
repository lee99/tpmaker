<?php
function makeoption($table,$id='id',$where='',$option='title',$order,$outadd){
	//$option外键的说明
	//$where外键的过滤
	//$f_idvalue外键的id
	//$idt现在的值
	if($option==''){$option='title';}
	if($where==''){$where='';}
	if($id==''){$id='';}
	if($order==''){$order='id desc';}
	//if($outadd==''){$outadd='>';}
		$thisdao=D($table);
		//$thisdao->Cache(true); 
		$options=explode(',',$option);
		$list=$thisdao->findAll($where,$option.','.$id,$order);
		for ($i = 0; $i < count($list); $i++) {
				$optionkey[]=$list[$i][$id];
				foreach($options as $optionlist){
					$var.=$outadd.$list[$i][$optionlist];
				}
				$optionval[]=$var;
				$var='';
			}
		$tmp=array_combine($optionkey,$optionval);

	return  $tmp;
}

function getsorttype($talbe,$img=0){

	 if($_REQUEST['order']==$talbe){
           if($_REQUEST['sort']=="desc"){
            		$sorttype="asc";
            }else{
            		$sorttype="desc";
            }
	    if($img==1){//如果显示图标的话就返图标
			$sorttype= '<img border="0" src="'.APP_PUBLIC_URL.'/images/'.$sorttype.'.gif">';
	    }
    }else{
        $sorttype="asc";
	    if($img==1){//如果显示图标的话就返图标
			$sorttype= '';
	    }
    }

    	return $sorttype;

}

function clean_html($value){
  $value = htmlspecialchars($value, ENT_QUOTES);
  $value = strtr($value, array(
    '('   => '&#40;',
    ')'   => '&#41;'
  ));
  return nl2br($value);
}


function un_clean_html($value){
  $value = htmlspecialchars_decode($value);
  $value = strtr($value, array(
    '&#40;'   => '(',
    '&#41;'   => ')'
  ));
  return nl2br($value);
}


function toDate($time,$format='Y年m月d日 H:i:s') 
{
	if( empty($time)) {
		return '';
	}
    $format = str_replace('#',':',$format);
	return date(auto_charset($format),$time);
}
?>