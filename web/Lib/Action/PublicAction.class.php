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
		//$User	=	D('User');
		if(empty($_POST['account'])) {
			echo "{success:true,msg:'帐号错误！'}";exit;

		}elseif (empty($_POST['password'])){
			echo "{success:true,msg:'密码必须！'}";exit;
		}elseif ($_SESSION['verify'] != md5($_POST['verify'])){
			echo "{success:true,msg:'验证码错误！'}";exit;
		}
        //生成认证条件
        //$map            =   array();
        //$map["account"]	=	$_POST['account'];
        //$map["status"]	=	array('gt',0);

		//$authInfo = $User->find($map);
        //使用用户名、密码和状态的方式进行认证
        if('' == $authInfo) {
			echo "{success:true,msg:'用户名不存在或已禁用！'}";exit;
        }else {
			if($authInfo['account']	!=  $_POST['account']) {
				echo "{success:true,msg:'帐号错误！'}";exit;

			}
            if($authInfo['password'] != md5($_POST['password'])) {
				echo "{success:true,msg:'密码错误！'}";exit;
            }
            $_SESSION[C('USER_AUTH_KEY')]	=	$authInfo['id'];
				echo "{success:true,msg:'OK'}";
			exit;
		}
	}

	public function mlogin() {
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->display();
		}else{
			$this->redirect('index','Index');
		}
	}

	
	public function viplogin() {
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->display();
		}else{
			$this->redirect('index','Index');
		}
	}
	
    public function logout()
    {
        if(isset($_SESSION[C('USER_AUTH_KEY')])) {
			unset($_SESSION[C('USER_AUTH_KEY')]);
			$this->redirect('index','Index');
        }else {
			$this->redirect('index','Index');
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

    /**
     +----------------------------------------------------------
     * 取得操作成功后要返回的URL地址
     * 默认返回当前模块的默认操作
     * 可以在action控制器中重载
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
    function getReturnUrl()
    {
        return __URL__.'?'.C('VAR_MODULE').'='.MODULE_NAME.'&'.C('VAR_ACTION').'='.C('DEFAULT_ACTION');
    }

}
?>