<?php
/**
 * �ð�ʱ��-�����ֽ������
 * @author:zenger lee99
 * @date:2008.11.28
 * @version:1.0
 */

class account {
  
  public $db;
  public $userid;
  public $action;//��������
  public $exchangeRate=100;//���ֶһ�����
  public $transType=array(1=>'���ֶһ�',2=>'ע����30Ԫ',3=>'��������',4=>'�Ƽ��˻���',5=>'���ڿۿ�',6=>'Υ��ۿ�');//�û��ʻ���������
  public $bbscf=array(/*��������*/
  //sorce��ֵ,name˵��,sent�Ƿ���û�����Ϣ,type�������0��������1,add�ӷ�1����0
  'score_log'=>array('sorce'=>0,'name'=>'��½1��,����0��','sent'=>0,'type'=>1,'add'=>1), //��½1��
  'score_hours'=>array('sorce'=>1,'name'=>'ͣ��1Сʱ,����1��', 'sent'=>0,'type'=>1,'add'=>1), //ͣ��1Сʱ,����0��
  'score_upimg'=>array('sorce'=>2,'name'=>'�����ϴ�1ͼƬ����Ƶ����Ƶ', 'sent'=>0,'type'=>0,'add'=>1), //�����ϴ�1��ͼƬ����Ƶ����Ƶ
  'score_fav'=>array('sorce'=>1,'name'=>'�ղ�1����Ʒ,����1��', 'sent'=>0,'type'=>0,'add'=>1), //�ղ�1����Ʒ
  'score_reply'=>array('sorce'=>2,'name'=>'bbs����1��,����2��', 'sent'=>0,'type'=>0,'add'=>1), //bbs����1��
  'score_cmt'=>array('sorce'=>1,'name'=>'��Ʒ���ۻ���ѯ1��,����1��', 'sent'=>0,'type'=>0,'add'=>1), //��Ʒ���ۻ���ѯ1��
  'score_post'=>array('sorce'=>3,'name'=>'bbs����1ƪ����,����3��', 'sent'=>0,'type'=>0,'add'=>1), //bbs����1ƪ����
  'score_goodcmt'=>array('sorce'=>0,'name'=>'������ѯ������,����0��', 'sent'=>0,'type'=>0,'add'=>1), //������ѯ������
  'score_goodpost'=>array('sorce'=>10,'name'=>'��Ʒ��/������,����10��', 'sent'=>1,'type'=>1,'add'=>1), //��Ʒ��
  'score_info'=>array('sorce'=>20,'name'=>'ע����Ϣ����,����20��', 'sent'=>1,'type'=>1,'add'=>1), //��Ϣ����

  'score_jb'=>array('sorce'=>10,'name'=>'�ٱ�����,����10��', 'sent'=>0,'type'=>1,'add'=>1), //�ٱ�����
  'score_jbb'=>array('sorce'=>5,'name'=>'���ٱ�����,��5��', 'sent'=>0,'type'=>1,'add'=>0), //���ٱ�����
  'score_jbey'=>array('sorce'=>10,'name'=>'����ٱ�����,��5��', 'sent'=>0,'type'=>1,'add'=>0), //����ٱ�����

  'score_register'=>array('sorce'=>30,'name'=>'ע����30Ԫ����', 'sent'=>1,'type'=>1,'add'=>1), //ע����30Ԫ

  'score_delpost'=>array('sorce'=>50,'name'=>'ɾ������,�۳�50��', 'sent'=>1,'type'=>0,'add'=>0), //ɾ������
  'score_delgoodpost'=>array('sorce'=>10,'name'=>'ȡ����Ʒ����,�۳�10��', 'sent'=>0,'type'=>0,'add'=>0), //ȡ����Ʒ����
  'score_delreply'=>array('sorce'=>10,'name'=>'ɾ���ظ�,�۳�10��', 'sent'=>0,'type'=>0,'add'=>0), //ɾ������
  'score_delimg'=>array('sorce'=>2,'name'=>'ɾ��1ͼƬ����Ƶ����Ƶ,�۳�2��', 'sent'=>0,'type'=>0,'add'=>0), //ɾ���ϴ�1��ͼƬ����Ƶ����Ƶ
  'score_deljb'=>array('sorce'=>10,'name'=>'����ٱ�����,�۳�10��', 'sent'=>1,'type'=>1,'add'=>0), //����ٱ�����

  'downlevel1'=>array('sorce'=>200,'name'=>'��Ա������ʾ:��һ�δﲻ���ð�鼶���Ҫ��,�۷�200��', 'sent'=>1,'type'=>1,'add'=>0), //ɾ������
  'downlevel2'=>array('sorce'=>400,'name'=>'��Ա������ʾ:��һ�δﲻ�����ð�鼶���Ҫ��,�۷�400��', 'sent'=>1,'type'=>1,'add'=>0), //ɾ������
  'downlevel3'=>array('sorce'=>500,'name'=>'��Ա������ʾ:��һ�δﲻ�������ð�鼶���Ҫ��,�۷�500��', 'sent'=>1,'type'=>1,'add'=>0), //ɾ������
  'changlevel'=>array('sorce'=>0,'name'=>'��Ա��������ʾ', 'sent'=>1,'type'=>1,'add'=>1)//ɾ������
);
  public $bbslevel=array(
  //�趨BBS��Ա����,name������,topsoreÿ��������,first-disadd��һ�ο۷�,pweekÿ�����ٷ�����,upday������Ҫ����
  0=>array('name'=>"��ͨ���",'topsorce'=>50,'first-disadd'=>1,'pweek'=>0,'upday'=>0),
  1=>array('name'=>"�ð��",'topsorce'=>100,'first-disadd'=>200,'pweek'=>30,'upday'=>30),
  2=>array('name'=>"���ð��",'topsorce'=>200,'first-disadd'=>400,'pweek'=>60,'upday'=>60),
  3=>array('name'=>"�����ð��",'topsorce'=>500,'first-disadd'=>22000,'pweek'=>90,'upday'=>90)
);


