<?php

class OutnewsModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('content','require','内容不能为空！',1),	//内容,条件:必填
		 array('outnewstypeId','require','内容分类不能为空！',1),	//内容分类,条件:必填
		 array('langId','require','发布语言不能为空！',1),	//发布语言,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>