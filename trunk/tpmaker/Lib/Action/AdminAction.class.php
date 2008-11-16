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
    }

    /**
     +----------------------------------------------------------
     * 默认返回jqgrid的jSON的操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
	public function jqjson($id,$col){
	
		$thismodel=$this->name;
		

		$page = $_REQUEST['page'];//当前页
		$limit= $_REQUEST['rows'];//分页
		$sidx = $_REQUEST['sidx'];//排序表单
		$sord = $_REQUEST['sord'];//排序方向
		$issearch= $_REQUEST['_search'];//是否搜索
		
		
		$condition=Array();//搜索的条件
		
		if($issearch=='true'){
		$searchField=$_REQUEST['searchField'];//搜索字段
		$searchOper=$_REQUEST['searchOper'];//搜索条件
		$searchString=$_REQUEST['searchString'];//搜索内容
		$condition=makecontion($searchField,$searchOper,$searchString);//高级搜索过滤
		//$condition[$searchField]=array('like',$searchString);
		}

		
		
		$glist=D($thismodel);
		$count= $glist->count();
		$feilds='*';//字段
		$sidx=(!empty($sidx))?$sidx:'seqNo';//排序表单
		$sord=(!empty($sord))?$sord:'sort';//排序方向
		$orderBy=$sidx.' '.$sord;//排序
		
		if($count >0){
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
		
		
		$page=($page > $total_pages)? $total_pages:$page;//当前的页数
		
		$start = $limit*$page-$limit;//总数算出开始的记录
		$start =($start <0)?0:$start;//开始
		$limit="$start,$limit";
		
		$glist=$glist
			->where($condition)
			->field($feilds)
			->order($orderBy)
			->limit($limit)
			->findAll();
		
		$j[total]=$total_pages;
		$j[page]=$page;
		$j[records]=$count;
		//dump($glist);
		foreach( $glist as $key=>$gdata) {
			$j[rows][$key][id]=$gdata[$id];//定义kEY
			foreach ($col as $datacol){//定义字段
				$j[rows][$key][cell][]=$gdata[$datacol];
			}
		}
		//dump($j);
		//$this->ajaxReturn($j,'操作成功！',1);
		echo json_encode($j);
		//return $j;

	}


    /**
     +----------------------------------------------------------
     * 默认返回jqgrid的jSON的操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
	public function simjson(){
	
		$thismodel=$this->name;
		

		$page = $_REQUEST['page'];//当前页
		$limit= $_REQUEST['rows'];//分页
		$sidx = $_REQUEST['sidx'];//排序表单
		$sord = $_REQUEST['sord'];//排序方向
		$issearch= $_REQUEST['_search'];//是否搜索
		
		
		$condition=$this->condition();//搜索的条件
		//dump($condition);
		
		if($issearch=='true'){
		$searchField=$_REQUEST['searchField'];//搜索字段
		$searchOper=$_REQUEST['searchOper'];//搜索条件
		$searchString=$_REQUEST['searchString'];//搜索内容
		$condition=makecontion($searchField,$searchOper,$searchString);//高级搜索过滤
		}

		
		
		$glist=D($thismodel);
		$count= $glist->count($condition);//以这个条件找出相应的总数
		$feilds='*';//字段
		$sidx=(!empty($sidx))?$sidx:'seqNo';//排序表单
		$sord=(!empty($sord))?$sord:'sort';//排序方向
		$orderBy=$sidx.' '.$sord;//排序
		
		if($count >0){
			$total_pages = ceil($count/$limit);
		} else {
			$total_pages = 0;
		}
		
		
		$page=($page > $total_pages)? $total_pages:$page;//当前的页数
		
		$start = $limit*$page-$limit;//总数算出开始的记录
		$start =($start <0)?0:$start;//开始
		$limit="$start,$limit";
		
		$glist=$glist
			->where($condition)
			->field($feilds)
			->order($orderBy)
			->limit($limit)
			->findAll();
		
		$j[total]=$total_pages;
		$j[page]=$page;
		$j[records]=$count;
		$j[rows]=$glist;

		//dump($j);
		//$this->ajaxReturn($j,'操作成功！',1);
		echo json_encode($j);
		//return $j;

	}	


    /**
     +----------------------------------------------------------
     * jQ的一般的操作,委托操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
	public function jq_do(){

		$jq_do=$_POST['oper'];
		switch ($jq_do){
			case 'del'://del
				$this->del();
				break;
			case 'add'://del
				$this->add();
				break;
			case 'edit'://del
				$this->update();
				break;
		}

	}

	/**
     +----------------------------------------------------------
     * jQ的一般的操作,单元委托操作
     +----------------------------------------------------------
     */

	public function jq_celledit(){

		if($_POST['id']){
				$this->update();
		}
	}
	
	
}



?>