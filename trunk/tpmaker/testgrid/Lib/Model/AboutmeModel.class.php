<?php

class AboutmeModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','名称不能为空！',1),	//名称,条件:必填
		 array('content','require','内容不能为空！',1),	//内容,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>