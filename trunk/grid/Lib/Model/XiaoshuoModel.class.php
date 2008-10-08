<?php

class XiaoshuoModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','章节名不能为空！',1),	//章节名,条件:必填
		 array('title','','章节名:',,'',''),	//章节名,条件:
		 array('xiaoshuoshowid','require','所属小说不能为空！',1),	//所属小说,条件:必填
		 array('xiaoshuoshowid','','所属小说:',,'',''),	//所属小说,条件:

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>