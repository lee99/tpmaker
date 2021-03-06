<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_projectsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_projectsAction extends AdminAction{

	public function index(){

		$list=D('Sys_projects');
		$count= $list->count();
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,10,'page');
		//$list=$list->field('*')->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();
		$list=$list->field('*')->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();

		//dump($list);
		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$list=D('Sys_projects');
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		require_once COMMON_PATH."tp_common.php";//引入自定义的类
		require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$app_path=$t->getapppath();
		if(deldir($app_path)){
			msg("成功!");
			delbypid(Sys_tables,$_REQUEST['id'],$pidf='pid');
			$list->delete($_REQUEST['id']);
		}else {
			msg("失败!",0);
		}

		sleep(3);

		redirect(__URL__."/index");
	}


	public function updateform(){
		$list=D('Sys_projects');
		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
			$dataall=$list->create($var);
			$list->save();
		}
		$this->ajaxReturn('','操作成功！',1);

	}

	public function addform(){
		$list=D('Sys_projects');
		$list->create();
		$list->add();
		$this->ajaxReturn('','操作成功！',1);
		//redirect(__URL__."/index");
	}

	public function percopy(){
		//拷贝生成新项目的页面
		$this->display();
	}


	public function dic(){
		//生成数据词典的页面
		$this->display();
	}

	public function perimport(){
		//导入的页面
		$this->display();
	}

	public function copy(){
		if(!empty($_REQUEST['id'])){
			$project=D('Sys_projects');
			$projectdate=$project->getByid($_REQUEST['id']);
			if($projectdate['caption']==''){
				$this->error('请检查参数是否正确!');
				exit;
			}
			$projectdate['caption'].='_new';//默认的新的项目会加上_new加以区分
			$projectdate['id']='';//把ID清空
			$project->create($projectdate);
			//dump($projectdate);
			$project->add();

			$projectid=$project->getLastInsID();//取得最新的ID
			copytable('Sys_tables',$projectid,'pid',$_REQUEST['id']);//拷贝本项目下的表及字段

			//防止新生成的公共数据模型不配对
			$tables=D('Sys_tables');
			$tabledate=$tables->where('pid='.$_REQUEST['id'].' and ismodel=1')->findall();
			//找出旧的公共模型
			//dump($tabledate,true,'旧的数据PID');
			foreach ($tabledate as $old_table){
				$new_caption=$old_table['caption'];
				$new_title=$old_table['title'];
				$old_id=$old_table['id'];
				$tabledate2=$tables->where("caption='$new_caption' and title='$new_title' and pid=$projectid and ismodel=1")->findall();
				//找出新的公共MODEL
				//前提是这两个参数的组合是唯一的
				//dump($tabledate2,true,'新的数据PID');
				foreach ($tabledate2 as $new_tables){
					$new_id=$new_tables['id'];//找出了新公共模型的ID
					$updatetables=$tables->where("datemodelid=$old_id and pid=$projectid")->findall();
					$updatetables['datemodelid']=$new_id;
					$updatevar=$tables->create($updatetables);
					$tables->save();
				}

			}

			redirect(__URL__."/index");

		}else{
			$this->error('请检查参数是否正确!');
		}
	}

	public function importdb(){//导入数据库
		//没完成
		require_once COMMON_PATH."import_db.php";//引入自定义的类
		$list=D('Sys_projects');
		$dbi=new importdb();
		if($_GET['dbname']==''){
			//如果没有传数据库名则以默认设置为参数
			$dbi->projectid=$_GET['pid'];
			$d=$list->getByid($_REQUEST['pid']);
			$dbname=$d['dbname'];
			$dbi->perword=$d['tbpre'];
		}else{
			//如果有传数据库名则以数据库名为参数
			$dbi->projectid=$_GET['pid'];
			$dbname=$_GET['dbname'];
			$dbi->perword=$_GET['perword'];
		}

		$dbi->importdb_name=$dbname;
		$tables=$dbi->getalltable();
		$import_rs=$dbi->table2project($tables);//导入所有表
		foreach ($import_rs as $tb_name){
			$tbname=$tb_name['tablename'];//表名
			$newid=$tb_name['newid'];//表id名
			$field=$dbi->getallField($tbname);//获得所有的字段
			$dbi->field2table($field,$newid);//导入所有的字段

			//dump($fe);//所有表的字段
			//exit;
		}

	}


	public function buidedb(){//导入数据库
		require_once COMMON_PATH."tpmakerdb.class.php";//引入自定义的类
		$list=D('Sys_projects');
		$data=$list->getByid($_REQUEST['id']);
		if($data['dbname']!=''){
			$t=new tpmakerdb();
			$t->projectid=$data['id'];
			$t->dropcheck=false;
			$t->buideall();
		}

	}




	public function buidedic(){//数据字典
		require_once COMMON_PATH."tpmakerdb.class.php";//引入自定义的类
		msg('正在生成数据字典.....',0);
		exit;
		$list=D('Sys_projects');
		$data=$list->getByid($_REQUEST['id']);
		if($data['dbname']!=''){
			$t=new tpmakerdb();
			$t->projectid=$data['id'];
			$t->dropcheck=false;
			$t->buideall();
		}

	}

	public function buidepro(){//生成项目
		require_once COMMON_PATH."tp_common.php";//引入自定义的类
		$makerpath=$this->getmakerpath();//引入自定义的类
		require_once $makerpath;//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new maker();
		$t->projectid=$buideid;
		$t->makeprodir();
		$t->makeproindex();//生成index.php
		$t->makeproconf();//生成config.php
		$t->makeproindexaction();//生成项面INDEX的面页和相应的列表数据
		$t->makeprotectmodel();//生成保留MODEL
		$table=D('Sys_tables');
		$tabledata=$table->where('pid='.$buideid.' and ismodel <>1 and isaction =1')->findall();
		foreach ($tabledata as $tb){
			$t->makepromodel($tb['id']);//生成MODEL
			$t->makeproaction($tb['id']);//生成ACTION
			$t->makeprotpl($tb['id']);//生成模板HTML文件
		}
		$viewmodel=D('Sys_viewmodel');
		$viewmodel=$viewmodel->where('projectid='.$buideid)->findall();
		foreach ($viewmodel as $mod){
			$t->makeproviewmodel($mod['id']);//生成MODEL
		}

		echo "<a target='_blank' href='/".$_SESSION['workingproject']['proname']."/index.php/'>浏览生成的项目结果</a>";
	}

	public function zippro(){//打包项目
		require_once COMMON_PATH."tp_common.php";//引入自定义的类
		require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
		require_once COMMON_PATH."zip.class.php";//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$zippath=$t->getapppath();
		$projects=$t->getprojects();
		$filename='./Backup/ZIP/'.$projects['proname'].".zip";

		$z = new PHPZip();
		$filesize=@filesize($filename);
		$_SESSION['zipdir']='';//所有子目录
		$_SESSION['zipfile']='';//所有子目录

		zipdir($zippath);
		$dirs=$_SESSION['zipdir'];//所有子目录
		$files=$_SESSION['zipfile'];//所有文件

		if($dirs) {
			foreach($dirs as $dir) {
				$z ->add_dir($dir); //添加指定目录
				msg($dir."...添加目录成功!<br>");
				//read_dir($dir);
			}
		}
		if($files) {
			foreach ($files as $file){
			$fp=@fopen($file,rb);
			$zipfilecontent=Array($file,@fread($fp,$filesize));
			@fclose($fp);
			$z->Add($zipfilecontent,1);  //可以多次执行 $zip->Add 来添加多个文件
			msg($file."...添加文件成功!<br>");
			}
		}
		closedir($path);

		if(@fputs(@fopen($filename,"wb"),$z->get_file())){ //写入文件
			msg("文件压缩成功!!");
		}else{
			msg("文件压缩失败!!",0);
		}

		echo "<a href='$filename' traget='_blank'>下载本文件:$filename</a>";


	}

}



?>