<?php

class InfosModel extends Model {

	 protected $_validate=array( ////自动验证设置 

		 array('intNumber','require','标识符号不能为空！',1),	//标识符号,条件:必填
		 array('strType_f','require','章节大类不能为空！',1),	//章节大类,条件:必填
		 array('strType_s','require','章节小类不能为空！',1),	//章节小类,条件:必填
		 array('strQuestion','require','问题内容不能为空！',1),	//问题内容,条件:必填
		 array('strA','require','A答案不能为空！',1),	//A答案,条件:必填
		 array('strB','require','B答案不能为空！',1),	//B答案,条件:必填
		 array('strC','require','C答案不能为空！',1),	//C答案,条件:必填
		 array('strD','require','D答案不能为空！',1),	//D答案,条件:必填
		 array('strType_x','require','试题类型不能为空！',1),	//试题类型,条件:必填
		 array('pic','require','图案不能为空！',1),	//图案,条件:必填
		 array('strRight_answer','require','正确答案不能为空！',1),	//正确答案,条件:必填
		 array('strYour_answer','require','个人答案不能为空！',1),	//个人答案,条件:必填
		 array('Hint','require','提示不能为空！',1),	//提示,条件:必填
		 array('chengji','require','成绩不能为空！',1),	//成绩,条件:必填
		 array('seq_no','require','排序不能为空！',1),	//排序,条件:必填

	 ); 

	 protected $_auto=array( ////自动验证设置 


	 ); 

}
?>