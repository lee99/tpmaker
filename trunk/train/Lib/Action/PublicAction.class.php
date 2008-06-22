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

class PublicAction extends Action {

	public function checkLogin() {
		$User	=	D('User');
		if(empty($_POST['account'])) {
			$this->error('帐号错误！');
		}elseif (empty($_POST['password'])){
			$this->error('密码必须！');
		}elseif ($_SESSION['verify'] != md5($_POST['verify'])){
			$this->error('验证码错误！');
		}
        //生成认证条件
        $map            =   array();
        $map["account"]	=	$_POST['account'];
        $map["status"]	=	array('gt',0);

		$authInfo = $User->find($map);
        //使用用户名、密码和状态的方式进行认证
        if(false === $authInfo) {
            $this->error('用户名不存在或已禁用！');
        }else {
			if($authInfo['account']	!=  $_POST['account']) {
				$this->error('帐号错误！');
			}
            if($authInfo['password'] != md5($_POST['password'])) {
            	$this->error('密码错误！');
            }
            $_SESSION[C('USER_AUTH_KEY')]	=	$authInfo['id'];
            $_SESSION['loginuser']	=	$authInfo['account'];

			$this->success('登录成功！');
		}
	}

	public function login() {
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$user=D('User');
			$list=$user->findall();
			$this->assign('user',$list);

			//dump($list);
			$this->display();
		}else{
			$this->redirect('index','Index');
		}
	}

    public function logout()
    {
        if(isset($_SESSION[C('USER_AUTH_KEY')])) {
			unset($_SESSION[C('USER_AUTH_KEY')]);
            $this->assign("message",'登出成功！');
            $this->assign("jumpUrl",__URL__.'/login/');
        }else {
            $this->assign('error', '已经登出！');
        }
        $this->forward();
    }

    /**
     +----------------------------------------------------------
     * 验证码显示
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
    function verify()
    {
        import("ORG.Util.Image");
        if(isset($_REQUEST['adv'])) {
        	Image::showAdvVerify();
        }else {
        	Image::buildImageVerify();
        }
    }

	public function index()
	{
		//如果通过认证跳转到首页
		redirect(__APP__);
	}


}
?>