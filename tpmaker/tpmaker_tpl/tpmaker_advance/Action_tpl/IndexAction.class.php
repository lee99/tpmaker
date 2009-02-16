<?php
//+---------------------------------------------------
//|	tpmaker1.05 tpl:tpmaker_advance
//+---------------------------------------------------
class IndexAction extends PublicAction{

	public function index(){
		//总体的
		 $this->display();
	}

	public function leftframe(){
		//左边的
		$this->display();
	}

	public function mainframe(){
		//主要的
		$this->display();
	}

	public function topframe(){
		//顶部的
		//生成table的树
		$topdate=array(
{topdate}			array( 'id' =>'{id}','caption' =>'{caption}','name' =>'{title}'),
{/topdate}
);
		$this->assign('top',$topdate);
		//dump($leftdate);
		$this->display();
	}

	public function midFrame(){
		//中间的
		$this->display();
	}

}



?>