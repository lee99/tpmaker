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
		//左边的默认首页
		$table=D('apptree');
		$pid=$_GET['apptreeid'];
		$leftdate=$table->findAll("type='0' and pid ='$pid'");
		foreach($leftdate as $k=>$v){
			$leftdate[$k]['subapp']=where(' pid ='.$v[id])->field('*')->order('seqNO ASC')->findall();
		}
		$this->assign('left',$leftdate);
		//dump($leftdate);
		$this->display();
	}

	public function left(){
		//子模板的左边页面
		$table=D('apptree');
		$pid=$_GET['apptreeid'];
		$leftdate=$table->where("type='0' and pid ='$pid'")->findall();
		foreach($leftdate as $k=>$v){
			$leftdate[$k]['subapp']=$table->where(' pid ='.$v[id])->field('*')->order('seqNO ASC')->findall();
		}
		$this->assign('left',$leftdate);
		//dump($leftdate);
		//exit;
		$this->display();
	}

	public function mainframe(){
		//主要的
		$this->display();
	}

	public function topframe(){
		//顶部的
		//生成table的树
		$table=D('apptree');
		$topdate=$table->where('pid =0 ')->field('*')->order('id ASC')->findall();
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