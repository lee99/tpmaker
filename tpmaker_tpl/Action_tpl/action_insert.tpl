
	
	public function Insert(){
		$list=D("/*modelname*/");
        if($vo = $list->create()) {
            if($list->add()){
                $this->ajaxReturn($vo,'数据增加成功！',1);
            }else{
                $this->ajaxReturn($vo,'数据增加错误！',0);
            }
        }else{
            $this->ajaxReturn('',$list->getError(),0);
        } 
	}
	
