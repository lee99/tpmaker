<?php

class Strtype_fModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('seq_no','require','排序不能为空！',1),	//排序,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>