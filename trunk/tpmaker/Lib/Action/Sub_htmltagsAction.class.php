<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_htmltagsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sub_htmltagsAction extends AdminAction{

	public function Index(){

		$list=D('sub_htmltags');
		$count= $list->count();
		import("ORG.Util.Page");
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p= new Page($count,$listRows);
		$list=$list->findAll('','*',$orderBy,$p->firstRow.','.$p->listRows);

		//dump($list);
		$page=$p->show();
		$this->assign('list',$list);
		$this->assign('page',$page);
		$this->display();

	}



	public function delete(){
		$list=D('sub_htmltags');
		//$sub_htmltags->find($_REQUEST['id']);
		$list->delete($_REQUEST['id']);
		redirect(__URL__."/index");
	//dump($sub_htmltags);
	}



	public function updateform(){
		$list=D('sub_htmltags');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
		//dump($_REQUEST);
	}

	public function addform(){
		$list=D('sub_htmltags');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}


	public function json(){

		$page = $_REQUEST['page'];//当前页
		$limit = $_REQUEST['rows'];//分页
		$sidx = $_REQUEST['sidx'];//排序表单
		$sord = $_REQUEST['sord'];//排序方向


		$condition=Array();//搜索的条件
		
		$list=D('sub_htmltags');
		$count= $list->count();
		import("ORG.Util.Page");
		$feilds='*';//字段
		$sidx=(!empty($sidx))?$sidx:'seqNo';//排序表单
		$sord=(!empty($sord))?$sord:'sort';//排序方向
		$orderBy=$sidx.' '.$sord;//排序

		$p= new Page($count,$listRows);
		$list=$list
			->where($condition)
			->field($feilds)
			->order($orderBy)
			->limit($limit)
			->findAll();
			
		
		$r[total]=$p->nowPage;
		$r[page]=$p->totalPages;
		$r[records]=$p->totalRows;
		for ($i = 0; $i < count($list); $i++) {
			$r[rows][$i][id]=$list[$i]['id'];
			$r[rows][$i][cell]=array($list[$i]['id'],$list[$i]['title'],$list[$i]['othervar'],$list[$i]['seqNo'],$list[$i]['usetype'],$list[$i]['color'],$list[$i]['color']);
		}

		//$this->ajaxReturn($r,'操作成功！',1);
		echo json_encode($r);

	}
}



?>