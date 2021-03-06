<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\Sys_fieldsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class Sys_fieldsAction extends AdminAction{

	public function index(){

		$pro=D('Sys_tables');
		$pro=$pro->getByid($_REQUEST[pid]);
		$this->assign('tablename',$pro['caption']);//当前操作的数据表
		$this->assign('titlename',$pro['title']);//当前操作的数据表

		$list=D('Sys_fields');
		$count= $list->count('pid='.$_REQUEST[pid]);
		if(!empty($_REQUEST['order'])) { $order = $_REQUEST['order']; }else{ $order='seqNo'; } //排序表单
		if(empty($_REQUEST['sort']) ) { $sortd = 'asc'; }else{ $sortd=$_REQUEST['sort']; } //排序方向
		$orderBy=$order.' '.$sortd;//排序
		$p=$this->tpPage($count,20,'page');
		$list=$list->field('*')->where('pid='.$_REQUEST[pid])->order($orderBy)->limit($p['firstRow'].','.$p['listRows'])->findall();
		$list_val=$list;//验证的设定
		$list_genneral=$list;//一般属性设定
		$list_search=$list;//搜索形式设定
		$list_outkey=$list;//外键设定


		$this->assign('list',$list);
		$this->assign('list_val',$list_val);//验证的设定
		$this->assign('list_genneral',$list_genneral);//一般属性设定
		$this->assign('list_search',$list_search);//搜索形式设定
		$this->assign('list_outkey',$list_outkey);//外键设定
		$this->display();

	}



	public function delete(){
		$list=D('Sys_fields');
		//$Sys_fields->find($_REQUEST['id']);
		if($_REQUEST[id]==""){
			halt('输入的ID号不能为空');
		}
		$listd=$list->where('id in ('.$_REQUEST[id].')')->findall();
		$pid=$listd[0]['pid'];

		$listdel=D('Sys_fields');
		$listdel->delete($_REQUEST[id]);
	  //$this->ajaxReturn('','操作成功！',1);
	  redirect(__URL__."/index/pid/".$pid);



	}

	public function Table(){

		$list=D('Sys_tables');
		$list=$list->where('id='.$_REQUEST[id])->findall();
		$list2=$list;
		$this->assign('list',$list);
		$this->assign('list2',$list2);
		$this->display();

	}

	public function ajaxTable(){

		$list=D('Sys_tables');
		if($_SESSION['workingprojectid']==""){
			echo('参数错误,请刷新!');
			exit;
		}
		$key=$_REQUEST['key'];
		$list=$list->findAll("(title like '%$key%' or caption like '%$key%') and pid=".$_SESSION['workingprojectid'],'*');
		$this->assign('list',$list);
		$this->display();

	}

	public function ajaxFields(){

		$fields=D('Sys_fields');
		$key=$_REQUEST['id'];
		$pid=id_To_EValue('Sys_tables','datemodelid','id',$key);
		if($pid!=0){
			$sqlwhere="pid ='$key' or pid='$pid'";
		}else{
			$sqlwhere="pid ='$key' ";
		}
		$list=$fields->findAll($sqlwhere,'*','seqNO asc');
		$this->assign('list',$list);
		$this->display();
	}


	public function outkey(){

		$list=D('Sys_fields');
		$list=$list->where('id='.$_REQUEST[id])->find();
		$this->assign("list",$list);
		//dump($list);
		$this->display();

	}

	public function outkeysave(){
		//保存条件到相应的表里面
		$list=D('Sys_fields');
		$date['id']=$_REQUEST['id'];
		$date['outkeyis']=$_REQUEST['outkeyis'];
		$date['outkey']=$_REQUEST['outkey'];
		$date['outkeyid']=$_REQUEST['outkeyid'];
		$date['outkeyf']=$_REQUEST['outkeyf'];
		$date['outkeywhere']=$_REQUEST['outkeywhere'];
		$list->save($date);

	}

	public function updateform(){
		$list=D('Sys_fields');

		for ($i = 0; $i < count($_POST['id']); $i++) {
			foreach (array_keys($_POST) as $key){
				$var[$key]=	$_POST[$key][$i];//数组转换
			}
		$var['pid']=$_REQUEST['pid'];
		$dataall=$list->create($var);
		$list->save();
		}

		//dump($_REQUEST);

		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index/pid/".$_REQUEST['pid']);


	}

	public function insert(){
		$list=D('Sys_fields');
		$list->create();
		$list->add();
		$this->success('操作成功！');

	}


	public function copyselect(){
    $this->display();
	}

	public function setissystem(){//系统保留信息

		$list=D('Sys_fields');
		$list=$list->where('id='.$_REQUEST[id])->findall();
		$this->assign("list",$list);
		//dump($list);
		$this->display();
	}


	function ajaxauto(){
		$dao=D('Sys_tables');
		$tagname=$_POST['out'];
		$r=$dao->findAll("title like '%$tagname%'","*",'seqNo','0,15');
		$this->assign('list',$r);
		$this->display();

	}

	/*生成本表程序*/
	function buidetable(){
		require_once COMMON_PATH."tp_common.php";//引入自定义的类
		require_once COMMON_PATH."tpmaker.class.php";//引入自定义的类
		$buideid=$_SESSION['workingprojectid'];
		$t=new tpmaker();
		$t->projectid=$buideid;
		$t->makeproindexaction();//生成项面INDEX的面页和相应的列表数据
		$table=D('Sys_tables');
		$tabledata=$table->where('id='.$_GET['pid'].' and ismodel <>1')->findall();
		foreach ($tabledata as $tb){
			$t->makepromodel($tb['id']);//生成MODEL
			$t->makeproaction($tb['id']);//生成ACTION
			$t->makeprotpl($tb['id']);//生成模板HTML文件
		}
		$viewmodel=D('Sys_viewmodel');
		$viewmodel=$viewmodel->where('id='.$_GET['pid'])->findall();
		foreach ($viewmodel as $mod){
			$t->makeproviewmodel($mod['id']);//生成MODEL
		}

		echo "<a  href='/".$_SESSION['workingproject']['proname']."/index.php/".$tb['title']."'>浏览结果</a>";

	}

	function showresult(){
		$tagname=$_POST['tag'];
		$f=D('Sys_fields');
		$t=D('Sys_tables');
		$model=$t->getbyid($tagname);
		$modid=$model['datemodelid'];
		//dump($modid);

		$list=$f->where('pid='.$tagname.' or pid='.$modid)->field('*')->order('seqNo')->findall();

		//dump($list);
		$this->assign('tablecaption',$model['caption']);
		$this->assign('tabletitle',$model['title']);
		$this->assign('list',$list);
		$this->display();


	}

	public function add(){
    $this->display();
	}



	public function copy(){
		$list=D('Sys_tables');
		$listdata=$list->getByid($_REQUEST['oldid']);
		//dump($listdata);
			$listdata['id']='';
			$listdata['pid']=$_REQUEST['newpid'];
			if($_REQUEST['newtitle']!=''){
				$listdata['caption']=$_REQUEST['newtitle'];
			}
			$list->create($listdata);
			$list->add();
		$listnewid=$list->getLastInsID();
		$newfield=D('Sys_fields');
		$newfielddate=$newfield->where('pid='.$_REQUEST['oldid'])->findall();
		foreach ($newfielddate as $creatdb){
			$creatdb['id']='';
			$creatdb['pid']=$listnewid;
			$newfield->create($creatdb);
			$newfield->add();
		}
		msg('已经拷贝数据表成功');
	}
}



?>