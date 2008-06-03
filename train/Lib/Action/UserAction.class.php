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
class UserAction extends PublicAction {

    function _initialize()
    {
       if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->redirect('login','Public');
        }
        parent::_initialize();
    }

	public function index()
    {
        //列表过滤器，生成查询Map对象
        $map = $this->_search();
        if(method_exists($this,'_filter')) {
            $this->_filter($map);
        }
		$model        = D('User');
        if(!empty($model)) {
        	$this->_list($model,$map);
        }
		$this->display();
        return;
    }
    /**
     +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
     +----------------------------------------------------------
     * @access protected
     +----------------------------------------------------------
     * @param string $name 数据对象名称
     +----------------------------------------------------------
     * @return HashMap
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
    protected function _search($name='')
    {
        //生成查询条件
		if(empty($name)) {
			$name	=	$this->name;
		}
		$model	=	D($name);
		$map	=	array();
        foreach($model->getDbFields() as $key=>$val) {
            if(isset($_REQUEST[$val]) && $_REQUEST[$val]!='') {
                $map[$val]	=	$_REQUEST[$val];
            }
        }
        return $map;
    }

    /**
     +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
     +----------------------------------------------------------
     * @access protected
     +----------------------------------------------------------
     * @param Model $model 数据对象
     * @param HashMap $map 过滤条件
     * @param string $sortBy 排序
     * @param boolean $asc 是否正序
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
    protected function _list($model,$map,$sortBy='',$asc=true)
    {
        //排序字段 默认为主键名
        if(isset($_REQUEST['order'])) {
            $order = $_REQUEST['order'];
        }else {
            $order = !empty($sortBy)? $sortBy: $model->getPk();
        }
        //排序方式默认按照倒序排列
        //接受 sost参数 0 表示倒序 非0都 表示正序
        if(isset($_REQUEST['sort'])) {
            $sort = $_REQUEST['sort']?'asc':'desc';
        }else {
            $sort = $asc?'asc':'desc';
        }
        //取得满足条件的记录数
        $count      = $model->count($map);
		if($count>0) {
			import("ORG.Util.Page");
			//创建分页对象
			if(!empty($_REQUEST['listRows'])) {
				$listRows  =  $_REQUEST['listRows'];
			}else {
				$listRows  =  '';
			}
			$p          = new Page($count,$listRows);
			//分页查询数据
			$voList     = $model->findAll($map,'*',$order.' '.$sort,$p->firstRow.','.$p->listRows);
			//分页跳转的时候保证查询条件
			foreach($map as $key=>$val) {
				if(is_array($val)) {
					foreach ($val as $t){
						$p->parameter	.= $key.'[]='.urlencode($t)."&";
					}
				}else{
					$p->parameter   .=   "$key=".urlencode($val)."&";
				}
			}
			//分页显示
			$page       = $p->show();
			//列表排序显示
			$sortImg    = $sort ;                                   //排序图标
			$sortAlt    = $sort == 'desc'?'升序排列':'倒序排列';    //排序提示
			$sort       = $sort == 'desc'? 1:0;                     //排序方式
			//模板赋值显示
			$this->assign('list',       $voList);
			$this->assign('sort',       $sort);
			$this->assign('order',      $order);
			$this->assign('sortImg',    $sortImg);
			$this->assign('sortType',   $sortAlt);
			$this->assign("page",       $page);
		}
        return ;
    }

    function insert()
    {
		$model	=	D('User');
        if(false === $model->create()) {
        	$this->error($model->getError());
        }
        //保存当前数据对象
        $id = $model->add();
        if($id) { //保存成功
            //成功提示
            $copy=D('infos');
            $insterd=D('usertmp');
            $copydate=$copy->findall(null,'id');
            foreach ($copydate as $evl=>$value){
            	$dbdate['user']=$_REQUEST['account'];
            	$dbdate['infoid']=$value['id'];
            	
           $insterd->create($dbdate);
           $insterd->add();
           
            }
           

            $this->success(L('_INSERT_SUCCESS_'));
        }else {
            //失败提示
            $this->error(L('_INSERT_FAIL_'));
        }
    }

	public function add() {
		$this->display();
	}

	function read() {
		$this->edit();
	}

	function edit() {
		$model	=	D('User');
		$id     = $_REQUEST['id'];
		$vo	=	$model->getById($id);
		$this->assign('vo',$vo);
		$this->display();
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
        $model        = D('User');
         $id         = $_REQUEST['id'];
        $userdate=$model->getbyid($id);
        $username=$userdate['account'];
        $tmpuser=D('usertmp');
        $tmpuser->deleteAll("user='$username'");
        
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
		$model	=	D('User');
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
		$model	=	D('User');
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