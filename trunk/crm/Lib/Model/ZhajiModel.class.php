<?php

class ZhajiModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('title','','标题:',,'',''),	//标题,条件:
		 array('zhajitypeid','require','分类不能为空！',1),	//分类,条件:必填
		 array('zhajitypeid','','分类:',,'',''),	//分类,条件:

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>