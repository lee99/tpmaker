
	
	public function View(){
		$list=D("/*modelname*/");
		$result=$list->getById($_GET['id']);
		//$this->assign('muser',$result->muser)
/*assignlist*/
		$this->display(); 
	}
	
	