  public function account (&$db) {
     $this->db      = $db;
  }
  
  public function getuserlevel ($uid=0) {
  //�����ɵ���ʽ,����ֻ���ص�һ������
  	$userlevel=$this->bbslevel;
  	return $userlevel[0];
  }

  /*�����û�����:$add 1.���ӻ��� 0.������ $types: 1.���ֶһ����ֽ� 0.�Ƕһ� $addtype:���ֵ�����1Ϊ��������0Ϊ��ͨ����*/
  public function updateUserScore($add,$score,$types=0,$addtype=0) {
     global $db_tablepre;
     $score_set=($add==0) ? "scores=scores-'$score',score_remain=score_remain-'$score'" : "scores=scores+'$score',score_remain=score_remain+'$score'";
     if($add==1){
     	if($addtype==0){
     		$score_set.=',scores_today_n=scores_today_n+'.$score;//��ͨ����
     	}else{
     		$score_set.=',scores_today_a=scores_today_a+'.$score;//��������
     	}
     }
	 $query="UPDATE {$db_tablepre}member SET ".$score_set;
	 $query.=($types==1) ? ",ch_times=ch_times+1" : "";
	 $query.=" WHERE uid='$this->userid'";
	 $this->db->update($query);
  }

  /*���ָ��¼�¼ $types: 1.���ֶһ����ֽ� 0.�Ƕһ�*/
  public function scoreLog($infos='') {
     global $db_tablepre;
     $uid =$this->userid;//�û�ID
     $useid=$this->useid;//����id
     $type=$this->action;//��������
     if($infos==''){
     	$infos=$this->bbscf[$type]['name'];//ԭ��
     }
     $perscores=$this->bbscf[$type]['sorce'];//Ԥ�Ʋ�������
     $realscores=$this->realscores;//ʵ�ʲ�������
     if($perscores==$realscores){
     	$state=1;//��������//�ӷ�����
     }else if($realscores==0){
     	$state=0;//������//�ѳ����������
     }else{
     	$state=-1;//�����//û��ȫ�ӷ�.ֻ���ּӷ�.
     }
     $dates=time(); 
     $this->db->insert("INSERT INTO {$db_tablepre}scores_log (uid,useid,type,perscores,realscores,state,infos,dates) VALUES ('$uid','$useid','$type','$perscores','$realscores','$state','$infos','$dates')");
     
  }
  
