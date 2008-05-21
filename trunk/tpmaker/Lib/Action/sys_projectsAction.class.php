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
		if(!empty($_REQUEST['id'])){
			$project=D('sys_projects');
			$projectdate=$project->getByid($_REQUEST['id']);
			if($projectdate['caption']==''){$this->error('请检查参数是否正确!');exit;}
			$projectdate['caption'].='_new';//默认的新的项目会加上_new加以区分
			$project->create($projectdate);
			$project->add();
			
			$projectid=$project->getLastInsID();//取得最新的ID
			copytable('sys_tables',$projectid,'pid',$_REQUEST['id']);
			
			//防止新生成的公共数据模型不配对
			$tables=D('sys_tables');
			$tabledate=$tables->findall('pid='.$_REQUEST['id'].' and ismodel=1');//找出旧的公共模型
			//dump($tabledate,true,'旧的数据PID');
			foreach ($tabledate as $old_table){
				$new_caption=$old_table['caption'];
				$new_title=$old_table['title'];
				$old_id=$old_table['id'];
				$tabledate2=$tables->findall("caption='$new_caption' and title='$new_title' and pid=$projectid and ismodel=1");//找出新的公共MODEL//前提是这两个参数的组合是唯一的
				//dump($tabledate2,true,'新的数据PID');
				foreach ($tabledate2 as $new_tables){
				$new_id=$new_tables['id'];//找出了新公共模型的ID
				$updatetables=$tables->findall("datemodelid=$old_id and pid=$projectid");
				$updatetables['datemodelid']=$new_id;
				$updatevar=$tables->create($updatetables);
				dump($updatevar);
				$tables->save();
				}
				
			}
			
			redirect(__URL__."/index");
			
		}else{
			$this->error('请检查参数是否正确!');
		}
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

	public function buidedb(){//导入数据库
		require COMMON_PATH."tpmakerdb.class.php";//引入自定义的类
	   $list=D('sys_projects');
	   $data=$list->getByid($_REQUEST['id']);
	   if($data['dbname']!=''){
		   $t=new tpmakerdb();
		   $t->projectid=$data['id'];
		   $t->dropcheck=false;
		   $t->buideall();

		   	   	
	   }

	   
		//dump($data);

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