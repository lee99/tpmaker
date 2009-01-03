<?php
// 后台管理
class CalendarAction extends PublicAction{



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


 	public function jq_json(){
		$col=array('id','account','outname','nickname','verify','remark','lastloginip','lastlogintime','status');
		$this->jqjson('id',$col);
	}


}
?>