  /*��Ա�ӷ� $action: ����������*/
  function addUserScore($action,$uid,$useid) {
  	global $db_tablepre;
  	$cfg=$this->bbscf;
  	$scores=$cfg[$action];//�������ķ����趨
  	$userlevel=$this->getuserlevel($uid);//��ñ��Ñ�����Ĺ����趨

  	if($scores!='' || $uid!=0 || $scores['sorce']<100){
  		//���˸��ж�,�������һ��Ҳ��û��ֵ�Ļ�,������
  		//sorce��ֵ,name˵��,sent�Ƿ���û�����Ϣ,type�������0��������1
  		$level_sorce=$scores['sorce'];
  		$level_type=$scores['type'];
  		$level_name=$scores['name'];
  		$level_sent=$scores['sent'];//�Ƿ���
  		$level_add=$scores['add'];//�ӷֻ��Ǽ���

  		if($level_type==1){//��������
  			$this->realscores=$level_sorce;
  			$this->updateUserScore($level_add,$level_sorce,$types=0,1);//�����û�����
  			$this->scoreLog();//д��¼
  		}else{
  			$m=$this->db->getrs("SELECT * FROM {$db_tablepre}member WHERE uid=".$this->userid);//�����Ӧ����Ϣ
  			$member_topsorce=$userlevel['topsorce'];//��ǰ�������ĵ������
  			$scores_today_n=$m->scores_today_n;//�����õķ���
  			$nowscores=$scores_today_n+$scores['sorce'];//Ԥ��Ҫ���ӵķ�
  			if($member_topsorce!=$scores_today_n){//����Ѿ������˾Ͳ���������.
  				if($nowscores>$member_topsorce ){//�����������,��ȡ����
  					$scores_today_n=$nowscores-$member_topsorce;
  					$scores_add=$member_topsorce-$scores_today_n;
  					$infos='��������������';
  				}else{
  					$scores_today_n=$level_sorce;
  					$scores_add=$level_sorce;
  				}
  				$this->realscores=$scores_add;
  				$this->updateUserScore($level_add,$scores_add,$types=0,0);//�����û�����
  				$this->scoreLog($infos);//д��¼
  			}
  		}

  		if($level_sent==1){
  			$this->sendmsg($uid,$result);//����վ����Ϣ���û�
  		}


  	}

  	$this->checkScore($uid,$level_sorce);


  }
 
 /*���Ҫ������Ϣ���û������*/
 function sendmsg($uid,$result='') {
 	global $db_tablepre;
 	//����վ����Ϣ���û�

 	$h=$this->db->getrs("SELECT scores FROM {$db_tablepre}member WHERE uid=$uid");//�����Ӧ����Ϣ
 	$msg_title="�ð�ʱ��ϵͳ��ʾ";
 	$msg_content="<p>��Ϊ����ԭ��:<font color=red>$level_name</font>,���������Ļ��������䶯,<br>�����ڵ��ܻ���Ϊ: <font color=red> ".$h->scores." ��</font>,�ش�֪ͨ!</p>$result<p>ע:����Ϣֻ�������Ļ��ֳ��ֱȽϴ�ı䶯����������˱Ƚϴ�Ĳ��������������,�Ż���ϵͳ�Զ����ɷ��͵�,<br>�����Ա���Ϣ���κε�����,��ӭ�����Ƿ���!</p>";
 	$this->db->insert("INSERT INTO {$db_tablepre}gbook (`receiveid` ,`sendid` ,`isread` ,`title` ,`content` ,`dates`) VALUES ($uid, '0', '0', '".$msg_title."', '".$msg_content."',".time()." )");

 }
 
