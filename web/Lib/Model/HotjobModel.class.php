<?php

class HotjobModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','职位名称不能为空！',1),	//职位名称,条件:必填
		 array('jobcode','require','职位代码不能为空！',1),	//职位代码,条件:必填
		 array('content','require','职位内容不能为空！',1),	//职位内容,条件:必填
		 array('jobnote','require','职位要求不能为空！',1),	//职位要求,条件:必填
		 array('number','require','需求人数不能为空！',1),	//需求人数,条件:必填
		 array('callingId','require','所属行业不能为空！',1),	//所属行业,条件:必填
		 array('langId','require','发布语言不能为空！',1),	//发布语言,条件:必填
		 array('seqNo','number','排序:输入项须为纯数字!',0,'regex','ALL'),	//排序,条件:纯数字

	 ); 

	 protected $_auto=array( ////自动验证设置 

		 array('create_at','time','ADD','function'),	//加入时间,条件:time
		 array('update_on','time','UPDATE','function'),	//更新时间,条件:time_update

	 ); 

}
?>