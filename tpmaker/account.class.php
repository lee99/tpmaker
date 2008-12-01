<?php
/**
 * 好伴时尚-积分现金操作类
 * @author:zenger lee99
 * @date:2008.11.28
 * @version:1.0
 */

class account {
  
  public $db;
  public $userid;
  public $action;//操作类型
  public $exchangeRate=100;//积分兑换比例
  public $transType=array(1=>'积分兑换',2=>'注册送30元',3=>'购物消费',4=>'推荐人获赠',5=>'过期扣款',6=>'违规扣款');//用户帐户交易类型
  public $bbscf=array(/*积分设置*/
  //sorce分值,name说明,sent是否给用户发信息,type常规积分0或奖励积分1,add加分1减分0
  'score_log'=>array('sorce'=>0,'name'=>'登陆1次,奖励0分','sent'=>0,'type'=>1,'add'=>1), //登陆1次
  'score_hours'=>array('sorce'=>1,'name'=>'停留1小时,奖励1分', 'sent'=>0,'type'=>1,'add'=>1), //停留1小时,奖励0分
  'score_upimg'=>array('sorce'=>2,'name'=>'发贴上传1图片、音频或视频', 'sent'=>0,'type'=>0,'add'=>1), //发贴上传1张图片、音频或视频
  'score_fav'=>array('sorce'=>1,'name'=>'收藏1件商品,奖励1分', 'sent'=>0,'type'=>0,'add'=>1), //收藏1件商品
  'score_reply'=>array('sorce'=>2,'name'=>'bbs回贴1次,奖励2分', 'sent'=>0,'type'=>0,'add'=>1), //bbs回贴1次
  'score_cmt'=>array('sorce'=>1,'name'=>'商品评论或咨询1次,奖励1分', 'sent'=>0,'type'=>0,'add'=>1), //商品评论或咨询1次
  'score_post'=>array('sorce'=>3,'name'=>'bbs发表1篇主题,奖励3分', 'sent'=>0,'type'=>0,'add'=>1), //bbs发表1篇主题
  'score_goodcmt'=>array('sorce'=>0,'name'=>'优秀咨询或评论,奖励0分', 'sent'=>0,'type'=>0,'add'=>1), //优秀咨询或评论
  'score_goodpost'=>array('sorce'=>10,'name'=>'精品贴/人气帖,奖励10分', 'sent'=>1,'type'=>1,'add'=>1), //精品贴
  'score_info'=>array('sorce'=>20,'name'=>'注册信息完整,奖励20分', 'sent'=>1,'type'=>1,'add'=>1), //信息完整

  'score_jb'=>array('sorce'=>10,'name'=>'举报帖子,奖励10分', 'sent'=>0,'type'=>1,'add'=>1), //举报帖子
  'score_jbb'=>array('sorce'=>5,'name'=>'被举报帖子,扣5分', 'sent'=>0,'type'=>1,'add'=>0), //被举报帖子
  'score_jbey'=>array('sorce'=>10,'name'=>'恶意举报帖子,扣5分', 'sent'=>0,'type'=>1,'add'=>0), //恶意举报帖子

  'score_register'=>array('sorce'=>30,'name'=>'注册送30元积分', 'sent'=>1,'type'=>1,'add'=>1), //注册送30元

  'score_delpost'=>array('sorce'=>50,'name'=>'删除贴子,扣除50分', 'sent'=>1,'type'=>0,'add'=>0), //删除贴子
  'score_delgoodpost'=>array('sorce'=>10,'name'=>'取消精品贴子,扣除10分', 'sent'=>0,'type'=>0,'add'=>0), //取消精品贴子
  'score_delreply'=>array('sorce'=>10,'name'=>'删除回复,扣除10分', 'sent'=>0,'type'=>0,'add'=>0), //删除贴子
  'score_delimg'=>array('sorce'=>2,'name'=>'删除1图片、音频或视频,扣除2分', 'sent'=>0,'type'=>0,'add'=>0), //删除上传1张图片、音频或视频
  'score_deljb'=>array('sorce'=>10,'name'=>'错误举报帖子,扣除10分', 'sent'=>1,'type'=>1,'add'=>0), //错误举报帖子

  'downlevel1'=>array('sorce'=>200,'name'=>'会员降级提示:第一次达不到好伴伴级别的要求,扣分200分', 'sent'=>1,'type'=>1,'add'=>0), //删除贴子
  'downlevel2'=>array('sorce'=>400,'name'=>'会员降级提示:第一次达不到极好伴伴级别的要求,扣分400分', 'sent'=>1,'type'=>1,'add'=>0), //删除贴子
  'downlevel3'=>array('sorce'=>500,'name'=>'会员降级提示:第一次达不到极极好伴伴级别的要求,扣分500分', 'sent'=>1,'type'=>1,'add'=>0), //删除贴子
  'changlevel'=>array('sorce'=>0,'name'=>'会员升降级提示', 'sent'=>1,'type'=>1,'add'=>1)//删除贴子
);
  public $bbslevel=array(
  //设定BBS会员级别,name级别名,topsore每天最多分类,first-disadd第一次扣分,pweek每周最少发贴数,upday升级需要的天
  0=>array('name'=>"普通伴伴",'topsorce'=>50,'first-disadd'=>1,'pweek'=>0,'upday'=>0),
  1=>array('name'=>"好伴伴",'topsorce'=>100,'first-disadd'=>200,'pweek'=>30,'upday'=>30),
  2=>array('name'=>"极好伴伴",'topsorce'=>200,'first-disadd'=>400,'pweek'=>60,'upday'=>60),
  3=>array('name'=>"极极好伴伴",'topsorce'=>500,'first-disadd'=>22000,'pweek'=>90,'upday'=>90)
);


