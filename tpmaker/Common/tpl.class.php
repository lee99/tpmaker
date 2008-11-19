<?php

// tpl类，用于模板

 class tpl
 {
  var $filename; //模板文件
  var $content; //返回内容

  //初始化模板文件，将所有内容读入
  function tpl($tplfilename)
  {
   $this->filename=$tplfilename;
   $fd = fopen( $this->filename, "r" );
   $this->content = fread($fd, filesize($this->filename));
   fclose( $fd );
  }

  //替换标志位内容
  function tplsign($key,$value)
  {
   $this->content=str_replace("{".$key."}",$value,$this->content);
  }

  //替换标志块内容
  function tplblocksign($block_name,$values)
  { 
   //获得替换块的子模板
   if(is_array($values))
   { 
    ereg("{".$block_name."}.*{/".$block_name."}",$this->content,$regs);
    $str_block=substr($regs[0],2+strlen($block_name),-(strlen($block_name)+3));
    
    $str_replace="";
    $block_replace="";

    foreach($values as $subarr)
    {
     $str_replace=$str_block;
     while ( list( $key, $val ) = each( $subarr ) )
     {
      $str_replace=str_replace("{".$key."}",$val,$str_replace);
     }
     $block_replace.=$str_replace;
    }
    $this->content=ereg_replace ("{".$block_name."}.*{/".$block_name."}",$block_replace,$this->content);
   }
   else
    $this->content=ereg_replace ("{".$block_name."}.*{/".$block_name."}","none",$this->content);
  }

  //输出模板内容
  function tplshow()
  {
   echo $this->content;
  }
  
  //输出模板内容
  function tplreturn()
  {
   return $this->content;
  }
  
 }
?>