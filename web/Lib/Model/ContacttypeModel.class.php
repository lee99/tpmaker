<?php

class ContacttypeModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title_cn','require','标题[中文]不能为空！',1),	//标题[中文],条件:必填
		 array('title_en','require','标题[英文]不能为空！',1),	//标题[英文],条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>