  public function account (&$db) {
     $this->db      = $db;
  }
  
  public function getuserlevel ($uid=0) {
  //保留旧的形式,但是只返回第一个级别
  	$userlevel=$this->bbslevel;
  	return $userlevel[0];
  }

  /*更新用户积分:$add 1.增加积分 0.减积分 $types: 1.积分兑换成现金 0.非兑换 $addtype:积分的类型1为奖励积分0为普通积分*/
  public function updateUserScore($add,$score,$types=0,$addtype=0) {
     global $db_tablepre;
     $score_set=($add==0) ? "scores=scores-'$score',score_remain=score_remain-'$score'" : "scores=scores+'$score',score_remain=score_remain+'$score'";
     if($add==1){
     	if($addtype==0){
     		$score_set.=',scores_today_n=scores_today_n+'.$score;//普通积分
     	}else{
     		$score_set.=',scores_today_a=scores_today_a+'.$score;//奖励积分
     	}
     }
	 $query="UPDATE {$db_tablepre}member SET ".$score_set;
	 $query.=($types==1) ? ",ch_times=ch_times+1" : "";
	 $query.=" WHERE uid='$this->userid'";
	 $this->db->update($query);
  }

  /*积分更新记录 $types: 1.积分兑换成现金 0.非兑换*/
  public function scoreLog($infos='') {
     global $db_tablepre;
     $uid =$this->userid;//用户ID
     $useid=$this->useid;//类型id
     $type=$this->action;//操作类型
     if($infos==''){
     	$infos=$this->bbscf[$type]['name'];//原因
     }
     $perscores=$this->bbscf[$type]['sorce'];//预计操作分数
     $realscores=$this->realscores;//实际操作分类
     if($perscores==$realscores){
     	$state=1;//正常操作//加分正常
     }else if($realscores==0){
     	$state=0;//不操作//已超过当天分数
     }else{
     	$state=-1;//半操作//没完全加分.只部分加分.
     }
     $dates=time(); 
     $this->db->insert("INSERT INTO {$db_tablepre}scores_log (uid,useid,type,perscores,realscores,state,infos,dates) VALUES ('$uid','$useid','$type','$perscores','$realscores','$state','$infos','$dates')");
     
  }
  
  /*会员加分 $action: 操作的类型*/
  function addUserScore($action,$uid,$useid) {
  	global $db_tablepre;
  	$cfg=$this->bbscf;
  	$scores=$cfg[$action];//本操作的分数设定
  	$userlevel=$this->getuserlevel($uid);//获得本用戶级别的规则及设定

  	if($scores!='' || $uid!=0 || $scores['sorce']<100){
  		//加了个判断,如果到这一步也是没有值的话,就跳出
  		//sorce分值,name说明,sent是否给用户发信息,type常规积分0或奖励积分1
  		$level_sorce=$scores['sorce'];
  		$level_type=$scores['type'];
  		$level_name=$scores['name'];
  		$level_sent=$scores['sent'];//是否发送
  		$level_add=$scores['add'];//加分还是减分

  		if($level_type==1){//奖励积分
  			$this->realscores=$level_sorce;
  			$this->updateUserScore($level_add,$level_sorce,$types=0,1);//更新用户积分
  			$this->scoreLog();//写记录
  		}else{
  			$m=$this->db->getrs("SELECT * FROM {$db_tablepre}member WHERE uid=".$this->userid);//获得相应的信息
  			$member_topsorce=$userlevel['topsorce'];//当前级别最大的当天分数
  			$scores_today_n=$m->scores_today_n;//当天获得的分数
  			$nowscores=$scores_today_n+$scores['sorce'];//预定要增加的分
  			if($member_topsorce!=$scores_today_n){//如果已经满分了就不做动作了.
  				if($nowscores>$member_topsorce ){//如果当超分了,则取最大的
  					$scores_today_n=$nowscores-$member_topsorce;
  					$scores_add=$member_topsorce-$scores_today_n;
  					$infos='超过当天最大分数';
  				}else{
  					$scores_today_n=$level_sorce;
  					$scores_add=$level_sorce;
  				}
  				$this->realscores=$scores_add;
  				$this->updateUserScore($level_add,$scores_add,$types=0,0);//更新用户积分
  				$this->scoreLog($infos);//写记录
  			}
  		}

  		if($level_sent==1){
  			$this->sendmsg($uid,$result);//发送站内信息给用户
  		}


  	}

  	$this->checkScore($uid,$level_sorce);


  }
 
