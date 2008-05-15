
	
	public function View(){
		$result=D("/*modelname*/");
		$list=$result->getById($_GET['id']);
		$this->assign('list',$list);
		/*
/*assignlist*/
		*/
		$this->display(); 
	}
	
	