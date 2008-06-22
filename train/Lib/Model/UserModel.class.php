<?php 
// +----------------------------------------------------------------------
// | ThinkPHP                                                             
// +----------------------------------------------------------------------
// | Copyright (c) 2008 http://thinkphp.cn All rights reserved.      
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>                                  
// +----------------------------------------------------------------------
// $Id$
import('@.Model.CommonModel');
class UserModel extends CommonModel {
	protected $_validate	 =	 array(
		array('account','require','用户必须！'),
		array('nickname','require','昵称必须！'),
		array('password','require','密码必须！'),

		);
	// 自动填充设置
	protected $_auto	 =	 array(
		array('status','1','ADD'),
		array('create_time','time','ADD','function'),
		array('password','md5','ALL','function'),
		);

	public function CheckVerify() {
		return md5($_POST['verify']) == $_SESSION['verify'];
	}
}
?>