<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sys_tablesAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sys_tablesAction extends AdminAction{

	public function Index(){

		$pro=D('sys_projects');
		$pro=$pro->getByid($_REQUEST[pid]);
		$projecturl=$pro['proname'];
		$this->assign('projecturl',$projecturl);//当前操作的项目路径
		$this->assign('projectname',$pro['caption']);//当前操作的数据库
		$this->display();

	}


	public function Adv(){
		//和index的一样只不过查看到的模板不同而已

		$this->Index();

	}

	public function json(){
		//一般的返回jS的操作,但是是选择所有的
		$this->simjson();
	}
	
	
	public function condition(){
		//设立公共的条件
		$condition['pid']=array('EQ',$_REQUEST[pid]);
		$condition['issystem']=array('EQ',0);
		return $condition;
	}
	

	public function del(){
		$list=D('sys_tables');
		//$sys_tables->find($_REQUEST['id']);
		$listd=$list->findall('id in ('.$_REQUEST[id].')');
		$pid=$listd[0]['pid'];


		$listdel=D('sys_tables');
		$listdel->delete($_REQUEST[id]);

		$delis=explode(',',$_REQUEST['id']);
		//dump($delis);
		foreach ($delis as $delpid){
			delbypid('sys_fields',$delpid,'pid');
		}


	}


	public function update(){
		$list=D('sys_tables');
        if($vo = $list->create()) {
            if($list->save()){
                $this->success('数据更新成功！');
            }else{
                $this->error('数据写入错误！');
            }
        }else{
            $this->error($list->getError());
        }

	}


	public function add(){
		$list=D('sys_tables');
		$date=$_REQUEST;
		$date['pid']=$_SESSION['workingproject']['id'];
		$list->create();
		$list->add($date);
		$this->ajaxReturn('','操作成功！',1);
	}

	
}


?>