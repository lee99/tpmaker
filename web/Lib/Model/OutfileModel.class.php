<?php

class OutfileModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('title','require','标题不能为空！',1),	//标题,条件:必填
		 array('content','require','内容不能为空！',1),	//内容,条件:必填
		 array('callingId','require','所属行业不能为空！',1),	//所属行业,条件:必填
		 array('outfiletypeId','require','内容分类不能为空！',1),	//内容分类,条件:必填
		 array('langId','require','发布语言不能为空！',1),	//发布语言,条件:必填
		 array('files','require','文件不能为空！',1),	//文件,条件:必填
		 array('seqNo','number','排序:输入项须为纯数字!',0,'regex','ALL'),	//排序,条件:纯数字

	 ); 

	 protected $_auto=array( ////自动验证设置 

		 array('create_at','time','ADD','function'),	//加入时间,条件:time
		 array('update_on','time','UPDATE','function'),	//更新时间,条件:time_update

	 ); 

}
?>