<?php

function writefile($name,$content,$cover=1) {
	//生成文件
		$filename=$name;
		msg('正在生成'.$filename);
		if(!file_exists($filename)) {
			$content =$content;
			if(file_put_contents($filename,$content)){
				msg("...完成<br>");
			}else{
				msg("...失败<br>",0);
			};
		}else{
			msg("...已存在");
			if($cover==1){
				file_put_contents($filename,$content);
				msg("...覆盖成功",0);

			}
			msg("<br>");
		}

}

function copyfile($infilename,$outfilename) {

		$content=file_get_contents($infilename);
		msg('正在COPY生成'.$outfilename);
		if(file_put_contents($outfilename,$content)){
				msg("...完成<br>");
		}else{
				msg("...失败<br>",0);
		}
}
function copydir($source, $destination)
{
     $result = true;

     if(! is_dir($source))//读取源目录
     {
         trigger_error("源目录名称错误", E_USER_ERROR);
     }
     if(! is_dir($destination))//读取目标目录
     {
         if(! mkdir($destination, 0700))
         {
             trigger_error("无法创建目标目录", E_USER_ERROR);
         }
     }

     $handle = opendir($source);//取得目录的句柄
     while(($file = readdir($handle)) !== false)
     {
         if($file != '.' && $file != '..')//DIRECTORY_SEPARATOR
         {
             $src = $source . "/" . $file;		//源文件路径
             $dtn = $destination . "/" . $file;	//目标文件路径
             if(is_dir($src))
             {
                 copyDir($src, $dtn);
             }
             else
             {
                 if(! copy($src, $dtn))
                 {
                     $result = false;
                     break;
                 }
             }
         }
     }
     closedir($handle);

     return $result;
}


//删除目录函数


function deldir($sdir){
	$lockdir=array('../','../tpmaker','../Public','../Thinkphp');
	if(in_array($sdir,$lockdir)){
		msg("<p >将要删除的目录涉及敏感目录!请检查！</p>",0);
		exit;
	}
	if (!is_dir($sdir)){
	   msg("<p >无此目录:$sdir,或未建立此目录!请检查！</p>",0);
	   //exit;
	}
	$handle=opendir($sdir);
	while($file=readdir($handle)){
	   if (($file!='.')&&($file!='..')){
	    $sdir2=$sdir."/".$file;
		    if (is_dir($sdir2)){
		     deldir($sdir2);
		    }else{
		     @unlink($sdir."/".$file);
		    }
	   }
	}
	closedir($handle);
		if (!$file){
			@rmdir($sdir);
			return true;
		}else{
		   msg("<p align=center>无法删除目录，请检查权限</p>",0);
		   return false;
		}
}



?>