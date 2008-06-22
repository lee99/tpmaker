<?php

class NsjobModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('jobno','require','职位编号不能为空！',1),	//职位编号,条件:必填
		 array('title','require','职位名称不能为空！',1),	//职位名称,条件:必填
		 array('content','require','职位要求不能为空！',1),	//职位要求,条件:必填
		 array('count','require','招聘人数不能为空！',1),	//招聘人数,条件:必填
		 array('endday','require','结束时间不能为空！',1),	//结束时间,条件:必填
		 array('startday','require','开始时间不能为空！',1),	//开始时间,条件:必填
		 array('seqNo','number','排序:输入项须为纯数字!',0,'regex','ALL'),	//排序,条件:纯数字

	 ); 

	 protected $_auto=array( ////自动验证设置 

		 array('create_at','time','ADD','function'),	//加入时间,条件:time
		 array('update_on','time','UPDATE','function'),	//更新时间,条件:time_update

	 ); 

}
?>