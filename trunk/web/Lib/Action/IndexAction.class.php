<?php
class IndexAction extends Action{

	public function Index(){
		$arryflash=array('john.swf','call.swf','menber.swf');
		$key=array_rand($arryflash);
		$showflash=$arryflash[$key];
		//dump($showflash);
		$this->assign('showflash',$showflash);
		$this->display();
		 
	}



}



?>