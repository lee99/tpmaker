<?php

class ContactModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('contacttypeid','require','留言类型分类不能为空！',1),	//留言类型分类,条件:必填
		 array('content','require','内容不能为空！',1),	//内容,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>