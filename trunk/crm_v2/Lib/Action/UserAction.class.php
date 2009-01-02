<?php 
// 后台管理
class UserAction extends PublicAction{

    //重置密码
    public function resetPwd() 
    {
    	$id  =  $_POST['id'];
        $password = $_POST['password'];
        if(empty($password)) {
        	$this->error('密码不能为空！');
        }
        $Auth = D('User');
		$Auth->password	=	md5($password);
		$Auth->id			=	$id;
		$result	=	$Auth->save();
        if(false !== $result) {
            $this->success("密码修改为$password");
        }else {
        	$this->error('重置密码失败！');
        }
    }

	public function Index(){
		 $this->display();
	}

	public function Leftframe(){
		$user=D('User');
		$userlist=$user->findAll();
		$this->assign('userlist',$userlist);
		$this->display();
	}

	public function mainframe(){
		//前台说明
		$this->display();
	}
	
	public function wiewcopy(){
		//前台说明
		$this->display();
	}
	
	
	public function viewlog(){
		//前台说明
		$this->display();
	}
		
 	public function jq_json(){
		$col=array('id','account','outname','nickname','verify','remark','lastloginip','lastlogintime','status');
		$this->jqjson('id',$col);
	}	
	

} 
?>