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
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序

		$p=$this->tpPage($count,10,'page');
		$list=$list->findAll('','*',$orderBy,$p['firstRow'].','.$p['listRows']);

		//dump($list);
		$this->assign('list',$list);
		$this->display();

	}



	public function delete(){
		$list=D('sys_projects');
		require_once COMMON_PATH."tp_common.php";//引入自定义的类
		require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
		$buideid=$_REQUEST['id'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$app_path=$t->getapppath();
		if(deldir($app_path)){
			msg("成功!");
			delbypid(sys_tables,$_REQUEST['id'],$pidf='pid');
			$list->delete($_REQUEST['id']);
		}else {
			msg("失败!",0);
		}

		sleep(3);

		redirect(__URL__."/index");
	}


	public function updateform(){
		$list=D('sys_projects');
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
		$list=D('sys_projects');
		$list->create();
		$list->add();
		$this->ajaxReturn('','操作成功！',1);
		//redirect(__URL__."/index");
	}

	public function Percopy(){
		$this->display();
	}


	public function dic(){
		$this->display();
	}

	public function copy(){
		if(!empty($_REQUEST['id'])){
			$project=D('sys_projects');
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
			copytable('sys_tables',$projectid,'pid',$_REQUEST['id']);//拷贝本项目下的表及字段

			//防止新生成的公共数据模型不配对
			$tables=D('sys_tables');
			$tabledate=$tables->findall('pid='.$_REQUEST['id'].' and ismodel=1');
			//找出旧的公共模型
			//dump($tabledate,true,'旧的数据PID');
			foreach ($tabledate as $old_table){
				$new_caption=$old_table['caption'];
				$new_title=$old_table['title'];
				$old_id=$old_table['id'];
				$tabledate2=$tables->findall("caption='$new_caption' and title='$new_title' and pid=$projectid and ismodel=1");
				//找出新的公共MODEL
				//前提是这两个参数的组合是唯一的
				//dump($tabledate2,true,'新的数据PID');
				foreach ($tabledate2 as $new_tables){
					$new_id=$new_tables['id'];//找出了新公共模型的ID
					$updatetables=$tables->findall("datemodelid=$old_id and pid=$projectid");
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
		$list=D('sys_projects');
		$data=$list->getByid($_REQUEST['id']);
		$db_config = 'mysql://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.$data['dbname'];
		$db	=	DB::getInstance();
		$db->addConnect($db_config,1);
		$db->switchConnect(1);
		$tables = $db->getTables();
		foreach ($tables as $tbname){
			$fe=$db->getFields($tbname);
			dump($fe);//所有表的字段
		}
		//dump($tables);//所有表
		$db->switchConnect(0);
	}

	public function buidedb(){//导入数据库
		require_once COMMON_PATH."tpmakerdb.class.php";//引入自定义的类
		$list=D('sys_projects');
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
		require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
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
		$path = opendir($zippath);
		while (false !== ($file = readdir($path))) {
			if($file!="." && $file!="..") {
				if(is_file($dir."/".$file)){
					$files[]=$file;
				} else {
					$dirs[]=$dir."/".$file;
				}
			}
		}
		if($dirs) {
			natcasesort($dirs);
			foreach($dirs as $dir) {
				$dirname=substr($dir,1);
				$z ->add_dir($dirname); //添加指定目录
				msg($dir."...添加目录成功!<br>");
				//read_dir($dir);
			}
		}
		if($files) {
			natcasesort($files);
			foreach ($files as $file)
			$fp=@fopen($file,rb);
			$zipfilecontent=Array($filename,@fread($fp,$filesize));
			@fclose($fp);
			$zip->Add($zipfilecontent,1);  //可以多次执行 $zip->Add 来添加多个文件
			msg($file."...添加文件成功!<br>");
		}
		closedir($path);

		if(@fputs(@fopen($filename,"wb"),$z->get_file())){ //写入文件
			msg("文件压缩成功!!");
		}else{
			msg("文件压缩失败!!",0);
		}
		//$z -> Zip($zippath, './Backup/ZIP/'.$zipname['proname'].".zip"); //添加指定目录


	}

}



?>