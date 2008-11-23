<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明公共的TPMAKER操作类
//+----------------------------------------------------------
//*
/////////////////////////////////////////////////////////////////////////////

class PublicAction extends Action{


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
     * 默认上传操作
     *
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return array
     +----------------------------------------------------------
     */
	function _upload()
	{

	import("ORG.Net.UploadFile");
	$upload=new UploadFile();

		if (!empty($_FILES)){

		$upload->allowExts=explode(',','jpg,bmp,gif,rar,zip,pdf,ppt,doc,swf');
		$upload->savePath =  '../Public/Uploads/';		//设定公共的上传目录
		//$upload->thumb=true;							//设定是否生成缩图
		//$upload->thumbMaxWidth=200;					//最大的宽
		//$upload->thumbMaxHeight=400;					//最大的高
		//$upload->thumbSuffix = '_thumb';				//后辍名
			if (!$upload->upload()){
				echo $upload->getErrorMsg();
			}else{
				return $upload->getUploadFileInfo();
			}
		}
	/*返回数组
		  ["logo"] => array(7) {
		    ["name"] => string(10) "web_32.jpg"
		    ["type"] => string(10) "image/jpeg"
		    ["size"] => int(7018)
		    ["extension"] => string(3) "jpg"
		    ["savepath"] => string(18) "../Public/Uploads/"
		    ["savename"] => string(17) "48369296a83f4.jpg"
		    ["hash"] => string(32) "c661691291b96548982f58ee0b35fdd6"
		  }
	*/

	}

}



?>