<?php

// tpl�࣬����ģ��

 class tpl
 {
  var $filename; //ģ���ļ�
  var $content; //��������

  //��ʼ��ģ���ļ������������ݶ���
  function tpl($tplfilename)
  {
   $this->filename=$tplfilename;
   $fd = fopen( $this->filename, "r" );
   $this->content = fread($fd, filesize($this->filename));
   fclose( $fd );
  }

  //�滻��־λ����
  function tplsign($key,$value)
  {
   $this->content=str_replace("{".$key."}",$value,$this->content);
  }

  //�滻��־������
  function tplblocksign($block_name,$values)
  { 
   //����滻�����ģ��
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

  //���ģ������
  function tplshow()
  {
   echo $this->content;
  }
 }
?>