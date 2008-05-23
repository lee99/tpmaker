

	public function Index(){

		$list=D("/*modelname*/");
		
		$order=!empty($_REQUEST["order"])?$_REQUEST["order"]:'id'; //排序字段,默认为"id"
		$sortd=!empty($_REQUEST["sort"])?$_REQUEST["sort"]:"asc"; //排序顺序,默认为"asc"
		$orderBy=$order." ".$sortd;//组合排序条件
		
		$feilds='/*list_fields*/';
		
        $condition=Array();//搜索的条件
        //$condition['title']=array('like',"a%");//高级搜索过滤
        
    if(!empty($_REQUEST['searchkey'])){
		//搜索相关
		$searchkey=$_REQUEST["searchkey"];
		$searchtype=!empty($_REQUEST['searchtype'])?$_REQUEST['searchtype']:'OR';//默认的公共搜索条件为OR
		
		$this->assign("searchkey",$_REQUEST["searchkey"]);//显示关键字
		$this->assign("searchurl",$_SERVER["REQUEST_URI"]);//当前的URL
		$this->assign("searchtype",$_REQUEST["searchtype"]);//当前的搜索类型
		
        $ser_c=array('like',"%$searchkey%");//公共的过滤条件
        $condition['/*search_fields*/']=array(/*search_ser_c*/,$searchtype);//模糊搜索关键字全局过滤   	
    }

		import("ORG.Util.Page");//引用分页类
		$count= $list->count($condition);//获取分页总数量
		$p= new Page($count);
		$page=$p->show();//显示分页
		$this->assign("page",$page);//显示分页
		$limit=$p->firstRow.",".$p->listRows;//设定分面的大小
		
		$limit=($limit==",")?'':$limit;//分页的大小
		
		$list=$list
			->where($condition)
			->field($feilds)
			->order($orderBy)
			->limit($limit)
			->findAll(); 

		$this->assign("list",$list);		
		
		$this->display();   

	}
	
	