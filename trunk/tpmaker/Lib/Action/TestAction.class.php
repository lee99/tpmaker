<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\sub_htmltagsAction.class.php
/////////////////////////////////////////////////////////////////////////////
class testAction extends AdminAction{

	public function Index(){
		$this->display();
	}
	
	public function Index2(){
		$this->display();
	}

	public function delete(){
		$glist=D('test');
		$glist->delete($_REQUEST['id']);
	}

	public function updateform(){
		$glist=D('test');
		for ($i = 0; $i < count($_REQUEST['id']); $i++) {
			foreach (array_keys($_REQUEST) as $key){
			$var[$key]=	$_REQUEST[$key][$i];//数组转换
			}
		$gdataall=$glist->create($var);
		$glist->save();
		}
		//dump($_REQUEST);
	}

	public function update(){
		$glist=D('test');
        if($vo = $glist->create()) {
            if($glist->save()){
                $this->success('数据更新成功！');
            }else{
                $this->error('数据写入错误！');
            }
        }else{
            $this->error($glist->getError());
        }
	}

	public function addform(){
		$glist=D('test');
		$add_date=$_REQUEST;
		$glist->create($add_date);
		$glist->add($add_date);
	}

	public function jq_json(){
		$col=array('id','title','othervar','seqNo','usetype','color','color');
		$this->jqjson('id',$col);
	}

	public function jq_do(){

		$jq_do=$_POST['oper'];
		switch ($jq_do){
			case 'del'://del
				$this->delete();
				break;
			case 'add'://del
				$this->addform();
				break;
			case 'edit'://del
				$this->update();
				break;
		}

	}


	public function jq_celledit(){

		if($_POST['id']){
				$this->update();
		}
	}

}



?>