<?php

class RongyuModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('title','','标题:',,'',''),	//标题,条件:
		 array('a_day','','获取时间:',,'',''),	//获取时间,条件:
		 array('img','','图片:',,'',''),	//图片,条件:

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>