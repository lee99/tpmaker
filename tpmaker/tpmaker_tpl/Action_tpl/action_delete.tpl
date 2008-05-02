
	
	public function Delete(){//删除的操作
		$list=D("/*modelname*/");
		$list->delete($_REQUEST["id"]);
		redirect(__URL__."/index");
	}
	
	