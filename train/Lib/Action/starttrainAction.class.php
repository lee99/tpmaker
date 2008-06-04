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
class starttrainAction extends PublicAction {


	public function index()
    {
        //列表过滤器，生成查询Map对象
        $var= $_SESSION['working_test'];
        //dump($_SESSION['working_test']);
		//dump($var);
		$this->assign('list',$var);
		$map = D('infos');
		if(!$_REQUEST['id']){
			$recoderid=$var[0];
		}else{
			$recoderid=$_REQUEST['id'];
		}
		$date=$map->getbyid($recoderid);
		$this->assign('date',$date);
		//dump($date);
		$this->display();
    }


	public function creat()
    {
        //列表过滤器，生成查询Map对象
        $map = D('usertmp');
        $list=$map->findall("iskeep >0 and user='".$_SESSION['loginuser']."'",'id','hit ASC');
        $ary=array_rand($list,100);
        $_SESSION['working_test']=$ary;
		$this->redirect('index');
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
        $model        = D('starttrain');
         $id         = $_REQUEST['id'];
        $starttraindate=$model->getbyid($id);
        $starttrainname=$starttraindate['account'];
        $tmpstarttrain=D('starttraintmp');
        $tmpstarttrain->deleteAll("starttrain='$starttrainname'");

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
		$model	=	D('starttrain');
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
		$model	=	D('starttrain');
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