 /*������¼�Ƿ�����*/
  function checkScore($uid,$sorce) {
  	//������¼�Ƿ�����
  	global $db_tablepre;

  	//������¼�Ƿ�����
  	$d=$this->db->getrs("SELECT * FROM {$db_tablepre}member WHERE uid=$uid");//�����Ӧ����Ϣ
  	if((($d->scores)>100000) || (($d->scores) < -100000) || (($sorce) >60)){
  		$arv=$_POST;
  		foreach ($arv as $t=>$v){
  			$tv.="����:".$t."����:".$v."<br>";
  		}
  		$msg_title="������ʾ!";
  		$msg_content.="<p>uid=$uid;time=".date('y-m-d H:i:s',time())."</p>";
  		$msg_content.="<p>���ӵķ���=".$sorce."</p>";
  		$msg_content.="<p>PHP_SELF=". $_SERVER['PHP_SELF'] ."</p>";
  		$msg_content.="<p>argv=". $tv ."</p>";
  		$msg_content.="<p>REQUEST_METHOD=". $_SERVER['REQUEST_METHOD'] ."</p>";
  		$msg_content.="<p>QUERY_STRING=". $_SERVER['QUERY_STRING'] ."</p>";
  		$msg_content.="<p>DOCUMENT_ROOT=". $_SERVER['DOCUMENT_ROOT'] ."</p>";
  		$msg_content.="<p>REQUEST_URI=". $_SERVER['REQUEST_URI'] ."</p>";
  		$this->db->insert("INSERT INTO {$db_tablepre}gbook (`receiveid` ,`sendid` ,`isread` ,`title` ,`content` ,`dates`) VALUES (62, '0', '0', '".$msg_title."', '".$msg_content."',".time()." )");
			
	}
  }
  


  /*�������Ƿ����ʱ�һ����ֽ�*/
  public function checkExchange($remainScore) {
     $this->amount=intval($remainScore/$this->exchangeRate);
  }

  /*����*/
  public function openAccount() {
     global $db_tablepre;
     $this->db->insert("INSERT INTO {$db_tablepre}gift_account (uid,account,status) VALUES ('$this->userid',0,0)");
  }
  
  /*�ʻ�����|֧��*/
  public function changeAccount ($amount,$action,$types) {
     global $db_tablepre;
	 $dat=time();
	 
	 //���ó�ʼ�����ʺŽ����
	 $rs=$this->db->getrs("SELECT remain FROM {$db_tablepre}gift_account_log WHERE uid='$this->userid' ORDER BY dates DESC LIMIT 0,1");
	 $account=intval($rs->remain);//�ʻ����
	 
	 //����ʻ����ļ�¼
	 $this->db->insert("INSERT INTO {$db_tablepre}gift_account_log (uid,account,amount,transtype,dates) VALUES ('$uid','$account','$amount','$types','$dat')");
	 $logid=$this->db->getid();
	 
	 $account_set=($action=='add') ? "account+'$amount'" : "account-'$amount'";
	 //�����û��ʻ�
	 $this->db->update("UPDATE {$db_tablepre}gift_account SET account='$account_set' WHERE uid='$this->userid'");
	 //�����ʻ����
	 $this->db->update("UPDATE {$db_tablepre}gift_account_log SET remain='$account_set' WHERE id='$logid'");
	 
	 //�����û�����
	 if ($types==1 && $action=='add') {
	     $this->updateUserScore($score,0,1);
	 }
  }
    
}  
?>