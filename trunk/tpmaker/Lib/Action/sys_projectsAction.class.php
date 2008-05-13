<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sys_projectsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class sys_projectsAction extends AdminAction{

	public function Index(){

		$list=D('sys_projects');
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
		$list=D('sys_projects');
		require COMMON_PATH."tp_common.php";//引入自定义的类
		require COMMON_PATH."tpmaker.class.php";//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$app_path=$t->getapppath();
		if(deldir($app_path)){
			echo "成功!";
			delbypid(sys_tables,$_REQUEST['id'],$pidf='pid');
			$list->delete($_REQUEST['id']);
		}else {
			echo "失败!";
		}

		sleep(3);

		redirect(__URL__."/index");
	}


	public function updateform(){
		$list=D('sys_projects');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$dataall=$list->create($var);
		$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);

	}

	public function addform(){
		$list=D('sys_projects');
		$list->create();
		$list->add();
		$this->ajaxReturn('','操作成功！',1);
		//redirect(__URL__."/index");
	}


	public function copy(){
		$project=D('sys_projects');
		$projectdate=$project->getByid($_REQUEST['id']);
			$projectdate['caption'].='[new]';
			$project->create($projectdate);
			$project->add();
		$projectid=$project->getLastInsID();
		copytable('sys_tables',$projectid,'pid',$_REQUEST['id']);
		redirect(__URL__."/index");

	}

	public function importdb(){//导入数据库
	   $list=D('sys_projects');
	   $data=$list->getByid($_REQUEST['id']);
	   $db_config = 'mysql://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.$data['dbname'];
	   $db	=	DB::getInstance();
	   $db->addConnect($db_config,1);
		$db->switchConnect(1);
		$tables = $db->getTables();
		foreach ($tables as $tbname){
			$fe=$db->getFields($tbname);
			dump($fe);
		}
		dump($tables);
		$db->switchConnect(0);
	}


	public function buidepro(){//导入数据库
		require COMMON_PATH."tp_common.php";//引入自定义的类
		require COMMON_PATH."tpmaker.class.php";//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$t->makeprodir();
		$t->makeproindex();//生成index.php
		$t->makeproconf();//生成config.php
		$t->makeproindexaction();//生成项面INDEX的面页和相应的列表数据
	   $table=D('sys_tables');
	   $tabledata=$table->findAll('pid='.$buideid.' and ismodel <>1 and isaction =1');
	   foreach ($tabledata as $tb){
	   	$t->makepromodel($tb['id']);//生成MODEL
	   	$t->makeproaction($tb['id']);//生成ACTION
	    $t->makeprotpl($tb['id']);//生成模板HTML文件
	   }

	}



}



?>