<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_searchtypeAction.class.php
/////////////////////////////////////////////////////////////////////////////
class AdminAction extends Action{


    /**
     +----------------------------------------------------------
     * 默认排序操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
    function sort()
    {
    	$thismodel=$this->name;
        $list      =   D($thismodel);
        if(!$_REQUEST['pid']){
        $sortList  =   $list->findAll('','*','seqNo asc');
        }else{
         $sortList  =   $list->findAll('pid='.$_REQUEST['pid'],'*','seqNo asc');
        }
        //dump($sortList);
        $this->assign("sortList",$sortList);
        $this->display('Public:sort');
        return ;
    }


    /**
     +----------------------------------------------------------
     * 默认排序保存操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
    function saveSort()
    {
        $seqNoList  =   $_POST['seqNoList'];
        if(!empty($seqNoList)) {
            //更新数据对象
            $dao    = $this->getDaoClass();
            $map    =   new HashMap();
            $col    =   explode(',',$seqNoList);
            //启动事务
            $dao->startTrans();
            foreach($col as $val) {
                $val    =   explode(':',$val);
                $map->put('id',$val[0]);
                $map->put('seqNo',$val[1]);
                $result =   $dao->save($map);
                if(!$result) {
                    break;
                }
            }
            //提交事务
            $dao->commit();
            if($result) {
                //采用普通方式跳转刷新页面
                $this->assign("message",'更新成功');
                $this->assign("jumpUrl",$this->getReturnUrl());
            }else {
                $this->error = $dao->error;
            }
            //页面跳转
            $this->forward();
        }

    }



}



?>