 /*如果要发送信息给用户则操作*/
 function sendmsg($uid,$result='') {
 	global $db_tablepre;
 	//发送站内信息给用户

 	$h=$this->db->getrs("SELECT scores FROM {$db_tablepre}member WHERE uid=$uid");//获得相应的信息
 	$msg_title="好伴时尚系统提示";
 	$msg_content="<p>因为如下原因:<font color=red>$level_name</font>,而导致您的积分有所变动,<br>您现在的总积分为: <font color=red> ".$h->scores." 分</font>,特此通知!</p>$result<p>注:本信息只会在您的积分出现比较大的变动或者你进行了比较大的操作动作的情况下,才会由系统自动生成发送的,<br>如您对本信息有任何的疑问,欢迎向我们反馈!</p>";
 	$this->db->insert("INSERT INTO {$db_tablepre}gbook (`receiveid` ,`sendid` ,`isread` ,`title` ,`content` ,`dates`) VALUES ($uid, '0', '0', '".$msg_title."', '".$msg_content."',".time()." )");

 }
 
 /*监听记录是否正常*/
  function checkScore($uid,$sorce) {
  	//监听记录是否正常
  	global $db_tablepre;

  	//监听记录是否正常
  	$d=$this->db->getrs("SELECT * FROM {$db_tablepre}member WHERE uid=$uid");//获得相应的信息
  	if((($d->scores)>100000) || (($d->scores) < -100000) || (($sorce) >60)){
  		$arv=$_POST;
  		foreach ($arv as $t=>$v){
  			$tv.="名称:".$t."内容:".$v."<br>";
  		}
  		$msg_title="爆分提示!";
  		$msg_content.="<p>uid=$uid;time=".date('y-m-d H:i:s',time())."</p>";
  		$msg_content.="<p>增加的分数=".$sorce."</p>";
  		$msg_content.="<p>PHP_SELF=". $_SERVER['PHP_SELF'] ."</p>";
  		$msg_content.="<p>argv=". $tv ."</p>";
  		$msg_content.="<p>REQUEST_METHOD=". $_SERVER['REQUEST_METHOD'] ."</p>";
  		$msg_content.="<p>QUERY_STRING=". $_SERVER['QUERY_STRING'] ."</p>";
  		$msg_content.="<p>DOCUMENT_ROOT=". $_SERVER['DOCUMENT_ROOT'] ."</p>";
  		$msg_content.="<p>REQUEST_URI=". $_SERVER['REQUEST_URI'] ."</p>";
  		$this->db->insert("INSERT INTO {$db_tablepre}gbook (`receiveid` ,`sendid` ,`isread` ,`title` ,`content` ,`dates`) VALUES (62, '0', '0', '".$msg_title."', '".$msg_content."',".time()." )");
			
	}
  }
  


  /*检测积分是否可适时兑换成现金*/
  public function checkExchange($remainScore) {
     $this->amount=intval($remainScore/$this->exchangeRate);
  }

  /*开户*/
  public function openAccount() {
     global $db_tablepre;
     $this->db->insert("INSERT INTO {$db_tablepre}gift_account (uid,account,status) VALUES ('$this->userid',0,0)");
  }
  
  /*帐户存入|支出*/
  public function changeAccount ($amount,$action,$types) {
     global $db_tablepre;
	 $dat=time();
	 
	 //设置初始交易帐号金额及余额
	 $rs=$this->db->getrs("SELECT remain FROM {$db_tablepre}gift_account_log WHERE uid='$this->userid' ORDER BY dates DESC LIMIT 0,1");
	 $account=intval($rs->remain);//帐户余额
	 
	 //添加帐户更改记录
	 $this->db->insert("INSERT INTO {$db_tablepre}gift_account_log (uid,account,amount,transtype,dates) VALUES ('$uid','$account','$amount','$types','$dat')");
	 $logid=$this->db->getid();
	 
	 $account_set=($action=='add') ? "account+'$amount'" : "account-'$amount'";
	 //更改用户帐户
	 $this->db->update("UPDATE {$db_tablepre}gift_account SET account='$account_set' WHERE uid='$this->userid'");
	 //设置帐户余额
	 $this->db->update("UPDATE {$db_tablepre}gift_account_log SET remain='$account_set' WHERE id='$logid'");
	 
	 //更新用户积分
	 if ($types==1 && $action=='add') {
	     $this->updateUserScore($score,0,1);
	 }
  }
    
}  
?>