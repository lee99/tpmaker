<?php

class XiaoshuoshowModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','小说名不能为空！',1),	//小说名,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>