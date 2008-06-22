<?php

class NsclientModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title_cn','require','客户名称[中文]不能为空！',1),	//客户名称[中文],条件:必填
		 array('info_cn','require','客户说明[中文]不能为空！',1),	//客户说明[中文],条件:必填
		 array('title_en','require','客户名称[英文]不能为空！',1),	//客户名称[英文],条件:必填
		 array('callingid','require','客户行业不能为空！',1),	//客户行业,条件:必填
		 array('isvip','require','是否VIP不能为空！',1),	//是否VIP,条件:必填
		 array('seqNo','number','排序:输入项须为纯数字!',0,'regex','ALL'),	//排序,条件:纯数字

	 ); 

	 protected $_auto=array( ////自动验证设置 

		 array('create_at','time','ADD','function'),	//加入时间,条件:time
		 array('update_on','time','UPDATE','function'),	//更新时间,条件:time_update

	 ); 

}
?>