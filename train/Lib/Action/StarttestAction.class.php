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
        $map = D('usertmp');
        $list=$map->findall("iskeep >0 and user='".$_SESSION['loginuser']."'",'id','hit ASC');
        $ary=array_rand($list,100);
        $_SESSION['working_test']=$ary;
        dump($_SESSION['working_test']);
		//dump($list);
    }



	function update() {
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
    public function delete()
    {
        //删除指定记录
        $model        = D('Starttest');
         $id         = $_REQUEST['id'];
        $Starttestdate=$model->getbyid($id);
        $Starttestname=$Starttestdate['account'];
        $tmpStarttest=D('Starttesttmp');
        $tmpStarttest->deleteAll("Starttest='$Starttestname'");
        
        if(!empty($model)) {
           
            if(isset($id)) {
                if($model->delete($id)){
                    $this->success(L('_DELETE_SUCCESS_'));
                }else {
                    $this->error(L('_DELETE_FAIL_'));
                }
            }else {
                $this->error('非法操作');
            }
        }
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