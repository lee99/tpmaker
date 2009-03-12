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
        $this->assign("thismodel",$thismodel);
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
        $seqNoList  =   $_POST['sortvaue'];
        if(!empty($seqNoList)) {
            //更新数据对象
	    	$thismodel=$this->name;
	        $list      =   D($thismodel);
            $col    =   explode(',',$seqNoList);
            $i=1;
            foreach($col as $val) {
			$data['id'] =$val;
			$data['seqNo'] =$i;
			$list->save($data); 
			$i++;
            }
        }
        $this->ajaxReturn('','排序操作成功！',1);
    }


    /**
     +----------------------------------------------------------
     * 自定分页
     +----------------------------------------------------------
     */
    function tppage($count,$listRows=10,$pageid='page')
    {
        import("ORG.Util.Page");
        $page    =    new Page($count,$listRows);
        $r['firstRow']=$page->firstRow;
        $r['listRows']=$page->listRows;
        $page = $page->show(1);
        //dump($page);
        $this->assign($pageid,$page['linkPages']);
        return $r;
    }
    
    /**
     +----------------------------------------------------------
     * 自定分页
     +----------------------------------------------------------
     */
    function getmakerpath()
    {
    	if($_SESSION['workingproject']!='' || $_SESSION['workingproject']['tplname']!=''){
    		return APP_PATH.'/tpmaker_tpl/'.$_SESSION['workingproject']['tplname'].'/maker.class.php';
    	}else{
    		halt('参数错误,请重新刷新或设定项目的横板!');
    	}
    }  

}



?>