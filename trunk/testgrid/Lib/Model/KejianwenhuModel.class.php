<?php

class KejianwenhuModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('title','','标题:',,'',''),	//标题,条件:
		 array('content','','内容:',,'',''),	//内容,条件:

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>