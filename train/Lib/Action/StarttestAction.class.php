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

import('@.Action.PublicAction');
class StarttestAction extends PublicAction {


	public function index()
    {
        //列表过滤器，生成查询Map对象
        $var= $_SESSION['working_test'];
        //dump($_SESSION['working_test']);
        $infoid=$_REQUEST['id'];
        $map = D('Infos');
        $Usertmp=D('Usertmp');


		if($_REQUEST['ans']!=''){
			$id=$_REQUEST['go'];
			$ans=$_REQUEST['ans'];

			$var[$id]['ans']=$ans;
			$pass=$var[$id+1]['infoid'];
			$passid=$var[$id+1]['id'];
			$_SESSION['working_test']=$var;


			$Usertmp->hit='(hit+1)';
			$Usertmp->isright=$ans;
			$Usertmp->save();


			$this->redirect('index/id/'.$pass.'/go/'.$passid);

			//dump($var);
		}

        //dump($_SESSION['working_test']);
		//dump($var);


		if(!$_REQUEST['id']){
			$recoderid=$var[0];
		}else{
			$recoderid=$_REQUEST['id'];
		}

		$date=$map->getbyid($recoderid);


		$this->assign('list',$var);
		$this->assign('date',$date);
		//dump($date);
		$this->display();
    }


	public function creat1()
    {
        //列表过滤器，生成查询Map对象
        $map = D('Usertmp');
        $list=$map->findall("iskeep >0 and user='".$_SESSION['loginuser']."'",'id','hit ASC');
        $count=count($list);
        if($count<100){
        	$ary=$list;
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=(int)$value['id'];
	        	$ary2[$evl]['ans']=2;
	        }
        	 //dump($ary2);
        }else{
        	$ary=array_rand($list,100);
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=$value;
	        	$ary2[$evl]['ans']=2;
	        }
        }
        $_SESSION['working_test']=$ary2;
		$this->redirect('index/id/'.$ary2[0]['infoid'].'/go/0');
    }

	public function creat2()
    {
        //列表过滤器，生成查询Map对象
        $map = D('Usertmp');
        $list=$map->findall("iskeep >0 and isright=0 and user='".$_SESSION['loginuser']."'",'id','hit ASC');
        //dump($list);
        $count=count($list);
        if($count<100){
        	$ary=$list;
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=(int)$value['id'];
	        	$ary2[$evl]['ans']=2;
	        }
        	 //dump($ary2);
        }else{
        	$ary=array_rand($list,100);
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=$value;
	        	$ary2[$evl]['ans']=2;
	        }
        }
        $_SESSION['working_test']=$ary2;
		$this->redirect('index/id/'.$ary2[0]['infoid'].'/go/0');
    }

	public function creat3()
    {
        //列表过滤器，生成查询Map对象
        $map = D('Usertmp');
        $list=$map->findall("iskeep =2  and user='".$_SESSION['loginuser']."'",'infoid','hit ASC');
        //dump($list);
        $count=count($list);
        if($count<100){
        	$ary=$list;
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=(int)$value['infoid'];
	        	$ary2[$evl]['ans']=2;
	        }
        	 //dump($ary2);
        }else{
        	$ary=array_rand($list,100);
	        foreach ($ary as $evl=>$value){
	        	$ary2[$evl]['id']=$evl;
	        	$ary2[$evl]['infoid']=$value;
	        	$ary2[$evl]['ans']=2;
	        }
        }

        $_SESSION['working_test']=$ary2;
        //dump($ary2);
		$this->redirect('index/id/'.$ary2[0]['infoid'].'/go/0');
    }

	public function list2(){
        //列表过滤器，生成查询Map对象
        $map = D('Usertmp');
        $list=$map->findall("iskeep =2  and user='".$_SESSION['loginuser']."'",'infoid','hit ASC');
        //dump($list);

    }

	function show() {
		$model	=	D($this->name);
        if(false === $vo = $model->create()) {
        	$this->error($model->getError());
        }
		$result	=	$model->save();
		if($result) {
            //成功提示
            $this->success(L('_UPDATE_SUCCESS_'));
        }else {
            //错误提示
            $this->error(L('_UPDATE_FAIL_'));
        }
	}

    /**
     +----------------------------------------------------------
     * 默认删除操作
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
    public function keep()
    {
    		$infoid=$_REQUEST['id'];
    		if($infoid!=''){
			$Usertmp=D('Usertmp');
			$Usertmp->find("infoid=".$infoid." and user='".$_SESSION['loginuser']."'");
			$Usertmp->iskeep='0';
			$Usertmp->save();
			echo("<font color=red>打入冷宫成功！</font>");
    		}
    }


    public function mark()
    {
 		   	$infoid=$_REQUEST['id'];
    		if($infoid!=''){
			$Usertmp=D('Usertmp');
			$Usertmp->find("infoid=".$infoid." and user='".$_SESSION['loginuser']."'");
			$Usertmp->iskeep='2';
			$Usertmp->save();
			echo("<font color=red>重点记录成功！</font>");
    		}
    }


    public function showstart()
    {

    	$_SESSION['showanswer']=$_REQUEST['id'];
			$this->success("操作成功");
    }

    /**
     +----------------------------------------------------------
     * 默认禁用操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
    function forbid()
    {
		$model	=	D('Starttest');
        $condition = 'id IN ('.$_GET['id'].')';
        if($model->forbid($condition)){
            $this->assign("message",'状态禁用成功！');
            $this->assign("jumpUrl",$this->getReturnUrl());
        }else {
            $this->assign('error',  '状态禁用失败！');
        }
        $this->forward();
    }

    /**
     +----------------------------------------------------------
     * 默认恢复操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
    function resume()
    {
        //恢复指定记录
		$model	=	D('Starttest');
        $condition = 'id IN ('.$_GET['id'].')';
        if($model->resume($condition)){
            $this->assign("message",'状态恢复成功！');
            $this->assign("jumpUrl",$this->getReturnUrl());
        }else {
            $this->assign('error',  '状态恢复失败！');
        }
        $this->forward();
    }
}
?>