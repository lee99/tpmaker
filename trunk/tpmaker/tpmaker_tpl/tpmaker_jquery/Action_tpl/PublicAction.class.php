<?php

//+---------------------------------------------------
//|	tpmaker1.05 tpl:tpmaker_jquery
//+---------------------------------------------------

class PublicAction extends Action {

	public function _initialize() {
		import('ORG.RBAC.RBAC');
		// 检查认证
		if(RBAC::checkAccess()) {
			//检查认证识别号
			if(!$_SESSION[C('USER_AUTH_KEY')]) {
				//跳转到认证网关
				redirect(PHP_FILE.C('USER_AUTH_GATEWAY'));
			}
			// 检查权限
			if(!RBAC::AccessDecision()) {
				$this->error('没有权限！');
			}
		}

		if(isset($_SESSION[C('USER_AUTH_KEY')])) {
			//显示菜单项
			$menu  = array();
			if(isset($_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]])) {
				//如果已经缓存，直接读取缓存
				$menu   =   $_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]];
			}else {
				//读取数据库模块列表生成菜单项
				$node    =   D("Node");
				$id	=	$node->getField("id","name='".APP_NAME."'");
				$list	=	$node->where('level=2 AND  status=1 AND pid='.$id)->field('id,name,title')->order('seqNo asc')->findAll();

				$accessList = $_SESSION['_ACCESS_LIST'];
				foreach($list as $key=>$module) {
					if(isset($accessList[strtoupper(APP_NAME)][strtoupper($module['name'])]) || $_SESSION['administrator']) {
						//设置模块访问权限
						$module['access'] =   1;
						$menu[$key]  = $module;
					}
				}
				//缓存菜单访问
				$_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]]	=	$menu;
			}
			$this->assign('menu',$menu);
			$this->assign("login",true);
			//显示登录用户名称
			$this->assign('loginUserName',$_SESSION['loginUserName']);
		}
	}

	public function checkLogin() {
		$User	=	D('User');
		if(empty($_POST['account'])) {
			$this->error('帐号错误！');
		}elseif (empty($_POST['password'])){
			$this->error('密码必须！');
		}elseif (empty($_POST['verify'])){
			$this->error('验证码必须！');
		}

		// 登录验证码获取
		$verifyCodeStr   = $_POST['verify'];
		$verifyCodeNum   = array_flip($_SESSION['verifyCode']);
		$len	=	strlen(trim($_POST['verify']));
		for($i=0; $i<$len; $i++) {
			$verify .=  $verifyCodeNum[$verifyCodeStr[$i]];
		}

		//生成认证条件
		$map            =   array();
		$map["account"]	=	$_POST['account'];
		$map["status"]	=	array('gt',0);

		$authInfo = $User->find($map);
		//使用用户名、密码和状态的方式进行认证
		if(false === $authInfo) {
			$this->error('用户名不存在或已禁用！');
		}else {
			if($authInfo['account']	!=  $_POST['account']) {
				$this->error('帐号错误！');
			}
			if($authInfo['password'] != md5($_POST['password'])) {
				$this->error('密码错误！');
			}
			if($authInfo['verify'] != $verify) {
				$this->error('验证码错误！');
			}
			$_SESSION[C('USER_AUTH_KEY')]	=	$authInfo['id'];
			$_SESSION['loginUserName']	=	$authInfo['account'];
			$_SESSION['loginUserId']	=	$authInfo['id'];
			if($authInfo['account']=='admin') {
				// 管理员不受权限控制影响
				$_SESSION['administrator']		=	true;
			}else{
				$_SESSION['administrator']		=	false;
			}
			// 缓存访问权限
			RBAC::saveAccessList();
			$this->success('登录成功！');
		}
	}

	public function login() {
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->display();
		}else{
			$this->redirect('index','Index');
		}
	}

	public function logout()
	{
		if(isset($_SESSION[C('USER_AUTH_KEY')])) {
			unset($_SESSION['menu'.$_SESSION[C('USER_AUTH_KEY')]]);
			unset($_SESSION[C('USER_AUTH_KEY')]);
			unset($_SESSION['administrator']);
			$this->assign("jumpUrl",__URL__.'/login/');
			$this->success('登出成功！');
		}else {
			$this->error( '已经登出！');
		}
	}

	/**
     +----------------------------------------------------------
     * 验证码显示
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws FcsException
     +----------------------------------------------------------
     */
	function verify()
	{
		import("ORG.Util.Image");
		Image::showAdvVerify();
	}

	/**
     +----------------------------------------------------------
     * 取得操作成功后要返回的URL地址
     * 默认返回当前模块的默认操作
     * 可以在action控制器中重载
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
	function getReturnUrl()
	{
		return __URL__.'?'.C('VAR_MODULE').'='.MODULE_NAME.'&'.C('VAR_ACTION').'='.C('DEFAULT_ACTION');
	}

	/**
     +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
     +----------------------------------------------------------
     * @access protected
     +----------------------------------------------------------
     * @param string $name 数据对象名称
     +----------------------------------------------------------
     * @return HashMap
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
	protected function _search($name='')
	{
		//生成查询条件
		if(empty($name)) {
			$name	=	$this->name;
		}
		$model	=	D($name);
		$map	=	array();
		foreach($model->getDbFields() as $key=>$val) {
			if(isset($_REQUEST[$val]) && $_REQUEST[$val]!='') {
				$map[$val]	=	$_REQUEST[$val];
			}
		}
		return $map;
	}

	/**
     +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
     +----------------------------------------------------------
     * @access protected
     +----------------------------------------------------------
     * @param Model $model 数据对象
     * @param HashMap $map 过滤条件
     * @param string $sortBy 排序
     * @param boolean $asc 是否正序
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
	protected function _list($model,$map,$sortBy='',$asc=true)
	{
		//排序字段 默认为主键名
		if(isset($_REQUEST['order'])) {
			$order = $_REQUEST['order'];
		}else {
			$order = !empty($sortBy)? $sortBy: $model->getPk();
		}
		//排序方式默认按照倒序排列
		//接受 sost参数 0 表示倒序 非0都 表示正序
		if(isset($_REQUEST['sort'])) {
			$sort = $_REQUEST['sort']?'asc':'desc';
		}else {
			$sort = $asc?'asc':'desc';
		}
		//取得满足条件的记录数
		$count      = $model->count($map);
		if($count>0) {
			import("ORG.Util.Page");
			//创建分页对象
			if(!empty($_REQUEST['listRows'])) {
				$listRows  =  $_REQUEST['listRows'];
			}else {
				$listRows  =  '';
			}
			$p          = new Page($count,$listRows);
			//分页查询数据
			$voList     = $model->where($map)->order($order.' '.$sort)->limit($p->firstRow.','.$p->listRows)->findAll();
			//分页跳转的时候保证查询条件
			foreach($map as $key=>$val) {
				if(is_array($val)) {
					foreach ($val as $t){
						$p->parameter	.= $key.'[]='.urlencode($t)."&";
					}
				}else{
					$p->parameter   .=   "$key=".urlencode($val)."&";
				}
			}
			//分页显示
			$page       = $p->show();
			//列表排序显示
			$sortImg    = $sort ;                                   //排序图标
			$sortAlt    = $sort == 'desc'?'升序排列':'倒序排列';    //排序提示
			$sort       = $sort == 'desc'? 1:0;                     //排序方式
			//模板赋值显示
			$this->assign('list',       $voList);
			$this->assign('sort',       $sort);
			$this->assign('order',      $order);
			$this->assign('sortImg',    $sortImg);
			$this->assign('sortType',   $sortAlt);
			$this->assign("page",       $page);
		}
		return ;
	}


	function update() {
		$model	=	D($this->name);
		if(false === $vo = $model->create()) {
			$this->error($model->getError());
		}
		$result	=	$model->save();
		if($result) {
			//成功提示
			$this->success(L('_UPDATE_SUCCESS_'));
		}else {
			//错误提示
			$this->error(L('_UPDATE_FAIL_'));
		}
	}

	/**
     +----------------------------------------------------------
     * 默认删除操作
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return string
     +----------------------------------------------------------
     * @throws ThinkExecption
     +----------------------------------------------------------
     */
	public function delete()
	{
		//删除指定记录
		$model        = D($this->name);
		if(!empty($model)) {
			$id         = $_REQUEST['id'];
			if(isset($id)) {
				if($model->delete($id)){
					$this->success(L('_DELETE_SUCCESS_'));
				}else {
					$this->error(L('_DELETE_FAIL_'));
				}
			}else {
				$this->error('非法操作');
			}
		}
	}



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

	public function Switchframe(){
		//中间
		$this->display();
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