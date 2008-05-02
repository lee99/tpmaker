
	
	public function Update(){
		$list=D("/*modelname*/");
        if($vo = $list->create()) {
            if($list->save()){
                $this->ajaxReturn($vo,'数据更新成功！',1);
            }else{
                $this->ajaxReturn($vo,'数据写入错误！',0);
            }
        }else{
            $this->ajaxReturn('',$list->getError(),0);
        } 
	}
	
	