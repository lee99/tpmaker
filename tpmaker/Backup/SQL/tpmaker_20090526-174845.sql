DROP TABLE `tp_apptree`;
CREATE TABLE `tp_apptree` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(40) NOT NULL COMMENT '标题',
  `shortname` varchar(24) NOT NULL,
  `projectid` int(11) NOT NULL COMMENT '项目ID',
  `type` int(11) NOT NULL COMMENT '类型',
  `pid` int(11) NOT NULL default '0' COMMENT '上级ID',
  `tid` int(11) NOT NULL COMMENT '数据表ID',
  `seqNo` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

INSERT INTO `tp_apptree` VALUES ('17','系统权限组别管理','','26','1','9','272','0','');
INSERT INTO `tp_apptree` VALUES ('6','客户管理系统','sys_com','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('8','办公自动化系统','sys_oa','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('9','用户管理','sys_user','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('10','职位管理系统','sys_post','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('11','个人信息管理','sys_per','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('12','系统属性管理系统','sys_adm','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('13','用户管理','','26','1','9','276','0','');
INSERT INTO `tp_apptree` VALUES ('14','查看用户登陆记录','','26','1','30','808','0','');
INSERT INTO `tp_apptree` VALUES ('15','查看用户拷贝数据记录','','26','1','30','809','0','');
INSERT INTO `tp_apptree` VALUES ('16','人才面试管理系统','sys_view','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('18','人才设定','conf_per','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('19','企业设定','conf_com','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('20','企业年薪类型','','26','1','19','820','0','');
INSERT INTO `tp_apptree` VALUES ('21','人才到岗时间设定','','26','1','18','816','0','');
INSERT INTO `tp_apptree` VALUES ('22','公共设定','conf_pub','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('23','企业电话类型','','26','1','19','822','0','');
INSERT INTO `tp_apptree` VALUES ('24','公共招聘途径','','26','1','19','819','0','');
INSERT INTO `tp_apptree` VALUES ('25','职位设定','conf_post','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('26','职位分类表','','26','1','25','821','0','');
INSERT INTO `tp_apptree` VALUES ('27','企业福利设定','','26','1','19','817','0','');
INSERT INTO `tp_apptree` VALUES ('28','行业汇总表','','26','1','22','818','0','');
INSERT INTO `tp_apptree` VALUES ('29','安全统计系统','sys_log','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('30','用户安全统计','user_log','26','0','29','0','0','');
INSERT INTO `tp_apptree` VALUES ('31','客户管理系统','sys_com','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('32','人才管理系统','sys_per','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('33','NS办公系统','sys_oa','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('34','系统设置管理','sys_conf','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('35','系统人才设置','sys_conf_per','41','0','34','0','0','');
INSERT INTO `tp_apptree` VALUES ('36','公共办公应用','sys_oa1','41','0','33','0','0','');
INSERT INTO `tp_apptree` VALUES ('130','人才电话管理表','sys_oa_3','41','1','33','980','3','');
INSERT INTO `tp_apptree` VALUES ('129','企业其它空位','sys_oa_2','41','1','33','982','2','');
INSERT INTO `tp_apptree` VALUES ('128','人才推荐状态','sys_oa_1','41','1','33','985','1','');
INSERT INTO `tp_apptree` VALUES ('131','订单状态管理','sys_oa_4','41','1','33','976','4','');
INSERT INTO `tp_apptree` VALUES ('132','系统UBG管理','sys_oa_5','41','1','33','950','5','');
INSERT INTO `tp_apptree` VALUES ('133','大类职位表','sys_oa_6','41','1','33','983','6','');
INSERT INTO `tp_apptree` VALUES ('134','人才电话管理表','sys_oa_7','41','1','33','980','7','');
INSERT INTO `tp_apptree` VALUES ('135','系统UBG管理','sys_oa_8','41','1','33','950','8','');
INSERT INTO `tp_apptree` VALUES ('136','用户管理','sys_user','42','0','142','0','0','');
INSERT INTO `tp_apptree` VALUES ('137','用户管理','sys_user_0','42','1','136','0','0','');
INSERT INTO `tp_apptree` VALUES ('138','系统权限表','sys_user_1','42','1','136','0','1','');
INSERT INTO `tp_apptree` VALUES ('139','权限组别用户','sys_user_2','42','1','136','0','2','');
INSERT INTO `tp_apptree` VALUES ('140','权限节点','sys_user_3','42','1','136','0','3','');
INSERT INTO `tp_apptree` VALUES ('141','权限组别','sys_user_4','42','1','136','0','4','');
INSERT INTO `tp_apptree` VALUES ('142','统计设定','sys_conf','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('143','流量分析','sys_ip','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('144','广告分析','sys_ad','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('145','业务分析','sys_biz','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('146','基础流量分析','st_count','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('147','今日详情','st_today','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('148','昨日详情','st_yestoday','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('149','所有详情','st_all','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('150','工具条分析','st_tool','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('155','概况','','42','1','146','0','0','http://192.168.1.108:81/count/main.php');
INSERT INTO `tp_apptree` VALUES ('156','时段分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_day.php');
INSERT INTO `tp_apptree` VALUES ('157','日段分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_month.php');
INSERT INTO `tp_apptree` VALUES ('158','月分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_year.php');
INSERT INTO `tp_apptree` VALUES ('159','Alexa工具条分析','','42','1','150','0','0','http://192.168.1.108:81/count/stat_alexa.php');
INSERT INTO `tp_apptree` VALUES ('160','明细访问','','42','1','146','0','0','http://192.168.1.108:81/count/show_today.php');
INSERT INTO `tp_apptree` VALUES ('161','关键字统计','今日-关键字统计','42','1','147','0','0','http://192.168.1.108:81/count/keyword.php');
INSERT INTO `tp_apptree` VALUES ('162','来源统计','今日-来源统计','42','1','147','0','0','http://192.168.1.108:81/count/referer.php');
INSERT INTO `tp_apptree` VALUES ('163','回头客','今日-回头客','42','1','147','0','0','http://192.168.1.108:81/count/return.php');
INSERT INTO `tp_apptree` VALUES ('164','受访页面','今日-受访页面','42','1','147','0','0','http://192.168.1.108:81/count/page.php');
INSERT INTO `tp_apptree` VALUES ('165','地区统计','今日-地区统计','42','1','147','0','0','http://192.168.1.108:81/count/province.php');
INSERT INTO `tp_apptree` VALUES ('166','语言统计','今日-语言统计','42','1','147','0','0','http://192.168.1.108:81/count/language.php');
INSERT INTO `tp_apptree` VALUES ('167','时区统计','今日-时区统计','42','1','147','0','0','http://192.168.1.108:81/count/timezone.php');
INSERT INTO `tp_apptree` VALUES ('168','屏幕统计','今日-屏幕统计','42','1','147','0','0','http://192.168.1.108:81/count/screen.php');
INSERT INTO `tp_apptree` VALUES ('169','浏览器统计','今日-浏览器统计','42','1','147','0','0','http://192.168.1.108:81/count/soft.php');
INSERT INTO `tp_apptree` VALUES ('170','浏览器统计','昨日-浏览器统计','42','1','148','0','0','http://192.168.1.108:81/count/soft.php?type=2');
INSERT INTO `tp_apptree` VALUES ('171','屏幕统计','昨日-屏幕统计','42','1','148','0','0','http://192.168.1.108:81/count/screen.php?type=2');
INSERT INTO `tp_apptree` VALUES ('172','时区统计','昨日-时区统计','42','1','148','0','0','http://192.168.1.108:81/count/timezone.php?type=2');
INSERT INTO `tp_apptree` VALUES ('173','语言统计','昨日-语言统计','42','1','148','0','0','http://192.168.1.108:81/count/language.php?type=2');
INSERT INTO `tp_apptree` VALUES ('174','地区统计','昨日-地区统计','42','1','148','0','0','http://192.168.1.108:81/count/timezone.php?type=2');
INSERT INTO `tp_apptree` VALUES ('175','受访页面','昨日-受访页面','42','1','148','0','0','http://192.168.1.108:81/count/page.php?type=2');
INSERT INTO `tp_apptree` VALUES ('176','回头客','昨日-回头客','42','1','148','0','0','http://192.168.1.108:81/count/return.php?type=2');
INSERT INTO `tp_apptree` VALUES ('177','来源统计','昨日-来源统计','42','1','148','0','0','http://192.168.1.108:81/count/referer.php?type=2');
INSERT INTO `tp_apptree` VALUES ('179','浏览器统计','所有-浏览器统计','42','1','149','0','0','http://192.168.1.108:81/count/soft.php?type=0');
INSERT INTO `tp_apptree` VALUES ('180','屏幕统计','所有-屏幕统计','42','1','149','0','0','http://192.168.1.108:81/count/screen.php?type=0');
INSERT INTO `tp_apptree` VALUES ('181','时区统计','所有-时区统计','42','1','149','0','0','http://192.168.1.108:81/count/timezone.php?type=0');
INSERT INTO `tp_apptree` VALUES ('182','语言统计','所有-语言统计','42','1','149','0','0','http://192.168.1.108:81/count/language.php?type=0');
INSERT INTO `tp_apptree` VALUES ('183','地区统计','所有-地区统计','42','1','149','0','0','http://192.168.1.108:81/count/province.php?type=0');
INSERT INTO `tp_apptree` VALUES ('197','关键字统计','昨日-关键字统计','42','1','148','0','0','http://192.168.1.108:81/count/referer.php?type=2');
INSERT INTO `tp_apptree` VALUES ('202','最近7日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=7');
INSERT INTO `tp_apptree` VALUES ('201','昨日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=1');
INSERT INTO `tp_apptree` VALUES ('200','今日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=0');
INSERT INTO `tp_apptree` VALUES ('199','屏幕轨迹记录','st_creen','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('198','受访页面','所有-受访页面','42','1','149','0','0','http://192.168.1.108:81/count/page.php?type=0');
INSERT INTO `tp_apptree` VALUES ('194','回头客','所有-回头客','42','1','149','0','0','http://192.168.1.108:81/count/return.php?type=0');
INSERT INTO `tp_apptree` VALUES ('195','来源统计','所有-来源统计','42','1','149','0','0','http://192.168.1.108:81/count/referer.php?type=0');
INSERT INTO `tp_apptree` VALUES ('196','关键字统计','所有-关键字统计','42','1','149','0','0','http://192.168.1.108:81/count/keyword.php?type=0');
INSERT INTO `tp_apptree` VALUES ('203','最近30日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=30');
INSERT INTO `tp_apptree` VALUES ('204','所有屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=all');
INSERT INTO `tp_apptree` VALUES ('205','ddddd','dddd','43','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('206','系统权限表','dddd_0','43','1','205','1043','0','');
INSERT INTO `tp_apptree` VALUES ('207','系统权限表','dddd_1','43','1','205','1042','1','');
INSERT INTO `tp_apptree` VALUES ('208','','dddd_2','43','1','205','1045','2','');
INSERT INTO `tp_apptree` VALUES ('209','','dddd_3','43','1','205','1046','3','');
INSERT INTO `tp_apptree` VALUES ('210','','dddd_4','43','1','205','1047','4','');
INSERT INTO `tp_apptree` VALUES ('211','','dddd_5','43','1','205','1048','5','');
INSERT INTO `tp_apptree` VALUES ('212','','dddd_6','43','1','205','1049','6','');
INSERT INTO `tp_apptree` VALUES ('213','','dddd_7','43','1','205','1050','7','');
INSERT INTO `tp_apptree` VALUES ('214','权限组别','dddd_8','43','1','205','1051','8','');
INSERT INTO `tp_apptree` VALUES ('215','权限组别用户','dddd_9','43','1','205','1052','9','');
INSERT INTO `tp_apptree` VALUES ('216','权限节点','dddd_10','43','1','205','1053','10','');
INSERT INTO `tp_apptree` VALUES ('217','P对照记录表','dddd_11','43','1','205','1054','11','');
INSERT INTO `tp_apptree` VALUES ('218','','dddd_12','43','1','205','1055','12','');
INSERT INTO `tp_apptree` VALUES ('219','','dddd_13','43','1','205','1056','13','');
INSERT INTO `tp_apptree` VALUES ('220','P流量详细记录','dddd_14','43','1','205','1057','14','');
INSERT INTO `tp_apptree` VALUES ('221','','dddd_15','43','1','205','1058','15','');
INSERT INTO `tp_apptree` VALUES ('222','用户管理','dddd_16','43','1','205','1059','16','');
DROP TABLE `tp_con_tree`;
CREATE TABLE `tp_con_tree` (
  `id` int(11) NOT NULL auto_increment,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL default '0',
  `title` varchar(240) NOT NULL,
  `model` varchar(240) NOT NULL,
  `action` varchar(240) NOT NULL,
  `icon` varchar(240) NOT NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='左边的树';

INSERT INTO `tp_con_tree` VALUES ('19','0','0','[根目录]其它属性设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('2','2','0','其它小工具','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('3','3','1','[字段]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('4','4','1','[数据表]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('5','5','1','[其它]操作','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('6','6','3','字段属性设定','Sub_fieldtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('7','7','3','查看类型设定','Sub_viewtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('8','8','3','编辑类型设定','Sub_edittype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('9','9','3','增加类型设定','Sub_addtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('10','10','3','搜索形式设定','Sub_searchtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('11','11','3','系统保留设定','Sub_issystem','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('12','12','3','验证形式设定','Sub_validate','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('13','13','4','编辑类型设定','Tab_edittype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('14','14','4','搜索形式设定','Tab_searchtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('15','15','5','所有表大写','','','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('16','16','5','所有表首位大写','','','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('17','17','2','数据备份管理工具','Dbbackup','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('18','18','17','备份当前系统数据','Dbbackup','export_db','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('20','20','2','系统颜色表','Sub_color','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('21','21','2','phpMyadmin','PhpMyadmin','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('1','1','0','系统属性管理','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('27','27','1','[项目]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('28','28','27','模板风格设定','Pro_templete','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('29','29','1','系统公共参数配置','Sys_config','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('30','30','29','公共参数分类','Sys_configtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('31','31','6','数据字段类型设定','Sys_fieldtypesub','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('32','32','12','验证条件设定','Sub_validate_vcon','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('33','33','12','附加规则设定','Sub_validate_arag','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('34','34','3','自动填充设定','Sub_auto','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('35','35','34','附加规则设定','Sub_auto_reg','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('36','36','34','填充条件设定','Sub_auto_con','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('37','37','1','公共HTML标签类型','Sub_htmltags','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('38','38','17','当前系统数据恢复','Dbbackup','inport_db','page.gif','0');
DROP TABLE `tp_designer`;
CREATE TABLE `tp_designer` (
  `id` int(11) NOT NULL auto_increment,
  `master_pid` int(11) NOT NULL,
  `master_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_pid` int(11) NOT NULL,
  `foreign_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='数据关联';

INSERT INTO `tp_designer` VALUES ('15','26','node','pid','26','sta_infos','id');
INSERT INTO `tp_designer` VALUES ('22','26','attach','uploadTime','26','Interview','id');
INSERT INTO `tp_designer` VALUES ('23','26','Interview','update_on','26','node','id');
DROP TABLE `tp_designer_coords`;
CREATE TABLE `tp_designer_coords` (
  `id` int(11) NOT NULL auto_increment,
  `projectid` int(11) NOT NULL,
  `table_name` varchar(64) NOT NULL default '',
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `v` tinyint(4) default NULL,
  `h` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=631 DEFAULT CHARSET=utf8 COMMENT='坐标定位';

INSERT INTO `tp_designer_coords` VALUES ('557','21','user','616','436','0','1');
INSERT INTO `tp_designer_coords` VALUES ('556','21','orderlogs','664','153','0','1');
INSERT INTO `tp_designer_coords` VALUES ('555','21','order','776','105','0','1');
INSERT INTO `tp_designer_coords` VALUES ('554','21','items_type','193','370','1','1');
INSERT INTO `tp_designer_coords` VALUES ('553','21','items','478','72','1','1');
INSERT INTO `tp_designer_coords` VALUES ('552','26','sta_infos_type','646','320','0','1');
INSERT INTO `tp_designer_coords` VALUES ('551','26','sta_infos','44','264','0','1');
INSERT INTO `tp_designer_coords` VALUES ('550','26','contacttype','15','139','0','1');
INSERT INTO `tp_designer_coords` VALUES ('549','26','tree','1004','71','0','1');
INSERT INTO `tp_designer_coords` VALUES ('548','26','dept','976','357','0','1');
INSERT INTO `tp_designer_coords` VALUES ('547','26','nsclient','668','274','0','1');
INSERT INTO `tp_designer_coords` VALUES ('546','26','nsjob','481','68','0','1');
INSERT INTO `tp_designer_coords` VALUES ('545','26','contact','892','86','0','1');
INSERT INTO `tp_designer_coords` VALUES ('544','26','calling','982','426','0','1');
INSERT INTO `tp_designer_coords` VALUES ('543','26','group','626','120','0','1');
INSERT INTO `tp_designer_coords` VALUES ('542','26','node','307','269','0','1');
INSERT INTO `tp_designer_coords` VALUES ('541','26','groupuser','590','244','0','1');
INSERT INTO `tp_designer_coords` VALUES ('540','26','attach','7','407','0','1');
INSERT INTO `tp_designer_coords` VALUES ('539','26','access','364','208','0','1');
INSERT INTO `tp_designer_coords` VALUES ('538','26','user','902','111','0','1');
INSERT INTO `tp_designer_coords` VALUES ('537','26','hotjob','190','97','0','1');
INSERT INTO `tp_designer_coords` VALUES ('536','26','lang','789','376','0','1');
INSERT INTO `tp_designer_coords` VALUES ('535','26','outfiletype','21','299','1','1');
INSERT INTO `tp_designer_coords` VALUES ('534','26','outfile','641','421','0','1');
INSERT INTO `tp_designer_coords` VALUES ('533','26','outnewstype','255','50','0','1');
INSERT INTO `tp_designer_coords` VALUES ('532','26','outnews','1013','493','0','1');
INSERT INTO `tp_designer_coords` VALUES ('531','26','flashad','488','363','0','1');
INSERT INTO `tp_designer_coords` VALUES ('530','26','projects','289','311','1','1');
INSERT INTO `tp_designer_coords` VALUES ('558','21','access','384','297','1','1');
INSERT INTO `tp_designer_coords` VALUES ('559','21','groupuser','778','66','0','1');
INSERT INTO `tp_designer_coords` VALUES ('560','21','group','797','499','0','1');
INSERT INTO `tp_designer_coords` VALUES ('561','21','node','919','277','0','1');
INSERT INTO `tp_designer_coords` VALUES ('562','21','sysconfig','719','377','0','1');
INSERT INTO `tp_designer_coords` VALUES ('563','21','company','296','58','1','1');
INSERT INTO `tp_designer_coords` VALUES ('564','21','contactlist','791','430','0','1');
INSERT INTO `tp_designer_coords` VALUES ('565','21','comnotes','190','258','1','1');
INSERT INTO `tp_designer_coords` VALUES ('566','21','comaddrs','382','481','1','1');
INSERT INTO `tp_designer_coords` VALUES ('629','1','Bas_souretype','738','100','1','1');
INSERT INTO `tp_designer_coords` VALUES ('628','1','Bas_post','308','107','1','1');
INSERT INTO `tp_designer_coords` VALUES ('627','1','Bas_payinfo','424','455','1','1');
INSERT INTO `tp_designer_coords` VALUES ('626','1','Bas_path','614','253','1','1');
INSERT INTO `tp_designer_coords` VALUES ('625','1','Bas_calling','781','407','1','1');
INSERT INTO `tp_designer_coords` VALUES ('624','1','Bas_boon','856','265','1','1');
INSERT INTO `tp_designer_coords` VALUES ('623','1','Left_time','388','218','1','1');
INSERT INTO `tp_designer_coords` VALUES ('622','1','Area','251','326','1','1');
INSERT INTO `tp_designer_coords` VALUES ('621','1','Lang','159','293','1','1');
INSERT INTO `tp_designer_coords` VALUES ('620','1','Recomand','723','344','1','1');
INSERT INTO `tp_designer_coords` VALUES ('619','1','Interview','535','134','1','1');
INSERT INTO `tp_designer_coords` VALUES ('618','1','Jobs','725','467','1','1');
INSERT INTO `tp_designer_coords` VALUES ('617','1','Order','430','382','1','1');
INSERT INTO `tp_designer_coords` VALUES ('616','1','Company','513','40','1','1');
INSERT INTO `tp_designer_coords` VALUES ('615','1','Person','66','54','1','1');
INSERT INTO `tp_designer_coords` VALUES ('630','1','Com2com','777','32','1','1');
DROP TABLE `tp_pro_templete`;
CREATE TABLE `tp_pro_templete` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `tplname` varchar(200) default NULL COMMENT '模板的文件夹',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='项目模板风格设定';

INSERT INTO `tp_pro_templete` VALUES ('1','[默认]TP-maker风格','0','1','tpmaker_default');
INSERT INTO `tp_pro_templete` VALUES ('2','[高级]TP-advance风格','0','2','tpmaker_advance');
DROP TABLE `tp_relation`;
CREATE TABLE `tp_relation` (
  `master_db` varchar(64) collate utf8_bin NOT NULL default '',
  `master_table` varchar(64) collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_db` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_table` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

INSERT INTO `tp_relation` VALUES ('my_cal','','','my_cal','','');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_user','id','my_cal','sys_cal_type','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','id','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','start_y','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','content','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','end_d','my_cal','sys_user','id');
DROP TABLE `tp_sub_addtype`;
CREATE TABLE `tp_sub_addtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_sub_addtype` VALUES ('1','[默认]input','input','','','','width:300px','input','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_addtype` VALUES ('2','单选[select]','select','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_addtype` VALUES ('3','是否&不定','radio','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_addtype` VALUES ('4','多选[check]','checkboxGroup','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_addtype` VALUES ('5','多选[select]','selectmultiple','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_addtype` VALUES ('6','文件上传','files','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_addtype` VALUES ('7','图标','input','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_addtype` VALUES ('8','文本[正常]','textarea','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_addtype` VALUES ('9','文本[word]','word','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_addtype` VALUES ('10','隐藏[时间]','hidden','','','','','','0','0','','','','','','','9','10','');
INSERT INTO `tp_sub_addtype` VALUES ('11','联想输入','input','','','','','','0','0','','','','','','','11','11','');
INSERT INTO `tp_sub_addtype` VALUES ('12','隐藏[IP]','hidden','','','','','','0','0','','','','','','','10','12','');
INSERT INTO `tp_sub_addtype` VALUES ('13','时间[年月日]','calendar','','','','','','0','0','','','','','','','12','13','');
INSERT INTO `tp_sub_addtype` VALUES ('14','时间[YMDHIS]','calendar','','','','','','0','0','','','','','','','13','14','');
INSERT INTO `tp_sub_addtype` VALUES ('15','只读[HTML]','htmltext','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_addtype` VALUES ('16','只读[TEXT]','text','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_addtype` VALUES ('17','只读[tIme]','time','','','','','','0','0','','','','','','','0','14','');
DROP TABLE `tp_sub_auto`;
CREATE TABLE `tp_sub_auto` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `content` varchar(40) default NULL COMMENT '填充内容',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `condition` varchar(40) default NULL COMMENT '填充条件',
  `regular` varchar(40) default NULL COMMENT '附加规则',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='自动填充设定';

INSERT INTO `tp_sub_auto` VALUES ('1','无填充','','0','1','ADD','function');
INSERT INTO `tp_sub_auto` VALUES ('2','time_update','time','0','1','UPDATE','function');
INSERT INTO `tp_sub_auto` VALUES ('3','time','time','0','1','ADD','function');
DROP TABLE `tp_sub_auto_con`;
CREATE TABLE `tp_sub_auto_con` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='填充条件';

INSERT INTO `tp_sub_auto_con` VALUES ('1','ADD','0','1','新增数据的时候处理（默认方式）');
INSERT INTO `tp_sub_auto_con` VALUES ('2','UPDATE','0','2','更新数据的时候处理');
INSERT INTO `tp_sub_auto_con` VALUES ('3','ALL ','0','3','所有情况下都进行处理 ');
DROP TABLE `tp_sub_auto_reg`;
CREATE TABLE `tp_sub_auto_reg` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='附加规则';

INSERT INTO `tp_sub_auto_reg` VALUES ('1','string','0','8','字符串（默认方式）');
INSERT INTO `tp_sub_auto_reg` VALUES ('2','field ','0','3','用其它字段填充');
INSERT INTO `tp_sub_auto_reg` VALUES ('3','function','0','6','使用函数');
INSERT INTO `tp_sub_auto_reg` VALUES ('4','callback ','0','7','回调方法');
DROP TABLE `tp_sub_color`;
CREATE TABLE `tp_sub_color` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_color` VALUES ('1','gray','1','1','');
INSERT INTO `tp_sub_color` VALUES ('2','salmon','2','2','');
INSERT INTO `tp_sub_color` VALUES ('3','copper','3','3','');
INSERT INTO `tp_sub_color` VALUES ('4','yellow','4','4','');
INSERT INTO `tp_sub_color` VALUES ('5','powderblue','5','5','');
INSERT INTO `tp_sub_color` VALUES ('6','steelblue','6','6','');
INSERT INTO `tp_sub_color` VALUES ('7','lime','7','7','');
INSERT INTO `tp_sub_color` VALUES ('8','orange','8','8','');
INSERT INTO `tp_sub_color` VALUES ('9','purple','9','9','');
INSERT INTO `tp_sub_color` VALUES ('10','yellowgreen','10','10','');
INSERT INTO `tp_sub_color` VALUES ('11','silver','11','11','');
INSERT INTO `tp_sub_color` VALUES ('12','chocolate','12','12','');
INSERT INTO `tp_sub_color` VALUES ('13','aliceblue','13','13','');
INSERT INTO `tp_sub_color` VALUES ('14','springgreen','14','14','');
INSERT INTO `tp_sub_color` VALUES ('15','tan','15','15','');
INSERT INTO `tp_sub_color` VALUES ('16','quartz','16','16','');
INSERT INTO `tp_sub_color` VALUES ('17','blueviolet','17','17','');
INSERT INTO `tp_sub_color` VALUES ('18','red','18','18','');
INSERT INTO `tp_sub_color` VALUES ('19','deeppink','19','19','');
INSERT INTO `tp_sub_color` VALUES ('21','White','0','19','');
DROP TABLE `tp_sub_edittype`;
CREATE TABLE `tp_sub_edittype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_sub_edittype` VALUES ('1','[默认]input','input','','','','width:300px','input','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_edittype` VALUES ('2','单选[select]','select','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_edittype` VALUES ('3','是否&不定','radio','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_edittype` VALUES ('4','多选[check]','checkboxGroup','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_edittype` VALUES ('5','多选[select]','selectmultiple','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_edittype` VALUES ('6','文件上传','files','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_edittype` VALUES ('7','图标','input','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_edittype` VALUES ('8','文本[正常]','textarea','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_edittype` VALUES ('9','文本[word]','word','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_edittype` VALUES ('10','隐藏[时间]','hidden','','','','','','0','0','','','','','','','9','10','');
INSERT INTO `tp_sub_edittype` VALUES ('11','联想输入','input','','','','','','0','0','','','','','','','11','11','');
INSERT INTO `tp_sub_edittype` VALUES ('12','隐藏[IP]','hidden','','','','','','0','0','','','','','','','10','12','');
INSERT INTO `tp_sub_edittype` VALUES ('13','时间[年月日]','calendar','','','','','','0','0','','','','','','','12','13','');
INSERT INTO `tp_sub_edittype` VALUES ('14','时间[YMDHIS]','calendar','','','','','','0','0','','','','','','','13','14','');
INSERT INTO `tp_sub_edittype` VALUES ('15','只读[HTML]','htmltext','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_edittype` VALUES ('16','只读[TEXT]','text','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_edittype` VALUES ('17','只读[tIme]','time','','','','','','0','0','','','','','','','0','14','');
DROP TABLE `tp_sub_fieldtype`;
CREATE TABLE `tp_sub_fieldtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `type` varchar(240) NOT NULL COMMENT '类型',
  `notnull` int(11) NOT NULL COMMENT '是否为空',
  `default` varchar(240) NOT NULL COMMENT '默认值',
  `primary` int(11) NOT NULL COMMENT '是否主键',
  `autoInc` int(11) NOT NULL COMMENT '自动增加',
  `leng` int(11) NOT NULL COMMENT '长度',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字属性设定';

INSERT INTO `tp_sub_fieldtype` VALUES ('1','[varchar][40]','1','VARCHAR','0','','0','0','40','5','');
INSERT INTO `tp_sub_fieldtype` VALUES ('2','[INT][11]','2','INT','0','','0','0','11','3','');
INSERT INTO `tp_sub_fieldtype` VALUES ('3','[text]','3','TEXT','0','','0','0','0','1','');
INSERT INTO `tp_sub_fieldtype` VALUES ('4','[varchar][240]','4','VARCHAR','0','','0','0','240','7','');
INSERT INTO `tp_sub_fieldtype` VALUES ('5','[tinyint][4]','5','SMALLINT','0','','0','0','4','2','');
INSERT INTO `tp_sub_fieldtype` VALUES ('6','[autoid][11]','6','INT','0','','1','1','11','4','');
INSERT INTO `tp_sub_fieldtype` VALUES ('17','[date][0000-00-00]','7','DATE','0','','0','0','0','19','');
INSERT INTO `tp_sub_fieldtype` VALUES ('18','[datetime][0000-00-00 00:00:00]','8','DATETIME','0','','0','0','0','12','');
INSERT INTO `tp_sub_fieldtype` VALUES ('19','[time][00:00:00]','9','TIME','0','','0','0','0','14','');
INSERT INTO `tp_sub_fieldtype` VALUES ('20','[year][0000]','10','YEAR','0','','0','0','0','15','');
INSERT INTO `tp_sub_fieldtype` VALUES ('21','[bigint][20]','11','BIGINT','0','','0','0','20','15','');
DROP TABLE `tp_sub_htmltags`;
CREATE TABLE `tp_sub_htmltags` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `usetype` int(11) default '1' COMMENT '使用范围',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_htmltags` VALUES ('1','input','1','0','1','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('2','password','1','0','2','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('3','textarea','1','0','3','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('5','radio','1','0','5','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('6','hidden','1','0','6','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('7','checkbox[single]','1','0','7','');
INSERT INTO `tp_sub_htmltags` VALUES ('8','checkboxGroup','1','0','8','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('9','select','1','0','9','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('10','selectmultiple','1','0','10','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('11','files','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('12','word','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('13','calendar','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('14','text','3','0','12','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('19','htmltext','3','0','14','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('15','time','3','0','13','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('16','image','2','0','15','');
INSERT INTO `tp_sub_htmltags` VALUES ('17','icon','2','0','16','');
INSERT INTO `tp_sub_htmltags` VALUES ('18','link','2','0','19','');
INSERT INTO `tp_sub_htmltags` VALUES ('20','outtable','2','0','19','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('21','filedown','2','0','8','OK');
DROP TABLE `tp_sub_htmlusetype`;
CREATE TABLE `tp_sub_htmlusetype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='HTMLtag使用范围';

INSERT INTO `tp_sub_htmlusetype` VALUES ('1','编辑时使用','0','1','');
INSERT INTO `tp_sub_htmlusetype` VALUES ('2','查看时使用','0','2','');
INSERT INTO `tp_sub_htmlusetype` VALUES ('3','全局使用','0','3','');
DROP TABLE `tp_sub_issystem`;
CREATE TABLE `tp_sub_issystem` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` text COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统保留设定';

INSERT INTO `tp_sub_issystem` VALUES ('1','非保留','1','1','none');
INSERT INTO `tp_sub_issystem` VALUES ('2','文件上传','2','2','file');
INSERT INTO `tp_sub_issystem` VALUES ('3','自定[权限]','3','3','right');
DROP TABLE `tp_sub_searchtype`;
CREATE TABLE `tp_sub_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_searchtype` VALUES ('1','[默认]形式','0','1','');
INSERT INTO `tp_sub_searchtype` VALUES ('2','是否存在','1','2','');
INSERT INTO `tp_sub_searchtype` VALUES ('3','时间跨度','2','3','');
INSERT INTO `tp_sub_searchtype` VALUES ('4','可选比较','3','4','');
INSERT INTO `tp_sub_searchtype` VALUES ('5','包含[like]','4','5','');
INSERT INTO `tp_sub_searchtype` VALUES ('6','多搜[ID]','5','6','');
INSERT INTO `tp_sub_searchtype` VALUES ('7','是否&不定','1','7','');
DROP TABLE `tp_sub_validate`;
CREATE TABLE `tp_sub_validate` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `v_note` varchar(200) default NULL COMMENT '默认提示信息',
  `v_rag` varchar(40) default NULL COMMENT '验证规则',
  `v_con` varchar(40) default NULL COMMENT '验证条件',
  `a_reg` varchar(40) default NULL COMMENT '附加规则',
  `v_time` varchar(40) default NULL COMMENT '验证时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_validate` VALUES ('1','[默认]无','0','1','','','0','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('2','EMAIL','1','2','请输入正确的EMAIL地址!','email','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('3','纯数字','2','3','输入项须为纯数字!','number','0','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('4','纯英文','3','4','输入项须为纯英文!','english','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('5','电话','4','5','输入项须为电话格式!','phone','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('6','手机格式','5','6','输入项须为手机格式!','mobile','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('7','网址','7','8','输入项须为网址格式!','url','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('8','货币格式','8','7','输入项须为货币格式!','currency','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('9','长整数字格式','9','10','输入项须为长整数字格式!','integer','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('10','QQ号码','10','11','输入项须为QQ号码格式!','qq','2','regex','ALL');
DROP TABLE `tp_sub_validate_arag`;
CREATE TABLE `tp_sub_validate_arag` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='附加规则';

INSERT INTO `tp_sub_validate_arag` VALUES ('1','regex','0','1','使用正则进行验证，表示前面定义的验证规则是一个正则表达式（默认）');
INSERT INTO `tp_sub_validate_arag` VALUES ('2','function','0','1','使用函数验证，前面定义的验证规则是一个函数名 ');
INSERT INTO `tp_sub_validate_arag` VALUES ('3','callback','0','1','使用方法验证，前面定义的验证规则是一个当前 Model类的方法');
INSERT INTO `tp_sub_validate_arag` VALUES ('4','confirm ','0','1','验证表单中的两个字段是否相同，前面定义的验证规则是一个字段名');
INSERT INTO `tp_sub_validate_arag` VALUES ('5','equal ','0','1','验证是否等于某个值，该值由前面的验证规则定义');
INSERT INTO `tp_sub_validate_arag` VALUES ('6','in','0','1','验证是否在某个范围内，前面定义的验证规则必须是一个数组');
INSERT INTO `tp_sub_validate_arag` VALUES ('7','unique','0','1','验证是否唯一，系统会根据字段目前的值查询数据库来判断是否存在相同的值 ');
DROP TABLE `tp_sub_validate_vcon`;
CREATE TABLE `tp_sub_validate_vcon` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='验证条件';

INSERT INTO `tp_sub_validate_vcon` VALUES ('3','存在字段就验证（默认）','0','0','');
INSERT INTO `tp_sub_validate_vcon` VALUES ('1','必须验证','0','0','');
INSERT INTO `tp_sub_validate_vcon` VALUES ('2','值不为空的时候验证','0','0','');
DROP TABLE `tp_sub_viewtype`;
CREATE TABLE `tp_sub_viewtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_viewtype` VALUES ('1','[默认]text','text','','','','','','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_viewtype` VALUES ('2','引用外表','outtable','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_viewtype` VALUES ('3','图标显示','icon','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_viewtype` VALUES ('4','图片显示','image','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_viewtype` VALUES ('5','文件下载','filedown','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_viewtype` VALUES ('6','链接[索引]','text','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_viewtype` VALUES ('7','时间[YMD]','time','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_viewtype` VALUES ('8','时间[全]','time','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_viewtype` VALUES ('9','1对多','text','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_viewtype` VALUES ('10','HTML','htmltext','','','','','','0','0','','','','','','','0','8','');
DROP TABLE `tp_sub_yesno`;
CREATE TABLE `tp_sub_yesno` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `tid` int(11) NOT NULL,
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_yesno` VALUES ('2','0','否','1','1','');
INSERT INTO `tp_sub_yesno` VALUES ('1','1','是','2','8','');
DROP TABLE `tp_sys_config`;
CREATE TABLE `tp_sys_config` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL COMMENT '上级',
  `type` int(11) default NULL COMMENT '值的类型',
  `title` varchar(200) default NULL,
  `value` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='默认的系统参数';

INSERT INTO `tp_sys_config` VALUES ('1','1','1','DISPATCH_ON','true','是否启用Dispatcher','0');
INSERT INTO `tp_sys_config` VALUES ('2','1','3','DISPATCH_NAME','Think','默认的Dispatcher名称','0');
INSERT INTO `tp_sys_config` VALUES ('3','1','2','URL_MODEL','0','// URL模式： 0 普通模式 1 PATHINFO 2 REWRITE','0');
INSERT INTO `tp_sys_config` VALUES ('4','1','2','PATH_MODEL','2','// 默认为PATHINFO 模式，提供最好的用户体验和SEO支持// 普通模式1 参数没有顺序/m/module/a/action/id/1// 智能模式2 自动识别模块和操作/module/action/id/1/ 或者 /module,action,id,1/...','0');
INSERT INTO `tp_sys_config` VALUES ('5','1','3','PATH_DEPR','/','PATHINFO参数之间分割号','0');
INSERT INTO `tp_sys_config` VALUES ('6','1','1','ROUTER_ON','true','启用路由判断','0');
INSERT INTO `tp_sys_config` VALUES ('7','1','3','COMPONENT_DEPR','@','组件模块和操作的URL分割符','0');
INSERT INTO `tp_sys_config` VALUES ('8','2','1','WEB_LOG_RECORD','false','默认不记录日志','0');
INSERT INTO `tp_sys_config` VALUES ('9','2','2','LOG_FILE_SIZE','2097152','日志文件大小限制','0');
INSERT INTO `tp_sys_config` VALUES ('10','3','1','THINK_PLUGIN_ON','false','默认启用插件机制','0');
INSERT INTO `tp_sys_config` VALUES ('11','4','1','LIMIT_RESFLESH_ON','false','默认关闭防刷新机制','0');
INSERT INTO `tp_sys_config` VALUES ('12','4','1','LIMIT_REFLESH_TIMES','3','页面防刷新时间 默认3秒','0');
INSERT INTO `tp_sys_config` VALUES ('13','5','1','DEBUG_MODE','false','调试模式默认关闭','0');
INSERT INTO `tp_sys_config` VALUES ('14','5','3','ERROR_MESSAGE','您浏览的页面暂时发生了错误！请稍后再试～','错误显示信息 非调试模式有效','0');
INSERT INTO `tp_sys_config` VALUES ('15','5','3','ERROR_PAGE','','错误定向页面','0');
INSERT INTO `tp_sys_config` VALUES ('16','6','3','VAR_PATHINFO','s','PATHINFO 兼容模式获取变量例如 ?s=/module/action/id/1 后面的参数取决于PATH_MODEL 和 PATH_DEPR','0');
INSERT INTO `tp_sys_config` VALUES ('17','6','3','VAR_MODULE','m','默认模块获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('18','6','3','VAR_ACTION','a','默认操作获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('19','6','3','VAR_ROUTER','r','默认路由获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('20','6','3','VAR_FILE','f','默认文件变量','0');
INSERT INTO `tp_sys_config` VALUES ('21','6','3','VAR_PAGE','p','默认分页跳转变量','0');
INSERT INTO `tp_sys_config` VALUES ('22','6','3','VAR_LANGUAGE','l','默认语言切换变量','0');
INSERT INTO `tp_sys_config` VALUES ('23','6','3','VAR_TEMPLATE','t','默认模板切换变量','0');
INSERT INTO `tp_sys_config` VALUES ('24','6','3','VAR_AJAX_SUBMIT','ajax','默认的AJAX提交变量','0');
INSERT INTO `tp_sys_config` VALUES ('25','7','3','DEFAULT_MODULE','Index','默认模块名称','0');
INSERT INTO `tp_sys_config` VALUES ('26','7','3','DEFAULT_ACTION','index','默认操作名称','0');
INSERT INTO `tp_sys_config` VALUES ('27','8','1','TMPL_CACHE_ON','true','默认开启模板编译缓存 false 的话每次都重新编译模板','0');
INSERT INTO `tp_sys_config` VALUES ('28','8','2','TMPL_CACHE_TIME','-1','模板缓存有效期 -1 永久 单位为秒','0');
INSERT INTO `tp_sys_config` VALUES ('29','8','1','TMPL_SWITCH_ON','true','启用多模版支持','0');
INSERT INTO `tp_sys_config` VALUES ('30','8','3','DEFAULT_TEMPLATE','default','默认模板名称','0');
INSERT INTO `tp_sys_config` VALUES ('31','8','3','TEMPLATE_SUFFIX','.html','默认模板文件后缀','0');
INSERT INTO `tp_sys_config` VALUES ('32','8','3','CACHFILE_SUFFIX','.php','默认模板缓存后缀','0');
INSERT INTO `tp_sys_config` VALUES ('33','8','3','TEMPLATE_CHARSET','utf-8','模板模板编码','0');
INSERT INTO `tp_sys_config` VALUES ('34','8','3','OUTPUT_CHARSET','utf-8','默认输出编码','0');
INSERT INTO `tp_sys_config` VALUES ('35','9','3','CONTR_CLASS_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('36','9','3','CONTR_CLASS_SUFFIX','Action','','0');
INSERT INTO `tp_sys_config` VALUES ('37','9','3','ACTION_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('38','9','3','ACTION_SUFFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('39','9','3','MODEL_CLASS_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('40','9','3','MODEL_CLASS_SUFFIX','Model','','0');
INSERT INTO `tp_sys_config` VALUES ('41','10','3','HTML_FILE_SUFFIX','.shtml','默认静态文件后缀','0');
INSERT INTO `tp_sys_config` VALUES ('42','10','1','HTML_CACHE_ON','false','默认关闭静态缓存','0');
INSERT INTO `tp_sys_config` VALUES ('43','10','2','HTML_CACHE_TIME','60','静态缓存有效期','0');
INSERT INTO `tp_sys_config` VALUES ('44','10','2','HTML_READ_TYPE','1','静态缓存读取方式 0 readfile 1 redirect','0');
INSERT INTO `tp_sys_config` VALUES ('45','10','3','HTML_URL_SUFFIX','','伪静态后缀设置','0');
INSERT INTO `tp_sys_config` VALUES ('46','11','1','LANG_SWITCH_ON','false','默认关闭多语言包功能','0');
INSERT INTO `tp_sys_config` VALUES ('47','11','3','DEFAULT_LANGUAGE','zh-cn','默认语言','0');
INSERT INTO `tp_sys_config` VALUES ('48','11','3','TIME_ZONE','PRC','默认时区','0');
INSERT INTO `tp_sys_config` VALUES ('49','12','1','USER_AUTH_ON','false','默认不启用用户认证','0');
INSERT INTO `tp_sys_config` VALUES ('50','12','2','USER_AUTH_TYPE','1','默认认证类型 1 登录认证 2 实时认证','0');
INSERT INTO `tp_sys_config` VALUES ('51','12','3','USER_AUTH_KEY','authId','用户认证SESSION标记','0');
INSERT INTO `tp_sys_config` VALUES ('52','12','3','AUTH_PWD_ENCODER','md5','用户认证密码加密方式','0');
INSERT INTO `tp_sys_config` VALUES ('53','12','3','USER_AUTH_PROVIDER','DaoAuthentictionProvider','默认认证委托器','0');
INSERT INTO `tp_sys_config` VALUES ('54','12','3','USER_AUTH_GATEWAY','/Public/login','默认认证网关','0');
INSERT INTO `tp_sys_config` VALUES ('55','12','3','NOT_AUTH_MODULE','Public','默认无需认证模块','0');
INSERT INTO `tp_sys_config` VALUES ('56','12','3','REQUIRE_AUTH_MODULE','','默认需要认证模块','0');
INSERT INTO `tp_sys_config` VALUES ('57','13','3','SESSION_NAME','ThinkID','默认Session_name 如果需要不同项目共享SESSION 可以设置相同','0');
INSERT INTO `tp_sys_config` VALUES ('58','13','3','SESSION_PATH','','采用默认的Session save path','0');
INSERT INTO `tp_sys_config` VALUES ('59','13','3','SESSION_TYPE','File','默认Session类型 支持 DB 和 File ','0');
INSERT INTO `tp_sys_config` VALUES ('60','13','3','SESSION_EXPIRE','300000','默认Session有效期','0');
INSERT INTO `tp_sys_config` VALUES ('61','13','3','SESSION_TABLE','think_session','数据库Session方式表名','0');
INSERT INTO `tp_sys_config` VALUES ('62','13','3','SESSION_CALLBACK','','反序列化对象的回调方法','0');
INSERT INTO `tp_sys_config` VALUES ('63','14','3','DB_CHARSET','utf8','数据库编码默认采用utf8','0');
INSERT INTO `tp_sys_config` VALUES ('64','14','2','DB_DEPLOY_TYPE','0','数据库部署方式 0 集中式（单一服务器） 1 分布式（主从服务器）','0');
INSERT INTO `tp_sys_config` VALUES ('65','14','1','SQL_DEBUG_LOG','false','记录SQL语句到日志文件','0');
INSERT INTO `tp_sys_config` VALUES ('66','14','1','DB_FIELDS_CACHE','true','缓存数据表字段信息','0');
INSERT INTO `tp_sys_config` VALUES ('67','15','2','DATA_CACHE_TIME','-1','数据缓存有效期','0');
INSERT INTO `tp_sys_config` VALUES ('68','15','1','DATA_CACHE_COMPRESS','false','数据缓存是否压缩缓存','0');
INSERT INTO `tp_sys_config` VALUES ('69','15','1','DATA_CACHE_CHECK','false','数据缓存是否校验缓存','0');
INSERT INTO `tp_sys_config` VALUES ('70','15','3','DATA_CACHE_TYPE','File','数据缓存类型 支持 File Db Apc Memcache Shmop Sqlite Xcache Apachenote Eaccelerator','0');
INSERT INTO `tp_sys_config` VALUES ('71','15','1','DATA_CACHE_SUBDIR','false','使用子目录缓存 （自动根据缓存标识的哈希创建子目录）','0');
INSERT INTO `tp_sys_config` VALUES ('72','15','3','DATA_CACHE_TABLE','think_cache','数据缓存表 当使用数据库缓存方式时有效','0');
INSERT INTO `tp_sys_config` VALUES ('73','15','3','CACHE_SERIAL_HEADER','<?php\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n//','文件缓存开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('74','15','3','CACHE_SERIAL_FOOTER','\\\\\\\\\\\\\\\\n?.>','文件缓存结束标记[注意PHP的保留点号要用开]','0');
INSERT INTO `tp_sys_config` VALUES ('75','15','2','SHARE_MEM_SIZE','1048576','共享内存分配大小','0');
INSERT INTO `tp_sys_config` VALUES ('76','16','1','SHOW_RUN_TIME','false','运行时间显示','0');
INSERT INTO `tp_sys_config` VALUES ('77','16','1','SHOW_ADV_TIME','false','显示详细的运行时间','0');
INSERT INTO `tp_sys_config` VALUES ('78','16','1','SHOW_DB_TIMES','false','显示数据库查询和写入次数','0');
INSERT INTO `tp_sys_config` VALUES ('79','16','1','SHOW_CACHE_TIMES','false','显示缓存操作次数','0');
INSERT INTO `tp_sys_config` VALUES ('80','16','1','SHOW_USE_MEM','false','显示内存开销','0');
INSERT INTO `tp_sys_config` VALUES ('81','16','1','SHOW_PAGE_TRACE','false','显示页面Trace信息 由Trace文件定义和Action操作赋值','0');
INSERT INTO `tp_sys_config` VALUES ('82','17','3','TMPL_ENGINE_TYPE','Think','默认模板引擎 以下设置仅对使用Think模板引擎有效','0');
INSERT INTO `tp_sys_config` VALUES ('83','17','3','TMPL_DENY_FUNC_LIST','echo,exit','模板引擎禁用函数','0');
INSERT INTO `tp_sys_config` VALUES ('84','17','3','TMPL_L_DELIM','{','模板引擎普通标签开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('85','17','3','TMPL_R_DELIM','}','模板引擎普通标签结束标记','0');
INSERT INTO `tp_sys_config` VALUES ('86','17','3','TAGLIB_BEGIN','<','标签库标签开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('87','17','3','TAGLIB_END','>','标签库标签结束标记','0');
INSERT INTO `tp_sys_config` VALUES ('88','18','2','COOKIE_EXPIRE','3600','Coodie有效期','0');
INSERT INTO `tp_sys_config` VALUES ('89','18','3','COOKIE_DOMAIN','','Cookie有效域名','0');
INSERT INTO `tp_sys_config` VALUES ('90','18','3','COOKIE_PATH','/','Cookie路径','0');
INSERT INTO `tp_sys_config` VALUES ('91','18','3','COOKIE_PREFIX','','Cookie前缀 避免冲突','0');
INSERT INTO `tp_sys_config` VALUES ('92','19','2','PAGE_NUMBERS','5','分页显示页数','0');
INSERT INTO `tp_sys_config` VALUES ('93','19','2','LIST_NUMBERS','20','分页每页显示记录数','0');
INSERT INTO `tp_sys_config` VALUES ('94','20','3','AJAX_RETURN_TYPE','JSON','AJAX 数据返回格式 JSON XML ...','0');
INSERT INTO `tp_sys_config` VALUES ('95','20','3','DATA_RESULT_TYPE','0','默认数据返回格式 1 对象 0 数组','0');
INSERT INTO `tp_sys_config` VALUES ('96','21','3','AUTO_LOAD_PATH','Think.Util.',' __autoLoad 的路径设置 当前项目的Model和Action类会自动加载，无需设置 注意搜索顺序','0');
INSERT INTO `tp_sys_config` VALUES ('97','21','3','CALLBACK_LOAD_PATH','','反序列化对象时自动加载的路径设置','0');
INSERT INTO `tp_sys_config` VALUES ('98','21','3','UPLOAD_FILE_RULE','uniqid','文件上传命名规则 例如 time uniqid com_create_guid 等 支持自定义函数 仅适用于内置的UploadFile类','0');
INSERT INTO `tp_sys_config` VALUES ('99','21','3','LIKE_MATCH_FIELDS','','数据库查询的时候需要进行模糊匹配的字段','0');
DROP TABLE `tp_sys_configtype`;
CREATE TABLE `tp_sys_configtype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='默认的系统参数';

INSERT INTO `tp_sys_configtype` VALUES ('1','Dispatch设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('2','日志设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('3','插件设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('4','防刷新设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('5','错误设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('6','系统变量设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('7','模块和操作设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('8','模板设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('9','模型设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('10','静态缓存设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('11','语言时区设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('12','用户认证设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('13','SESSION设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('14','数据库设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('15','数据缓存设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('16','运行时间设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('17','模板引擎设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('18','Cookie设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('19','分页设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('20','数据格式设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('21','其它设置','','0');
DROP TABLE `tp_sys_datatype`;
CREATE TABLE `tp_sys_datatype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型';

INSERT INTO `tp_sys_datatype` VALUES ('1','布尔值','111','qqq');
INSERT INTO `tp_sys_datatype` VALUES ('2','数字值','222','www');
INSERT INTO `tp_sys_datatype` VALUES ('3','文本值','333','eee');
DROP TABLE `tp_sys_fields`;
CREATE TABLE `tp_sys_fields` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL COMMENT '所属的表',
  `name` varchar(200) NOT NULL COMMENT '英文',
  `caption` varchar(200) NOT NULL,
  `islist` int(11) default '1' COMMENT '是否列表',
  `fieldtype` int(11) default NULL COMMENT '字属性',
  `fieldlenght` int(11) default NULL COMMENT '字符长度',
  `request` int(11) default NULL COMMENT '必填',
  `validate` int(11) NOT NULL default '1' COMMENT '验证形式',
  `validate_tex` varchar(244) default NULL COMMENT '自定义错误',
  `validate_reg` varchar(244) default NULL COMMENT '自定义正则',
  `viewtype` int(11) default NULL COMMENT '查看类型',
  `isview` smallint(2) NOT NULL default '1' COMMENT '是否列表',
  `edittype` int(11) default NULL COMMENT '编辑类型',
  `isedit` smallint(2) NOT NULL default '1' COMMENT '是否编辑',
  `addtype` int(11) default NULL COMMENT '增加类型',
  `isadd` smallint(2) NOT NULL default '1' COMMENT '是否增加',
  `islistwidth` varchar(40) default NULL COMMENT '列表长度',
  `islistviewtype` int(11) default '1' COMMENT '列表查看类型',
  `iswrap` int(11) default NULL COMMENT '是否排序',
  `indexvar` varchar(240) NOT NULL COMMENT '默认值',
  `autotype` int(11) NOT NULL default '1' COMMENT '自动填充类型',
  `issystem` int(11) default NULL COMMENT '是否系统保留',
  `outkey` varchar(200) default NULL COMMENT '外键索引',
  `outkeyis` int(11) default '0' COMMENT '是否',
  `outkeyid` varchar(20) default NULL COMMENT '外键ID',
  `outkeyf` varchar(200) default NULL COMMENT '外键值',
  `outkeywhere` varchar(240) default NULL COMMENT '外键条件',
  `searchtype` int(11) default NULL COMMENT '搜索形式',
  `advsearchtype` int(11) NOT NULL default '1' COMMENT '高级搜索形式',
  `issearch` int(11) default '0' COMMENT '是否搜索',
  `seqNo` int(11) default NULL,
  `modelid` int(11) default '0' COMMENT '数据模版ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5261 DEFAULT CHARSET=utf8 COMMENT='定义每个点';

INSERT INTO `tp_sys_fields` VALUES ('4923','131','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('556','125','content_en','内容[英文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('555','125','content_cn','内容[中文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('554','125','title_en','标题[英文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('553','125','title_cn','标题[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('552','125','sta_infos_typeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','sta_infos_type','1','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('551','125','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('550','130','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('549','130','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('525','127','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('526','127','langId','发布语言','0','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('527','129','account','用户名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('528','129','nickname','昵称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('529','129','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('530','129','verify','验证码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('531','129','email','email','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('532','129','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('533','129','status','用户状态','1','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('534','130','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('535','130','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('536','130','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('537','130','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('538','130','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('539','130','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('540','130','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('541','130','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('542','130','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('543','130','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('544','130','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('545','130','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('546','130','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('547','130','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('548','130','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('36','1','f_name','姓','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('37','1','l_name','名字','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('38','1','e_name','英文名','1','1','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('682','153','simword','简称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('40','1','sex','姓别','1','5','0','1','3',' 错误提示[不填为默认]  ','','3','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('41','1','langid','人才语言','1','1','0','1','1','','','9','1','4','1','4','1','','1','0','','1','1','lang','0','','','','6','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('217','24','id','[系统]ID号','0','6','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('218','24','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','12','1','10','1','','1','0','','1','2','','0','','','','3','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('219','24','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','12','1','10','1','','1','0','','1','2','','0','','','','3','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('50','1','areaid','现在所在地','1','2','0','1','3','','','6','1','11','1','11','1','','1','0','','1','1','area','0','','','','1','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('49','7','title','标题','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('122','8','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('123','1','nowsalry','现在薪金','1','2','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','123','0');
INSERT INTO `tp_sys_fields` VALUES ('121','8','parea','上级地名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('120','8','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('119','8','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('118','8','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('711','135','logo','行业LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('117','8','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('572','134','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('561','131','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('112','8','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('571','134','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('558','131','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('124','1','hopesalry','期望薪金','1','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','124','0');
INSERT INTO `tp_sys_fields` VALUES ('125','1','nowsalryremark','现在薪金备注','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','125','0');
INSERT INTO `tp_sys_fields` VALUES ('126','1','left_timeid','到岗时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','left_time','0','','','','1','1','0','126','0');
INSERT INTO `tp_sys_fields` VALUES ('684','153','type','分类','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('128','10','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('570','134','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('569','134','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('568','133','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('567','133','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('566','132','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('564','132','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('565','132','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('148','11','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('683','153','level','等级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('140','12','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('238','21','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('239','21','content','内容','0','3','0','0','0','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('560','131','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('559','131','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('145','12','shortkey','快捷键','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('146','12','isnomor','是否常用','1','1','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','2','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('563','132','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('154','13','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('233','23','a_day','获取时间','1','1','0','0','0','','','7','1','12','1','13','1','','1','0','','1','1','','0','','','','1','1','0','233','0');
INSERT INTO `tp_sys_fields` VALUES ('234','23','img','图片','1','4','0','0','0','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','234','0');
INSERT INTO `tp_sys_fields` VALUES ('235','26','title','标题','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('236','20','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('237','20','zhajitypeid','分类','1','2','0','1','0','','','2','1','2','1','2','1','','1','0','','1','1','zhajitype','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('160','14','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('229','25','xiaoshuoshowid','所属小说','0','2','0','1','0','','','2','1','2','1','2','1','','1','0','','1','1','xiaoshuoshow','0','','','','1','1','0','229','0');
INSERT INTO `tp_sys_fields` VALUES ('230','22','title','名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','230','0');
INSERT INTO `tp_sys_fields` VALUES ('231','22','content','内容','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','231','0');
INSERT INTO `tp_sys_fields` VALUES ('232','23','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','232','0');
INSERT INTO `tp_sys_fields` VALUES ('166','15','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('224','19','c_time','创作时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','224','0');
INSERT INTO `tp_sys_fields` VALUES ('225','19','someinfo','小说说明','0','3','0','0','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','225','0');
INSERT INTO `tp_sys_fields` VALUES ('226','19','pub_bis','发行商','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','226','0');
INSERT INTO `tp_sys_fields` VALUES ('227','19','otherinfo','其它信息','0','3','0','0','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','227','0');
INSERT INTO `tp_sys_fields` VALUES ('228','25','title','章节名','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','228','0');
INSERT INTO `tp_sys_fields` VALUES ('172','16','title','电话名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('221','24','viewtime','查看次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','99','0');
INSERT INTO `tp_sys_fields` VALUES ('222','19','title','小说名','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','222','0');
INSERT INTO `tp_sys_fields` VALUES ('223','19','page','小说封面','0','4','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','223','0');
INSERT INTO `tp_sys_fields` VALUES ('177','16','content','说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('681','153','paytypeid','付款方式','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('184','17','cid_from','原发客户ID','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('216','18','u_update','[系统]更新者','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','33','1','2','','0','','','','1','1','0','1003','0');
INSERT INTO `tp_sys_fields` VALUES ('220','24','seqNO','[系统]排序','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('185','17','cid_to','目标客户ID','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('186','17','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('187','17','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('188','17','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('189','17','c2pdesc','人才关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('710','153','systype','系统分类','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('191','2','name_cn','中文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('192','2','name_en','英文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('193','2','sname','简称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('194','2','logo','LOGO','0','1','0','0','1','','','4','1','6','1','7','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('195','2','beijinid','资金背景','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('196','2','addr','地址','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('197','2','website','网址','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('198','2','kuimu','企业规模','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('199','2','shouyu','收入水平','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('200','2','paytype','薪金[税前/税后]','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('201','2','paymoth','年薪月数','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('202','2','payinfo','薪金说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('562','132','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('210','18','id','[系统]ID号','1','6','0','0','1','','','1','1','1','1','1','1','','1','0','','2','2','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('211','18','seqNO','[系统]排序','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1005','0');
INSERT INTO `tp_sys_fields` VALUES ('212','18','create_on','[系统]加入时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','2','2','','0','','','','1','1','0','1000','0');
INSERT INTO `tp_sys_fields` VALUES ('213','18','update_on','[系统]更新时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1001','0');
INSERT INTO `tp_sys_fields` VALUES ('214','18','systemp','[系统]搜索','1','3','0','0','1','','','1','1','1','1','1','1','','1','0','33','1','2','','0','','','','1','1','0','1004','0');
INSERT INTO `tp_sys_fields` VALUES ('215','18','u_add','[系统]输入者','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1002','0');
INSERT INTO `tp_sys_fields` VALUES ('695','154','type','职位','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('697','154','sex','性别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('694','154','dep','部门','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('693','154','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('691','154','emain','E-MAIL','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('692','154','mphone','手机','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('690','154','phone','电话','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('698','154','content','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('699','155','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('713','157','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('680','153','fax','传真','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('679','153','phone','电话','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('678','153','email','E-MAIL','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('677','153','powerman','负责人','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('676','153','area','地区','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('675','153','add','地址','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('573','134','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('574','134','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('575','134','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('576','135','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('577','136','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('578','136','content','内容','1','3','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('579','138','title_cn','客户名称[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('580','138','title_en','客户名称[英文]','0','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('581','138','callingid','客户行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('582','138','logo','客户LOGO','1','1','0','0','1','','','1','1','6','1','6','1','','1','1','','1','2','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('583','138','info_cn','客户说明[中文]','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('584','138','info_en','客户说明[英文]','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('585','135','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('586','137','title','职位名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('587','137','content','职位要求','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('588','137','startday','开始时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('589','137','endday','结束时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('590','137','count','招聘人数','0','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('591','137','jobno','职位编号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('592','136','contacttypeid','留言类型分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','contacttype','1','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('593','139','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('594','139','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('595','129','create_time','创建时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('596','129','update_time','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('598','140','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('599','140','nodeId','所属权限','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('600','140','pId','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('601','140','isleaf','是否主类','0','5','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('602','141','caption','部门名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('603','141','pid','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('604','141','notes','说明','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('605','142','id','[系统]ID号','0','6','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','-1','0');
INSERT INTO `tp_sys_fields` VALUES ('606','142','create_at','[系统]加入时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1000','0');
INSERT INTO `tp_sys_fields` VALUES ('607','142','update_on','[系统]更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1001','0');
INSERT INTO `tp_sys_fields` VALUES ('608','142','seqNo','[系统]排序','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1002','0');
INSERT INTO `tp_sys_fields` VALUES ('609','143','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('610','143','typeid','所属类别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('611','143','unit','单位','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('612','143','keys','快捷键','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('613','143','img','图片','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('614','143','price_min','最小浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('615','143','standard','规格','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('616','141','detzz','部门职责','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('617','141','area','分布地区','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('618','141','Lang','是否主管部门','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('619','144','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('620','144','pid','上级类别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('621','144','unit','默认单位','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('674','153','title','名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('673','153','comid','编号','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('624','144','price_min','最小浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('626','144','caption','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('627','143','price_max','最大浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('628','144','price_max','最大浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('629','143','length','长度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('630','143','width','宽度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('631','143','thickness','厚度/高度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('632','143','quantity','数量','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('633','145','title','标题','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('634','145','compayid','客户','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('635','145','indate','下单时间','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('636','145','roderid','订单号','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('637','145','state','状态','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('638','146','title','标题','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('639','146','orderid','订单ID','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('640','146','content','说明','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('641','146','userid','操作人','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('642','147','account','用户名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('644','147','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('645','147','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('646','147','email','email','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('647','147','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('648','147','status','用户状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('687','154','title','姓名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('712','136','pid','是否回复','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('651','148','groupId','权限组Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('652','148','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('653','148','nodeId','权限节点Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('654','148','parentNodeId','上组节点Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('655','148','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('656','149','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('657','149','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('658','150','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('659','150','pid','上级ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('660','150','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('661','150','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('662','150','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('663','151','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('664','151','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('665','151','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('666','151','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('667','151','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('668','151','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('669','151','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('670','152','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('671','152','values','属性','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('672','152','infos','说明','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('524','127','content','职位内容','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('523','127','jobcode','职位代码','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('522','127','title','职位名称','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('521','128','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('520','126','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('519','124','seqNo','排序','0','2','0','0','3','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('518','124','update_on','更新时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','2','2','','0','','','','1','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('517','124','create_at','加入时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','1','2','','0','','','','1','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('516','124','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('709','156','content','地址&工厂','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('708','156','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('707','155','content','备注','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('714','157','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('729','160','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('725','159','outfiletypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outfiletype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('723','159','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('728','160','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('727','159','files','文件','0','1','0','1','1','','','1','1','6','1','6','1','','1','0','','1','2','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('721','159','content','内容','1','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('726','159','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('730','161','content','内容','0','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('731','161','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('732','161','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('733','161','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('735','138','isvip','是否VIP','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('742','127','finishdate','完成日期','1','1','0','0','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('737','162','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('741','127','isfinish','是否完成','1','1','0','0','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('739','162','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('740','162','files','文件','0','1','0','0','1','','','1','1','6','1','6','1','','1','0','','1','2','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('743','127','jobnote','职位要求','1','4','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('744','127','number','需求人数','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('745','163','content','内容','0','3','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('746','163','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('747','163','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','0','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('748','163','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','0','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('749','163','startdate','开始时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('750','163','enddate','完成时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('751','163','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','0','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('752','159','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('753','140','model','模块名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('754','140','action','操作','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1343','276','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1341','276','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1342','276','email','email','1','1','0','1','2','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1336','275','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1337','275','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1338','276','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1339','276','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1340','276','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1335','275','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1334','275','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1324','275','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1325','275','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1326','275','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1327','275','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1328','275','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1329','275','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1330','275','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1331','275','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1332','275','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1333','275','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1008','0','asdf','sdf','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1344','276','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3444','820','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3398','804','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('3399','804','useradd','[系统]输入者','1','2','0','0','1','','','1','1','1','1','16','1','','1','1','','1','1','','0','','','','6','1','1','10003','0');
INSERT INTO `tp_sys_fields` VALUES ('3400','804','userupdate','[系统]更新者','1','2','0','0','1','','','1','1','1','1','15','1','','1','1','','1','1','','0','','','','6','1','1','10004','0');
INSERT INTO `tp_sys_fields` VALUES ('3401','806','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('3442','818','isnomor','是否常用','1','5','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','2','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3443','819','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3404','806','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3405','806','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('3409','810','f_name','姓','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('3410','810','l_name','名字','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('3411','810','e_name','英文名','1','1','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('3412','810','sex','姓别','1','5','0','1','3',' 错误提示[不填为默认]  ','','3','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('3413','810','langid','人才语言','1','1','0','1','1','','','9','1','4','1','4','1','','1','0','','1','1','lang','0','','','','6','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('3414','810','areaid','现在所在地','1','2','0','1','3','','','6','1','11','1','11','1','','1','0','','1','1','area','0','','','','1','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('3415','810','nowsalry','现在薪金','1','2','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','123','0');
INSERT INTO `tp_sys_fields` VALUES ('3416','810','hopesalry','期望薪金','1','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','124','0');
INSERT INTO `tp_sys_fields` VALUES ('3417','810','nowsalryremark','现在薪金备注','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','125','0');
INSERT INTO `tp_sys_fields` VALUES ('3418','810','left_timeid','到岗时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','left_time','0','','','','1','1','0','126','0');
INSERT INTO `tp_sys_fields` VALUES ('3419','811','name_cn','中文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3420','811','name_en','英文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3421','811','sname','简称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3422','811','logo','LOGO','0','1','0','0','1','','','4','1','6','1','7','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3423','811','beijinid','资金背景','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3424','811','addr','地址','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3425','811','website','网址','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3426','811','kuimu','企业规模','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3427','811','shouyu','收入水平','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3428','811','paytype','薪金[税前/税后]','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3429','811','paymoth','年薪月数','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3430','811','payinfo','薪金说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3431','815','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('3432','815','parea','上级地名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('3433','815','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('3434','815','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('3435','815','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('3436','815','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('3437','815','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('3438','816','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3439','817','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3440','818','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3441','818','shortkey','快捷键','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1323','275','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1322','275','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1321','275','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3451','823','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3449','823','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3450','823','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3446','822','title','电话名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3447','822','content','说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3448','823','cid_from','原发客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1302','271','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1303','271','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1304','271','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1305','271','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1306','271','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1307','271','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1308','271','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1309','272','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1310','272','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1311','272','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1312','272','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1313','272','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1314','273','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1315','273','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1316','274','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1317','274','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1318','274','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1319','274','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1320','274','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3452','823','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3453','823','c2pdesc','人才关系简述','0','2','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1880','393','chengji','成绩','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','14','0');
INSERT INTO `tp_sys_fields` VALUES ('1881','395','title','标题','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1882','396','title','标题','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1883','396','pid','上级项目','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1876','393','strRight_answer','正确答案','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('1877','393','pic','图案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','10','0');
INSERT INTO `tp_sys_fields` VALUES ('1878','393','Hint','提示','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','13','0');
INSERT INTO `tp_sys_fields` VALUES ('1879','393','strYour_answer','个人答案','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','12','0');
INSERT INTO `tp_sys_fields` VALUES ('1875','393','strD','D答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1873','393','strB','B答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1874','393','strC','C答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1872','393','strA','A答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1871','393','strQuestion','问题内容','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1870','393','strType_x','试题类型','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1869','393','strType_s','章节小类','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1866','394','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1868','393','intNumber','标识符号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1867','393','strType_f','章节大类','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1884','394','seq_no','排序','1','2','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','101','0');
INSERT INTO `tp_sys_fields` VALUES ('3445','821','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3396','804','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1891','399','content','内容','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1892','399','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1893','399','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','0','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1894','399','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','0','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1895','399','startdate','开始时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1896','399','enddate','完成时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1897','399','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','0','id','title_cn','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1898','400','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1899','400','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1900','400','files','文件','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1901','401','content','内容','0','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1902','401','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','40%','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1903','401','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1904','401','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1905','402','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1906','402','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1907','403','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1908','403','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1909','403','content','内容','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1910','403','outfiletypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outfiletype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1911','403','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1912','403','files','文件','1','1','0','0','1','','','5','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1913','404','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1914','404','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1915','405','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1916','406','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1917','406','langId','发布语言','0','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1918','406','content','职位内容','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1919','406','jobcode','职位代码','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1920','406','title','职位名称','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1921','406','finishdate','完成日期','1','1','0','0','1','','','8','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1922','406','isfinish','是否完成','1','1','0','0','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1923','406','jobnote','职位要求','1','4','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1924','406','number','需求人数','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1925','407','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1926','407','verify','验证码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1927','407','email','email','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1928','407','account','用户名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1929','407','nickname','昵称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1930','407','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1931','407','status','用户状态','1','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1932','407','create_time','创建时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1933','407','update_time','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1934','408','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1935','408','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1936','408','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1937','408','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1938','408','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1939','409','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1940','409','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1941','409','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1942','409','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1943','409','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1944','409','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1945','409','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1946','409','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1947','409','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1948','409','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1949','409','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1950','409','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1951','409','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1952','409','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1953','409','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1954','409','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1955','409','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1956','410','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1957','410','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1958','411','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1959','411','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1960','411','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1961','411','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1962','411','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1963','411','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1964','411','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1965','412','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1966','412','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1967','412','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1968','412','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1969','412','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1970','413','logo','行业LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1971','413','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1972','413','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1973','414','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1974','414','content','内容','1','3','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1975','414','contacttypeid','留言类型分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','contacttype','1','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1976','414','pid','是否回复','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1977','415','title','职位名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1978','415','content','职位要求','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1979','415','startday','开始时间','1','1','0','1','1','','','7','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1980','415','endday','结束时间','1','1','0','1','1','','','7','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1981','415','count','招聘人数','0','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1982','415','jobno','职位编号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1983','416','info_cn','客户说明[中文]','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1984','416','logo','客户LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1985','416','callingid','客户行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1986','416','title_en','客户名称[英文]','0','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1987','416','title_cn','客户名称[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1988','416','info_en','客户说明[英文]','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1989','416','isvip','是否VIP','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1990','417','Lang','是否主管部门','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1991','417','area','分布地区','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1992','417','caption','部门名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1993','417','pid','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1994','417','notes','说明','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1995','417','detzz','部门职责','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1996','418','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1997','418','nodeId','所属权限','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1998','418','pId','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1999','418','isleaf','是否主类','0','5','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2000','418','model','模块名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2001','418','action','操作','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2002','419','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2003','419','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2004','420','seqNo','排序','0','2','0','0','3','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('2005','420','update_on','更新时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','2','2','','0','','','','1','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('2006','420','create_at','加入时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','1','2','','0','','','','1','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('2007','420','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2008','421','content_cn','内容[中文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2009','421','content_en','内容[英文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2010','421','sta_infos_typeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','sta_infos_type','1','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2011','421','title_en','标题[英文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2012','421','title_cn','标题[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2013','421','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2014','422','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2015','423','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2016','423','content','回答','0','3','0','1','1','','','10','1','9','1','9','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2017','423','pid','分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','faqtype','0','id','title_cn','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2018','424','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2019','424','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3339','794','cal_color','cal_color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3338','794','cal_layeruser','cal_layeruser','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3337','794','personid','personid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3336','794','cal_layerid','cal_layerid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3335','793','local','local','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','sz','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('3334','793','notepad','notepad','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('3333','793','loginstat','loginstat','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('3332','793','loginip','loginip','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('3331','793','gmail_pwd','gmail_pwd','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('3330','793','gmail_user','gmail_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('3329','793','mail_pwd','mail_pwd','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('3328','793','mail_user','mail_user','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('3327','793','cal_is_admin','cal_is_admin','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','N','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3326','793','cal_firstname','cal_firstname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3325','793','cal_lastname','cal_lastname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3324','793','b_date','éúè?','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3323','793','userlever','ó??§??±e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3322','793','add','ó??§μ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3321','793','msn_pwd','msn_pwd','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3320','793','msn_user','msn_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3319','793','mail_personal','ó??§óê?t','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3318','793','per_id','é???ó??§','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3317','793','phone_mob','μ??°','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3316','793','phone_com','μ??°','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3315','793','out_name','out_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3314','793','ison','ison','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3313','793','password','?ü??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3312','793','personid','ó??§??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3311','793','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3310','792','view_type','view_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3309','792','tartget','tartget','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3308','792','BAS_ID_PRE','BAS_ID_PRE','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3307','792','BAS_LINK','BAS_LINK','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3306','792','BAS_ORDER','BAS_ORDER','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3305','792','BAS_TYPE','BAS_TYPE','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3304','792','BAS_NAME','BAS_NAME','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3303','792','BAS_ID','BAS_ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3302','791','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3301','791','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3300','791','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3299','790','tagtype','tagtype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3298','790','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3297','790','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3296','790','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3295','789','tagtype','tagtype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3294','789','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3293','789','tagallvalue','tagallvalue','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3292','789','sysid','sysid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3291','789','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3290','788','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3289','788','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3288','788','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3287','788','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3286','788','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3285','788','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3284','788','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3283','787','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3282','787','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3281','787','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3280','787','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3279','787','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3278','787','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3277','787','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3276','786','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3275','786','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3274','786','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3273','785','u_level','2é?′è¨?T','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3272','785','msg_info','???tààDí','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3271','785','up_time','?üD?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3270','785','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3269','785','input_uid','ê?è?è??±','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3268','785','msg_name','???t??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3267','785','sys_msg_typeid','D??￠μ?ààDí','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3266','785','id','D??￠ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3265','784','msg_subject','msg_subject','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3264','784','msg_title','???t±êìa','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3263','784','msg_into','?òòa?μ?÷','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3262','784','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3261','783','file_title','???t±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3260','783','file_into','?òòa?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3259','783','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3258','782','sendstyle','sendstyle','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3257','782','lan','lan','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3256','782','con_type','con_type','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3255','782','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3254','782','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3253','782','mailtxt_other','mailtxt_other','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3252','782','mailtext','mailtext','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3251','782','mailfile_other','mailfile_other','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3250','782','mailfile','mailfile','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3249','782','mailto','mailto','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3248','782','mailfrom','mailfrom','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3247','782','subject','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3246','782','iid','iid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3245','782','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3244','782','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3243','782','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3242','782','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3241','781','logtype','logtype','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3240','781','time','time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3239','781','userip','userip','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3238','781','userid','userid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3237','781','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3236','780','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3235','780','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3234','780','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3233','780','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3232','780','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3231','780','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3230','779','view_type','人才还是企业','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3229','779','uid','所属人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3228','779','BAS_ID_PRE','上级ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3227','779','out_id','本身外键ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3226','779','BAS_ORDER','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3225','779','BAS_TYPE','标签或文件','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3224','779','BAS_NAME','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3223','779','BAS_ID','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3222','778','file_title','???t±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3221','778','file_size','???t′óD?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3220','778','file_db','???t?t??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3219','778','up_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3218','778','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3217','778','input_uid','ê?è?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3216','778','file_into','?òòa?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3215','778','sys_file_typeid','???tμ?ààDí','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3214','778','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3213','777','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3212','777','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3211','777','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3210','776','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3209','776','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3208','776','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3207','775','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3206','775','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3205','775','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3204','774','uid','??ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3203','774','add_time','加入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3202','774','web_url','地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3201','774','web_about','说明','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3200','774','web_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3199','774','webtype_id','网址类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3198','774','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3197','773','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3196','773','title','?￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3195','773','id','?￡à?ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3194','772','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3193','772','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3192','772','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3191','771','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3190','771','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3189','771','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3188','770','e_time','e_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3187','770','s_time','s_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3186','770','type','type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3185','770','info','info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3184','770','user','user','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3183','770','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3182','769','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3181','769','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3180','769','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3179','768','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3178','768','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3177','768','id','ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3176','767','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3175','767','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3174','767','shortkey','shortkey','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3173','767','tmp_name','tmp_name','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3172','767','pname','pname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3171','767','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3170','767','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3169','767','p_id2','p_id2','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3168','766','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3167','766','title','?°??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3166','766','pid','?°??ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3165','765','content','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3164','765','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3163','765','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3162','765','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3161','765','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3160','765','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3159','764','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3158','764','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3157','764','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3156','763','uid','ó??§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3155','763','title','?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3154','763','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3153','762','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3152','762','title','?D?3','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3151','762','id','?D?3ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3150','761','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3149','761','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3148','761','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3147','760','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3146','760','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3145','760','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3144','759','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3143','759','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3142','759','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3141','758','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3140','758','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3139','758','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3138','757','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3137','757','title','??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3136','757','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3135','756','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3134','756','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3133','756','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3132','755','content','文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3131','755','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3130','755','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3129','755','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3128','755','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3127','755','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3126','754','file_name','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3125','754','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3124','754','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3123','754','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3122','754','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3121','754','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3120','754','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3119','753','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3118','753','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3117','753','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3116','752','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3115','752','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3114','752','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3113','751','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3112','751','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3111','751','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3110','750','rid','rid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3109','750','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3108','750','c_type','áa?μ·?ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3107','750','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3106','750','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3105','750','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3104','750','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3103','750','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3102','750','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3101','749','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','未命名','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3100','749','color','color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3099','749','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3098','748','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3097','748','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3096','748','shortkey','shortkey','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3095','748','title','DDòμ??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3094','748','ca_id','DDòμID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3093','747','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3092','747','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3091','747','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3090','746','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3089','746','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3088','746','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3087','745','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3086','745','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3085','745','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3084','744','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3083','744','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3082','744','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3081','743','parea','parea','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3080','743','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3079','743','title','μ?????×?′óàà','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3078','743','a_id','μ???′óààID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3077','743','a_id2','μ???D?ààID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3076','742','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3075','742','title','μ?????×?′óàà','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3074','742','a_id','μ???ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3073','741','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3072','741','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3071','741','id','ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3070','740','remark','remark','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('3069','740','is_finish','is_finish','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('3068','740','style','style','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3067','740','doc_all','doc_all','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3066','740','doc_en','doc_en','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3065','740','doc_cn','doc_cn','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3064','740','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3063','740','plan_interview_date','????ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3062','740','whynot','????ê??-òò','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3061','740','is_interview','ê?·???ê?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3060','740','oid','??μ￥o?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3059','740','maneger','1üàí??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3058','740','result','result','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3057','740','com_word','1????à??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3056','740','per_word','ó??§?à??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3055','740','u_id_contact','u_id_contact','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3054','740','companyid','1?????','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3053','740','personid','ó??§??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3052','740','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3051','739','neededit','neededit','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3050','739','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3049','739','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3048','739','department','department','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3047','739','out_reson','out_reson','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3046','739','expir_en','expir_en','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3045','739','expir_cn','expir_cn','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3044','739','post2','post2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3043','739','post1','post1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3042','739','viewmen','viewmen','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3041','739','end_date','end_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3040','739','start_date','start_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3039','739','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3038','739','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3037','739','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3036','738','remark','remark','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3035','738','add_time','add_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3034','738','true_date','true_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3033','738','plan_date','plan_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3032','738','whynot','whynot','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3031','738','is_interview','is_interview','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3030','738','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3029','738','maneger','maneger','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3028','738','result','result','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3027','738','introview_info','introview_info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3026','738','com_word','com_word','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3025','738','per_word','per_word','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3024','738','u_id_contact','u_id_contact','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3023','738','rid','rid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3022','738','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3021','738','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3020','738','iid','iid','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3019','737','m_value','m_value','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3018','737','m_table','m_table','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3017','737','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3016','736','pid','个人分类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3015','736','style','状态','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3014','736','direct','方向in/out','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3013','736','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3012','736','isread','isread','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3011','736','size','size','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3010','736','form_time','邮件的真实时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3009','736','cc_user','cc_user','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3008','736','to_user','to_user','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3007','736','form_user','form_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3006','736','content','content','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3005','736','subject','subject','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3004','736','mailid','mailid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3003','736','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3002','735','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3001','735','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3000','735','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2999','735','pid','上层目录','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2998','735','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2997','734','inportant','重要程度[123]','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2996','734','style','状态[是否存在]','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2995','734','direct','方向in/out','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2994','734','filetype','filetype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2993','734','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2992','734','addtime','addtime','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2991','734','size','size','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2990','734','filename','filename','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2989','734','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2988','734','mailid','mailid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2987','734','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2986','733','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2985','733','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2984','733','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2983','732','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2982','732','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2981','732','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2980','732','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2979','732','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2978','731','iscc','发送或抄送','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2977','731','isread','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2976','731','readtime','查看时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2975','731','tid','收信人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2974','731','uid','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2973','731','msgid','所属信息ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2972','731','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2971','730','pid','上一级信息','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2970','730','mtype','信息类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2969','730','bid_all','抄送','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2968','730','tid_all','所有收信人','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2967','730','senttime','发信时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2966','730','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2965','730','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2964','730','uid','发信人ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2963','730','id','站内信息ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2962','729','ative','是否活动','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2961','729','adremark','广告备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2960','729','needad','是否需要广告','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2959','729','needhelp','是否需要协作','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2958','729','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2957','729','slary','薪金','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2956','729','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2955','729','order_type','订单类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2954','729','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2953','729','time_finsh','完成时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2952','729','uid','跟进人','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2951','729','finish_style','完成情况','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2950','729','o_style','订单状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2949','729','order_info','订单内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2948','729','doc_order','doc_order','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2947','729','order_file','订单原件','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2946','729','date_o','订单日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2945','729','time_add','输入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2944','729','u_add','输入人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2943','729','per_no','需要人才数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2942','729','post2','职位小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2941','729','post1','职位大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2940','729','post_info','职位内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2939','729','post_name','职位名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2938','729','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2937','729','oid','订单ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2936','729','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2935','728','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2934','728','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2933','728','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2932','728','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2931','728','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2930','727','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2929','727','count','count','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2928','727','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2927','727','parea','parea','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2926','727','areashort','areashort','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2925','727','areacode','areacode','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2924','727','areaphone','areaphone','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2923','727','areapy','areapy','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2922','727','areaname','areaname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2921','727','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2920','726','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2919','726','color','color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2918','726','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2917','725','color','个人着色','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2916','725','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2915','725','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2914','725','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2913','724','isontype','有效周期','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','once','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2912','724','content','详细','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2911','724','title','名字','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2910','724','sys_id','绑定的ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2909','724','sys_type','系统类型C客户,P人才,J订单','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','C','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2908','724','cal_notetime','时间差','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2907','724','cal_notetype','提醒周期','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2906','724','cal_time_end','CAL时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2905','724','cal_time_start','CAL时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2904','724','cal_date','CAL日期','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2903','724','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2902','724','perid','个人分类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2901','724','typeid','系统分类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2900','724','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2899','723','userlevels','userlevels','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2898','723','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2897','723','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2896','723','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2895','723','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2894','722','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2893','722','isrep','isrep','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2892','722','uptime','uptime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2891','722','addtime','addtime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2890','722','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2889','722','content','content','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2888','722','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2887','722','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2886','722','typeid','typeid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2885','722','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2884','721','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2883','721','c_type','áa?μ·?ê?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2882','721','o_type','o_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2881','721','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2880','721','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2879','721','title','áa?μ?μ?÷','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2878','721','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2877','721','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2876','720','isreject','isreject','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2875','720','age','áa?μ·?ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2874','720','remark','ê?è?è?','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2873','720','infor','è?2?ID','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2872','720','title','?í?§ID','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2871','720','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2870','719','n_name','n_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','60','0');
INSERT INTO `tp_sys_fields` VALUES ('2869','719','modstyle','modstyle','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','59','0');
INSERT INTO `tp_sys_fields` VALUES ('2868','719','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','58','0');
INSERT INTO `tp_sys_fields` VALUES ('2867','719','viewtime','2é?′êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','57','0');
INSERT INTO `tp_sys_fields` VALUES ('2866','719','u_update','?üD?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','56','0');
INSERT INTO `tp_sys_fields` VALUES ('2865','719','input_uid','ê?è?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','55','0');
INSERT INTO `tp_sys_fields` VALUES ('2864','719','is_hr','ê?·?HR','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','54','0');
INSERT INTO `tp_sys_fields` VALUES ('2863','719','important','important','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','53','0');
INSERT INTO `tp_sys_fields` VALUES ('2862','719','sou_id','D??￠à′?′','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','52','0');
INSERT INTO `tp_sys_fields` VALUES ('2861','719','o_intor','??è??òàú?-±?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','51','0');
INSERT INTO `tp_sys_fields` VALUES ('2860','719','o_files','?-ê???μμ','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('2859','719','remark','±?×￠','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('2858','719','is_rec','ê?·?3é1|í???','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('2857','719','pic','????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('2856','719','up_time','?üD?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','46','0');
INSERT INTO `tp_sys_fields` VALUES ('2855','719','add_time','ê?è?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','45','0');
INSERT INTO `tp_sys_fields` VALUES ('2854','719','im_skpy','skpy','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','44','0');
INSERT INTO `tp_sys_fields` VALUES ('2853','719','im_poco','poco','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','43','0');
INSERT INTO `tp_sys_fields` VALUES ('2852','719','im_msn','msn','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('2851','719','im_qq','qq','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('2850','719','card_id','éí·Y?¤','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('2849','719','suit','ì?3¤','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('2848','719','trip_job','1¤×÷?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('2847','719','trip_tra','?à?μ?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('2846','719','trip_edu','?ìóy?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('2845','719','experience','1¤×÷?-?é','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('2844','719','is_out','ê?·?óDo￡ía?-?é','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('2843','719','a_time','μ??úê±??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('2842','719','h_stipend_id','?úí??￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('2841','719','h_yom','h_yom','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('2840','719','h_stipend','?úí?D??e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('2839','719','h_P_moth','?úí??êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('2838','719','n_stipend_id','???°?￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('2837','719','P_moth','?êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('2836','719','n_yom','n_yom','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2835','719','n_stipend','???°D??e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2834','719','mail_id','áa?μóê?t','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2833','719','phone_id','áa?μμ??°','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2832','719','c_addr','áa?μμ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2831','719','h_addr2','?￡í?1¤×÷3?êD','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2830','719','h_addr1','?￡í?1¤×÷μ???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2829','719','n_addr2','??1¤×÷μ?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2828','719','n_addr1','??1¤×÷ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2827','719','area2','??1á','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2826','719','area1','ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2825','719','h_post_sub','ê¤è?/??±ê?°??D?àà','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2824','719','h_post','ê¤è?/??±ê?°??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2823','719','post_sub','???ú?°??D?àà','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2822','719','post','???ú?°??′óàà','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2821','719','n_call_info','n_call_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2820','719','h_calling','?￡í?DDòμ','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2819','719','sub_country_id','sub_country_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2818','719','sub_lang_id','sub_lang_id','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2817','719','n_calling','?ù?úDDòμ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2816','719','cid','?ù?ú1???','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2815','719','sex','D?±e','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2814','719','b_day','?êá?','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2813','719','name_en','ó￠????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2812','719','title','D???','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2811','719','uid','è?2?±ào?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2810','719','uid','???ú±ào?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2809','718','com_type','com_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('2808','718','modstyle','modstyle','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('2807','718','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('2806','718','doc_detail','doc_detail','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('2805','718','doc_sim','doc_sim','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('2804','718','o_files','o_files','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('2803','718','doc_cn','doc_cn','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('2802','718','pid','??è?áa?μè?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('2801','718','important','??òa3ì?è','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('2800','718','viewtime','2é?′′?êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('2799','718','c_id_pre','×ü1???/é???μ￥??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('2798','718','sou_id','D??￠à′?′','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('2797','718','zipcode','óê±à','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('2796','718','phone2','áa?μμ??°2','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('2795','718','phone1','áa?μμ??°','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('2794','718','n_calling','?ù?úDDòμ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('2793','718','add_time','ê?è?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2792','718','up_time','?üD?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2791','718','u_mg','1üàí?±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2790','718','u_add','?ú???±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2789','718','remark','±?×￠','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2788','718','yewu','1???òμ??','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2787','718','kuimu','1???1??￡','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2786','718','shouyu','?êê?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2785','718','c_hr','o?×÷á?í·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2784','718','c_constam','?÷òa?í?§','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2783','718','o_company','??ê?1???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2782','718','p_moth_info','p_moth_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2781','718','p_moth','?êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2780','718','p_mony','1¤×ê(?°?°/?°oó)','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2779','718','path_info','path_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2778','718','path','?úó??D??í???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2777','718','is_act','ê?·?′úàí','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2776','718','is_or','ê?·?????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2775','718','website','í??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2774','718','addr','?í?§μ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2773','718','beijin','×ê?e±3?°','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2772','718','logo','logo','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2771','718','sname','?ò3?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2770','718','name_en','?í?§1?????ó￠??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2769','718','name_cn','?í?§1??????D??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2768','718','c_o_id','??íaμ??í?§o?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2767','718','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2766','717','c2pdesc','人才关系简述','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2765','717','c2ptype','对人才关系','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2764','717','c2cdesc','客户间简述','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2763','717','c2ctype','客户间合作还是竞争','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2762','717','cid2','cid2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2761','717','cid1','cid1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2760','717','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2759','716','oid','职位ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2758','716','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2757','716','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3340','794','cal_dups','cal_dups','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','N','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3341','795','personid','personid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3342','795','cal_setting','cal_setting','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3343','795','cal_value','cal_value','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3344','796','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3345','796','tablename','tablename','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3346','796','tableinfo','tableinfo','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3347','796','helpdetail','helpdetail','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3348','797','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3349','797','uid','发出者','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3350','797','addtime','加入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3351','797','startdate','开始时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3352','797','enddate','结束时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3353','797','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3354','797','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3355','797','ison','是否有效','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3356','798','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3357','798','uid','发出者','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3358','798','tid','对方','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3359','798','startdate','开始时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3360','798','enddate','结束时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3361','798','is_finish','对方确认完成','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3362','798','finish_time','完成时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3363','798','sureinfo','证明信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3364','798','gid','gid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3365','799','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3366','799','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3367','799','tid','tid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3368','799','words','words','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3369','799','addtime','addtime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3370','799','taskid','taskid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3371','799','f_percent','进度百分比','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3372','800','userlevelid','userlevelid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3373','800','tablename','tablename','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3374','800','permission','permission','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3375','801','userlevelid','userlevelid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3376','801','userlevelname','userlevelname','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3377','802','cat_id','cat_id','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3378','802','cat_owner','cat_owner','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3379','802','cat_name','cat_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3380','803','cal_id','cal_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3381','803','cal_group_id','cal_group_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3382','803','cal_ext_for_id','cal_ext_for_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3383','803','cal_create_by','cal_create_by','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3384','803','cal_date','cal_date','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3385','803','cal_time','cal_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3386','803','cal_mod_date','cal_mod_date','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3387','803','cal_mod_time','cal_mod_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3388','803','cal_duration','cal_duration','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3389','803','cal_priority','cal_priority','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','2','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3390','803','cal_type','cal_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','E','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3391','803','cal_access','cal_access','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','P','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3392','803','cal_name','cal_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3393','803','cal_description','cal_description','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3397','804','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('3394','276','lastlogintime','上次登陆时间','1','2','0','0','1','','','8','1','17','0','17','0','','1','1','','1','1','','0','','','','3','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3395','276','lastloginip','上次登陆IP','1','1','0','0','1','','','1','1','16','0','12','0','','1','1','','1','1','','0','','','','1','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3454','809','userid','用户ID','1','2','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3455','809','copytext','拷贝数据','1','3','0','0','1','','','1','1','16','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3456','808','userid','用户ID','1','2','0','0','1','','','2','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3457','808','userip','登陆IP','1','1','0','0','1','','','1','1','12','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4715','999','file_into','简介','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4714','999','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4694','997','linkvar','链接地址','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4695','997','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4696','997','ison','是否有效','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4697','998','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4698','998','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4699','998','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4700','998','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4701','998','iid','面试ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4702','998','subject','主题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4703','998','mailfrom','发送人地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4704','998','mailto','收件人地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4705','998','mailfile','外发文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4706','998','mailfile_other','其它文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4707','998','mailtext','邮件内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4708','998','mailtxt_other','邮件其它信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4710','998','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4711','998','con_type','联系类型','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4712','998','lang','语言','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4713','998','sendstyle','发送状态','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4587','971','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4592','972','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4597','973','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4600','974','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4609','977','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4619','980','title','电话','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4632','983','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4255','941','sub_lang_id','掌握语言','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4252','941','sex','姓别','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4251','941','b_day','生日','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4250','941','name_en','英文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4249','941','name_cn','中文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4248','941','uid','人才编号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4247','941','uid','人才ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4246','940','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('4245','940','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('4244','940','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('4243','940','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('4242','940','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('4241','940','parea','上级地名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('4240','940','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('4238','939','important','客户级别 ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4237','939','viewtime','查看次数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4235','939','sou_id','信息来源','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4234','939','zipcode','邮政编码','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4868','1024','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4869','1024','cid_from','原来客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4231','939','n_calling','所属行业','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4226','939','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4225','939','yewu','公司业务','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4224','939','kuimu','公司规模','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4223','939','shouyu','年收入','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4874','1025','level','对手级别','1','2','0','0','0','','','2','1','2','1','2','1','','0','1','2','1','0','Array','1','1,2,3,4','很差不成气候,一般业绩还可以,特定行业很强,整体很强','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4873','1024','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4878','1025','calling','专长行业','0','2','0','1','0','','','2','1','4','1','4','1','','0','1','','1','0','sub_calling','1','id','title','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4219','939','p_moth_info','年薪月数备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4218','939','p_moth','年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4217','939','p_mony','工资类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4216','939','path_info','招聘途径备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4215','939','path','招聘方式','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4693','997','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4692','997','uid','员工号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4691','997','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4690','996','view_type','人才还是企业','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4689','996','uid','所属人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4686','996','BAS_ORDER','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4687','996','out_id','本身外键ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4688','996','BAS_ID_PRE','上级ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4212','939','website','网址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4211','939','addr','客户地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4209','939','logo','客户LOGO','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4210','939','beijin','客户背景','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4208','939','sname','简称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4207','939','name_en','客户英文名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4206','939','name_cn','客户中文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4204','939','cid','客户ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4685','996','BAS_TYPE','标签或文件','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4684','996','BAS_NAME','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4683','996','BAS_ID','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4682','995','file_title','文件标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4680','995','file_path','文件路径','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4676','995','file_into','文件说明','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4672','994','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4671','994','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4667','992','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4666','992','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4665','992','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4663','991','add_time','加入时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4662','991','web_url','地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4660','991','web_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4657','990','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4656','990','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4655','990','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4654','989','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4653','989','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4652','989','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4648','987','end_date','结束日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4647','987','start_date','开始日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4646','987','typeid','应用类型','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4642','986','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4641','986','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4640','986','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4638','985','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4854','987','start_time','开始时间','0','19','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4131','921','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4673','994','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4674','995','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4675','995','sys_file_typeid','系统公布类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4637','985','id','ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4636','984','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4635','984','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4634','984','pid','职位大类id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4633','984','p_id2','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4631','983','title','职位标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4630','983','pid','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4629','982','content','职位说明','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4626','982','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4625','982','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4624','982','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4623','981','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4622','981','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4621','981','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4620','980','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4618','980','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4617','979','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4616','979','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4615','979','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4614','978','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4613','978','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4612','978','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4611','977','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4610','977','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4608','976','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4607','976','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4606','976','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4605','975','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4604','975','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4568','967','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4569','967','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4571','967','uid','输入人员','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4572','967','c_type','类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4603','975','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4602','974','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4601','974','title','E-mail','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4599','973','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4598','973','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4596','972','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4593','972','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4591','972','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4590','971','file_name','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4586','971','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4585','971','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4584','971','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4556','963','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4577','968','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4576','968','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4575','968','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4574','967','rid','推出ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4573','967','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4567','967','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4566','967','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4565','966','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4564','966','title','名称','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4563','966','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4557','964','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4558','964','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4559','964','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4560','965','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4561','965','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4562','965','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4555','963','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4527','958','com_word','客户反馈信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4524','958','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4525','958','u_id_contact','联系人ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4554','963','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4553','962','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4552','962','title','名称','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4551','962','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4913','1028','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4912','1028','phonetype','邮件类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4911','1028','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4910','1028','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4909','1028','title','E-MAIL','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4866','982','ison','是否有效','1','5','0','0','1','','','0','1','3','1','0','1','','1','1','','0','1','','0','','','','7','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4540','958','remark','备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4539','958','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4538','958','style','状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4537','958','doc_all','全部简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4536','958','doc_en','英文简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4535','958','doc_cn','中文简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4533','958','plan_interview_date','计划时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4532','958','whynot','没去原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4531','958','is_interview','是否去面试','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4530','958','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4529','958','maneger','1üàí??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4528','958','result','结果','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4526','958','per_word','人才反馈信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4523','958','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4522','958','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4518','956','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4517','956','notetype','notetype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4516','956','end_time','end_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4515','956','add_time','add_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4514','956','input_uid','input_uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4513','956','msg_title','msg_title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4512','956','per_msg_typeid','per_msg_typeid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4511','956','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4507','955','department','所在部门','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4506','955','out_reson','离开原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4505','955','expir_en','英文介绍','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4504','955','expir_cn','中文介绍','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4503','955','post2','职位小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4502','955','post1','职位大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4501','955','viewmen','证明人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4500','955','end_date','结束时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4499','955','start_date','开始时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4498','955','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4497','955','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4496','955','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4495','954','remark','备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4493','954','true_date','实际面试时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4492','954','plan_date','计划面试时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4491','954','whynot','不去面试原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4490','954','is_interview','是否去了面试','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4489','954','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4488','954','maneger','maneger','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4487','954','result','面试结果','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4486','954','introview_info','introview_info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4485','954','com_word','企业反馈','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4484','954','per_word','人才反馈','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4483','954','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4482','954','rid','推荐ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4481','954','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4480','954','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4479','954','iid','面试ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4473','952','ative','是否活动职位','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('4472','952','adremark','广告信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('4471','952','needad','是否需要外发广告','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('4470','952','needhelp','是否需要协助','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4469','952','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4468','952','slary','职位薪金','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4467','952','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4466','952','order_type','订单类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4465','952','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4464','952','time_finsh','完成时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4858','940','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4462','952','finish_style','完成程度','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4461','952','o_style','订单状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4460','952','order_info','订单信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4459','952','doc_order','doc_order','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4458','952','order_file','订单原件','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4457','952','date_o','下单日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4454','952','per_no','per_no','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4453','952','post2','职位分类2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4452','952','post1','职位分类1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4451','952','post_info','职位信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4450','952','post_name','职位名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4449','952','cid','企业ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4448','952','oid','订单号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4447','952','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4446','951','eqsNo','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4445','951','pid','上级部门ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4444','951','title','部门名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4443','951','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4442','951','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4441','950','pages','BUG发生页面','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4440','950','result','处理结果','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4439','950','isok','是否处理','1','1','0','0','0','','','1','1','1','0','1','0','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4438','950','content','内容描述','1','3','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4435','950','title','标题','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4434','950','typeid','BUG类型','1','2','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4432','949','oid','订单号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4431','949','c_type','类型2','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4430','949','o_type','类型1','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4427','949','title','说明','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4426','949','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4425','949','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4324','945','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4323','945','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4322','945','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4272','941','n_stipend','现在薪金','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('4917','1029','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4918','1029','imtype','类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4269','941','c_addr','现在地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('4268','941','h_addr2','期望工作市','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4267','941','h_addr1','期望工作省','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4266','941','n_addr2','籍贯市','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4265','941','n_addr1','籍贯省','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4264','941','area2','地区小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4263','941','area1','地区大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4262','941','h_post_sub','期望职位小类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4261','941','h_post','期望职位大类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4914','955','area','工作所在地','1','2','0','1','1','','','1','1','1','1','0','1','','1','0','','0','1','','0','','','','1','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4919','1029','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4257','941','h_calling','希望行业','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4256','941','sub_country_id','国籍','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4104','914','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4103','914','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4102','914','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4731','1002','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4727','1001','msg_info','信息内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4728','1001','u_level','查看权限','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4729','1002','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4730','1002','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4723','1001','msg_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4717','1000','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4716','999','file_path','文件路径','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4305','942','id','ID号','1','6','0','0','0','','','0','0','16','0','16','0','','1','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4304','941','n_name','昵称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4303','941','viewtime','查看次数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','55','0');
INSERT INTO `tp_sys_fields` VALUES ('4300','941','is_hr','是否HR','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','54','0');
INSERT INTO `tp_sys_fields` VALUES ('4299','941','important','人才级别','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','53','0');
INSERT INTO `tp_sys_fields` VALUES ('4298','941','sou_id','信息来源','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','52','0');
INSERT INTO `tp_sys_fields` VALUES ('4915','1029','title','内容','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4916','1029','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4295','941','remark','备注','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('4294','941','is_rec','成功推荐','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('4293','941','pic','个人图片','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('4285','941','suit','技能','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('4284','941','trip_job','工作经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('4283','941','trip_tra','培训经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('4282','941','trip_edu','教育经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('4281','941','experience','工作经验（年）','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('4280','941','is_out','海外经验','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('4279','941','a_time','到岗时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('4278','941','h_yom','期望薪金计量方式','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('4277','941','h_stipend','期望薪金','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('4273','941','n_yom','薪金计量方式','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('4274','941','p_moth','目前年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('4275','941','n_stipend_id','人才语言','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('4276','941','h_p_moth','期望年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('4722','1001','sys_msg_typeid','信息类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4865','982','department_id','所属部门','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4664','991','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4661','991','web_about','说明','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4659','991','webtype_id','网址类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4658','991','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4645','987','infos','相关信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4644','987','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4643','987','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4639','985','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4132','921','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4133','921','email','email','1','1','0','1','2','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4134','921','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4135','921','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4136','921','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4137','921','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4138','921','lastlogintime','上次登陆时间','1','2','0','0','1','','','8','1','17','0','17','0','','1','1','','1','1','','0','','','','3','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4139','921','lastloginip','上次登陆IP','1','1','0','0','1','','','1','1','16','0','12','0','','1','1','','1','1','','0','','','','1','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4140','922','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4141','922','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4142','922','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4143','922','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4144','922','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4145','923','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4146','923','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4147','923','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4148','923','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4149','923','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4150','923','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4151','923','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4152','923','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4153','923','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4154','923','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4155','923','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4156','923','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4157','923','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4158','923','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4159','923','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4286','941','card_id','身份证号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('4161','923','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4162','924','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4163','924','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4164','925','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4165','925','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4166','925','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4167','925','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4168','925','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4169','925','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4170','925','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4171','926','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4172','926','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4173','926','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4174','926','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4175','926','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4721','1001','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4720','1000','msg_subject','邮件主题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4719','1000','msg_title','类别标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4718','1000','msg_into','邮件内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4320','944','url','COPY地址','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4318','944','copyvar','COPY内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4317','944','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4314','943','cid_from','原来客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4190','935','up_time','更新时间','0','2','0','0','1','','','8','1','10','0','10','0','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4191','935','uid_add','输入人员','0','2','0','0','1','','','1','1','1','0','16','0','','1','1','','1','1','','0','','','','6','1','1','10003','0');
INSERT INTO `tp_sys_fields` VALUES ('4192','935','uid_up','更新人员','0','2','0','0','1','','','1','1','1','0','16','0','','1','1','','1','1','','0','','','','6','1','1','10004','0');
INSERT INTO `tp_sys_fields` VALUES ('4194','935','add_time','加入时间','0','2','0','0','1','','','8','1','10','0','10','0','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4313','943','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4312','943','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4311','943','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4310','942','isreject','是否联系','1','2','0','0','0','','','2','1','3','1','3','1','','1','1','1','1','0','Array','1','1,0','是,否','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4309','942','ages','年龄','1','2','0','0','3','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4308','942','remark','备注','0','3','0','0','0','','','1','1','8','1','8','1','','1','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4307','942','infos','简历','1','3','0','0','0','','','1','1','8','1','8','1','','1','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4306','942','title','姓名','1','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4739','1004','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4740','1004','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4741','1004','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4742','1004','page','页面','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4743','1004','linkvar','搜索条件','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4744','1004','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4745','1004','ison','有效','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4746','1005','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4747','1005','sysid','系统内部ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4748','1005','tagallvalue','标签内容','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4749','1005','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4750','1005','systagtype','系统标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4751','1006','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4752','1006','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4753','1006','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4754','1006','tagtype','标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4755','1007','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4756','1007','title','标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4757','1007','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4766','1009','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4769','1009','out_name','对外职位','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4770','1009','phone_com','分机号','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4771','1009','phone_mob','手机号','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4772','1009','per_id','上级领导','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4773','1009','mail_personal','邮件职位','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4774','1009','msn_user','MSN名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4775','1009','msn_pwd','MSN密码','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4776','1009','add','家庭地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4778','1009','b_date','生日','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4782','1009','mail_user','NS邮件用户','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4783','1009','mail_pwd','NS邮件密码','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4784','1009','gmail_user','gmail邮件用户','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4785','1009','gmail_pwd','gmail邮件密码','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4786','1009','loginip','上次登陆IP','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4787','1009','loginstat','登陆状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4788','1009','notepad','缓存内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4789','1009','ischeck','是否监督','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4855','987','end_time','结束时间','0','19','0','0','1','','','1','1','1','1','0','1','','1','1','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4856','950','id','ID号','0','6','0','0','1','','','1','1','8','0','0','1','','1','0','','4','0','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4857','943','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4871','1024','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4867','1024','c2pdesc','人才关系简述','0','2','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4879','1025','remark','备注','0','3','0','0','0','','','1','1','8','1','8','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4881','1025','kuimu','公司规模','1','2','0','1','0','','','2','1','2','1','2','1','','0','0','','1','0','sub_kuimu','1','id','title','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4859','955','remark','其它信息','0','4','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4860','951','dep_type','部门归属类型','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4861','1023','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4862','1023','title','NS部门标准','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4863','1023','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4864','1023','remark','NS部门的标准划分说明','0','4','0','1','1','','','1','1','8','1','0','1','','1','0','','0','1','','0','','','','5','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4882','1025','shouyu','年收入','1','1','0','1','0','','','2','1','2','1','2','1','','0','1','1','1','0','Array','1','1,2,3,4','不清楚,100W以下,100W到1000W,1000W以上','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4888','1025','website','网址','0','4','0','1','7','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4889','1025','addr','地址','0','4','0','0','0','','','1','1','8','1','8','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4890','1025','logo','LOGO','0','4','0','0','0','','','4','1','6','1','6','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4891','1025','beijin','背景','1','2','0','1','0','','','2','1','2','1','2','1','','0','1','','1','0','sub_beijing','1','id','title','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4892','1025','sname','简称','1','1','0','1','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4893','1025','name_en','英文名','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4894','1025','name_cn','中文名','1','4','0','1','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4895','1025','nid','对手ID号','0','6','0','0','0','','','1','0','1','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4896','1026','nid','对手ID','1','2','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','ns_consultants','1','nid','name_cn,name_en,sname','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4897','1026','content','内容','1','3','0','0','0','','','10','1','9','1','9','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4898','1026','title','标题','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4899','1026','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4900','1027','remark','简要说明','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4901','1027','start_date','开始时间','1','17','0','0','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4902','1027','cid','企业ID','1','2','0','1','3','','','2','1','1','1','1','1','','2','1','','1','1','company','1','cid','name_cn,name_en,sname','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4903','1027','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','1','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4904','1027','notes','客户评价','1','5','0','1','1','','','2','1','2','1','2','1','','2','1','','1','1','Array','1','1,2,3,4','很差,信用不好,不错,很好','','7','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4905','1027','nid','猎头ID','1','2','0','1','3','','','2','1','1','1','1','1','','2','1','','1','1','ns_consultants','1','nid','name_cn,name_en,sname','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4906','1027','end_date','结束时间','1','17','0','0','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4907','980','phonetype','电话类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4908','980','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4920','1030','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4921','1030','title','名称','1','1','0','1','0','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4922','1030','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4924','1031','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4925','1031','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4926','1031','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4927','1032','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4928','1032','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4957','1037','click_x','点击横坐标','1','5','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4930','1032','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4931','1032','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4932','1032','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4933','1032','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4956','1037','screen_w','屏幕宽','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4955','1037','type','统计类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4936','1033','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4937','1033','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4938','1033','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4939','1033','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4940','1033','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4941','1034','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4942','1034','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4943','1035','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4944','1035','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4945','1035','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4946','1035','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4947','1035','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4948','1035','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4949','1035','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4950','1036','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4951','1036','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4952','1036','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4953','1036','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4954','1036','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4958','1037','click_y','点击纵坐标','1','5','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4959','1037','labelid','统计标识','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4960','1037','uptime','统计日期','1','2','0','0','1','','','1','1','1','1','0','1','','1','0','','0','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4961','1039','ip','IP地址','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4962','1039','time','访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4963','1039','pageurl','页面URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4964','1039','pagefrom','来源URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4965','1039','language','客户端语言','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4966','1039','color','客户端色深','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4967','1039','screensize','客户端分辨率','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4968','1039','http_user_agent','浏览器用户','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4969','1039','pagefromsite','来源网站','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4970','1039','keyword','关键词','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5001','1041','pagefrom','来源URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5000','1041','pageurl','页面URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4999','1041','time','访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4998','1041','ip','IP地址','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4975','1039','alexatool','ALEX用户','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4976','1039','timezone','客户端时区','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4977','1039','firsttime','首次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4978','1039','lasttime','上次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4979','1039','system','客户端OS','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4980','1039','browser','客户端浏览器','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4981','1039','todayfirst','todayfirst','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4982','1039','return','回头客','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4993','1038','isip','记录IP','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4983','1040','ipstart','起始IP','1','21','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4984','1040','ipend','结束IP','1','21','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4985','1040','country','国家','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4986','1040','address','地址','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4987','1040','province','省份','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4988','1040','city','城市','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4989','1040','area','地区','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4990','1038','title','标识名称','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4991','1038','pageurl','URL地址','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4992','1039','ismark','是否处理','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4994','1038','ismap','记录轨迹','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4995','1038','isad','记录广告','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4996','1038','isbiz','记录业务','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4997','1038','pid','上级标识','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5002','1041','language','客户端语言','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5003','1041','color','客户端色深','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5004','1041','screensize','客户端分辨率','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5005','1041','http_user_agent','浏览器用户','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5006','1041','pagefromsite','来源网站','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5007','1041','keyword','关键词','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5008','1041','alexatool','ALEX用户','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5009','1041','timezone','客户端时区','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5010','1041','firsttime','首次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5011','1041','lasttime','上次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5012','1041','system','客户端OS','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5013','1041','browser','客户端浏览器','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5014','1041','todayfirst','todayfirst','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5015','1041','return','回头客','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5016','1041','ismark','是否处理','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5017','1043','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5018','1043','groupId','权限组','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5019','1043','status','状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5020','1043','nodeId','权限节点','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5021','1043','parentNodeId','上组节点','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5022','1043','level','级别','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5023','1043','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5024','1043','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5035','1045','label','说明','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5036','1045','files','文件','1','4','0','0','1','','','5','1','6','1','6','1','','5','0','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5037','1045','status','状态','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5038','1045','types','类型','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','FLASH广告,图片广告','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5039','1045','showlink','文件URL地址','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5040','1045','targetlink','指向地址','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5041','1045','counttype','统计方式','1','1','0','1','1','','','2','1','2','1','2','1','','2','0','','0','0','Array','0','0,1,2','只统计展示数据,只统计目标来源数据,统计展示和统计来源','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5042','1045','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5043','1045','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5044','1045','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5046','1046','label','说明','1','1','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5047','1046','pid','上级ID','1','1','0','0','1','','','2','1','2','1','2','1','','2','1','','0','0','conf_biz','1','id','label','types=0','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5048','1046','status','状态','1','1','0','0','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5049','1046','types','类型','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','大类,小类','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5050','1046','action','操作类型','1','1','0','1','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5051','1046','actionvar','操作参数','1','1','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5052','1046','seqNO','排序','0','2','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5053','1046','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5054','1046','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5055','1046','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5057','1047','label','说明','1','1','0','1','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5058','1047','reglar','判断表达式','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5059','1047','status','状态','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5060','1047','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5061','1047','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5062','1047','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5063','1048','id','id','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5064','1048','pageurl','pageurl','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5065','1048','all_count','all_count','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5066','1048','day1','day1','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5067','1048','day2','day2','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5068','1048','day3','day3','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5069','1048','day4','day4','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5070','1048','day5','day5','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5071','1048','day6','day6','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5072','1048','day7','day7','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5073','1048','day8','day8','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5074','1048','day9','day9','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5075','1048','day10','day10','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5076','1048','day11','day11','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5077','1048','day12','day12','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5078','1048','day13','day13','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5079','1048','day14','day14','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5080','1048','day15','day15','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5081','1048','day16','day16','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('5082','1048','day17','day17','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('5083','1048','day18','day18','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('5084','1048','day19','day19','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('5085','1048','day20','day20','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('5086','1048','day21','day21','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('5087','1048','day22','day22','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('5088','1048','day23','day23','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('5089','1048','day24','day24','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('5090','1048','day25','day25','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('5091','1048','day26','day26','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('5092','1048','day27','day27','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('5093','1048','day28','day28','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('5094','1048','day29','day29','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('5095','1048','day30','day30','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('5096','1048','day31','day31','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('5097','1049','id','id','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5098','1049','pageurl','pageurl','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5099','1049','all_count','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5100','1049','month1','1月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5101','1049','month2','2月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5102','1049','month3','3月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5103','1049','month4','4月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5104','1049','month5','5月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5105','1049','month6','6月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5106','1049','month7','7月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5107','1049','month8','8月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5108','1049','month9','9月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5109','1049','month10','10月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5110','1049','month11','11月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5111','1049','month12','12月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5112','1049','week1','每月1周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5113','1049','week2','每月2周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5114','1049','week3','每月3周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5115','1049','week4','每月4周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('5116','1049','week5','每月5周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('5117','1049','week6','每月6周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('5118','1049','day1','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('5119','1049','day2','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('5120','1049','day3','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('5121','1049','day4','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('5122','1049','day5','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('5123','1049','day6','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('5124','1049','day7','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('5125','1049','day8','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('5126','1049','day9','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('5127','1049','day10','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('5128','1049','day11','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('5129','1049','day12','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('5130','1049','day13','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('5131','1049','day14','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('5132','1049','day15','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('5133','1049','day16','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('5134','1049','day17','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('5135','1049','day18','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('5136','1049','day19','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('5137','1049','day20','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('5138','1049','day21','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('5139','1049','day22','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('5140','1049','day23','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','43','0');
INSERT INTO `tp_sys_fields` VALUES ('5141','1049','day24','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','44','0');
INSERT INTO `tp_sys_fields` VALUES ('5142','1049','day25','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','45','0');
INSERT INTO `tp_sys_fields` VALUES ('5143','1049','day26','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','46','0');
INSERT INTO `tp_sys_fields` VALUES ('5144','1049','day27','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('5145','1049','day28','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('5146','1049','day29','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('5147','1049','day30','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('5148','1049','day31','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','51','0');
INSERT INTO `tp_sys_fields` VALUES ('5150','1050','guid','统一ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5151','1050','adid','广告ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5152','1050','bizid','商务ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5153','1050','hatid','扣帽ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5154','1051','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5155','1051','title','名称','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5156','1051','pid','上级','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5157','1051','name','标记名','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5158','1051','ename','ename','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5159','1051','remark','说明','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5160','1051','status','状态','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5161','1051','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5162','1051','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5163','1052','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5164','1052','userId','用户Id','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5165','1052','groupId','级别Id','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5166','1052','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5167','1052','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5168','1053','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5169','1053','title','标题','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5170','1053','name','name','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5171','1053','pid','上组ID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5172','1053','level','级别','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5173','1053','type','类型','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5174','1053','remark','说明','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5175','1053','status','状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5176','1053','seqNo','seqNo','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5177','1053','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5178','1053','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5179','1054','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5180','1054','ipstart','起始IP','1','1','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5181','1054','ipend','结束IP','1','1','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5182','1054','country','国家','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5183','1054','address','地址','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5184','1054','province','省份','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5185','1054','city','城市','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5186','1054','area','地区','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5187','1055','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5188','1055','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5189','1055','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5190','1055','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5191','1055','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5192','1055','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5193','1055','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5194','1055','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5195','1055','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5196','1055','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5197','1055','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5198','1055','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5199','1055','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5200','1055','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5201','1055','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5202','1055','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5203','1055','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5204','1055','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5205','1056','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5206','1056','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5207','1056','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5208','1056','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5209','1056','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5210','1056','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5211','1056','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5212','1056','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5213','1056','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5214','1056','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5215','1056','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5216','1056','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5217','1056','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5218','1056','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5219','1056','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5220','1056','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5221','1056','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5222','1056','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5223','1057','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5224','1057','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5225','1057','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5226','1057','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5227','1057','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5228','1057','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5229','1057','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5230','1057','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5231','1057','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5232','1057','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5233','1057','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5234','1057','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5235','1057','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5236','1057','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5237','1057','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5238','1057','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5239','1057','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5240','1057','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5241','1058','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5242','1058','pageurl','当前页面','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5243','1058','guid','统计标识','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5244','1058','type','统计类型','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5245','1058','screen_w','屏幕宽','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5246','1058','click_x','点击横坐标','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5247','1058','click_y','点击纵坐标','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5248','1058','uptime','统计日期','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5249','1059','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5250','1059','account','用户名','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5251','1059','nickname','昵称','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5252','1059','password','密码','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5253','1059','verify','验证码','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5254','1059','remark','备注','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5255','1059','status','用户状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5256','1059','create_time','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5257','1059','update_time','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5259','1063','id','公共ID','0','6','0','0','1','','','1','0','16','0','16','0','','1','1','','1','1','','0','','','','1','1','0','0','0');
DROP TABLE `tp_sys_fieldtypesub`;
CREATE TABLE `tp_sys_fieldtypesub` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型';

INSERT INTO `tp_sys_fieldtypesub` VALUES ('1','VARCHAR','0','VARCHAR数据类型');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('2','INT','0','INT,需要定义长度');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('3','TEXT','0','TEXT不需要定义长度');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('4','SMALLINT','0','SMALLINT数据类型');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('5','DATE','0','日期类型(0000-00-00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('6','DATETIME','0','日期加时间(0000-00-00 00:00:00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('7','TIME','0','时间(00:00:00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('8','YEAR','0','年(0000)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('9','BIGINT','0','BIGINT需要定义长度');
DROP TABLE `tp_sys_models`;
CREATE TABLE `tp_sys_models` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `caption` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据模型';

DROP TABLE `tp_sys_projects`;
CREATE TABLE `tp_sys_projects` (
  `id` int(11) NOT NULL auto_increment,
  `dbname` varchar(200) default NULL,
  `caption` varchar(200) default NULL,
  `proname` varchar(40) default NULL COMMENT '项目名称',
  `dbuser` varchar(200) default NULL,
  `tbpre` varchar(40) default NULL COMMENT '数据表前缀',
  `dbpassword` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `ison` int(11) default NULL COMMENT '是否生成',
  `creattime` int(11) default NULL COMMENT '生成日期',
  `think_pach` varchar(200) default NULL,
  `tplname` varchar(40) NOT NULL COMMENT '模板ID',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动状态',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='生成项目说明';

INSERT INTO `tp_sys_projects` VALUES ('1','crmv2','CRM第二版','crm2','root','crm_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('8','pershow','个人网站','pershow','root','lp_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('20','ns_website','NS网站新版','website','root','web_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('26','crm_v2_tp','Nstarts CRM 系统 (备份)','crmv2','root','ns_','123456','0','1','0','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('41','crm_v2_tp','Nstarts CRM 系统 V2.1','crmv2','root','ns_','123456','0','1','0','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('42','hbss_stat2','HBSS决策支持系统','hbssstat2','root','hb_','123456','0','','','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('43','hbss_stat3','决策支持','hbssstattemp','root','hb_','123456','0','','','../ThinkPHP','tpmaker_advance','1');
DROP TABLE `tp_sys_tables`;
CREATE TABLE `tp_sys_tables` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '1' COMMENT '项目ID',
  `caption` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `searchtype` int(11) default NULL COMMENT '探索形式',
  `edittype` int(11) default NULL COMMENT '编辑类型',
  `seqNo` int(11) default NULL,
  `ismodel` int(11) NOT NULL default '0' COMMENT '是否数据模板',
  `datemodelid` int(11) NOT NULL default '0' COMMENT '指定数据模板',
  `list` int(11) default '1' COMMENT '是否列表',
  `view` int(11) default '1' COMMENT '是否显示详细',
  `add` int(11) default '1',
  `del` int(11) default '1',
  `edit` int(11) default '1',
  `search` int(11) default '1',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动',
  `issystem` int(11) NOT NULL default '0' COMMENT '是否系统保留',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1064 DEFAULT CHARSET=utf8 COMMENT='数据表';

INSERT INTO `tp_sys_tables` VALUES ('1','1','人才管理系统','Person','2','2','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('2','1','企业管理系统','Company','2','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('3','1','订单管理系统','Order','2','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('4','1','职位管理系统','Jobs','2','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('5','1','面试管理系统','Interview','1','2','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('6','1','推荐管理系统','Recomand','1','2','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('7','1','人才语言','Lang','1','2','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('8','1','地区管理','Area','1','2','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('10','1','人才到岗时间','Left_time','1','2','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('11','1','企业福利','Bas_boon','1','2','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('12','1','行业汇总表','Bas_calling','2','2','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('13','1','[公共]招聘途径','Bas_path','2','2','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('14','1','企业年薪类型','Bas_payinfo','2','2','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('15','1','职位分类表','Bas_post','2','2','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('16','1','企业电话类型','Bas_souretype','2','2','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('17','1','客户之间的关系','Com2com','2','2','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('18','1','简单系统保留','Sim_system','2','2','18','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('19','8','小说作品管理','Xiaoshuoshow','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('20','8','从文札记管理','Zhaji','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('21','8','客家文化研究','Kejianwenhu','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('22','8','关于本人','Aboutme','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('23','8','个人荣誉','Rongyu','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('24','8','公共属性','Pu_class','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('25','8','小说章节管理','Xiaoshuo','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('26','8','从文札记分类','Zhajitype','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('124','20','NSweb公共','WEBpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1001','41','[oa]系统站内信息管理','sys_msg','1','','20','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1002','41','[sub]系统站内信息分类','sys_msg_type','1','','30','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('125','20','网站静态信息','sta_infos','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('126','20','网站静态信息分类','sta_infos_type','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1043','43','[sys]系统权限表','access','1','0','0','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1042','43','[sys]系统权限表','access','1','0','0','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('47','45','客家文化研究','Array','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('48','45','客家文化研究','Array','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('49','47','关于本人','Array','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('50','47','关于本人','Array','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('51','49','个人荣誉','Array','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('52','49','个人荣誉','Array','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('53','51','公共属性','Array','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('54','51','公共属性','Array','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('139','20','留言类型分类','contacttype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('140','20','树状菜单','tree','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('141','20','公司部门管理','dept','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('138','20','客户列表','nsclient','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('137','20','Ns公司招聘','nsjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('136','20','网上留言管理','contact','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('135','20','行业分类','calling','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('134','20','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('132','20','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('133','20','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('131','20','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('130','20','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('129','20','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('128','20','发布语言分类','lang','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('127','20','热门职位','hotjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('142','21','[公用]','tmp_sql','1','1','5','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('143','21','单元管理','items','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('144','21','单元类别管理','items_type','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('145','21','订单管理','order','1','1','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('146','21','订单状态日志','orderlogs','1','1','9','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('147','21','用户管理','user','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('148','21','系统权限表','access','1','1','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('149','21','权限组别用户','groupuser','1','1','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('150','21','权限组别','group','1','1','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('151','21','权限节点','node','1','1','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('152','21','系统设定','sysconfig','1','1','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('153','21','供应商&客户管理','company','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('154','21','联络人员管理','contactlist','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('155','21','公司备注','comnotes','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('156','21','公司地址','comaddrs','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('157','20','对外资料分类','outfiletype','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('159','20','对外资料管理','outfile','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('160','20','对外信息分类','outnewstype','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('161','20','对外信息管理','outnews','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('162','20','FLASH广告管理','flashad','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('163','20','成功案例管理','projects','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('806','26','简单公用数据结构','crm_pub_sim','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('807','26','空数据结构','crm_empty','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('808','26','用户登陆数据记录','Loginlog','1','1','1','0','935','1','1','1','1','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('809','26','用户拷贝数据记录','Copylog','1','1','2','0','935','1','1','1','1','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('810','26','人才管理系统','Person','2','2','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('811','26','企业管理系统','Company','2','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('812','26','职位管理系统','Jobs','2','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('276','26','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('274','26','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('275','26','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('273','26','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('271','26','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('272','26','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('814','26','推荐管理系统','Recomand','1','2','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('815','26','地区管理','Area','1','2','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('816','26','人才到岗时间','Left_time','1','2','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('817','26','企业福利','Boon','1','2','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('818','26','行业汇总表','Calling','2','2','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('819','26','[公共]招聘途径','Path','2','2','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('820','26','企业年薪类型','Payinfo','2','2','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('393','37','主要题库','infos','1','1','0','0','935','0','0','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('394','37','公共的数据','pub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('395','37','章节大类','strType_f','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('396','37','章节小类','strType_s','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('813','26','面试管理系统','Interview','1','2','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('804','26','CRM公用数据结构','crmpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('399','38','成功案例管理','projects','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('400','38','FLASH广告管理','flashad','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('401','38','对外信息管理','outnews','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('402','38','对外信息分类','outnewstype','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('403','38','对外资料管理','outfile','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('404','38','对外资料分类','outfiletype','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('405','38','发布语言分类','lang','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('406','38','热门职位','hotjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('407','38','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('408','38','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('409','38','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('410','38','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('411','38','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('412','38','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('413','38','行业分类','calling','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('414','38','网上留言管理','contact','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('415','38','Ns公司招聘','nsjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('416','38','客户列表','nsclient','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('417','38','公司部门管理','dept','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('418','38','树状菜单','tree','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('419','38','留言类型分类','contacttype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('420','38','NSweb公共','WEBpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('421','38','网站静态信息','sta_infos','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('422','38','网站静态信息分类','sta_infos_type','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('423','38','FAQ系统','faq','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('424','38','FAQ分类管理','faqtype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('718','39','company客户表','bas_company','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('719','39','Person人才基本表','bas_person','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('720','39','bas_person_ns','bas_person_ns','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('721','39','bas_style_log','bas_style_log','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('722','39','bbs_content','bbs_content','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('723','39','bbs','bbs_type','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('724','39','cal_contents','cal_contents','1','1','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('725','39','站内信息个人分类','cal_per_type','1','1','9','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('726','39','cal_type','cal_type','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('727','39','cate_area','cate_area','1','1','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('728','39','com_department','com_department','1','1','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('729','39','com_order','com_order','1','1','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('730','39','站内信息表','inside_msg','1','1','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('731','39','站内信息列表','inside_msg_list','1','1','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('732','39','站内信息个人分类','inside_msg_per_type','1','1','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('733','39','站内信息列表','inside_msg_type','1','1','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('734','39','附件','mail_atta','1','1','18','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('735','39','站内信息个人分类','mail_per_type','1','1','19','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('736','39','收件箱','mailbox','1','1','20','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('737','39','msg_count','msg_count','1','1','21','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('738','39','per_introview','per_introview','1','1','22','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('739','39','per_jobinfo','per_jobinfo','1','1','23','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('740','39','recommend推荐记录表汇总表','per_recomand','1','1','24','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('741','39','pub_is','pub_is','1','1','25','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('742','39','province省汇总表','sub_area1','1','1','26','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('743','39','area2','sub_area2','1','1','27','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('744','39','1???±3?°','sub_beijing','1','1','28','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('745','39','sub_bugtype','sub_bugtype','1','1','29','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('746','39','?óòμ??è?2??à??','sub_c2p_type','1','1','30','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('747','39','áa?μ·?ê?','sub_c_type','1','1','31','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('748','39','calling行业汇总表','sub_calling','1','1','32','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('749','39','系统着色','sub_color','1','1','33','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('750','39','sub_connect','sub_connect','1','1','34','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('751','39','sub_country','sub_country','1','1','35','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('752','39','sub_exp_isoktype','sub_exp_isoktype','1','1','36','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('753','39','sub_exp_needeidt','sub_exp_needeidt','1','1','37','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('754','39','sub_files','sub_files','1','1','38','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('755','39','sub_info','sub_info','1','1','39','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('756','39','sub_lang','sub_lang','1','1','40','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('757','39','email','sub_mails','1','1','41','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('758','39','??μ￥íê3é×′ì?','sub_order_finish','1','1','42','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('759','39','??μ￥×′ì?','sub_order_style','1','1','43','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('760','39','??μ￥ààDí','sub_order_type','1','1','44','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('761','39','è?2????óòμ?à??','sub_p2c_type','1','1','45','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('762','39','1????￡à?±í','sub_path','1','1','46','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('763','39','计价单位','sub_phone','1','1','47','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('764','39','1????êD???êy','sub_pmoth','1','1','48','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('765','39','sub_post','sub_post','1','1','49','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('766','39','Post1大类职位表','sub_post1','1','1','50','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('767','39','Post2?????','sub_post2','1','1','51','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('768','39','人才推荐结果选择','sub_rec_style','1','1','52','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('769','39','人才推荐结果选择','sub_recom_result','1','1','53','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('770','39','sub_roomshare','sub_roomshare','1','1','54','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('771','39','sub_searchtype','sub_searchtype','1','1','55','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('772','39','D??￠à′?′','sub_sou','1','1','56','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('773','39','1????￡à?±í','sub_stipend','1','1','57','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('774','39','网址全集合','sub_web','1','1','58','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('775','39','网址分类','sub_web_type','1','1','59','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('776','39','sys_department','sys_department','1','1','60','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('777','39','????μ￥??','sys_file_type','1','1','61','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('778','39','1??????t??á÷','sys_files','1','1','62','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('779','39','左边的人才&企业菜单','sys_label','1','1','63','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('780','39','sys_links','sys_links','1','1','64','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('781','39','sys_logs','sys_logs','1','1','65','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('782','39','sys_mail_connect','sys_mail_connect','1','1','66','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('783','39','sys_mail_file','sys_mail_file','1','1','67','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('784','39','sys_mail_msg','sys_mail_msg','1','1','68','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('785','39','sys_msg','sys_msg','1','1','69','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('786','39','sys_msg_type','sys_msg_type','1','1','70','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('787','39','sys_saveresult','sys_saveresult','1','1','71','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('788','39','sys_searchkey','sys_searchkey','1','1','72','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('789','39','sys_tags_list','sys_tags_list','1','1','73','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('790','39','sys_tags_title','sys_tags_title','1','1','74','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('791','39','sys_tags_type','sys_tags_type','1','1','75','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('792','39','左边的菜单','sys_treemenu','1','1','76','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('793','39','maneger管理员表','sys_user','1','1','77','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('794','39','sys_user_layers','sys_user_layers','1','1','78','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('795','39','sys_user_pref','sys_user_pref','1','1','79','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('796','39','tableright','tableright','1','1','80','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('797','39','任务列表','task_group','1','1','81','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('798','39','任务列表','task_list','1','1','82','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('799','39','task_words','task_words','1','1','83','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('800','39','userlevelpermissions','userlevelpermissions','1','1','84','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('801','39','userlevels','userlevels','1','1','85','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('802','39','webcal_categories','webcal_categories','1','1','86','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('803','39','webcal_entry','webcal_entry','1','1','87','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('821','26','职位分类表','Post','2','2','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('822','26','企业电话类型','Souretype','2','2','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('823','26','客户之间的关系','Com2com','2','2','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('717','39','客户之间的关系','bas_com2com','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('716','39','AD人才','ad_label','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('986','41','[sub]人才推荐结果','sub_recom_result','1','','31','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('915','41','[公共]空数据结构','[公共]空数据结构','1','1','26','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('914','41','[公共]简单公用数据结构','[公共]简单公用数据结构','1','1','27','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('987','41','[oa]办公会议室管理','sub_roomshare','1','','21','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('942','41','[ns]NS内部招聘管理','ns_person','1','','1','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('951','41','[com]企业部门管理','com_department','1','','6','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('949','41','[sys]系统状态记录','bas_style_log','1','','32','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('950','41','[bug]系统UBG管理','bug_report','1','','69','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('985','41','[sub]人才推荐状态','sub_rec_style','1','','33','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('984','41','[sub]职位小类表','sub_post2','1','','38','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('983','41','[sub]大类职位表','sub_post1','1','','39','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('982','41','[com]企业其它空缺职位','com_otherpost','1','','5','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('981','41','[sub]企业年薪月数','sub_pmoth','1','','40','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('980','41','[per]人才电话管理表','per_phone','1','','72','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('979','41','[sub]招聘途径','sub_path','1','','41','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('978','41','[sub]人才对企业的态度','sub_p2c_type','1','','42','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('977','41','[sub]订单类型管理','sub_order_type','1','','43','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('976','41','[sub]订单状态管理','sub_order_style','1','','44','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1000','41','[oa]外发邮件模板管理','sys_mail_msg','1','','22','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('999','41','[oa]外发邮件文件管理','sys_mail_file','1','','23','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('921','41','[sys]用户管理','user','1','1','12','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('922','41','[sys]系统权限表','access','1','1','13','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('923','41','[sys]附件管理','attach','1','1','14','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('924','41','[sys]权限组别用户','groupuser','1','1','15','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('925','41','[sys]权限节点','node','1','1','16','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('926','41','[sys]权限组别','group','1','1','17','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('998','41','[user]邮件联系管理','sys_mail_connect','1','','60','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('997','41','[user]员工保存页面管理','sys_links','1','','57','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('996','41','[user]个人文件信息分类','sys_label','1','','64','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('995','41','[oa]系统公共信息管理','sys_files','1','','24','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('994','41','[sub]系统公告类型','sys_file_type','1','','45','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1025','41','[ns]竞争对手管理','ns_consultants','1','','2','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('992','41','[user]员工网址分类','sub_web_type','1','','65','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('935','41','[公共]CRM公用数据结构','[公共]CRM公用数据结构','1','1','28','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('991','41','[user]网址全集合','sub_web','1','','63','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('990','41','[sub]薪金类型','sub_stipend','1','','46','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('989','41','[sub]信息来源设置','sub_sou','1','','47','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('952','41','[order]系统订单管理','com_order','1','','48','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('944','41','[sys]用户拷贝数据记录','usercopy','1','','18','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('943','41','[com]企业关系-商业关系','com_relation_biz','1','','9','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('939','41','[com]基本客户信息管理','company','1','','7','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('941','41','[per]基本人才信息管理','person','1','','70','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('945','41','[oa]外发招聘信息人才','ad_label','1','','25','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('940','41','[sub]公共地区管理','area','1','','49','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('975','41','[sub]订单完成类型','sub_order_finish','1','','50','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('974','41','[user]email信息汇总','sub_mails','1','','61','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('973','41','[sub]人才语言汇总表','sub_lang','1','','52','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('972','41','[com]企业其它信息','com_otherinfo','1','','11','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('971','41','[com]企业或人才其它文件','sub_files','1','','8','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('968','41','[sub]国家汇总表','sub_country','1','','34','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('967','41','[user]联系信息汇总表','sub_connect','1','','62','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('966','41','[sub]行业汇总表','sub_calling','1','','35','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('965','41','[sub]客户类型','sub_c_type','1','','53','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('964','41','[sub]客户对人才的态度','sub_c2p_type','1','','54','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('963','41','[bug]BUG类型设定','sub_bugtype','1','','68','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('962','41','[sub]企业背景表','sub_beijing','1','','36','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1028','41','[per]人才邮件管理表','per_email','1','','73','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('958','41','[recomand]系统推荐记录表汇总表','per_recomand','1','','55','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('956','41','[user]个人提示信息管理','per_msg','1','','66','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('955','41','[per]人才工作经历','per_jobinfo','1','','71','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('954','41','[interview]人才面试信息管理','per_introview','1','','56','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1004','41','[user]个人搜索条件保存','sys_searchkey','1','','67','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1005','41','[user]系统标签列表','sys_tags_list','1','','58','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1006','41','[user]员工标签列表','sys_tags_title','1','','59','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1007','41','[sub]系统标签类型设定','sys_tags_type','1','','29','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1009','41','[sys]系统用户扩展表','sys_user','1','','19','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1023','41','[sub]部门归属类型','sub_department_type','1','','51','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1024','41','[com]企业关系-人才关系','com_relation_per','1','','10','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1026','41','[ns]竞争对手动态及资料','ns_con_news','1','','3','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1027','41','[com]企业合作猎头管理','com_consultants','1','','4','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1029','41','[per]人才其它联系方式管理表','per_im','1','','74','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1030','41','[sub]企业规模表','sub_kuimu','1','','37','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1031','42','[公共]简单公用数据结构','[公共]简单公用数据结构','1','1','27','1','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1032','42','[sys]用户管理','user','1','1','12','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1033','42','[sys]系统权限表','access','1','1','13','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1034','42','[sys]权限组别用户','groupuser','1','1','15','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1035','42','[sys]权限节点','node','1','1','16','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1036','42','[sys]权限组别','group','1','1','17','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1037','42','屏幕轨迹记录管理','maps','0','0','0','0','1031','1','1','1','0','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1038','42','统计标识管理','labels','0','0','0','0','1031','1','1','1','0','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1039','42','IP详细记录[工作]','ipdatas_work','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1040','42','IP对照记录表','ip2area','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1041','42','IP详细记录[备份]','workipdatas_backup','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1045','43','广告类型设置','conf_ad','1','0','2','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1046','43','商务统计类型设置','conf_biz','1','0','3','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1047','43','流量统计设置','conf_ip','1','0','4','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1048','43','页面浏览IP统计','count_pageip','1','0','5','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1049','43','页面浏览统计','count_pageview','1','0','6','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1050','43','统计用户标识管理','count_user','1','0','7','0','1063','1','1','0','0','0','0','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1051','43','[sys]权限组别','group','1','0','8','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1052','43','[sys]权限组别用户','groupuser','1','0','9','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1053','43','[sys]权限节点','node','1','0','10','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1054','43','IP对照记录表','pub_ip2area','1','0','11','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1055','43','广告详细记录','tmp_addatas','1','0','12','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1056','43','商务详细记录','tmp_bizdatas','1','0','13','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1057','43','IP流量详细记录','tmp_ipdatas','1','0','14','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1058','43','屏幕轨迹记录管理','tmp_mapdatas','1','0','15','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1059','43','[sys]用户管理','user','1','0','16','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1060','20','pubid','pubid','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1061','20','pubid','pubid','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1062','20','','','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1063','43','[公共]简单公用数据结构','pub','1','1','27','1','0','1','1','1','1','1','1','1','0');
DROP TABLE `tp_sys_viewcondition`;
CREATE TABLE `tp_sys_viewcondition` (
  `id` int(11) NOT NULL auto_increment,
  `vid` int(11) NOT NULL,
  `in_tid` int(11) NOT NULL,
  `in_field` varchar(40) NOT NULL,
  `out_tid` int(11) NOT NULL,
  `out_field` varchar(40) NOT NULL,
  `condition` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型表条件';

DROP TABLE `tp_sys_viewfields`;
CREATE TABLE `tp_sys_viewfields` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `vid` int(11) NOT NULL COMMENT '视图ID',
  `caption` varchar(40) NOT NULL COMMENT '标题[cn]',
  `title` varchar(40) NOT NULL COMMENT '标题[en]',
  `newtitle` varchar(40) NOT NULL COMMENT '新的名称',
  `tid` int(11) NOT NULL COMMENT '属所表的ID',
  `seqNo` int(11) NOT NULL COMMENT '排序',
  `islist` int(11) NOT NULL COMMENT '是否显示在列表',
  `iswrap` int(11) NOT NULL COMMENT '是否需要排序筛选',
  `issearch` int(11) NOT NULL COMMENT '是否需要搜索功能',
  `searchtype` int(11) NOT NULL COMMENT '一般搜索形式',
  `advsearchtype` int(11) NOT NULL COMMENT '高级搜索形式',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型表字段';

DROP TABLE `tp_sys_viewmodel`;
CREATE TABLE `tp_sys_viewmodel` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `projectid` int(11) NOT NULL,
  `title` varchar(40) NOT NULL COMMENT '标题[en]',
  `caption` varchar(40) NOT NULL COMMENT '标题[cn]',
  `infos` varchar(240) NOT NULL COMMENT '说明',
  `seqNo` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型';

DROP TABLE `tp_tab_edittype`;
CREATE TABLE `tp_tab_edittype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_tab_edittype` VALUES ('1','[默认]一般形式','0','1','');
INSERT INTO `tp_tab_edittype` VALUES ('2','快速编辑形式','1','2','');
DROP TABLE `tp_tab_searchtype`;
CREATE TABLE `tp_tab_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_tab_searchtype` VALUES ('1','[默认]简单搜索','0','1','');
INSERT INTO `tp_tab_searchtype` VALUES ('2','简单+高级搜索','1','7','');
INSERT INTO `tp_tab_searchtype` VALUES ('3','不需要搜索功能','0','2','');
INSERT INTO `tp_tab_searchtype` VALUES ('4','仅搜索功能','0','9','');

DROP TABLE `tp_apptree`;
CREATE TABLE `tp_apptree` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(40) NOT NULL COMMENT '标题',
  `shortname` varchar(24) NOT NULL,
  `projectid` int(11) NOT NULL COMMENT '项目ID',
  `type` int(11) NOT NULL COMMENT '类型',
  `pid` int(11) NOT NULL default '0' COMMENT '上级ID',
  `tid` int(11) NOT NULL COMMENT '数据表ID',
  `seqNo` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

INSERT INTO `tp_apptree` VALUES ('17','系统权限组别管理','','26','1','9','272','0','');
INSERT INTO `tp_apptree` VALUES ('6','客户管理系统','sys_com','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('8','办公自动化系统','sys_oa','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('9','用户管理','sys_user','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('10','职位管理系统','sys_post','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('11','个人信息管理','sys_per','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('12','系统属性管理系统','sys_adm','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('13','用户管理','','26','1','9','276','0','');
INSERT INTO `tp_apptree` VALUES ('14','查看用户登陆记录','','26','1','30','808','0','');
INSERT INTO `tp_apptree` VALUES ('15','查看用户拷贝数据记录','','26','1','30','809','0','');
INSERT INTO `tp_apptree` VALUES ('16','人才面试管理系统','sys_view','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('18','人才设定','conf_per','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('19','企业设定','conf_com','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('20','企业年薪类型','','26','1','19','820','0','');
INSERT INTO `tp_apptree` VALUES ('21','人才到岗时间设定','','26','1','18','816','0','');
INSERT INTO `tp_apptree` VALUES ('22','公共设定','conf_pub','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('23','企业电话类型','','26','1','19','822','0','');
INSERT INTO `tp_apptree` VALUES ('24','公共招聘途径','','26','1','19','819','0','');
INSERT INTO `tp_apptree` VALUES ('25','职位设定','conf_post','26','0','12','0','0','');
INSERT INTO `tp_apptree` VALUES ('26','职位分类表','','26','1','25','821','0','');
INSERT INTO `tp_apptree` VALUES ('27','企业福利设定','','26','1','19','817','0','');
INSERT INTO `tp_apptree` VALUES ('28','行业汇总表','','26','1','22','818','0','');
INSERT INTO `tp_apptree` VALUES ('29','安全统计系统','sys_log','26','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('30','用户安全统计','user_log','26','0','29','0','0','');
INSERT INTO `tp_apptree` VALUES ('31','客户管理系统','sys_com','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('32','人才管理系统','sys_per','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('33','NS办公系统','sys_oa','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('34','系统设置管理','sys_conf','41','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('35','系统人才设置','sys_conf_per','41','0','34','0','0','');
INSERT INTO `tp_apptree` VALUES ('36','公共办公应用','sys_oa1','41','0','33','0','0','');
INSERT INTO `tp_apptree` VALUES ('130','人才电话管理表','sys_oa_3','41','1','33','980','3','');
INSERT INTO `tp_apptree` VALUES ('129','企业其它空位','sys_oa_2','41','1','33','982','2','');
INSERT INTO `tp_apptree` VALUES ('128','人才推荐状态','sys_oa_1','41','1','33','985','1','');
INSERT INTO `tp_apptree` VALUES ('131','订单状态管理','sys_oa_4','41','1','33','976','4','');
INSERT INTO `tp_apptree` VALUES ('132','系统UBG管理','sys_oa_5','41','1','33','950','5','');
INSERT INTO `tp_apptree` VALUES ('133','大类职位表','sys_oa_6','41','1','33','983','6','');
INSERT INTO `tp_apptree` VALUES ('134','人才电话管理表','sys_oa_7','41','1','33','980','7','');
INSERT INTO `tp_apptree` VALUES ('135','系统UBG管理','sys_oa_8','41','1','33','950','8','');
INSERT INTO `tp_apptree` VALUES ('136','用户管理','sys_user','42','0','142','0','0','');
INSERT INTO `tp_apptree` VALUES ('137','用户管理','sys_user_0','42','1','136','0','0','');
INSERT INTO `tp_apptree` VALUES ('138','系统权限表','sys_user_1','42','1','136','0','1','');
INSERT INTO `tp_apptree` VALUES ('139','权限组别用户','sys_user_2','42','1','136','0','2','');
INSERT INTO `tp_apptree` VALUES ('140','权限节点','sys_user_3','42','1','136','0','3','');
INSERT INTO `tp_apptree` VALUES ('141','权限组别','sys_user_4','42','1','136','0','4','');
INSERT INTO `tp_apptree` VALUES ('142','统计设定','sys_conf','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('143','流量分析','sys_ip','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('144','广告分析','sys_ad','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('145','业务分析','sys_biz','42','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('146','基础流量分析','st_count','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('147','今日详情','st_today','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('148','昨日详情','st_yestoday','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('149','所有详情','st_all','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('150','工具条分析','st_tool','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('155','概况','','42','1','146','0','0','http://192.168.1.108:81/count/main.php');
INSERT INTO `tp_apptree` VALUES ('156','时段分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_day.php');
INSERT INTO `tp_apptree` VALUES ('157','日段分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_month.php');
INSERT INTO `tp_apptree` VALUES ('158','月分析','','42','1','146','0','0','http://192.168.1.108:81/count/stat_year.php');
INSERT INTO `tp_apptree` VALUES ('159','Alexa工具条分析','','42','1','150','0','0','http://192.168.1.108:81/count/stat_alexa.php');
INSERT INTO `tp_apptree` VALUES ('160','明细访问','','42','1','146','0','0','http://192.168.1.108:81/count/show_today.php');
INSERT INTO `tp_apptree` VALUES ('161','关键字统计','今日-关键字统计','42','1','147','0','0','http://192.168.1.108:81/count/keyword.php');
INSERT INTO `tp_apptree` VALUES ('162','来源统计','今日-来源统计','42','1','147','0','0','http://192.168.1.108:81/count/referer.php');
INSERT INTO `tp_apptree` VALUES ('163','回头客','今日-回头客','42','1','147','0','0','http://192.168.1.108:81/count/return.php');
INSERT INTO `tp_apptree` VALUES ('164','受访页面','今日-受访页面','42','1','147','0','0','http://192.168.1.108:81/count/page.php');
INSERT INTO `tp_apptree` VALUES ('165','地区统计','今日-地区统计','42','1','147','0','0','http://192.168.1.108:81/count/province.php');
INSERT INTO `tp_apptree` VALUES ('166','语言统计','今日-语言统计','42','1','147','0','0','http://192.168.1.108:81/count/language.php');
INSERT INTO `tp_apptree` VALUES ('167','时区统计','今日-时区统计','42','1','147','0','0','http://192.168.1.108:81/count/timezone.php');
INSERT INTO `tp_apptree` VALUES ('168','屏幕统计','今日-屏幕统计','42','1','147','0','0','http://192.168.1.108:81/count/screen.php');
INSERT INTO `tp_apptree` VALUES ('169','浏览器统计','今日-浏览器统计','42','1','147','0','0','http://192.168.1.108:81/count/soft.php');
INSERT INTO `tp_apptree` VALUES ('170','浏览器统计','昨日-浏览器统计','42','1','148','0','0','http://192.168.1.108:81/count/soft.php?type=2');
INSERT INTO `tp_apptree` VALUES ('171','屏幕统计','昨日-屏幕统计','42','1','148','0','0','http://192.168.1.108:81/count/screen.php?type=2');
INSERT INTO `tp_apptree` VALUES ('172','时区统计','昨日-时区统计','42','1','148','0','0','http://192.168.1.108:81/count/timezone.php?type=2');
INSERT INTO `tp_apptree` VALUES ('173','语言统计','昨日-语言统计','42','1','148','0','0','http://192.168.1.108:81/count/language.php?type=2');
INSERT INTO `tp_apptree` VALUES ('174','地区统计','昨日-地区统计','42','1','148','0','0','http://192.168.1.108:81/count/timezone.php?type=2');
INSERT INTO `tp_apptree` VALUES ('175','受访页面','昨日-受访页面','42','1','148','0','0','http://192.168.1.108:81/count/page.php?type=2');
INSERT INTO `tp_apptree` VALUES ('176','回头客','昨日-回头客','42','1','148','0','0','http://192.168.1.108:81/count/return.php?type=2');
INSERT INTO `tp_apptree` VALUES ('177','来源统计','昨日-来源统计','42','1','148','0','0','http://192.168.1.108:81/count/referer.php?type=2');
INSERT INTO `tp_apptree` VALUES ('179','浏览器统计','所有-浏览器统计','42','1','149','0','0','http://192.168.1.108:81/count/soft.php?type=0');
INSERT INTO `tp_apptree` VALUES ('180','屏幕统计','所有-屏幕统计','42','1','149','0','0','http://192.168.1.108:81/count/screen.php?type=0');
INSERT INTO `tp_apptree` VALUES ('181','时区统计','所有-时区统计','42','1','149','0','0','http://192.168.1.108:81/count/timezone.php?type=0');
INSERT INTO `tp_apptree` VALUES ('182','语言统计','所有-语言统计','42','1','149','0','0','http://192.168.1.108:81/count/language.php?type=0');
INSERT INTO `tp_apptree` VALUES ('183','地区统计','所有-地区统计','42','1','149','0','0','http://192.168.1.108:81/count/province.php?type=0');
INSERT INTO `tp_apptree` VALUES ('197','关键字统计','昨日-关键字统计','42','1','148','0','0','http://192.168.1.108:81/count/referer.php?type=2');
INSERT INTO `tp_apptree` VALUES ('202','最近7日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=7');
INSERT INTO `tp_apptree` VALUES ('201','昨日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=1');
INSERT INTO `tp_apptree` VALUES ('200','今日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=0');
INSERT INTO `tp_apptree` VALUES ('199','屏幕轨迹记录','st_creen','42','0','143','0','0','');
INSERT INTO `tp_apptree` VALUES ('198','受访页面','所有-受访页面','42','1','149','0','0','http://192.168.1.108:81/count/page.php?type=0');
INSERT INTO `tp_apptree` VALUES ('194','回头客','所有-回头客','42','1','149','0','0','http://192.168.1.108:81/count/return.php?type=0');
INSERT INTO `tp_apptree` VALUES ('195','来源统计','所有-来源统计','42','1','149','0','0','http://192.168.1.108:81/count/referer.php?type=0');
INSERT INTO `tp_apptree` VALUES ('196','关键字统计','所有-关键字统计','42','1','149','0','0','http://192.168.1.108:81/count/keyword.php?type=0');
INSERT INTO `tp_apptree` VALUES ('203','最近30日屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=30');
INSERT INTO `tp_apptree` VALUES ('204','所有屏幕数据','','42','1','199','0','0','http://192.168.1.108:81/count/click_list.php?day=all');
INSERT INTO `tp_apptree` VALUES ('205','ddddd','dddd','43','0','0','0','0','');
INSERT INTO `tp_apptree` VALUES ('206','系统权限表','dddd_0','43','1','205','1043','0','');
INSERT INTO `tp_apptree` VALUES ('207','系统权限表','dddd_1','43','1','205','1042','1','');
INSERT INTO `tp_apptree` VALUES ('208','','dddd_2','43','1','205','1045','2','');
INSERT INTO `tp_apptree` VALUES ('209','','dddd_3','43','1','205','1046','3','');
INSERT INTO `tp_apptree` VALUES ('210','','dddd_4','43','1','205','1047','4','');
INSERT INTO `tp_apptree` VALUES ('211','','dddd_5','43','1','205','1048','5','');
INSERT INTO `tp_apptree` VALUES ('212','','dddd_6','43','1','205','1049','6','');
INSERT INTO `tp_apptree` VALUES ('213','','dddd_7','43','1','205','1050','7','');
INSERT INTO `tp_apptree` VALUES ('214','权限组别','dddd_8','43','1','205','1051','8','');
INSERT INTO `tp_apptree` VALUES ('215','权限组别用户','dddd_9','43','1','205','1052','9','');
INSERT INTO `tp_apptree` VALUES ('216','权限节点','dddd_10','43','1','205','1053','10','');
INSERT INTO `tp_apptree` VALUES ('217','P对照记录表','dddd_11','43','1','205','1054','11','');
INSERT INTO `tp_apptree` VALUES ('218','','dddd_12','43','1','205','1055','12','');
INSERT INTO `tp_apptree` VALUES ('219','','dddd_13','43','1','205','1056','13','');
INSERT INTO `tp_apptree` VALUES ('220','P流量详细记录','dddd_14','43','1','205','1057','14','');
INSERT INTO `tp_apptree` VALUES ('221','','dddd_15','43','1','205','1058','15','');
INSERT INTO `tp_apptree` VALUES ('222','用户管理','dddd_16','43','1','205','1059','16','');
DROP TABLE `tp_con_tree`;
CREATE TABLE `tp_con_tree` (
  `id` int(11) NOT NULL auto_increment,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL default '0',
  `title` varchar(240) NOT NULL,
  `model` varchar(240) NOT NULL,
  `action` varchar(240) NOT NULL,
  `icon` varchar(240) NOT NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='左边的树';

INSERT INTO `tp_con_tree` VALUES ('19','0','0','[根目录]其它属性设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('2','2','0','其它小工具','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('3','3','1','[字段]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('4','4','1','[数据表]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('5','5','1','[其它]操作','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('6','6','3','字段属性设定','Sub_fieldtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('7','7','3','查看类型设定','Sub_viewtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('8','8','3','编辑类型设定','Sub_edittype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('9','9','3','增加类型设定','Sub_addtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('10','10','3','搜索形式设定','Sub_searchtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('11','11','3','系统保留设定','Sub_issystem','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('12','12','3','验证形式设定','Sub_validate','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('13','13','4','编辑类型设定','Tab_edittype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('14','14','4','搜索形式设定','Tab_searchtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('15','15','5','所有表大写','','','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('16','16','5','所有表首位大写','','','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('17','17','2','数据备份管理工具','Dbbackup','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('18','18','17','备份当前系统数据','Dbbackup','export_db','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('20','20','2','系统颜色表','Sub_color','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('21','21','2','phpMyadmin','PhpMyadmin','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('1','1','0','系统属性管理','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('27','27','1','[项目]设定','','','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('28','28','27','模板风格设定','Pro_templete','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('29','29','1','系统公共参数配置','Sys_config','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('30','30','29','公共参数分类','Sys_configtype','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('31','31','6','数据字段类型设定','Sys_fieldtypesub','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('32','32','12','验证条件设定','Sub_validate_vcon','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('33','33','12','附加规则设定','Sub_validate_arag','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('34','34','3','自动填充设定','Sub_auto','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('35','35','34','附加规则设定','Sub_auto_reg','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('36','36','34','填充条件设定','Sub_auto_con','index','page.gif','0');
INSERT INTO `tp_con_tree` VALUES ('37','37','1','公共HTML标签类型','Sub_htmltags','index','b_import.png','0');
INSERT INTO `tp_con_tree` VALUES ('38','38','17','当前系统数据恢复','Dbbackup','inport_db','page.gif','0');
DROP TABLE `tp_designer`;
CREATE TABLE `tp_designer` (
  `id` int(11) NOT NULL auto_increment,
  `master_pid` int(11) NOT NULL,
  `master_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_pid` int(11) NOT NULL,
  `foreign_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='数据关联';

INSERT INTO `tp_designer` VALUES ('15','26','node','pid','26','sta_infos','id');
INSERT INTO `tp_designer` VALUES ('22','26','attach','uploadTime','26','Interview','id');
INSERT INTO `tp_designer` VALUES ('23','26','Interview','update_on','26','node','id');
DROP TABLE `tp_designer_coords`;
CREATE TABLE `tp_designer_coords` (
  `id` int(11) NOT NULL auto_increment,
  `projectid` int(11) NOT NULL,
  `table_name` varchar(64) NOT NULL default '',
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `v` tinyint(4) default NULL,
  `h` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=631 DEFAULT CHARSET=utf8 COMMENT='坐标定位';

INSERT INTO `tp_designer_coords` VALUES ('557','21','user','616','436','0','1');
INSERT INTO `tp_designer_coords` VALUES ('556','21','orderlogs','664','153','0','1');
INSERT INTO `tp_designer_coords` VALUES ('555','21','order','776','105','0','1');
INSERT INTO `tp_designer_coords` VALUES ('554','21','items_type','193','370','1','1');
INSERT INTO `tp_designer_coords` VALUES ('553','21','items','478','72','1','1');
INSERT INTO `tp_designer_coords` VALUES ('552','26','sta_infos_type','646','320','0','1');
INSERT INTO `tp_designer_coords` VALUES ('551','26','sta_infos','44','264','0','1');
INSERT INTO `tp_designer_coords` VALUES ('550','26','contacttype','15','139','0','1');
INSERT INTO `tp_designer_coords` VALUES ('549','26','tree','1004','71','0','1');
INSERT INTO `tp_designer_coords` VALUES ('548','26','dept','976','357','0','1');
INSERT INTO `tp_designer_coords` VALUES ('547','26','nsclient','668','274','0','1');
INSERT INTO `tp_designer_coords` VALUES ('546','26','nsjob','481','68','0','1');
INSERT INTO `tp_designer_coords` VALUES ('545','26','contact','892','86','0','1');
INSERT INTO `tp_designer_coords` VALUES ('544','26','calling','982','426','0','1');
INSERT INTO `tp_designer_coords` VALUES ('543','26','group','626','120','0','1');
INSERT INTO `tp_designer_coords` VALUES ('542','26','node','307','269','0','1');
INSERT INTO `tp_designer_coords` VALUES ('541','26','groupuser','590','244','0','1');
INSERT INTO `tp_designer_coords` VALUES ('540','26','attach','7','407','0','1');
INSERT INTO `tp_designer_coords` VALUES ('539','26','access','364','208','0','1');
INSERT INTO `tp_designer_coords` VALUES ('538','26','user','902','111','0','1');
INSERT INTO `tp_designer_coords` VALUES ('537','26','hotjob','190','97','0','1');
INSERT INTO `tp_designer_coords` VALUES ('536','26','lang','789','376','0','1');
INSERT INTO `tp_designer_coords` VALUES ('535','26','outfiletype','21','299','1','1');
INSERT INTO `tp_designer_coords` VALUES ('534','26','outfile','641','421','0','1');
INSERT INTO `tp_designer_coords` VALUES ('533','26','outnewstype','255','50','0','1');
INSERT INTO `tp_designer_coords` VALUES ('532','26','outnews','1013','493','0','1');
INSERT INTO `tp_designer_coords` VALUES ('531','26','flashad','488','363','0','1');
INSERT INTO `tp_designer_coords` VALUES ('530','26','projects','289','311','1','1');
INSERT INTO `tp_designer_coords` VALUES ('558','21','access','384','297','1','1');
INSERT INTO `tp_designer_coords` VALUES ('559','21','groupuser','778','66','0','1');
INSERT INTO `tp_designer_coords` VALUES ('560','21','group','797','499','0','1');
INSERT INTO `tp_designer_coords` VALUES ('561','21','node','919','277','0','1');
INSERT INTO `tp_designer_coords` VALUES ('562','21','sysconfig','719','377','0','1');
INSERT INTO `tp_designer_coords` VALUES ('563','21','company','296','58','1','1');
INSERT INTO `tp_designer_coords` VALUES ('564','21','contactlist','791','430','0','1');
INSERT INTO `tp_designer_coords` VALUES ('565','21','comnotes','190','258','1','1');
INSERT INTO `tp_designer_coords` VALUES ('566','21','comaddrs','382','481','1','1');
INSERT INTO `tp_designer_coords` VALUES ('629','1','Bas_souretype','738','100','1','1');
INSERT INTO `tp_designer_coords` VALUES ('628','1','Bas_post','308','107','1','1');
INSERT INTO `tp_designer_coords` VALUES ('627','1','Bas_payinfo','424','455','1','1');
INSERT INTO `tp_designer_coords` VALUES ('626','1','Bas_path','614','253','1','1');
INSERT INTO `tp_designer_coords` VALUES ('625','1','Bas_calling','781','407','1','1');
INSERT INTO `tp_designer_coords` VALUES ('624','1','Bas_boon','856','265','1','1');
INSERT INTO `tp_designer_coords` VALUES ('623','1','Left_time','388','218','1','1');
INSERT INTO `tp_designer_coords` VALUES ('622','1','Area','251','326','1','1');
INSERT INTO `tp_designer_coords` VALUES ('621','1','Lang','159','293','1','1');
INSERT INTO `tp_designer_coords` VALUES ('620','1','Recomand','723','344','1','1');
INSERT INTO `tp_designer_coords` VALUES ('619','1','Interview','535','134','1','1');
INSERT INTO `tp_designer_coords` VALUES ('618','1','Jobs','725','467','1','1');
INSERT INTO `tp_designer_coords` VALUES ('617','1','Order','430','382','1','1');
INSERT INTO `tp_designer_coords` VALUES ('616','1','Company','513','40','1','1');
INSERT INTO `tp_designer_coords` VALUES ('615','1','Person','66','54','1','1');
INSERT INTO `tp_designer_coords` VALUES ('630','1','Com2com','777','32','1','1');
DROP TABLE `tp_pro_templete`;
CREATE TABLE `tp_pro_templete` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `tplname` varchar(200) default NULL COMMENT '模板的文件夹',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='项目模板风格设定';

INSERT INTO `tp_pro_templete` VALUES ('1','[默认]TP-maker风格','0','1','tpmaker_default');
INSERT INTO `tp_pro_templete` VALUES ('2','[高级]TP-advance风格','0','2','tpmaker_advance');
DROP TABLE `tp_relation`;
CREATE TABLE `tp_relation` (
  `master_db` varchar(64) collate utf8_bin NOT NULL default '',
  `master_table` varchar(64) collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_db` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_table` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

INSERT INTO `tp_relation` VALUES ('my_cal','','','my_cal','','');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_user','id','my_cal','sys_cal_type','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','id','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','start_y','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','content','my_cal','sys_user','id');
INSERT INTO `tp_relation` VALUES ('my_cal','sys_cal_info','end_d','my_cal','sys_user','id');
DROP TABLE `tp_sub_addtype`;
CREATE TABLE `tp_sub_addtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_sub_addtype` VALUES ('1','[默认]input','input','','','','width:300px','input','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_addtype` VALUES ('2','单选[select]','select','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_addtype` VALUES ('3','是否&不定','radio','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_addtype` VALUES ('4','多选[check]','checkboxGroup','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_addtype` VALUES ('5','多选[select]','selectmultiple','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_addtype` VALUES ('6','文件上传','files','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_addtype` VALUES ('7','图标','input','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_addtype` VALUES ('8','文本[正常]','textarea','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_addtype` VALUES ('9','文本[word]','word','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_addtype` VALUES ('10','隐藏[时间]','hidden','','','','','','0','0','','','','','','','9','10','');
INSERT INTO `tp_sub_addtype` VALUES ('11','联想输入','input','','','','','','0','0','','','','','','','11','11','');
INSERT INTO `tp_sub_addtype` VALUES ('12','隐藏[IP]','hidden','','','','','','0','0','','','','','','','10','12','');
INSERT INTO `tp_sub_addtype` VALUES ('13','时间[年月日]','calendar','','','','','','0','0','','','','','','','12','13','');
INSERT INTO `tp_sub_addtype` VALUES ('14','时间[YMDHIS]','calendar','','','','','','0','0','','','','','','','13','14','');
INSERT INTO `tp_sub_addtype` VALUES ('15','只读[HTML]','htmltext','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_addtype` VALUES ('16','只读[TEXT]','text','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_addtype` VALUES ('17','只读[tIme]','time','','','','','','0','0','','','','','','','0','14','');
DROP TABLE `tp_sub_auto`;
CREATE TABLE `tp_sub_auto` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `content` varchar(40) default NULL COMMENT '填充内容',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `condition` varchar(40) default NULL COMMENT '填充条件',
  `regular` varchar(40) default NULL COMMENT '附加规则',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='自动填充设定';

INSERT INTO `tp_sub_auto` VALUES ('1','无填充','','0','1','ADD','function');
INSERT INTO `tp_sub_auto` VALUES ('2','time_update','time','0','1','UPDATE','function');
INSERT INTO `tp_sub_auto` VALUES ('3','time','time','0','1','ADD','function');
DROP TABLE `tp_sub_auto_con`;
CREATE TABLE `tp_sub_auto_con` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='填充条件';

INSERT INTO `tp_sub_auto_con` VALUES ('1','ADD','0','1','新增数据的时候处理（默认方式）');
INSERT INTO `tp_sub_auto_con` VALUES ('2','UPDATE','0','2','更新数据的时候处理');
INSERT INTO `tp_sub_auto_con` VALUES ('3','ALL ','0','3','所有情况下都进行处理 ');
DROP TABLE `tp_sub_auto_reg`;
CREATE TABLE `tp_sub_auto_reg` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='附加规则';

INSERT INTO `tp_sub_auto_reg` VALUES ('1','string','0','8','字符串（默认方式）');
INSERT INTO `tp_sub_auto_reg` VALUES ('2','field ','0','3','用其它字段填充');
INSERT INTO `tp_sub_auto_reg` VALUES ('3','function','0','6','使用函数');
INSERT INTO `tp_sub_auto_reg` VALUES ('4','callback ','0','7','回调方法');
DROP TABLE `tp_sub_color`;
CREATE TABLE `tp_sub_color` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_color` VALUES ('1','gray','1','1','');
INSERT INTO `tp_sub_color` VALUES ('2','salmon','2','2','');
INSERT INTO `tp_sub_color` VALUES ('3','copper','3','3','');
INSERT INTO `tp_sub_color` VALUES ('4','yellow','4','4','');
INSERT INTO `tp_sub_color` VALUES ('5','powderblue','5','5','');
INSERT INTO `tp_sub_color` VALUES ('6','steelblue','6','6','');
INSERT INTO `tp_sub_color` VALUES ('7','lime','7','7','');
INSERT INTO `tp_sub_color` VALUES ('8','orange','8','8','');
INSERT INTO `tp_sub_color` VALUES ('9','purple','9','9','');
INSERT INTO `tp_sub_color` VALUES ('10','yellowgreen','10','10','');
INSERT INTO `tp_sub_color` VALUES ('11','silver','11','11','');
INSERT INTO `tp_sub_color` VALUES ('12','chocolate','12','12','');
INSERT INTO `tp_sub_color` VALUES ('13','aliceblue','13','13','');
INSERT INTO `tp_sub_color` VALUES ('14','springgreen','14','14','');
INSERT INTO `tp_sub_color` VALUES ('15','tan','15','15','');
INSERT INTO `tp_sub_color` VALUES ('16','quartz','16','16','');
INSERT INTO `tp_sub_color` VALUES ('17','blueviolet','17','17','');
INSERT INTO `tp_sub_color` VALUES ('18','red','18','18','');
INSERT INTO `tp_sub_color` VALUES ('19','deeppink','19','19','');
INSERT INTO `tp_sub_color` VALUES ('21','White','0','19','');
DROP TABLE `tp_sub_edittype`;
CREATE TABLE `tp_sub_edittype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_sub_edittype` VALUES ('1','[默认]input','input','','','','width:300px','input','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_edittype` VALUES ('2','单选[select]','select','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_edittype` VALUES ('3','是否&不定','radio','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_edittype` VALUES ('4','多选[check]','checkboxGroup','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_edittype` VALUES ('5','多选[select]','selectmultiple','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_edittype` VALUES ('6','文件上传','files','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_edittype` VALUES ('7','图标','input','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_edittype` VALUES ('8','文本[正常]','textarea','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_edittype` VALUES ('9','文本[word]','word','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_edittype` VALUES ('10','隐藏[时间]','hidden','','','','','','0','0','','','','','','','9','10','');
INSERT INTO `tp_sub_edittype` VALUES ('11','联想输入','input','','','','','','0','0','','','','','','','11','11','');
INSERT INTO `tp_sub_edittype` VALUES ('12','隐藏[IP]','hidden','','','','','','0','0','','','','','','','10','12','');
INSERT INTO `tp_sub_edittype` VALUES ('13','时间[年月日]','calendar','','','','','','0','0','','','','','','','12','13','');
INSERT INTO `tp_sub_edittype` VALUES ('14','时间[YMDHIS]','calendar','','','','','','0','0','','','','','','','13','14','');
INSERT INTO `tp_sub_edittype` VALUES ('15','只读[HTML]','htmltext','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_edittype` VALUES ('16','只读[TEXT]','text','','','','','','0','0','','','','','','','0','14','');
INSERT INTO `tp_sub_edittype` VALUES ('17','只读[tIme]','time','','','','','','0','0','','','','','','','0','14','');
DROP TABLE `tp_sub_fieldtype`;
CREATE TABLE `tp_sub_fieldtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `type` varchar(240) NOT NULL COMMENT '类型',
  `notnull` int(11) NOT NULL COMMENT '是否为空',
  `default` varchar(240) NOT NULL COMMENT '默认值',
  `primary` int(11) NOT NULL COMMENT '是否主键',
  `autoInc` int(11) NOT NULL COMMENT '自动增加',
  `leng` int(11) NOT NULL COMMENT '长度',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字属性设定';

INSERT INTO `tp_sub_fieldtype` VALUES ('1','[varchar][40]','1','VARCHAR','0','','0','0','40','5','');
INSERT INTO `tp_sub_fieldtype` VALUES ('2','[INT][11]','2','INT','0','','0','0','11','3','');
INSERT INTO `tp_sub_fieldtype` VALUES ('3','[text]','3','TEXT','0','','0','0','0','1','');
INSERT INTO `tp_sub_fieldtype` VALUES ('4','[varchar][240]','4','VARCHAR','0','','0','0','240','7','');
INSERT INTO `tp_sub_fieldtype` VALUES ('5','[tinyint][4]','5','SMALLINT','0','','0','0','4','2','');
INSERT INTO `tp_sub_fieldtype` VALUES ('6','[autoid][11]','6','INT','0','','1','1','11','4','');
INSERT INTO `tp_sub_fieldtype` VALUES ('17','[date][0000-00-00]','7','DATE','0','','0','0','0','19','');
INSERT INTO `tp_sub_fieldtype` VALUES ('18','[datetime][0000-00-00 00:00:00]','8','DATETIME','0','','0','0','0','12','');
INSERT INTO `tp_sub_fieldtype` VALUES ('19','[time][00:00:00]','9','TIME','0','','0','0','0','14','');
INSERT INTO `tp_sub_fieldtype` VALUES ('20','[year][0000]','10','YEAR','0','','0','0','0','15','');
INSERT INTO `tp_sub_fieldtype` VALUES ('21','[bigint][20]','11','BIGINT','0','','0','0','20','15','');
DROP TABLE `tp_sub_htmltags`;
CREATE TABLE `tp_sub_htmltags` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `usetype` int(11) default '1' COMMENT '使用范围',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_htmltags` VALUES ('1','input','1','0','1','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('2','password','1','0','2','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('3','textarea','1','0','3','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('5','radio','1','0','5','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('6','hidden','1','0','6','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('7','checkbox[single]','1','0','7','');
INSERT INTO `tp_sub_htmltags` VALUES ('8','checkboxGroup','1','0','8','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('9','select','1','0','9','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('10','selectmultiple','1','0','10','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('11','files','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('12','word','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('13','calendar','1','0','11','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('14','text','3','0','12','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('19','htmltext','3','0','14','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('15','time','3','0','13','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('16','image','2','0','15','');
INSERT INTO `tp_sub_htmltags` VALUES ('17','icon','2','0','16','');
INSERT INTO `tp_sub_htmltags` VALUES ('18','link','2','0','19','');
INSERT INTO `tp_sub_htmltags` VALUES ('20','outtable','2','0','19','OK');
INSERT INTO `tp_sub_htmltags` VALUES ('21','filedown','2','0','8','OK');
DROP TABLE `tp_sub_htmlusetype`;
CREATE TABLE `tp_sub_htmlusetype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='HTMLtag使用范围';

INSERT INTO `tp_sub_htmlusetype` VALUES ('1','编辑时使用','0','1','');
INSERT INTO `tp_sub_htmlusetype` VALUES ('2','查看时使用','0','2','');
INSERT INTO `tp_sub_htmlusetype` VALUES ('3','全局使用','0','3','');
DROP TABLE `tp_sub_issystem`;
CREATE TABLE `tp_sub_issystem` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` text COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统保留设定';

INSERT INTO `tp_sub_issystem` VALUES ('1','非保留','1','1','none');
INSERT INTO `tp_sub_issystem` VALUES ('2','文件上传','2','2','file');
INSERT INTO `tp_sub_issystem` VALUES ('3','自定[权限]','3','3','right');
DROP TABLE `tp_sub_searchtype`;
CREATE TABLE `tp_sub_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_searchtype` VALUES ('1','[默认]形式','0','1','');
INSERT INTO `tp_sub_searchtype` VALUES ('2','是否存在','1','2','');
INSERT INTO `tp_sub_searchtype` VALUES ('3','时间跨度','2','3','');
INSERT INTO `tp_sub_searchtype` VALUES ('4','可选比较','3','4','');
INSERT INTO `tp_sub_searchtype` VALUES ('5','包含[like]','4','5','');
INSERT INTO `tp_sub_searchtype` VALUES ('6','多搜[ID]','5','6','');
INSERT INTO `tp_sub_searchtype` VALUES ('7','是否&不定','1','7','');
DROP TABLE `tp_sub_validate`;
CREATE TABLE `tp_sub_validate` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `v_note` varchar(200) default NULL COMMENT '默认提示信息',
  `v_rag` varchar(40) default NULL COMMENT '验证规则',
  `v_con` varchar(40) default NULL COMMENT '验证条件',
  `a_reg` varchar(40) default NULL COMMENT '附加规则',
  `v_time` varchar(40) default NULL COMMENT '验证时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_sub_validate` VALUES ('1','[默认]无','0','1','','','0','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('2','EMAIL','1','2','请输入正确的EMAIL地址!','email','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('3','纯数字','2','3','输入项须为纯数字!','number','0','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('4','纯英文','3','4','输入项须为纯英文!','english','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('5','电话','4','5','输入项须为电话格式!','phone','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('6','手机格式','5','6','输入项须为手机格式!','mobile','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('7','网址','7','8','输入项须为网址格式!','url','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('8','货币格式','8','7','输入项须为货币格式!','currency','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('9','长整数字格式','9','10','输入项须为长整数字格式!','integer','2','regex','ALL');
INSERT INTO `tp_sub_validate` VALUES ('10','QQ号码','10','11','输入项须为QQ号码格式!','qq','2','regex','ALL');
DROP TABLE `tp_sub_validate_arag`;
CREATE TABLE `tp_sub_validate_arag` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='附加规则';

INSERT INTO `tp_sub_validate_arag` VALUES ('1','regex','0','1','使用正则进行验证，表示前面定义的验证规则是一个正则表达式（默认）');
INSERT INTO `tp_sub_validate_arag` VALUES ('2','function','0','1','使用函数验证，前面定义的验证规则是一个函数名 ');
INSERT INTO `tp_sub_validate_arag` VALUES ('3','callback','0','1','使用方法验证，前面定义的验证规则是一个当前 Model类的方法');
INSERT INTO `tp_sub_validate_arag` VALUES ('4','confirm ','0','1','验证表单中的两个字段是否相同，前面定义的验证规则是一个字段名');
INSERT INTO `tp_sub_validate_arag` VALUES ('5','equal ','0','1','验证是否等于某个值，该值由前面的验证规则定义');
INSERT INTO `tp_sub_validate_arag` VALUES ('6','in','0','1','验证是否在某个范围内，前面定义的验证规则必须是一个数组');
INSERT INTO `tp_sub_validate_arag` VALUES ('7','unique','0','1','验证是否唯一，系统会根据字段目前的值查询数据库来判断是否存在相同的值 ');
DROP TABLE `tp_sub_validate_vcon`;
CREATE TABLE `tp_sub_validate_vcon` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='验证条件';

INSERT INTO `tp_sub_validate_vcon` VALUES ('3','存在字段就验证（默认）','0','0','');
INSERT INTO `tp_sub_validate_vcon` VALUES ('1','必须验证','0','0','');
INSERT INTO `tp_sub_validate_vcon` VALUES ('2','值不为空的时候验证','0','0','');
DROP TABLE `tp_sub_viewtype`;
CREATE TABLE `tp_sub_viewtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `htmltype` varchar(160) default NULL COMMENT '类型',
  `htmlname` varchar(160) default NULL COMMENT '名称[name]',
  `htmlid` varchar(160) default NULL COMMENT 'ID[ID]',
  `htmlvar` varchar(160) default NULL COMMENT '默认值',
  `htmlstyle` varchar(160) default NULL COMMENT '格式[style]',
  `htmlclass` varchar(160) default NULL COMMENT 'class',
  `isdisabled` int(11) default '0' COMMENT 'disabled',
  `isreadonly` int(11) default '0' COMMENT 'readonly',
  `outtable` varchar(160) default NULL COMMENT '外表',
  `outkey` varchar(160) default NULL COMMENT '外表ID',
  `outfield` varchar(160) default NULL COMMENT '展示',
  `outcondition` varchar(160) default NULL COMMENT '条件',
  `outorder` varchar(160) default NULL COMMENT '外表排序',
  `outadd` varchar(160) default NULL COMMENT '连接符',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_viewtype` VALUES ('1','[默认]text','text','','','','','','0','0','','','','','','','0','1','');
INSERT INTO `tp_sub_viewtype` VALUES ('2','引用外表','outtable','','','','','','0','0','','','','','','','1','2','');
INSERT INTO `tp_sub_viewtype` VALUES ('3','图标显示','icon','','','','','','0','0','','','','','','','2','3','');
INSERT INTO `tp_sub_viewtype` VALUES ('4','图片显示','image','','','','','','0','0','','','','','','','3','4','');
INSERT INTO `tp_sub_viewtype` VALUES ('5','文件下载','filedown','','','','','','0','0','','','','','','','4','5','');
INSERT INTO `tp_sub_viewtype` VALUES ('6','链接[索引]','text','','','','','','0','0','','','','','','','5','6','');
INSERT INTO `tp_sub_viewtype` VALUES ('7','时间[YMD]','time','','','','','','0','0','','','','','','','6','7','');
INSERT INTO `tp_sub_viewtype` VALUES ('8','时间[全]','time','','','','','','0','0','','','','','','','7','8','');
INSERT INTO `tp_sub_viewtype` VALUES ('9','1对多','text','','','','','','0','0','','','','','','','8','9','');
INSERT INTO `tp_sub_viewtype` VALUES ('10','HTML','htmltext','','','','','','0','0','','','','','','','0','8','');
DROP TABLE `tp_sub_yesno`;
CREATE TABLE `tp_sub_yesno` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `tid` int(11) NOT NULL,
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='查看类型设定';

INSERT INTO `tp_sub_yesno` VALUES ('2','0','否','1','1','');
INSERT INTO `tp_sub_yesno` VALUES ('1','1','是','2','8','');
DROP TABLE `tp_sys_config`;
CREATE TABLE `tp_sys_config` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL COMMENT '上级',
  `type` int(11) default NULL COMMENT '值的类型',
  `title` varchar(200) default NULL,
  `value` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='默认的系统参数';

INSERT INTO `tp_sys_config` VALUES ('1','1','1','DISPATCH_ON','true','是否启用Dispatcher','0');
INSERT INTO `tp_sys_config` VALUES ('2','1','3','DISPATCH_NAME','Think','默认的Dispatcher名称','0');
INSERT INTO `tp_sys_config` VALUES ('3','1','2','URL_MODEL','0','// URL模式： 0 普通模式 1 PATHINFO 2 REWRITE','0');
INSERT INTO `tp_sys_config` VALUES ('4','1','2','PATH_MODEL','2','// 默认为PATHINFO 模式，提供最好的用户体验和SEO支持// 普通模式1 参数没有顺序/m/module/a/action/id/1// 智能模式2 自动识别模块和操作/module/action/id/1/ 或者 /module,action,id,1/...','0');
INSERT INTO `tp_sys_config` VALUES ('5','1','3','PATH_DEPR','/','PATHINFO参数之间分割号','0');
INSERT INTO `tp_sys_config` VALUES ('6','1','1','ROUTER_ON','true','启用路由判断','0');
INSERT INTO `tp_sys_config` VALUES ('7','1','3','COMPONENT_DEPR','@','组件模块和操作的URL分割符','0');
INSERT INTO `tp_sys_config` VALUES ('8','2','1','WEB_LOG_RECORD','false','默认不记录日志','0');
INSERT INTO `tp_sys_config` VALUES ('9','2','2','LOG_FILE_SIZE','2097152','日志文件大小限制','0');
INSERT INTO `tp_sys_config` VALUES ('10','3','1','THINK_PLUGIN_ON','false','默认启用插件机制','0');
INSERT INTO `tp_sys_config` VALUES ('11','4','1','LIMIT_RESFLESH_ON','false','默认关闭防刷新机制','0');
INSERT INTO `tp_sys_config` VALUES ('12','4','1','LIMIT_REFLESH_TIMES','3','页面防刷新时间 默认3秒','0');
INSERT INTO `tp_sys_config` VALUES ('13','5','1','DEBUG_MODE','false','调试模式默认关闭','0');
INSERT INTO `tp_sys_config` VALUES ('14','5','3','ERROR_MESSAGE','您浏览的页面暂时发生了错误！请稍后再试～','错误显示信息 非调试模式有效','0');
INSERT INTO `tp_sys_config` VALUES ('15','5','3','ERROR_PAGE','','错误定向页面','0');
INSERT INTO `tp_sys_config` VALUES ('16','6','3','VAR_PATHINFO','s','PATHINFO 兼容模式获取变量例如 ?s=/module/action/id/1 后面的参数取决于PATH_MODEL 和 PATH_DEPR','0');
INSERT INTO `tp_sys_config` VALUES ('17','6','3','VAR_MODULE','m','默认模块获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('18','6','3','VAR_ACTION','a','默认操作获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('19','6','3','VAR_ROUTER','r','默认路由获取变量','0');
INSERT INTO `tp_sys_config` VALUES ('20','6','3','VAR_FILE','f','默认文件变量','0');
INSERT INTO `tp_sys_config` VALUES ('21','6','3','VAR_PAGE','p','默认分页跳转变量','0');
INSERT INTO `tp_sys_config` VALUES ('22','6','3','VAR_LANGUAGE','l','默认语言切换变量','0');
INSERT INTO `tp_sys_config` VALUES ('23','6','3','VAR_TEMPLATE','t','默认模板切换变量','0');
INSERT INTO `tp_sys_config` VALUES ('24','6','3','VAR_AJAX_SUBMIT','ajax','默认的AJAX提交变量','0');
INSERT INTO `tp_sys_config` VALUES ('25','7','3','DEFAULT_MODULE','Index','默认模块名称','0');
INSERT INTO `tp_sys_config` VALUES ('26','7','3','DEFAULT_ACTION','index','默认操作名称','0');
INSERT INTO `tp_sys_config` VALUES ('27','8','1','TMPL_CACHE_ON','true','默认开启模板编译缓存 false 的话每次都重新编译模板','0');
INSERT INTO `tp_sys_config` VALUES ('28','8','2','TMPL_CACHE_TIME','-1','模板缓存有效期 -1 永久 单位为秒','0');
INSERT INTO `tp_sys_config` VALUES ('29','8','1','TMPL_SWITCH_ON','true','启用多模版支持','0');
INSERT INTO `tp_sys_config` VALUES ('30','8','3','DEFAULT_TEMPLATE','default','默认模板名称','0');
INSERT INTO `tp_sys_config` VALUES ('31','8','3','TEMPLATE_SUFFIX','.html','默认模板文件后缀','0');
INSERT INTO `tp_sys_config` VALUES ('32','8','3','CACHFILE_SUFFIX','.php','默认模板缓存后缀','0');
INSERT INTO `tp_sys_config` VALUES ('33','8','3','TEMPLATE_CHARSET','utf-8','模板模板编码','0');
INSERT INTO `tp_sys_config` VALUES ('34','8','3','OUTPUT_CHARSET','utf-8','默认输出编码','0');
INSERT INTO `tp_sys_config` VALUES ('35','9','3','CONTR_CLASS_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('36','9','3','CONTR_CLASS_SUFFIX','Action','','0');
INSERT INTO `tp_sys_config` VALUES ('37','9','3','ACTION_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('38','9','3','ACTION_SUFFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('39','9','3','MODEL_CLASS_PREFIX','','','0');
INSERT INTO `tp_sys_config` VALUES ('40','9','3','MODEL_CLASS_SUFFIX','Model','','0');
INSERT INTO `tp_sys_config` VALUES ('41','10','3','HTML_FILE_SUFFIX','.shtml','默认静态文件后缀','0');
INSERT INTO `tp_sys_config` VALUES ('42','10','1','HTML_CACHE_ON','false','默认关闭静态缓存','0');
INSERT INTO `tp_sys_config` VALUES ('43','10','2','HTML_CACHE_TIME','60','静态缓存有效期','0');
INSERT INTO `tp_sys_config` VALUES ('44','10','2','HTML_READ_TYPE','1','静态缓存读取方式 0 readfile 1 redirect','0');
INSERT INTO `tp_sys_config` VALUES ('45','10','3','HTML_URL_SUFFIX','','伪静态后缀设置','0');
INSERT INTO `tp_sys_config` VALUES ('46','11','1','LANG_SWITCH_ON','false','默认关闭多语言包功能','0');
INSERT INTO `tp_sys_config` VALUES ('47','11','3','DEFAULT_LANGUAGE','zh-cn','默认语言','0');
INSERT INTO `tp_sys_config` VALUES ('48','11','3','TIME_ZONE','PRC','默认时区','0');
INSERT INTO `tp_sys_config` VALUES ('49','12','1','USER_AUTH_ON','false','默认不启用用户认证','0');
INSERT INTO `tp_sys_config` VALUES ('50','12','2','USER_AUTH_TYPE','1','默认认证类型 1 登录认证 2 实时认证','0');
INSERT INTO `tp_sys_config` VALUES ('51','12','3','USER_AUTH_KEY','authId','用户认证SESSION标记','0');
INSERT INTO `tp_sys_config` VALUES ('52','12','3','AUTH_PWD_ENCODER','md5','用户认证密码加密方式','0');
INSERT INTO `tp_sys_config` VALUES ('53','12','3','USER_AUTH_PROVIDER','DaoAuthentictionProvider','默认认证委托器','0');
INSERT INTO `tp_sys_config` VALUES ('54','12','3','USER_AUTH_GATEWAY','/Public/login','默认认证网关','0');
INSERT INTO `tp_sys_config` VALUES ('55','12','3','NOT_AUTH_MODULE','Public','默认无需认证模块','0');
INSERT INTO `tp_sys_config` VALUES ('56','12','3','REQUIRE_AUTH_MODULE','','默认需要认证模块','0');
INSERT INTO `tp_sys_config` VALUES ('57','13','3','SESSION_NAME','ThinkID','默认Session_name 如果需要不同项目共享SESSION 可以设置相同','0');
INSERT INTO `tp_sys_config` VALUES ('58','13','3','SESSION_PATH','','采用默认的Session save path','0');
INSERT INTO `tp_sys_config` VALUES ('59','13','3','SESSION_TYPE','File','默认Session类型 支持 DB 和 File ','0');
INSERT INTO `tp_sys_config` VALUES ('60','13','3','SESSION_EXPIRE','300000','默认Session有效期','0');
INSERT INTO `tp_sys_config` VALUES ('61','13','3','SESSION_TABLE','think_session','数据库Session方式表名','0');
INSERT INTO `tp_sys_config` VALUES ('62','13','3','SESSION_CALLBACK','','反序列化对象的回调方法','0');
INSERT INTO `tp_sys_config` VALUES ('63','14','3','DB_CHARSET','utf8','数据库编码默认采用utf8','0');
INSERT INTO `tp_sys_config` VALUES ('64','14','2','DB_DEPLOY_TYPE','0','数据库部署方式 0 集中式（单一服务器） 1 分布式（主从服务器）','0');
INSERT INTO `tp_sys_config` VALUES ('65','14','1','SQL_DEBUG_LOG','false','记录SQL语句到日志文件','0');
INSERT INTO `tp_sys_config` VALUES ('66','14','1','DB_FIELDS_CACHE','true','缓存数据表字段信息','0');
INSERT INTO `tp_sys_config` VALUES ('67','15','2','DATA_CACHE_TIME','-1','数据缓存有效期','0');
INSERT INTO `tp_sys_config` VALUES ('68','15','1','DATA_CACHE_COMPRESS','false','数据缓存是否压缩缓存','0');
INSERT INTO `tp_sys_config` VALUES ('69','15','1','DATA_CACHE_CHECK','false','数据缓存是否校验缓存','0');
INSERT INTO `tp_sys_config` VALUES ('70','15','3','DATA_CACHE_TYPE','File','数据缓存类型 支持 File Db Apc Memcache Shmop Sqlite Xcache Apachenote Eaccelerator','0');
INSERT INTO `tp_sys_config` VALUES ('71','15','1','DATA_CACHE_SUBDIR','false','使用子目录缓存 （自动根据缓存标识的哈希创建子目录）','0');
INSERT INTO `tp_sys_config` VALUES ('72','15','3','DATA_CACHE_TABLE','think_cache','数据缓存表 当使用数据库缓存方式时有效','0');
INSERT INTO `tp_sys_config` VALUES ('73','15','3','CACHE_SERIAL_HEADER','<?php\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n//','文件缓存开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('74','15','3','CACHE_SERIAL_FOOTER','\\\\\\\\\\\\\\\\n?.>','文件缓存结束标记[注意PHP的保留点号要用开]','0');
INSERT INTO `tp_sys_config` VALUES ('75','15','2','SHARE_MEM_SIZE','1048576','共享内存分配大小','0');
INSERT INTO `tp_sys_config` VALUES ('76','16','1','SHOW_RUN_TIME','false','运行时间显示','0');
INSERT INTO `tp_sys_config` VALUES ('77','16','1','SHOW_ADV_TIME','false','显示详细的运行时间','0');
INSERT INTO `tp_sys_config` VALUES ('78','16','1','SHOW_DB_TIMES','false','显示数据库查询和写入次数','0');
INSERT INTO `tp_sys_config` VALUES ('79','16','1','SHOW_CACHE_TIMES','false','显示缓存操作次数','0');
INSERT INTO `tp_sys_config` VALUES ('80','16','1','SHOW_USE_MEM','false','显示内存开销','0');
INSERT INTO `tp_sys_config` VALUES ('81','16','1','SHOW_PAGE_TRACE','false','显示页面Trace信息 由Trace文件定义和Action操作赋值','0');
INSERT INTO `tp_sys_config` VALUES ('82','17','3','TMPL_ENGINE_TYPE','Think','默认模板引擎 以下设置仅对使用Think模板引擎有效','0');
INSERT INTO `tp_sys_config` VALUES ('83','17','3','TMPL_DENY_FUNC_LIST','echo,exit','模板引擎禁用函数','0');
INSERT INTO `tp_sys_config` VALUES ('84','17','3','TMPL_L_DELIM','{','模板引擎普通标签开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('85','17','3','TMPL_R_DELIM','}','模板引擎普通标签结束标记','0');
INSERT INTO `tp_sys_config` VALUES ('86','17','3','TAGLIB_BEGIN','<','标签库标签开始标记','0');
INSERT INTO `tp_sys_config` VALUES ('87','17','3','TAGLIB_END','>','标签库标签结束标记','0');
INSERT INTO `tp_sys_config` VALUES ('88','18','2','COOKIE_EXPIRE','3600','Coodie有效期','0');
INSERT INTO `tp_sys_config` VALUES ('89','18','3','COOKIE_DOMAIN','','Cookie有效域名','0');
INSERT INTO `tp_sys_config` VALUES ('90','18','3','COOKIE_PATH','/','Cookie路径','0');
INSERT INTO `tp_sys_config` VALUES ('91','18','3','COOKIE_PREFIX','','Cookie前缀 避免冲突','0');
INSERT INTO `tp_sys_config` VALUES ('92','19','2','PAGE_NUMBERS','5','分页显示页数','0');
INSERT INTO `tp_sys_config` VALUES ('93','19','2','LIST_NUMBERS','20','分页每页显示记录数','0');
INSERT INTO `tp_sys_config` VALUES ('94','20','3','AJAX_RETURN_TYPE','JSON','AJAX 数据返回格式 JSON XML ...','0');
INSERT INTO `tp_sys_config` VALUES ('95','20','3','DATA_RESULT_TYPE','0','默认数据返回格式 1 对象 0 数组','0');
INSERT INTO `tp_sys_config` VALUES ('96','21','3','AUTO_LOAD_PATH','Think.Util.',' __autoLoad 的路径设置 当前项目的Model和Action类会自动加载，无需设置 注意搜索顺序','0');
INSERT INTO `tp_sys_config` VALUES ('97','21','3','CALLBACK_LOAD_PATH','','反序列化对象时自动加载的路径设置','0');
INSERT INTO `tp_sys_config` VALUES ('98','21','3','UPLOAD_FILE_RULE','uniqid','文件上传命名规则 例如 time uniqid com_create_guid 等 支持自定义函数 仅适用于内置的UploadFile类','0');
INSERT INTO `tp_sys_config` VALUES ('99','21','3','LIKE_MATCH_FIELDS','','数据库查询的时候需要进行模糊匹配的字段','0');
DROP TABLE `tp_sys_configtype`;
CREATE TABLE `tp_sys_configtype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='默认的系统参数';

INSERT INTO `tp_sys_configtype` VALUES ('1','Dispatch设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('2','日志设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('3','插件设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('4','防刷新设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('5','错误设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('6','系统变量设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('7','模块和操作设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('8','模板设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('9','模型设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('10','静态缓存设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('11','语言时区设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('12','用户认证设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('13','SESSION设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('14','数据库设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('15','数据缓存设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('16','运行时间设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('17','模板引擎设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('18','Cookie设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('19','分页设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('20','数据格式设置','','0');
INSERT INTO `tp_sys_configtype` VALUES ('21','其它设置','','0');
DROP TABLE `tp_sys_datatype`;
CREATE TABLE `tp_sys_datatype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型';

INSERT INTO `tp_sys_datatype` VALUES ('1','布尔值','111','qqq');
INSERT INTO `tp_sys_datatype` VALUES ('2','数字值','222','www');
INSERT INTO `tp_sys_datatype` VALUES ('3','文本值','333','eee');
DROP TABLE `tp_sys_fields`;
CREATE TABLE `tp_sys_fields` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL COMMENT '所属的表',
  `name` varchar(200) NOT NULL COMMENT '英文',
  `caption` varchar(200) NOT NULL,
  `islist` int(11) default '1' COMMENT '是否列表',
  `fieldtype` int(11) default NULL COMMENT '字属性',
  `fieldlenght` int(11) default NULL COMMENT '字符长度',
  `request` int(11) default NULL COMMENT '必填',
  `validate` int(11) NOT NULL default '1' COMMENT '验证形式',
  `validate_tex` varchar(244) default NULL COMMENT '自定义错误',
  `validate_reg` varchar(244) default NULL COMMENT '自定义正则',
  `viewtype` int(11) default NULL COMMENT '查看类型',
  `isview` smallint(2) NOT NULL default '1' COMMENT '是否列表',
  `edittype` int(11) default NULL COMMENT '编辑类型',
  `isedit` smallint(2) NOT NULL default '1' COMMENT '是否编辑',
  `addtype` int(11) default NULL COMMENT '增加类型',
  `isadd` smallint(2) NOT NULL default '1' COMMENT '是否增加',
  `islistwidth` varchar(40) default NULL COMMENT '列表长度',
  `islistviewtype` int(11) default '1' COMMENT '列表查看类型',
  `iswrap` int(11) default NULL COMMENT '是否排序',
  `indexvar` varchar(240) NOT NULL COMMENT '默认值',
  `autotype` int(11) NOT NULL default '1' COMMENT '自动填充类型',
  `issystem` int(11) default NULL COMMENT '是否系统保留',
  `outkey` varchar(200) default NULL COMMENT '外键索引',
  `outkeyis` int(11) default '0' COMMENT '是否',
  `outkeyid` varchar(20) default NULL COMMENT '外键ID',
  `outkeyf` varchar(200) default NULL COMMENT '外键值',
  `outkeywhere` varchar(240) default NULL COMMENT '外键条件',
  `searchtype` int(11) default NULL COMMENT '搜索形式',
  `advsearchtype` int(11) NOT NULL default '1' COMMENT '高级搜索形式',
  `issearch` int(11) default '0' COMMENT '是否搜索',
  `seqNo` int(11) default NULL,
  `modelid` int(11) default '0' COMMENT '数据模版ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5261 DEFAULT CHARSET=utf8 COMMENT='定义每个点';

INSERT INTO `tp_sys_fields` VALUES ('4923','131','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('556','125','content_en','内容[英文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('555','125','content_cn','内容[中文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('554','125','title_en','标题[英文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('553','125','title_cn','标题[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('552','125','sta_infos_typeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','sta_infos_type','1','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('551','125','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('550','130','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('549','130','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('525','127','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('526','127','langId','发布语言','0','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('527','129','account','用户名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('528','129','nickname','昵称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('529','129','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('530','129','verify','验证码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('531','129','email','email','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('532','129','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('533','129','status','用户状态','1','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('534','130','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('535','130','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('536','130','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('537','130','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('538','130','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('539','130','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('540','130','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('541','130','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('542','130','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('543','130','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('544','130','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('545','130','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('546','130','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('547','130','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('548','130','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('36','1','f_name','姓','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('37','1','l_name','名字','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('38','1','e_name','英文名','1','1','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('682','153','simword','简称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('40','1','sex','姓别','1','5','0','1','3',' 错误提示[不填为默认]  ','','3','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('41','1','langid','人才语言','1','1','0','1','1','','','9','1','4','1','4','1','','1','0','','1','1','lang','0','','','','6','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('217','24','id','[系统]ID号','0','6','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('218','24','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','12','1','10','1','','1','0','','1','2','','0','','','','3','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('219','24','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','12','1','10','1','','1','0','','1','2','','0','','','','3','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('50','1','areaid','现在所在地','1','2','0','1','3','','','6','1','11','1','11','1','','1','0','','1','1','area','0','','','','1','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('49','7','title','标题','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('122','8','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('123','1','nowsalry','现在薪金','1','2','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','123','0');
INSERT INTO `tp_sys_fields` VALUES ('121','8','parea','上级地名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('120','8','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('119','8','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('118','8','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('711','135','logo','行业LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('117','8','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('572','134','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('561','131','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('112','8','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('571','134','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('558','131','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('124','1','hopesalry','期望薪金','1','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','124','0');
INSERT INTO `tp_sys_fields` VALUES ('125','1','nowsalryremark','现在薪金备注','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','125','0');
INSERT INTO `tp_sys_fields` VALUES ('126','1','left_timeid','到岗时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','left_time','0','','','','1','1','0','126','0');
INSERT INTO `tp_sys_fields` VALUES ('684','153','type','分类','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('128','10','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('570','134','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('569','134','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('568','133','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('567','133','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('566','132','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('564','132','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('565','132','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('148','11','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('683','153','level','等级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('140','12','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('238','21','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('239','21','content','内容','0','3','0','0','0','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('560','131','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('559','131','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('145','12','shortkey','快捷键','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('146','12','isnomor','是否常用','1','1','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','2','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('563','132','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('154','13','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('233','23','a_day','获取时间','1','1','0','0','0','','','7','1','12','1','13','1','','1','0','','1','1','','0','','','','1','1','0','233','0');
INSERT INTO `tp_sys_fields` VALUES ('234','23','img','图片','1','4','0','0','0','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','234','0');
INSERT INTO `tp_sys_fields` VALUES ('235','26','title','标题','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('236','20','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('237','20','zhajitypeid','分类','1','2','0','1','0','','','2','1','2','1','2','1','','1','0','','1','1','zhajitype','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('160','14','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('229','25','xiaoshuoshowid','所属小说','0','2','0','1','0','','','2','1','2','1','2','1','','1','0','','1','1','xiaoshuoshow','0','','','','1','1','0','229','0');
INSERT INTO `tp_sys_fields` VALUES ('230','22','title','名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','230','0');
INSERT INTO `tp_sys_fields` VALUES ('231','22','content','内容','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','231','0');
INSERT INTO `tp_sys_fields` VALUES ('232','23','title','标题','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','232','0');
INSERT INTO `tp_sys_fields` VALUES ('166','15','title','标题','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('224','19','c_time','创作时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','224','0');
INSERT INTO `tp_sys_fields` VALUES ('225','19','someinfo','小说说明','0','3','0','0','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','225','0');
INSERT INTO `tp_sys_fields` VALUES ('226','19','pub_bis','发行商','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','226','0');
INSERT INTO `tp_sys_fields` VALUES ('227','19','otherinfo','其它信息','0','3','0','0','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','0','227','0');
INSERT INTO `tp_sys_fields` VALUES ('228','25','title','章节名','1','1','0','1','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','228','0');
INSERT INTO `tp_sys_fields` VALUES ('172','16','title','电话名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('221','24','viewtime','查看次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','99','0');
INSERT INTO `tp_sys_fields` VALUES ('222','19','title','小说名','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','222','0');
INSERT INTO `tp_sys_fields` VALUES ('223','19','page','小说封面','0','4','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','223','0');
INSERT INTO `tp_sys_fields` VALUES ('177','16','content','说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('681','153','paytypeid','付款方式','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('184','17','cid_from','原发客户ID','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('216','18','u_update','[系统]更新者','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','33','1','2','','0','','','','1','1','0','1003','0');
INSERT INTO `tp_sys_fields` VALUES ('220','24','seqNO','[系统]排序','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('185','17','cid_to','目标客户ID','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('186','17','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('187','17','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('188','17','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('189','17','c2pdesc','人才关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('710','153','systype','系统分类','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('191','2','name_cn','中文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('192','2','name_en','英文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('193','2','sname','简称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('194','2','logo','LOGO','0','1','0','0','1','','','4','1','6','1','7','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('195','2','beijinid','资金背景','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('196','2','addr','地址','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('197','2','website','网址','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('198','2','kuimu','企业规模','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('199','2','shouyu','收入水平','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('200','2','paytype','薪金[税前/税后]','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('201','2','paymoth','年薪月数','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('202','2','payinfo','薪金说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('562','132','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('210','18','id','[系统]ID号','1','6','0','0','1','','','1','1','1','1','1','1','','1','0','','2','2','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('211','18','seqNO','[系统]排序','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1005','0');
INSERT INTO `tp_sys_fields` VALUES ('212','18','create_on','[系统]加入时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','2','2','','0','','','','1','1','0','1000','0');
INSERT INTO `tp_sys_fields` VALUES ('213','18','update_on','[系统]更新时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1001','0');
INSERT INTO `tp_sys_fields` VALUES ('214','18','systemp','[系统]搜索','1','3','0','0','1','','','1','1','1','1','1','1','','1','0','33','1','2','','0','','','','1','1','0','1004','0');
INSERT INTO `tp_sys_fields` VALUES ('215','18','u_add','[系统]输入者','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1002','0');
INSERT INTO `tp_sys_fields` VALUES ('695','154','type','职位','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('697','154','sex','性别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('694','154','dep','部门','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('693','154','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('691','154','emain','E-MAIL','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('692','154','mphone','手机','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('690','154','phone','电话','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('698','154','content','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('699','155','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('713','157','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('680','153','fax','传真','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('679','153','phone','电话','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('678','153','email','E-MAIL','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('677','153','powerman','负责人','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('676','153','area','地区','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('675','153','add','地址','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('573','134','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('574','134','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('575','134','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('576','135','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('577','136','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('578','136','content','内容','1','3','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('579','138','title_cn','客户名称[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('580','138','title_en','客户名称[英文]','0','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('581','138','callingid','客户行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('582','138','logo','客户LOGO','1','1','0','0','1','','','1','1','6','1','6','1','','1','1','','1','2','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('583','138','info_cn','客户说明[中文]','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('584','138','info_en','客户说明[英文]','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('585','135','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('586','137','title','职位名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('587','137','content','职位要求','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('588','137','startday','开始时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('589','137','endday','结束时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('590','137','count','招聘人数','0','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('591','137','jobno','职位编号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('592','136','contacttypeid','留言类型分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','contacttype','1','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('593','139','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('594','139','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('595','129','create_time','创建时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('596','129','update_time','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('598','140','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('599','140','nodeId','所属权限','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('600','140','pId','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('601','140','isleaf','是否主类','0','5','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('602','141','caption','部门名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('603','141','pid','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('604','141','notes','说明','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('605','142','id','[系统]ID号','0','6','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','-1','0');
INSERT INTO `tp_sys_fields` VALUES ('606','142','create_at','[系统]加入时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1000','0');
INSERT INTO `tp_sys_fields` VALUES ('607','142','update_on','[系统]更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1001','0');
INSERT INTO `tp_sys_fields` VALUES ('608','142','seqNo','[系统]排序','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','1002','0');
INSERT INTO `tp_sys_fields` VALUES ('609','143','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('610','143','typeid','所属类别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('611','143','unit','单位','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('612','143','keys','快捷键','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('613','143','img','图片','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('614','143','price_min','最小浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('615','143','standard','规格','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('616','141','detzz','部门职责','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('617','141','area','分布地区','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('618','141','Lang','是否主管部门','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('619','144','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('620','144','pid','上级类别','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('621','144','unit','默认单位','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('674','153','title','名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('673','153','comid','编号','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('624','144','price_min','最小浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('626','144','caption','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('627','143','price_max','最大浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('628','144','price_max','最大浮动','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('629','143','length','长度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('630','143','width','宽度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('631','143','thickness','厚度/高度','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('632','143','quantity','数量','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('633','145','title','标题','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('634','145','compayid','客户','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('635','145','indate','下单时间','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('636','145','roderid','订单号','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('637','145','state','状态','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('638','146','title','标题','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('639','146','orderid','订单ID','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('640','146','content','说明','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('641','146','userid','操作人','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('642','147','account','用户名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('644','147','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('645','147','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('646','147','email','email','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('647','147','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('648','147','status','用户状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('687','154','title','姓名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('712','136','pid','是否回复','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('651','148','groupId','权限组Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('652','148','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('653','148','nodeId','权限节点Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('654','148','parentNodeId','上组节点Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('655','148','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('656','149','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('657','149','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('658','150','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('659','150','pid','上级ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('660','150','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('661','150','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('662','150','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('663','151','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('664','151','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('665','151','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('666','151','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('667','151','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('668','151','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('669','151','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('670','152','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('671','152','values','属性','0','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('672','152','infos','说明','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('524','127','content','职位内容','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('523','127','jobcode','职位代码','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('522','127','title','职位名称','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('521','128','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('520','126','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('519','124','seqNo','排序','0','2','0','0','3','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('518','124','update_on','更新时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','2','2','','0','','','','1','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('517','124','create_at','加入时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','1','2','','0','','','','1','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('516','124','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('709','156','content','地址&工厂','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('708','156','companyid','公司','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('707','155','content','备注','0','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('714','157','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('729','160','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('725','159','outfiletypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outfiletype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('723','159','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('728','160','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('727','159','files','文件','0','1','0','1','1','','','1','1','6','1','6','1','','1','0','','1','2','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('721','159','content','内容','1','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('726','159','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('730','161','content','内容','0','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('731','161','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('732','161','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('733','161','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('735','138','isvip','是否VIP','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('742','127','finishdate','完成日期','1','1','0','0','1','','','1','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('737','162','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('741','127','isfinish','是否完成','1','1','0','0','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('739','162','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('740','162','files','文件','0','1','0','0','1','','','1','1','6','1','6','1','','1','0','','1','2','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('743','127','jobnote','职位要求','1','4','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('744','127','number','需求人数','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('745','163','content','内容','0','3','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('746','163','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('747','163','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','0','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('748','163','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','0','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('749','163','startdate','开始时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('750','163','enddate','完成时间','1','1','0','1','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('751','163','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','0','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('752','159','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('753','140','model','模块名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('754','140','action','操作','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1343','276','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1341','276','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1342','276','email','email','1','1','0','1','2','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1336','275','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1337','275','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1338','276','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1339','276','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1340','276','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1335','275','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1334','275','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1324','275','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1325','275','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1326','275','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1327','275','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1328','275','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1329','275','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1330','275','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1331','275','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1332','275','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1333','275','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1008','0','asdf','sdf','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1344','276','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3444','820','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3398','804','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('3399','804','useradd','[系统]输入者','1','2','0','0','1','','','1','1','1','1','16','1','','1','1','','1','1','','0','','','','6','1','1','10003','0');
INSERT INTO `tp_sys_fields` VALUES ('3400','804','userupdate','[系统]更新者','1','2','0','0','1','','','1','1','1','1','15','1','','1','1','','1','1','','0','','','','6','1','1','10004','0');
INSERT INTO `tp_sys_fields` VALUES ('3401','806','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('3442','818','isnomor','是否常用','1','5','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','2','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3443','819','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3404','806','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3405','806','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('3409','810','f_name','姓','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('3410','810','l_name','名字','1','1','0','1','2','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('3411','810','e_name','英文名','1','1','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('3412','810','sex','姓别','1','5','0','1','3',' 错误提示[不填为默认]  ','','3','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('3413','810','langid','人才语言','1','1','0','1','1','','','9','1','4','1','4','1','','1','0','','1','1','lang','0','','','','6','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('3414','810','areaid','现在所在地','1','2','0','1','3','','','6','1','11','1','11','1','','1','0','','1','1','area','0','','','','1','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('3415','810','nowsalry','现在薪金','1','2','0','1','3','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','123','0');
INSERT INTO `tp_sys_fields` VALUES ('3416','810','hopesalry','期望薪金','1','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','124','0');
INSERT INTO `tp_sys_fields` VALUES ('3417','810','nowsalryremark','现在薪金备注','1','4','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','125','0');
INSERT INTO `tp_sys_fields` VALUES ('3418','810','left_timeid','到岗时间','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','left_time','0','','','','1','1','0','126','0');
INSERT INTO `tp_sys_fields` VALUES ('3419','811','name_cn','中文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3420','811','name_en','英文名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3421','811','sname','简称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3422','811','logo','LOGO','0','1','0','0','1','','','4','1','6','1','7','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3423','811','beijinid','资金背景','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3424','811','addr','地址','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','5','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3425','811','website','网址','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3426','811','kuimu','企业规模','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3427','811','shouyu','收入水平','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3428','811','paytype','薪金[税前/税后]','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3429','811','paymoth','年薪月数','0','2','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3430','811','payinfo','薪金说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3431','815','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('3432','815','parea','上级地名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('3433','815','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('3434','815','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('3435','815','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('3436','815','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('3437','815','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('3438','816','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3439','817','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3440','818','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3441','818','shortkey','快捷键','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1323','275','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1322','275','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1321','275','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3451','823','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3449','823','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3450','823','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3446','822','title','电话名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3447','822','content','说明','0','4','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3448','823','cid_from','原发客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1302','271','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1303','271','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1304','271','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1305','271','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1306','271','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1307','271','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1308','271','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1309','272','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1310','272','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1311','272','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1312','272','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1313','272','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1314','273','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1315','273','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1316','274','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1317','274','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1318','274','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1319','274','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1320','274','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3452','823','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3453','823','c2pdesc','人才关系简述','0','2','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1880','393','chengji','成绩','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','14','0');
INSERT INTO `tp_sys_fields` VALUES ('1881','395','title','标题','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1882','396','title','标题','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1883','396','pid','上级项目','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1876','393','strRight_answer','正确答案','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('1877','393','pic','图案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','10','0');
INSERT INTO `tp_sys_fields` VALUES ('1878','393','Hint','提示','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','13','0');
INSERT INTO `tp_sys_fields` VALUES ('1879','393','strYour_answer','个人答案','1','1','0','1','1','','','1','1','1','1','0','1','','1','1','','1','1','','1','id','','','1','1','1','12','0');
INSERT INTO `tp_sys_fields` VALUES ('1875','393','strD','D答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1873','393','strB','B答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1874','393','strC','C答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1872','393','strA','A答案','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1871','393','strQuestion','问题内容','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1870','393','strType_x','试题类型','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1869','393','strType_s','章节小类','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1866','394','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1868','393','intNumber','标识符号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1867','393','strType_f','章节大类','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1884','394','seq_no','排序','1','2','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','1','id','','','1','1','1','101','0');
INSERT INTO `tp_sys_fields` VALUES ('3445','821','title','标题','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3396','804','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('1891','399','content','内容','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1892','399','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1893','399','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','0','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1894','399','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','0','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1895','399','startdate','开始时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1896','399','enddate','完成时间','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1897','399','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','0','id','title_cn','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1898','400','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1899','400','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1900','400','files','文件','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1901','401','content','内容','0','3','0','1','1','','','1','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1902','401','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','40%','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1903','401','outnewstypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outnewstype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1904','401','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1905','402','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1906','402','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1907','403','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1908','403','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1909','403','content','内容','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1910','403','outfiletypeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','0','','1','1','outfiletype','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1911','403','title','标题','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1912','403','files','文件','1','1','0','0','1','','','5','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1913','404','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1914','404','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1915','405','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1916','406','callingId','所属行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1917','406','langId','发布语言','0','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1918','406','content','职位内容','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1919','406','jobcode','职位代码','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1920','406','title','职位名称','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1921','406','finishdate','完成日期','1','1','0','0','1','','','8','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1922','406','isfinish','是否完成','1','1','0','0','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1923','406','jobnote','职位要求','1','4','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1924','406','number','需求人数','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1925','407','remark','备注','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1926','407','verify','验证码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1927','407','email','email','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1928','407','account','用户名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1929','407','nickname','昵称','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1930','407','password','密码','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1931','407','status','用户状态','1','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1932','407','create_time','创建时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1933','407','update_time','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1934','408','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1935','408','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1936','408','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1937','408','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1938','408','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1939','409','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1940','409','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1941','409','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1942','409','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1943','409','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1944','409','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1945','409','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1946','409','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1947','409','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1948','409','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1949','409','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('1950','409','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('1951','409','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1952','409','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1953','409','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1954','409','updateTime','更新时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1955','409','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1956','410','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1957','410','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1958','411','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1959','411','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1960','411','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1961','411','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1962','411','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1963','411','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1964','411','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1965','412','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1966','412','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1967','412','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1968','412','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1969','412','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1970','413','logo','行业LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1971','413','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1972','413','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1973','414','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1974','414','content','内容','1','3','0','1','1','','','1','1','8','1','8','1','','1','1','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1975','414','contacttypeid','留言类型分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','contacttype','1','id','title_cn','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1976','414','pid','是否回复','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1977','415','title','职位名称','1','1','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1978','415','content','职位要求','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1979','415','startday','开始时间','1','1','0','1','1','','','7','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1980','415','endday','结束时间','1','1','0','1','1','','','7','1','13','1','13','1','','1','1','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1981','415','count','招聘人数','0','2','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1982','415','jobno','职位编号','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1983','416','info_cn','客户说明[中文]','0','3','0','1','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1984','416','logo','客户LOGO','1','1','0','0','1','','','4','1','6','1','6','1','','1','1','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1985','416','callingid','客户行业','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','calling','1','id','title_cn','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1986','416','title_en','客户名称[英文]','0','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1987','416','title_cn','客户名称[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1988','416','info_en','客户说明[英文]','0','3','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1989','416','isvip','是否VIP','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','array','1','0,1','否,是','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('1990','417','Lang','是否主管部门','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1991','417','area','分布地区','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1992','417','caption','部门名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1993','417','pid','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('1994','417','notes','说明','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('1995','417','detzz','部门职责','0','1','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('1996','418','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('1997','418','nodeId','所属权限','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('1998','418','pId','上级','0','2','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('1999','418','isleaf','是否主类','0','5','0','0','1','','','2','1','2','1','2','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2000','418','model','模块名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2001','418','action','操作','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2002','419','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2003','419','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2004','420','seqNo','排序','0','2','0','0','3','','','1','1','1','1','1','1','','1','0','','1','2','','0','','','','1','1','0','102','0');
INSERT INTO `tp_sys_fields` VALUES ('2005','420','update_on','更新时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','2','2','','0','','','','1','1','0','101','0');
INSERT INTO `tp_sys_fields` VALUES ('2006','420','create_at','加入时间','0','2','0','0','1','','','7','1','17','1','17','1','','1','0','','1','2','','0','','','','1','1','0','100','0');
INSERT INTO `tp_sys_fields` VALUES ('2007','420','id','ID号','1','6','0','0','1','','','1','1','16','1','16','1','','1','0','','1','2','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2008','421','content_cn','内容[中文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2009','421','content_en','内容[英文]','0','3','0','1','1','','','10','1','9','1','9','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2010','421','sta_infos_typeId','内容分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','sta_infos_type','1','id','title','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2011','421','title_en','标题[英文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2012','421','title_cn','标题[中文]','1','4','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2013','421','langId','发布语言','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','lang','1','id','title','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2014','422','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2015','423','title','标题','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2016','423','content','回答','0','3','0','1','1','','','10','1','9','1','9','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2017','423','pid','分类','1','2','0','1','1','','','2','1','2','1','2','1','','1','1','','1','1','faqtype','0','id','title_cn','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2018','424','title_en','标题[英文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2019','424','title_cn','标题[中文]','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3339','794','cal_color','cal_color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3338','794','cal_layeruser','cal_layeruser','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3337','794','personid','personid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3336','794','cal_layerid','cal_layerid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3335','793','local','local','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','sz','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('3334','793','notepad','notepad','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('3333','793','loginstat','loginstat','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('3332','793','loginip','loginip','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('3331','793','gmail_pwd','gmail_pwd','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('3330','793','gmail_user','gmail_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('3329','793','mail_pwd','mail_pwd','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('3328','793','mail_user','mail_user','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('3327','793','cal_is_admin','cal_is_admin','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','N','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3326','793','cal_firstname','cal_firstname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3325','793','cal_lastname','cal_lastname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3324','793','b_date','éúè?','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3323','793','userlever','ó??§??±e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3322','793','add','ó??§μ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3321','793','msn_pwd','msn_pwd','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3320','793','msn_user','msn_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3319','793','mail_personal','ó??§óê?t','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3318','793','per_id','é???ó??§','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3317','793','phone_mob','μ??°','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3316','793','phone_com','μ??°','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3315','793','out_name','out_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3314','793','ison','ison','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3313','793','password','?ü??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3312','793','personid','ó??§??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3311','793','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3310','792','view_type','view_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3309','792','tartget','tartget','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3308','792','BAS_ID_PRE','BAS_ID_PRE','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3307','792','BAS_LINK','BAS_LINK','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3306','792','BAS_ORDER','BAS_ORDER','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3305','792','BAS_TYPE','BAS_TYPE','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3304','792','BAS_NAME','BAS_NAME','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3303','792','BAS_ID','BAS_ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3302','791','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3301','791','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3300','791','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3299','790','tagtype','tagtype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3298','790','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3297','790','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3296','790','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3295','789','tagtype','tagtype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3294','789','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3293','789','tagallvalue','tagallvalue','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3292','789','sysid','sysid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3291','789','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3290','788','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3289','788','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3288','788','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3287','788','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3286','788','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3285','788','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3284','788','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3283','787','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3282','787','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3281','787','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3280','787','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3279','787','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3278','787','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3277','787','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3276','786','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3275','786','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3274','786','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3273','785','u_level','2é?′è¨?T','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3272','785','msg_info','???tààDí','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3271','785','up_time','?üD?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3270','785','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3269','785','input_uid','ê?è?è??±','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3268','785','msg_name','???t??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3267','785','sys_msg_typeid','D??￠μ?ààDí','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3266','785','id','D??￠ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3265','784','msg_subject','msg_subject','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3264','784','msg_title','???t±êìa','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3263','784','msg_into','?òòa?μ?÷','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3262','784','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3261','783','file_title','???t±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3260','783','file_into','?òòa?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3259','783','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3258','782','sendstyle','sendstyle','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3257','782','lan','lan','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3256','782','con_type','con_type','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3255','782','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3254','782','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3253','782','mailtxt_other','mailtxt_other','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3252','782','mailtext','mailtext','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3251','782','mailfile_other','mailfile_other','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3250','782','mailfile','mailfile','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3249','782','mailto','mailto','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3248','782','mailfrom','mailfrom','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3247','782','subject','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3246','782','iid','iid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3245','782','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3244','782','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3243','782','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3242','782','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3241','781','logtype','logtype','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3240','781','time','time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3239','781','userip','userip','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3238','781','userid','userid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3237','781','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3236','780','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3235','780','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3234','780','linkvar','linkvar','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3233','780','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3232','780','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3231','780','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3230','779','view_type','人才还是企业','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3229','779','uid','所属人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3228','779','BAS_ID_PRE','上级ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3227','779','out_id','本身外键ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3226','779','BAS_ORDER','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3225','779','BAS_TYPE','标签或文件','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3224','779','BAS_NAME','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3223','779','BAS_ID','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3222','778','file_title','???t±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3221','778','file_size','???t′óD?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3220','778','file_db','???t?t??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3219','778','up_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3218','778','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3217','778','input_uid','ê?è?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3216','778','file_into','?òòa?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3215','778','sys_file_typeid','???tμ?ààDí','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3214','778','id','???tID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3213','777','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3212','777','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3211','777','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3210','776','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3209','776','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3208','776','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3207','775','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3206','775','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3205','775','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3204','774','uid','??ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3203','774','add_time','加入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3202','774','web_url','地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3201','774','web_about','说明','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3200','774','web_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3199','774','webtype_id','网址类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3198','774','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3197','773','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3196','773','title','?￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3195','773','id','?￡à?ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3194','772','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3193','772','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3192','772','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3191','771','page','page','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3190','771','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3189','771','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3188','770','e_time','e_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3187','770','s_time','s_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3186','770','type','type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3185','770','info','info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3184','770','user','user','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3183','770','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3182','769','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3181','769','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3180','769','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3179','768','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3178','768','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3177','768','id','ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3176','767','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3175','767','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3174','767','shortkey','shortkey','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3173','767','tmp_name','tmp_name','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3172','767','pname','pname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3171','767','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3170','767','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3169','767','p_id2','p_id2','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3168','766','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3167','766','title','?°??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3166','766','pid','?°??ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3165','765','content','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3164','765','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3163','765','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3162','765','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3161','765','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3160','765','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3159','764','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3158','764','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3157','764','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3156','763','uid','ó??§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3155','763','title','?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3154','763','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3153','762','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3152','762','title','?D?3','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3151','762','id','?D?3ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3150','761','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3149','761','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3148','761','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3147','760','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3146','760','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3145','760','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3144','759','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3143','759','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3142','759','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3141','758','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3140','758','title','±êìa','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3139','758','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3138','757','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3137','757','title','??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3136','757','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3135','756','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3134','756','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3133','756','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3132','755','content','文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3131','755','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3130','755','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3129','755','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3128','755','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3127','755','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3126','754','file_name','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3125','754','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3124','754','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3123','754','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3122','754','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3121','754','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3120','754','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3119','753','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3118','753','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3117','753','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3116','752','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3115','752','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3114','752','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3113','751','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3112','751','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3111','751','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3110','750','rid','rid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3109','750','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3108','750','c_type','áa?μ·?ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3107','750','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3106','750','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3105','750','title','áa?μ?μ?÷','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3104','750','pid','è?2?ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3103','750','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3102','750','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3101','749','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','未命名','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3100','749','color','color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3099','749','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3098','748','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3097','748','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3096','748','shortkey','shortkey','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3095','748','title','DDòμ??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3094','748','ca_id','DDòμID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3093','747','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3092','747','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3091','747','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3090','746','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3089','746','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3088','746','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3087','745','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3086','745','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3085','745','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3084','744','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3083','744','title','??×?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3082','744','id','±3?°ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3081','743','parea','parea','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3080','743','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3079','743','title','μ?????×?′óàà','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3078','743','a_id','μ???′óààID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3077','743','a_id2','μ???D?ààID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3076','742','seqNO','??Dò','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3075','742','title','μ?????×?′óàà','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3074','742','a_id','μ???ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3073','741','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3072','741','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3071','741','id','ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3070','740','remark','remark','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('3069','740','is_finish','is_finish','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('3068','740','style','style','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3067','740','doc_all','doc_all','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3066','740','doc_en','doc_en','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3065','740','doc_cn','doc_cn','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3064','740','add_time','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3063','740','plan_interview_date','????ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3062','740','whynot','????ê??-òò','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3061','740','is_interview','ê?·???ê?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3060','740','oid','??μ￥o?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3059','740','maneger','1üàí??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3058','740','result','result','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3057','740','com_word','1????à??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3056','740','per_word','ó??§?à??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3055','740','u_id_contact','u_id_contact','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3054','740','companyid','1?????','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3053','740','personid','ó??§??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3052','740','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3051','739','neededit','neededit','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3050','739','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3049','739','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3048','739','department','department','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3047','739','out_reson','out_reson','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3046','739','expir_en','expir_en','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3045','739','expir_cn','expir_cn','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3044','739','post2','post2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3043','739','post1','post1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3042','739','viewmen','viewmen','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3041','739','end_date','end_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3040','739','start_date','start_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3039','739','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3038','739','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3037','739','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3036','738','remark','remark','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('3035','738','add_time','add_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('3034','738','true_date','true_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('3033','738','plan_date','plan_date','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3032','738','whynot','whynot','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3031','738','is_interview','is_interview','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3030','738','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3029','738','maneger','maneger','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3028','738','result','result','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3027','738','introview_info','introview_info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3026','738','com_word','com_word','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3025','738','per_word','per_word','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3024','738','u_id_contact','u_id_contact','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3023','738','rid','rid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3022','738','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3021','738','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3020','738','iid','iid','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3019','737','m_value','m_value','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3018','737','m_table','m_table','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3017','737','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3016','736','pid','个人分类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3015','736','style','状态','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3014','736','direct','方向in/out','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3013','736','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3012','736','isread','isread','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3011','736','size','size','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3010','736','form_time','邮件的真实时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3009','736','cc_user','cc_user','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3008','736','to_user','to_user','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3007','736','form_user','form_user','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3006','736','content','content','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3005','736','subject','subject','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3004','736','mailid','mailid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3003','736','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3002','735','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3001','735','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3000','735','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2999','735','pid','上层目录','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2998','735','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2997','734','inportant','重要程度[123]','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2996','734','style','状态[是否存在]','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2995','734','direct','方向in/out','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2994','734','filetype','filetype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2993','734','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2992','734','addtime','addtime','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2991','734','size','size','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2990','734','filename','filename','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2989','734','title','title','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2988','734','mailid','mailid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2987','734','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2986','733','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2985','733','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2984','733','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2983','732','seqNO','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2982','732','title','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2981','732','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2980','732','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2979','732','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2978','731','iscc','发送或抄送','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2977','731','isread','是否已看','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2976','731','readtime','查看时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2975','731','tid','收信人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2974','731','uid','发送人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2973','731','msgid','所属信息ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2972','731','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2971','730','pid','上一级信息','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2970','730','mtype','信息类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2969','730','bid_all','抄送','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2968','730','tid_all','所有收信人','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2967','730','senttime','发信时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2966','730','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2965','730','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2964','730','uid','发信人ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2963','730','id','站内信息ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2962','729','ative','是否活动','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2961','729','adremark','广告备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2960','729','needad','是否需要广告','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2959','729','needhelp','是否需要协作','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2958','729','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2957','729','slary','薪金','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2956','729','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2955','729','order_type','订单类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2954','729','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2953','729','time_finsh','完成时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2952','729','uid','跟进人','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2951','729','finish_style','完成情况','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2950','729','o_style','订单状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2949','729','order_info','订单内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2948','729','doc_order','doc_order','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2947','729','order_file','订单原件','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2946','729','date_o','订单日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2945','729','time_add','输入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2944','729','u_add','输入人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2943','729','per_no','需要人才数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2942','729','post2','职位小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2941','729','post1','职位大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2940','729','post_info','职位内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2939','729','post_name','职位名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2938','729','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2937','729','oid','订单ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2936','729','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2935','728','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2934','728','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2933','728','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2932','728','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2931','728','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2930','727','isnomor','常用','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2929','727','count','count','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2928','727','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2927','727','parea','parea','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2926','727','areashort','areashort','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2925','727','areacode','areacode','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2924','727','areaphone','areaphone','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2923','727','areapy','areapy','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2922','727','areaname','areaname','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2921','727','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2920','726','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2919','726','color','color','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2918','726','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2917','725','color','个人着色','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2916','725','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2915','725','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2914','725','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2913','724','isontype','有效周期','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','once','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2912','724','content','详细','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2911','724','title','名字','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2910','724','sys_id','绑定的ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2909','724','sys_type','系统类型C客户,P人才,J订单','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','C','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2908','724','cal_notetime','时间差','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2907','724','cal_notetype','提醒周期','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2906','724','cal_time_end','CAL时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2905','724','cal_time_start','CAL时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2904','724','cal_date','CAL日期','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2903','724','uid','个人分类','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2902','724','perid','个人分类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2901','724','typeid','系统分类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2900','724','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2899','723','userlevels','userlevels','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2898','723','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2897','723','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2896','723','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2895','723','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2894','722','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2893','722','isrep','isrep','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2892','722','uptime','uptime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2891','722','addtime','addtime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2890','722','u_mg','u_mg','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2889','722','content','content','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2888','722','title','title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2887','722','pid','pid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2886','722','typeid','typeid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2885','722','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2884','721','oid','oid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2883','721','c_type','áa?μ·?ê?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2882','721','o_type','o_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2881','721','uid','ê?è?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2880','721','addtime','?óè?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2879','721','title','áa?μ?μ?÷','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2878','721','cid','?í?§ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2877','721','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2876','720','isreject','isreject','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2875','720','age','áa?μ·?ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2874','720','remark','ê?è?è?','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2873','720','infor','è?2?ID','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2872','720','title','?í?§ID','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2871','720','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2870','719','n_name','n_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','60','0');
INSERT INTO `tp_sys_fields` VALUES ('2869','719','modstyle','modstyle','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','59','0');
INSERT INTO `tp_sys_fields` VALUES ('2868','719','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','58','0');
INSERT INTO `tp_sys_fields` VALUES ('2867','719','viewtime','2é?′êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','57','0');
INSERT INTO `tp_sys_fields` VALUES ('2866','719','u_update','?üD?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','56','0');
INSERT INTO `tp_sys_fields` VALUES ('2865','719','input_uid','ê?è?è??±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','55','0');
INSERT INTO `tp_sys_fields` VALUES ('2864','719','is_hr','ê?·?HR','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','54','0');
INSERT INTO `tp_sys_fields` VALUES ('2863','719','important','important','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','53','0');
INSERT INTO `tp_sys_fields` VALUES ('2862','719','sou_id','D??￠à′?′','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','52','0');
INSERT INTO `tp_sys_fields` VALUES ('2861','719','o_intor','??è??òàú?-±?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','51','0');
INSERT INTO `tp_sys_fields` VALUES ('2860','719','o_files','?-ê???μμ','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('2859','719','remark','±?×￠','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('2858','719','is_rec','ê?·?3é1|í???','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('2857','719','pic','????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('2856','719','up_time','?üD?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','46','0');
INSERT INTO `tp_sys_fields` VALUES ('2855','719','add_time','ê?è?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','45','0');
INSERT INTO `tp_sys_fields` VALUES ('2854','719','im_skpy','skpy','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','44','0');
INSERT INTO `tp_sys_fields` VALUES ('2853','719','im_poco','poco','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','43','0');
INSERT INTO `tp_sys_fields` VALUES ('2852','719','im_msn','msn','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('2851','719','im_qq','qq','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('2850','719','card_id','éí·Y?¤','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('2849','719','suit','ì?3¤','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('2848','719','trip_job','1¤×÷?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('2847','719','trip_tra','?à?μ?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('2846','719','trip_edu','?ìóy?-àú','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('2845','719','experience','1¤×÷?-?é','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('2844','719','is_out','ê?·?óDo￡ía?-?é','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('2843','719','a_time','μ??úê±??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('2842','719','h_stipend_id','?úí??￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('2841','719','h_yom','h_yom','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('2840','719','h_stipend','?úí?D??e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('2839','719','h_P_moth','?úí??êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('2838','719','n_stipend_id','???°?￡à?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('2837','719','P_moth','?êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('2836','719','n_yom','n_yom','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2835','719','n_stipend','???°D??e','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2834','719','mail_id','áa?μóê?t','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2833','719','phone_id','áa?μμ??°','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2832','719','c_addr','áa?μμ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2831','719','h_addr2','?￡í?1¤×÷3?êD','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2830','719','h_addr1','?￡í?1¤×÷μ???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2829','719','n_addr2','??1¤×÷μ?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2828','719','n_addr1','??1¤×÷ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2827','719','area2','??1á','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2826','719','area1','ê?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2825','719','h_post_sub','ê¤è?/??±ê?°??D?àà','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2824','719','h_post','ê¤è?/??±ê?°??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2823','719','post_sub','???ú?°??D?àà','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2822','719','post','???ú?°??′óàà','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2821','719','n_call_info','n_call_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2820','719','h_calling','?￡í?DDòμ','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2819','719','sub_country_id','sub_country_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2818','719','sub_lang_id','sub_lang_id','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2817','719','n_calling','?ù?úDDòμ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2816','719','cid','?ù?ú1???','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2815','719','sex','D?±e','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2814','719','b_day','?êá?','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2813','719','name_en','ó￠????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2812','719','title','D???','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2811','719','uid','è?2?±ào?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2810','719','uid','???ú±ào?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2809','718','com_type','com_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('2808','718','modstyle','modstyle','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('2807','718','tmp_ser','tmp_ser','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('2806','718','doc_detail','doc_detail','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('2805','718','doc_sim','doc_sim','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('2804','718','o_files','o_files','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('2803','718','doc_cn','doc_cn','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('2802','718','pid','??è?áa?μè?','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('2801','718','important','??òa3ì?è','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('2800','718','viewtime','2é?′′?êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('2799','718','c_id_pre','×ü1???/é???μ￥??','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('2798','718','sou_id','D??￠à′?′','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('2797','718','zipcode','óê±à','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('2796','718','phone2','áa?μμ??°2','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('2795','718','phone1','áa?μμ??°','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('2794','718','n_calling','?ù?úDDòμ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('2793','718','add_time','ê?è?è??ú','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('2792','718','up_time','?üD?ê±??','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('2791','718','u_mg','1üàí?±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('2790','718','u_add','?ú???±','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('2789','718','remark','±?×￠','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('2788','718','yewu','1???òμ??','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('2787','718','kuimu','1???1??￡','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('2786','718','shouyu','?êê?è?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('2785','718','c_hr','o?×÷á?í·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('2784','718','c_constam','?÷òa?í?§','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('2783','718','o_company','??ê?1???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('2782','718','p_moth_info','p_moth_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('2781','718','p_moth','?êD???êy','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('2780','718','p_mony','1¤×ê(?°?°/?°oó)','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('2779','718','path_info','path_info','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('2778','718','path','?úó??D??í???','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('2777','718','is_act','ê?·?′úàí','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('2776','718','is_or','ê?·?????','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('2775','718','website','í??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('2774','718','addr','?í?§μ??·','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('2773','718','beijin','×ê?e±3?°','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2772','718','logo','logo','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2771','718','sname','?ò3?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2770','718','name_en','?í?§1?????ó￠??','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2769','718','name_cn','?í?§1??????D??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2768','718','c_o_id','??íaμ??í?§o?','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2767','718','cid','cid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2766','717','c2pdesc','人才关系简述','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('2765','717','c2ptype','对人才关系','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('2764','717','c2cdesc','客户间简述','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('2763','717','c2ctype','客户间合作还是竞争','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('2762','717','cid2','cid2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2761','717','cid1','cid1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2760','717','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('2759','716','oid','职位ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('2758','716','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('2757','716','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3340','794','cal_dups','cal_dups','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','N','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3341','795','personid','personid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3342','795','cal_setting','cal_setting','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3343','795','cal_value','cal_value','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3344','796','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3345','796','tablename','tablename','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3346','796','tableinfo','tableinfo','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3347','796','helpdetail','helpdetail','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3348','797','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3349','797','uid','发出者','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3350','797','addtime','加入时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3351','797','startdate','开始时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3352','797','enddate','结束时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3353','797','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3354','797','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3355','797','ison','是否有效','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3356','798','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3357','798','uid','发出者','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3358','798','tid','对方','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3359','798','startdate','开始时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3360','798','enddate','结束时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3361','798','is_finish','对方确认完成','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3362','798','finish_time','完成时间','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3363','798','sureinfo','证明信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3364','798','gid','gid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3365','799','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3366','799','uid','uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3367','799','tid','tid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3368','799','words','words','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3369','799','addtime','addtime','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3370','799','taskid','taskid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3371','799','f_percent','进度百分比','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3372','800','userlevelid','userlevelid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3373','800','tablename','tablename','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3374','800','permission','permission','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3375','801','userlevelid','userlevelid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3376','801','userlevelname','userlevelname','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3377','802','cat_id','cat_id','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3378','802','cat_owner','cat_owner','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3379','802','cat_name','cat_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3380','803','cal_id','cal_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3381','803','cal_group_id','cal_group_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('3382','803','cal_ext_for_id','cal_ext_for_id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('3383','803','cal_create_by','cal_create_by','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('3384','803','cal_date','cal_date','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('3385','803','cal_time','cal_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('3386','803','cal_mod_date','cal_mod_date','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('3387','803','cal_mod_time','cal_mod_time','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('3388','803','cal_duration','cal_duration','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('3389','803','cal_priority','cal_priority','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','2','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('3390','803','cal_type','cal_type','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','E','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3391','803','cal_access','cal_access','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','P','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3392','803','cal_name','cal_name','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('3393','803','cal_description','cal_description','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('3397','804','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('3394','276','lastlogintime','上次登陆时间','1','2','0','0','1','','','8','1','17','0','17','0','','1','1','','1','1','','0','','','','3','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('3395','276','lastloginip','上次登陆IP','1','1','0','0','1','','','1','1','16','0','12','0','','1','1','','1','1','','0','','','','1','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('3454','809','userid','用户ID','1','2','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3455','809','copytext','拷贝数据','1','3','0','0','1','','','1','1','16','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3456','808','userid','用户ID','1','2','0','0','1','','','2','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('3457','808','userip','登陆IP','1','1','0','0','1','','','1','1','12','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4715','999','file_into','简介','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4714','999','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4694','997','linkvar','链接地址','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4695','997','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4696','997','ison','是否有效','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4697','998','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4698','998','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4699','998','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4700','998','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4701','998','iid','面试ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4702','998','subject','主题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4703','998','mailfrom','发送人地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4704','998','mailto','收件人地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4705','998','mailfile','外发文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4706','998','mailfile_other','其它文件名','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4707','998','mailtext','邮件内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4708','998','mailtxt_other','邮件其它信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4710','998','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4711','998','con_type','联系类型','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4712','998','lang','语言','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4713','998','sendstyle','发送状态','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4587','971','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4592','972','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4597','973','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4600','974','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4609','977','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4619','980','title','电话','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4632','983','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4255','941','sub_lang_id','掌握语言','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4252','941','sex','姓别','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4251','941','b_day','生日','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4250','941','name_en','英文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4249','941','name_cn','中文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4248','941','uid','人才编号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4247','941','uid','人才ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4246','940','areaname','地区名','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','112','0');
INSERT INTO `tp_sys_fields` VALUES ('4245','940','areapy','拼音','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','117','0');
INSERT INTO `tp_sys_fields` VALUES ('4244','940','areaphone','区号','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','118','0');
INSERT INTO `tp_sys_fields` VALUES ('4243','940','areacode','邮政编码','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','119','0');
INSERT INTO `tp_sys_fields` VALUES ('4242','940','areashort','简写','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','120','0');
INSERT INTO `tp_sys_fields` VALUES ('4241','940','parea','上级地名','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','121','0');
INSERT INTO `tp_sys_fields` VALUES ('4240','940','isnomor','是否常用','1','2','0','0','1','','','1','1','3','1','3','1','','1','0','','1','1','','0','','','','7','1','0','122','0');
INSERT INTO `tp_sys_fields` VALUES ('4238','939','important','客户级别 ','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4237','939','viewtime','查看次数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4235','939','sou_id','信息来源','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4234','939','zipcode','邮政编码','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4868','1024','c2ptype','对人才关系','1','1','0','0','0','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4869','1024','cid_from','原来客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4231','939','n_calling','所属行业','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4226','939','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4225','939','yewu','公司业务','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4224','939','kuimu','公司规模','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4223','939','shouyu','年收入','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4874','1025','level','对手级别','1','2','0','0','0','','','2','1','2','1','2','1','','0','1','2','1','0','Array','1','1,2,3,4','很差不成气候,一般业绩还可以,特定行业很强,整体很强','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4873','1024','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4878','1025','calling','专长行业','0','2','0','1','0','','','2','1','4','1','4','1','','0','1','','1','0','sub_calling','1','id','title','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4219','939','p_moth_info','年薪月数备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4218','939','p_moth','年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4217','939','p_mony','工资类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4216','939','path_info','招聘途径备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4215','939','path','招聘方式','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4693','997','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4692','997','uid','员工号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4691','997','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4690','996','view_type','人才还是企业','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4689','996','uid','所属人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4686','996','BAS_ORDER','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4687','996','out_id','本身外键ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4688','996','BAS_ID_PRE','上级ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4212','939','website','网址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4211','939','addr','客户地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4209','939','logo','客户LOGO','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4210','939','beijin','客户背景','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4208','939','sname','简称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4207','939','name_en','客户英文名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4206','939','name_cn','客户中文名','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4204','939','cid','客户ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4685','996','BAS_TYPE','标签或文件','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4684','996','BAS_NAME','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4683','996','BAS_ID','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4682','995','file_title','文件标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4680','995','file_path','文件路径','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4676','995','file_into','文件说明','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4672','994','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4671','994','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4667','992','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4666','992','title','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4665','992','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4663','991','add_time','加入时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4662','991','web_url','地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4660','991','web_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4657','990','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4656','990','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4655','990','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4654','989','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4653','989','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4652','989','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4648','987','end_date','结束日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4647','987','start_date','开始日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4646','987','typeid','应用类型','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4642','986','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4641','986','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4640','986','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4638','985','title','名字','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4854','987','start_time','开始时间','0','19','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4131','921','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4673','994','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4674','995','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4675','995','sys_file_typeid','系统公布类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4637','985','id','ID号','1','6','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4636','984','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4635','984','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4634','984','pid','职位大类id','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4633','984','p_id2','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4631','983','title','职位标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4630','983','pid','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4629','982','content','职位说明','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4626','982','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4625','982','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4624','982','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4623','981','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4622','981','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4621','981','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4620','980','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4618','980','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4617','979','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4616','979','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4615','979','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4614','978','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4613','978','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4612','978','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4611','977','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4610','977','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4608','976','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4607','976','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4606','976','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4605','975','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4604','975','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4568','967','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4569','967','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4571','967','uid','输入人员','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4572','967','c_type','类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4603','975','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4602','974','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4601','974','title','E-mail','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4599','973','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4598','973','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4596','972','content','内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4593','972','title','标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4591','972','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4590','971','file_name','文件名','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4586','971','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4585','971','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4584','971','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4556','963','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4577','968','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4576','968','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4575','968','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4574','967','rid','推出ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4573','967','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4567','967','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4566','967','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4565','966','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4564','966','title','名称','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4563','966','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4557','964','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4558','964','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4559','964','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4560','965','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4561','965','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4562','965','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4555','963','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4527','958','com_word','客户反馈信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4524','958','cid','企业ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4525','958','u_id_contact','联系人ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4554','963','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4553','962','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4552','962','title','名称','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4551','962','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4913','1028','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4912','1028','phonetype','邮件类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4911','1028','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4910','1028','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4909','1028','title','E-MAIL','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4866','982','ison','是否有效','1','5','0','0','1','','','0','1','3','1','0','1','','1','1','','0','1','','0','','','','7','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4540','958','remark','备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4539','958','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4538','958','style','状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4537','958','doc_all','全部简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4536','958','doc_en','英文简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4535','958','doc_cn','中文简历','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4533','958','plan_interview_date','计划时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4532','958','whynot','没去原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4531','958','is_interview','是否去面试','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4530','958','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4529','958','maneger','1üàí??','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4528','958','result','结果','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4526','958','per_word','人才反馈信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4523','958','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4522','958','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4518','956','ison','ison','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4517','956','notetype','notetype','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4516','956','end_time','end_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4515','956','add_time','add_time','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','0000-00-00 00:00:00','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4514','956','input_uid','input_uid','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4513','956','msg_title','msg_title','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4512','956','per_msg_typeid','per_msg_typeid','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4511','956','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4507','955','department','所在部门','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4506','955','out_reson','离开原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4505','955','expir_en','英文介绍','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4504','955','expir_cn','中文介绍','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4503','955','post2','职位小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4502','955','post1','职位大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4501','955','viewmen','证明人','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4500','955','end_date','结束时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4499','955','start_date','开始时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4498','955','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4497','955','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4496','955','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4495','954','remark','备注','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4493','954','true_date','实际面试时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4492','954','plan_date','计划面试时间','1','18','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4491','954','whynot','不去面试原因','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4490','954','is_interview','是否去了面试','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4489','954','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4488','954','maneger','maneger','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4487','954','result','面试结果','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4486','954','introview_info','introview_info','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4485','954','com_word','企业反馈','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4484','954','per_word','人才反馈','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4483','954','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4482','954','rid','推荐ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4481','954','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4480','954','pid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4479','954','iid','面试ID','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4473','952','ative','是否活动职位','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('4472','952','adremark','广告信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('4471','952','needad','是否需要外发广告','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('4470','952','needhelp','是否需要协助','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4469','952','remark','备注','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4468','952','slary','职位薪金','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4467','952','u_id_contact','联系人','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4466','952','order_type','订单类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4465','952','is_finish','是否完成','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4464','952','time_finsh','完成时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4858','940','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4462','952','finish_style','完成程度','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4461','952','o_style','订单状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4460','952','order_info','订单信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('4459','952','doc_order','doc_order','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4458','952','order_file','订单原件','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4457','952','date_o','下单日期','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4454','952','per_no','per_no','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4453','952','post2','职位分类2','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4452','952','post1','职位分类1','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4451','952','post_info','职位信息','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4450','952','post_name','职位名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4449','952','cid','企业ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4448','952','oid','订单号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4447','952','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4446','951','eqsNo','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4445','951','pid','上级部门ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4444','951','title','部门名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4443','951','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4442','951','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4441','950','pages','BUG发生页面','1','1','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4440','950','result','处理结果','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4439','950','isok','是否处理','1','1','0','0','0','','','1','1','1','0','1','0','','0','1','0','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4438','950','content','内容描述','1','3','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4435','950','title','标题','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4434','950','typeid','BUG类型','1','2','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4432','949','oid','订单号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4431','949','c_type','类型2','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4430','949','o_type','类型1','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4427','949','title','说明','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4426','949','cid','客户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4425','949','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4324','945','oid','订单ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4323','945','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4322','945','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4272','941','n_stipend','现在薪金','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('4917','1029','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4918','1029','imtype','类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4269','941','c_addr','现在地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('4268','941','h_addr2','期望工作市','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4267','941','h_addr1','期望工作省','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4266','941','n_addr2','籍贯市','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4265','941','n_addr1','籍贯省','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4264','941','area2','地区小类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4263','941','area1','地区大类','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4262','941','h_post_sub','期望职位小类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4261','941','h_post','期望职位大类','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4914','955','area','工作所在地','1','2','0','1','1','','','1','1','1','1','0','1','','1','0','','0','1','','0','','','','1','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('4919','1029','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4257','941','h_calling','希望行业','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4256','941','sub_country_id','国籍','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4104','914','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4103','914','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4102','914','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4731','1002','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4727','1001','msg_info','信息内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4728','1001','u_level','查看权限','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4729','1002','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4730','1002','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4723','1001','msg_name','名称','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4717','1000','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4716','999','file_path','文件路径','1','4','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4305','942','id','ID号','1','6','0','0','0','','','0','0','16','0','16','0','','1','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4304','941','n_name','昵称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4303','941','viewtime','查看次数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','55','0');
INSERT INTO `tp_sys_fields` VALUES ('4300','941','is_hr','是否HR','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','54','0');
INSERT INTO `tp_sys_fields` VALUES ('4299','941','important','人才级别','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','53','0');
INSERT INTO `tp_sys_fields` VALUES ('4298','941','sou_id','信息来源','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','52','0');
INSERT INTO `tp_sys_fields` VALUES ('4915','1029','title','内容','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4916','1029','uid','人才ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4295','941','remark','备注','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('4294','941','is_rec','成功推荐','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('4293','941','pic','个人图片','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('4285','941','suit','技能','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('4284','941','trip_job','工作经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('4283','941','trip_tra','培训经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('4282','941','trip_edu','教育经历','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('4281','941','experience','工作经验（年）','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('4280','941','is_out','海外经验','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('4279','941','a_time','到岗时间','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('4278','941','h_yom','期望薪金计量方式','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('4277','941','h_stipend','期望薪金','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('4273','941','n_yom','薪金计量方式','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('4274','941','p_moth','目前年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('4275','941','n_stipend_id','人才语言','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('4276','941','h_p_moth','期望年薪月数','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('4722','1001','sys_msg_typeid','信息类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4865','982','department_id','所属部门','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4664','991','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4661','991','web_about','说明','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4659','991','webtype_id','网址类型','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4658','991','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4645','987','infos','相关信息','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4644','987','uid','用户ID','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4643','987','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4639','985','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4132','921','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4133','921','email','email','1','1','0','1','2','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4134','921','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4135','921','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4136','921','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4137','921','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4138','921','lastlogintime','上次登陆时间','1','2','0','0','1','','','8','1','17','0','17','0','','1','1','','1','1','','0','','','','3','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4139','921','lastloginip','上次登陆IP','1','1','0','0','1','','','1','1','16','0','12','0','','1','1','','1','1','','0','','','','1','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4140','922','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4141','922','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4142','922','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4143','922','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4144','922','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4145','923','remark','说明','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4146','923','version','版本','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4147','923','verify','验证码','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4148','923','hash','hash值','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4149','923','type','附件类型','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4150','923','size','附件大小','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4151','923','extension','文件后辍','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4152','923','savepath','保存路径','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4153','923','savename','保存名称','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4154','923','module','模块','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4155','923','recordId','记录ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4156','923','userId','用户ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4157','923','uploadTime','上传时间','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4158','923','downCount','下载次数','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4159','923','title','名称','1','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4286','941','card_id','身份证号','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('4161','923','downloadTime','下载次数','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4162','924','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4163','924','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4164','925','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4165','925','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4166','925','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4167','925','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4168','925','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4169','925','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4170','925','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4171','926','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4172','926','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4173','926','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4174','926','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4175','926','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4721','1001','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4720','1000','msg_subject','邮件主题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4719','1000','msg_title','类别标题','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4718','1000','msg_into','邮件内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4320','944','url','COPY地址','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4318','944','copyvar','COPY内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4317','944','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4314','943','cid_from','原来客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4190','935','up_time','更新时间','0','2','0','0','1','','','8','1','10','0','10','0','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4191','935','uid_add','输入人员','0','2','0','0','1','','','1','1','1','0','16','0','','1','1','','1','1','','0','','','','6','1','1','10003','0');
INSERT INTO `tp_sys_fields` VALUES ('4192','935','uid_up','更新人员','0','2','0','0','1','','','1','1','1','0','16','0','','1','1','','1','1','','0','','','','6','1','1','10004','0');
INSERT INTO `tp_sys_fields` VALUES ('4194','935','add_time','加入时间','0','2','0','0','1','','','8','1','10','0','10','0','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4313','943','c2ctype','客户间关系','1','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4312','943','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4311','943','c2cdesc','关系简述','0','1','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4310','942','isreject','是否联系','1','2','0','0','0','','','2','1','3','1','3','1','','1','1','1','1','0','Array','1','1,0','是,否','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4309','942','ages','年龄','1','2','0','0','3','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4308','942','remark','备注','0','3','0','0','0','','','1','1','8','1','8','1','','1','0','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4307','942','infos','简历','1','3','0','0','0','','','1','1','8','1','8','1','','1','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4306','942','title','姓名','1','4','0','0','0','','','1','1','1','1','1','1','','1','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4739','1004','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4740','1004','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4741','1004','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4742','1004','page','页面','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4743','1004','linkvar','搜索条件','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4744','1004','seqNO','排序','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4745','1004','ison','有效','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','1','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4746','1005','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4747','1005','sysid','系统内部ID号','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4748','1005','tagallvalue','标签内容','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4749','1005','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4750','1005','systagtype','系统标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4751','1006','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4752','1006','title','标题','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4753','1006','uid','用户ID','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4754','1006','tagtype','标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4755','1007','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4756','1007','title','标签类型','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4757','1007','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4766','1009','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4769','1009','out_name','对外职位','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4770','1009','phone_com','分机号','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4771','1009','phone_mob','手机号','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4772','1009','per_id','上级领导','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4773','1009','mail_personal','邮件职位','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4774','1009','msn_user','MSN名称','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4775','1009','msn_pwd','MSN密码','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4776','1009','add','家庭地址','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('4778','1009','b_date','生日','1','17','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('4782','1009','mail_user','NS邮件用户','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('4783','1009','mail_pwd','NS邮件密码','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('4784','1009','gmail_user','gmail邮件用户','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('4785','1009','gmail_pwd','gmail邮件密码','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('4786','1009','loginip','上次登陆IP','1','4','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('4787','1009','loginstat','登陆状态','1','2','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('4788','1009','notepad','缓存内容','1','3','0','0','0','','','1','1','1','0','1','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4789','1009','ischeck','是否监督','1','5','0','0','0','','','1','1','1','0','1','1','','0','1','0','1','0','','0','','','','0','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('4855','987','end_time','结束时间','0','19','0','0','1','','','1','1','1','1','0','1','','1','1','','1','1','','0','','','','1','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4856','950','id','ID号','0','6','0','0','1','','','1','1','8','0','0','1','','1','0','','4','0','','0','','','','1','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4857','943','id','ID号','0','6','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4871','1024','cid_to','目标客户ID','1','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4867','1024','c2pdesc','人才关系简述','0','2','0','0','0','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4879','1025','remark','备注','0','3','0','0','0','','','1','1','8','1','8','1','','0','0','','1','0','','0','','','','0','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('4881','1025','kuimu','公司规模','1','2','0','1','0','','','2','1','2','1','2','1','','0','0','','1','0','sub_kuimu','1','id','title','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('4859','955','remark','其它信息','0','4','0','0','1','','','1','1','1','1','0','1','','1','0','','1','1','','0','','','','1','1','1','11','0');
INSERT INTO `tp_sys_fields` VALUES ('4860','951','dep_type','部门归属类型','1','2','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4861','1023','seqNO','排序','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','5','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4862','1023','title','NS部门标准','1','1','0','0','0','','','1','1','1','0','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4863','1023','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4864','1023','remark','NS部门的标准划分说明','0','4','0','1','1','','','1','1','8','1','0','1','','1','0','','0','1','','0','','','','5','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4882','1025','shouyu','年收入','1','1','0','1','0','','','2','1','2','1','2','1','','0','1','1','1','0','Array','1','1,2,3,4','不清楚,100W以下,100W到1000W,1000W以上','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('4888','1025','website','网址','0','4','0','1','7','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('4889','1025','addr','地址','0','4','0','0','0','','','1','1','8','1','8','1','','0','0','','1','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4890','1025','logo','LOGO','0','4','0','0','0','','','4','1','6','1','6','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4891','1025','beijin','背景','1','2','0','1','0','','','2','1','2','1','2','1','','0','1','','1','0','sub_beijing','1','id','title','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4892','1025','sname','简称','1','1','0','1','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4893','1025','name_en','英文名','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4894','1025','name_cn','中文名','1','4','0','1','0','','','1','1','1','1','1','1','','0','1','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4895','1025','nid','对手ID号','0','6','0','0','0','','','1','0','1','0','1','0','','0','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4896','1026','nid','对手ID','1','2','0','0','0','','','1','1','1','1','1','1','','0','1','','1','0','ns_consultants','1','nid','name_cn,name_en,sname','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4897','1026','content','内容','1','3','0','0','0','','','10','1','9','1','9','1','','0','0','','1','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4898','1026','title','标题','1','4','0','0','0','','','1','1','1','1','1','1','','0','0','','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4899','1026','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4900','1027','remark','简要说明','1','4','0','1','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4901','1027','start_date','开始时间','1','17','0','0','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4902','1027','cid','企业ID','1','2','0','1','3','','','2','1','1','1','1','1','','2','1','','1','1','company','1','cid','name_cn,name_en,sname','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4903','1027','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','1','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4904','1027','notes','客户评价','1','5','0','1','1','','','2','1','2','1','2','1','','2','1','','1','1','Array','1','1,2,3,4','很差,信用不好,不错,很好','','7','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4905','1027','nid','猎头ID','1','2','0','1','3','','','2','1','1','1','1','1','','2','1','','1','1','ns_consultants','1','nid','name_cn,name_en,sname','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4906','1027','end_date','结束时间','1','17','0','0','1','','','1','1','13','1','13','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4907','980','phonetype','电话类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4908','980','isdefault','是否默认','0','5','0','1','1','','','1','1','3','1','0','1','','1','0','','0','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4920','1030','seqNO','排序','1','1','0','0','0','','','1','1','1','1','1','1','','1','1','5','1','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4921','1030','title','名称','1','1','0','1','0','','','1','1','1','1','1','1','','1','1','','1','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4922','1030','id','ID号','0','6','0','0','0','','','0','0','0','0','1','0','','0','1','','1','0','','0','','','','0','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4924','1031','create_on','[系统]加入时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','1','1','','0','','','','3','1','1','10001','0');
INSERT INTO `tp_sys_fields` VALUES ('4925','1031','id','公共ID','1','6','0','0','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4926','1031','update_on','[系统]更新时间','1','2','0','0','1','','','8','1','10','1','10','1','','1','1','','2','1','','0','','','','3','1','1','10002','0');
INSERT INTO `tp_sys_fields` VALUES ('4927','1032','remark','备注','0','4','0','1','1','','','1','1','8','1','9','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4928','1032','verify','验证码','1','1','0','1','9','','','1','1','1','1','1','1','','1','1','1111','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4957','1037','click_x','点击横坐标','1','5','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4930','1032','account','用户名','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4931','1032','nickname','昵称','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4932','1032','password','密码','0','1','0','1','1','','','1','0','1','0','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4933','1032','status','用户状态','1','5','0','0','1','','','9','1','3','1','3','1','','1','0','','1','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4956','1037','screen_w','屏幕宽','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4955','1037','type','统计类型','1','1','0','1','1','','','2','1','2','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4936','1033','groupId','权限组','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4937','1033','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4938','1033','nodeId','权限节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4939','1033','parentNodeId','上组节点','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4940','1033','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4941','1034','userId','用户Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4942','1034','groupId','级别Id','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4943','1035','remark','说明','0','4','0','0','1','','','1','1','8','1','8','1','','1','0','','1','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4944','1035','status','状态','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4945','1035','title','标题','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4946','1035','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4947','1035','pid','上组ID','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4948','1035','level','级别','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4949','1035','type','类型','0','5','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4950','1036','ename','标记名','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4951','1036','status','状态','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4952','1036','remark','说明','0','4','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4953','1036','pid','上级','0','2','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4954','1036','title','名称','0','1','0','0','1','','','1','1','1','1','1','1','','1','0','','1','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4958','1037','click_y','点击纵坐标','1','5','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4959','1037','labelid','统计标识','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4960','1037','uptime','统计日期','1','2','0','0','1','','','1','1','1','1','0','1','','1','0','','0','1','','0','','','','1','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4961','1039','ip','IP地址','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4962','1039','time','访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4963','1039','pageurl','页面URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4964','1039','pagefrom','来源URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4965','1039','language','客户端语言','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4966','1039','color','客户端色深','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4967','1039','screensize','客户端分辨率','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4968','1039','http_user_agent','浏览器用户','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4969','1039','pagefromsite','来源网站','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4970','1039','keyword','关键词','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5001','1041','pagefrom','来源URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5000','1041','pageurl','页面URL','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4999','1041','time','访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4998','1041','ip','IP地址','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4975','1039','alexatool','ALEX用户','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4976','1039','timezone','客户端时区','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4977','1039','firsttime','首次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4978','1039','lasttime','上次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4979','1039','system','客户端OS','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4980','1039','browser','客户端浏览器','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4981','1039','todayfirst','todayfirst','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4982','1039','return','回头客','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4993','1038','isip','记录IP','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4983','1040','ipstart','起始IP','1','21','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('4984','1040','ipend','结束IP','1','21','0','1','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4985','1040','country','国家','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4986','1040','address','地址','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4987','1040','province','省份','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','4','0');
INSERT INTO `tp_sys_fields` VALUES ('4988','1040','city','城市','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4989','1040','area','地区','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4990','1038','title','标识名称','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','2','0');
INSERT INTO `tp_sys_fields` VALUES ('4991','1038','pageurl','URL地址','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','3','0');
INSERT INTO `tp_sys_fields` VALUES ('4992','1039','ismark','是否处理','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('4994','1038','ismap','记录轨迹','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','5','0');
INSERT INTO `tp_sys_fields` VALUES ('4995','1038','isad','记录广告','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','6','0');
INSERT INTO `tp_sys_fields` VALUES ('4996','1038','isbiz','记录业务','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','7','0');
INSERT INTO `tp_sys_fields` VALUES ('4997','1038','pid','上级标识','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5002','1041','language','客户端语言','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5003','1041','color','客户端色深','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5004','1041','screensize','客户端分辨率','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5005','1041','http_user_agent','浏览器用户','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5006','1041','pagefromsite','来源网站','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5007','1041','keyword','关键词','1','4','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5008','1041','alexatool','ALEX用户','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5009','1041','timezone','客户端时区','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5010','1041','firsttime','首次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5011','1041','lasttime','上次访问时间','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5012','1041','system','客户端OS','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5013','1041','browser','客户端浏览器','1','1','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5014','1041','todayfirst','todayfirst','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5015','1041','return','回头客','1','2','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5016','1041','ismark','是否处理','1','5','0','0','1','','','1','1','1','1','0','1','','1','1','','0','1','','0','','','','1','1','1','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5017','1043','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5018','1043','groupId','权限组','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5019','1043','status','状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5020','1043','nodeId','权限节点','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5021','1043','parentNodeId','上组节点','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5022','1043','level','级别','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5023','1043','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5024','1043','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5035','1045','label','说明','1','1','0','1','1','','','1','1','1','1','1','1','','1','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5036','1045','files','文件','1','4','0','0','1','','','5','1','6','1','6','1','','5','0','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5037','1045','status','状态','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5038','1045','types','类型','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','FLASH广告,图片广告','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5039','1045','showlink','文件URL地址','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5040','1045','targetlink','指向地址','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5041','1045','counttype','统计方式','1','1','0','1','1','','','2','1','2','1','2','1','','2','0','','0','0','Array','0','0,1,2','只统计展示数据,只统计目标来源数据,统计展示和统计来源','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5042','1045','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5043','1045','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5044','1045','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','3','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5046','1046','label','说明','1','1','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5047','1046','pid','上级ID','1','1','0','0','1','','','2','1','2','1','2','1','','2','1','','0','0','conf_biz','1','id','label','types=0','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5048','1046','status','状态','1','1','0','0','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5049','1046','types','类型','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','大类,小类','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5050','1046','action','操作类型','1','1','0','1','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5051','1046','actionvar','操作参数','1','1','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5052','1046','seqNO','排序','0','2','0','0','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5053','1046','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5054','1046','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5055','1046','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','0','','7','1','','0','0','','0','','','','0','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5057','1047','label','说明','1','1','0','1','1','','','1','1','1','1','1','1','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5058','1047','reglar','判断表达式','0','4','0','1','1','','','1','1','8','1','8','1','','0','0','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5059','1047','status','状态','1','1','0','1','1','','','2','1','2','1','2','1','','2','1','','0','0','Array','0','0,1','禁用状态,启用状态','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5060','1047','settingtime','设定日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5061','1047','starttime','开始日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5062','1047','lasttime','最后统计日期','1','2','0','0','1','','','0','1','10','0','10','1','','7','1','','3','0','','0','','','','0','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5063','1048','id','id','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5064','1048','pageurl','pageurl','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5065','1048','all_count','all_count','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5066','1048','day1','day1','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5067','1048','day2','day2','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5068','1048','day3','day3','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5069','1048','day4','day4','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5070','1048','day5','day5','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5071','1048','day6','day6','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5072','1048','day7','day7','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5073','1048','day8','day8','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5074','1048','day9','day9','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5075','1048','day10','day10','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5076','1048','day11','day11','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5077','1048','day12','day12','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5078','1048','day13','day13','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5079','1048','day14','day14','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5080','1048','day15','day15','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5081','1048','day16','day16','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('5082','1048','day17','day17','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('5083','1048','day18','day18','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('5084','1048','day19','day19','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('5085','1048','day20','day20','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('5086','1048','day21','day21','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('5087','1048','day22','day22','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('5088','1048','day23','day23','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('5089','1048','day24','day24','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('5090','1048','day25','day25','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('5091','1048','day26','day26','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('5092','1048','day27','day27','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('5093','1048','day28','day28','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('5094','1048','day29','day29','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('5095','1048','day30','day30','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('5096','1048','day31','day31','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('5097','1049','id','id','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5098','1049','pageurl','pageurl','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5099','1049','all_count','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5100','1049','month1','1月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5101','1049','month2','2月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5102','1049','month3','3月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5103','1049','month4','4月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5104','1049','month5','5月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5105','1049','month6','6月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5106','1049','month7','7月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5107','1049','month8','8月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5108','1049','month9','9月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5109','1049','month10','10月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5110','1049','month11','11月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5111','1049','month12','12月统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5112','1049','week1','每月1周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5113','1049','week2','每月2周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5114','1049','week3','每月3周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5115','1049','week4','每月4周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','18','0');
INSERT INTO `tp_sys_fields` VALUES ('5116','1049','week5','每月5周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','19','0');
INSERT INTO `tp_sys_fields` VALUES ('5117','1049','week6','每月6周统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','20','0');
INSERT INTO `tp_sys_fields` VALUES ('5118','1049','day1','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','21','0');
INSERT INTO `tp_sys_fields` VALUES ('5119','1049','day2','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','22','0');
INSERT INTO `tp_sys_fields` VALUES ('5120','1049','day3','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','23','0');
INSERT INTO `tp_sys_fields` VALUES ('5121','1049','day4','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','24','0');
INSERT INTO `tp_sys_fields` VALUES ('5122','1049','day5','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','25','0');
INSERT INTO `tp_sys_fields` VALUES ('5123','1049','day6','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','26','0');
INSERT INTO `tp_sys_fields` VALUES ('5124','1049','day7','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','27','0');
INSERT INTO `tp_sys_fields` VALUES ('5125','1049','day8','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','28','0');
INSERT INTO `tp_sys_fields` VALUES ('5126','1049','day9','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','29','0');
INSERT INTO `tp_sys_fields` VALUES ('5127','1049','day10','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','30','0');
INSERT INTO `tp_sys_fields` VALUES ('5128','1049','day11','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','31','0');
INSERT INTO `tp_sys_fields` VALUES ('5129','1049','day12','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','32','0');
INSERT INTO `tp_sys_fields` VALUES ('5130','1049','day13','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','33','0');
INSERT INTO `tp_sys_fields` VALUES ('5131','1049','day14','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','34','0');
INSERT INTO `tp_sys_fields` VALUES ('5132','1049','day15','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','35','0');
INSERT INTO `tp_sys_fields` VALUES ('5133','1049','day16','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','36','0');
INSERT INTO `tp_sys_fields` VALUES ('5134','1049','day17','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','37','0');
INSERT INTO `tp_sys_fields` VALUES ('5135','1049','day18','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','38','0');
INSERT INTO `tp_sys_fields` VALUES ('5136','1049','day19','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','39','0');
INSERT INTO `tp_sys_fields` VALUES ('5137','1049','day20','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','40','0');
INSERT INTO `tp_sys_fields` VALUES ('5138','1049','day21','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','41','0');
INSERT INTO `tp_sys_fields` VALUES ('5139','1049','day22','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','42','0');
INSERT INTO `tp_sys_fields` VALUES ('5140','1049','day23','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','43','0');
INSERT INTO `tp_sys_fields` VALUES ('5141','1049','day24','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','44','0');
INSERT INTO `tp_sys_fields` VALUES ('5142','1049','day25','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','45','0');
INSERT INTO `tp_sys_fields` VALUES ('5143','1049','day26','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','46','0');
INSERT INTO `tp_sys_fields` VALUES ('5144','1049','day27','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','47','0');
INSERT INTO `tp_sys_fields` VALUES ('5145','1049','day28','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','48','0');
INSERT INTO `tp_sys_fields` VALUES ('5146','1049','day29','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','49','0');
INSERT INTO `tp_sys_fields` VALUES ('5147','1049','day30','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','50','0');
INSERT INTO `tp_sys_fields` VALUES ('5148','1049','day31','日统计总数','1','2','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','51','0');
INSERT INTO `tp_sys_fields` VALUES ('5150','1050','guid','统一ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5151','1050','adid','广告ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5152','1050','bizid','商务ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5153','1050','hatid','扣帽ID','1','2','0','0','1','','','1','0','1','0','1','0','','0','1','','0','0','','0','','','','0','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5154','1051','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5155','1051','title','名称','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5156','1051','pid','上级','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5157','1051','name','标记名','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5158','1051','ename','ename','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5159','1051','remark','说明','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5160','1051','status','状态','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5161','1051','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5162','1051','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5163','1052','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5164','1052','userId','用户Id','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5165','1052','groupId','级别Id','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5166','1052','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5167','1052','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5168','1053','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5169','1053','title','标题','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5170','1053','name','name','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5171','1053','pid','上组ID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5172','1053','level','级别','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5173','1053','type','类型','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5174','1053','remark','说明','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5175','1053','status','状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5176','1053','seqNo','seqNo','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5177','1053','create_on','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5178','1053','update_on','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5179','1054','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5180','1054','ipstart','起始IP','1','1','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5181','1054','ipend','结束IP','1','1','','','1','','','1','1','1','0','1','1','','0','1','0','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5182','1054','country','国家','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5183','1054','address','地址','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5184','1054','province','省份','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5185','1054','city','城市','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5186','1054','area','地区','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5187','1055','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5188','1055','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5189','1055','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5190','1055','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5191','1055','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5192','1055','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5193','1055','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5194','1055','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5195','1055','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5196','1055','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5197','1055','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5198','1055','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5199','1055','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5200','1055','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5201','1055','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5202','1055','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5203','1055','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5204','1055','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5205','1056','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5206','1056','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5207','1056','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5208','1056','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5209','1056','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5210','1056','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5211','1056','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5212','1056','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5213','1056','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5214','1056','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5215','1056','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5216','1056','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5217','1056','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5218','1056','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5219','1056','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5220','1056','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5221','1056','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5222','1056','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5223','1057','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5224','1057','guid','唯一GUID','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5225','1057','ip','IP地址','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5226','1057','time','访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5227','1057','pageurl','页面URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5228','1057','pagefrom','来源URL','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5229','1057','language','客户端语言','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5230','1057','color','客户端色深','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5231','1057','screensize','客户端分辨率','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5232','1057','http_user_agent','浏览器用户','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','9','0');
INSERT INTO `tp_sys_fields` VALUES ('5233','1057','pagefromsite','来源网站','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','10','0');
INSERT INTO `tp_sys_fields` VALUES ('5234','1057','alexatool','ALEX用户','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','11','0');
INSERT INTO `tp_sys_fields` VALUES ('5235','1057','timezone','客户端时区','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','12','0');
INSERT INTO `tp_sys_fields` VALUES ('5236','1057','firsttime','首次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','13','0');
INSERT INTO `tp_sys_fields` VALUES ('5237','1057','lasttime','上次访问时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','14','0');
INSERT INTO `tp_sys_fields` VALUES ('5238','1057','todayfirst','todayfirst','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','15','0');
INSERT INTO `tp_sys_fields` VALUES ('5239','1057','return','回头客','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','16','0');
INSERT INTO `tp_sys_fields` VALUES ('5240','1057','ismark','是否处理','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','17','0');
INSERT INTO `tp_sys_fields` VALUES ('5241','1058','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5242','1058','pageurl','当前页面','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5243','1058','guid','统计标识','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5244','1058','type','统计类型','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5245','1058','screen_w','屏幕宽','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5246','1058','click_x','点击横坐标','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5247','1058','click_y','点击纵坐标','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5248','1058','uptime','统计日期','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5249','1059','id','公共ID','0','6','','','1','','','0','0','0','0','1','0','','0','1','','0','0','','0','','','','','1','0','0','0');
INSERT INTO `tp_sys_fields` VALUES ('5250','1059','account','用户名','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','1','0');
INSERT INTO `tp_sys_fields` VALUES ('5251','1059','nickname','昵称','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','2','0');
INSERT INTO `tp_sys_fields` VALUES ('5252','1059','password','密码','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','3','0');
INSERT INTO `tp_sys_fields` VALUES ('5253','1059','verify','验证码','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','4','0');
INSERT INTO `tp_sys_fields` VALUES ('5254','1059','remark','备注','1','4','','','1','','','1','1','1','0','1','1','','0','0','','0','0','','0','','','','','1','0','5','0');
INSERT INTO `tp_sys_fields` VALUES ('5255','1059','status','用户状态','1','1','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','6','0');
INSERT INTO `tp_sys_fields` VALUES ('5256','1059','create_time','[系统]加入时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','7','0');
INSERT INTO `tp_sys_fields` VALUES ('5257','1059','update_time','[系统]更新时间','1','2','','','1','','','1','1','1','0','1','1','','0','1','','0','0','','0','','','','','1','0','8','0');
INSERT INTO `tp_sys_fields` VALUES ('5259','1063','id','公共ID','0','6','0','0','1','','','1','0','16','0','16','0','','1','1','','1','1','','0','','','','1','1','0','0','0');
DROP TABLE `tp_sys_fieldtypesub`;
CREATE TABLE `tp_sys_fieldtypesub` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型';

INSERT INTO `tp_sys_fieldtypesub` VALUES ('1','VARCHAR','0','VARCHAR数据类型');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('2','INT','0','INT,需要定义长度');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('3','TEXT','0','TEXT不需要定义长度');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('4','SMALLINT','0','SMALLINT数据类型');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('5','DATE','0','日期类型(0000-00-00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('6','DATETIME','0','日期加时间(0000-00-00 00:00:00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('7','TIME','0','时间(00:00:00)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('8','YEAR','0','年(0000)');
INSERT INTO `tp_sys_fieldtypesub` VALUES ('9','BIGINT','0','BIGINT需要定义长度');
DROP TABLE `tp_sys_models`;
CREATE TABLE `tp_sys_models` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `caption` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据模型';

DROP TABLE `tp_sys_projects`;
CREATE TABLE `tp_sys_projects` (
  `id` int(11) NOT NULL auto_increment,
  `dbname` varchar(200) default NULL,
  `caption` varchar(200) default NULL,
  `proname` varchar(40) default NULL COMMENT '项目名称',
  `dbuser` varchar(200) default NULL,
  `tbpre` varchar(40) default NULL COMMENT '数据表前缀',
  `dbpassword` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `ison` int(11) default NULL COMMENT '是否生成',
  `creattime` int(11) default NULL COMMENT '生成日期',
  `think_pach` varchar(200) default NULL,
  `tplname` varchar(40) NOT NULL COMMENT '模板ID',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动状态',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='生成项目说明';

INSERT INTO `tp_sys_projects` VALUES ('1','crmv2','CRM第二版','crm2','root','crm_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('8','pershow','个人网站','pershow','root','lp_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('20','ns_website','NS网站新版','website','root','web_','123456','0','1','0','../ThinkPHP','tpmaker_default','0');
INSERT INTO `tp_sys_projects` VALUES ('26','crm_v2_tp','Nstarts CRM 系统 (备份)','crmv2','root','ns_','123456','0','1','0','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('41','crm_v2_tp','Nstarts CRM 系统 V2.1','crmv2','root','ns_','123456','0','1','0','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('42','hbss_stat2','HBSS决策支持系统','hbssstat2','root','hb_','123456','0','','','../ThinkPHP','tpmaker_advance','0');
INSERT INTO `tp_sys_projects` VALUES ('43','hbss_stat3','决策支持','hbssstattemp','root','hb_','123456','0','','','../ThinkPHP','tpmaker_advance','1');
DROP TABLE `tp_sys_tables`;
CREATE TABLE `tp_sys_tables` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '1' COMMENT '项目ID',
  `caption` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `searchtype` int(11) default NULL COMMENT '探索形式',
  `edittype` int(11) default NULL COMMENT '编辑类型',
  `seqNo` int(11) default NULL,
  `ismodel` int(11) NOT NULL default '0' COMMENT '是否数据模板',
  `datemodelid` int(11) NOT NULL default '0' COMMENT '指定数据模板',
  `list` int(11) default '1' COMMENT '是否列表',
  `view` int(11) default '1' COMMENT '是否显示详细',
  `add` int(11) default '1',
  `del` int(11) default '1',
  `edit` int(11) default '1',
  `search` int(11) default '1',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动',
  `issystem` int(11) NOT NULL default '0' COMMENT '是否系统保留',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1064 DEFAULT CHARSET=utf8 COMMENT='数据表';

INSERT INTO `tp_sys_tables` VALUES ('1','1','人才管理系统','Person','2','2','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('2','1','企业管理系统','Company','2','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('3','1','订单管理系统','Order','2','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('4','1','职位管理系统','Jobs','2','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('5','1','面试管理系统','Interview','1','2','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('6','1','推荐管理系统','Recomand','1','2','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('7','1','人才语言','Lang','1','2','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('8','1','地区管理','Area','1','2','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('10','1','人才到岗时间','Left_time','1','2','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('11','1','企业福利','Bas_boon','1','2','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('12','1','行业汇总表','Bas_calling','2','2','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('13','1','[公共]招聘途径','Bas_path','2','2','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('14','1','企业年薪类型','Bas_payinfo','2','2','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('15','1','职位分类表','Bas_post','2','2','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('16','1','企业电话类型','Bas_souretype','2','2','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('17','1','客户之间的关系','Com2com','2','2','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('18','1','简单系统保留','Sim_system','2','2','18','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('19','8','小说作品管理','Xiaoshuoshow','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('20','8','从文札记管理','Zhaji','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('21','8','客家文化研究','Kejianwenhu','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('22','8','关于本人','Aboutme','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('23','8','个人荣誉','Rongyu','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('24','8','公共属性','Pu_class','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('25','8','小说章节管理','Xiaoshuo','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('26','8','从文札记分类','Zhajitype','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('124','20','NSweb公共','WEBpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1001','41','[oa]系统站内信息管理','sys_msg','1','','20','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1002','41','[sub]系统站内信息分类','sys_msg_type','1','','30','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('125','20','网站静态信息','sta_infos','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('126','20','网站静态信息分类','sta_infos_type','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1043','43','[sys]系统权限表','access','1','0','0','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1042','43','[sys]系统权限表','access','1','0','0','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('47','45','客家文化研究','Array','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('48','45','客家文化研究','Array','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('49','47','关于本人','Array','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('50','47','关于本人','Array','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('51','49','个人荣誉','Array','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('52','49','个人荣誉','Array','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('53','51','公共属性','Array','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('54','51','公共属性','Array','1','1','100','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('139','20','留言类型分类','contacttype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('140','20','树状菜单','tree','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('141','20','公司部门管理','dept','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('138','20','客户列表','nsclient','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('137','20','Ns公司招聘','nsjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('136','20','网上留言管理','contact','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('135','20','行业分类','calling','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('134','20','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('132','20','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('133','20','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('131','20','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('130','20','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('129','20','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('128','20','发布语言分类','lang','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('127','20','热门职位','hotjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('142','21','[公用]','tmp_sql','1','1','5','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('143','21','单元管理','items','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('144','21','单元类别管理','items_type','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('145','21','订单管理','order','1','1','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('146','21','订单状态日志','orderlogs','1','1','9','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('147','21','用户管理','user','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('148','21','系统权限表','access','1','1','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('149','21','权限组别用户','groupuser','1','1','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('150','21','权限组别','group','1','1','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('151','21','权限节点','node','1','1','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('152','21','系统设定','sysconfig','1','1','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('153','21','供应商&客户管理','company','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('154','21','联络人员管理','contactlist','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('155','21','公司备注','comnotes','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('156','21','公司地址','comaddrs','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('157','20','对外资料分类','outfiletype','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('159','20','对外资料管理','outfile','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('160','20','对外信息分类','outnewstype','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('161','20','对外信息管理','outnews','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('162','20','FLASH广告管理','flashad','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('163','20','成功案例管理','projects','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('806','26','简单公用数据结构','crm_pub_sim','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('807','26','空数据结构','crm_empty','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('808','26','用户登陆数据记录','Loginlog','1','1','1','0','935','1','1','1','1','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('809','26','用户拷贝数据记录','Copylog','1','1','2','0','935','1','1','1','1','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('810','26','人才管理系统','Person','2','2','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('811','26','企业管理系统','Company','2','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('812','26','职位管理系统','Jobs','2','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('276','26','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('274','26','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('275','26','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('273','26','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('271','26','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('272','26','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('814','26','推荐管理系统','Recomand','1','2','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('815','26','地区管理','Area','1','2','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('816','26','人才到岗时间','Left_time','1','2','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('817','26','企业福利','Boon','1','2','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('818','26','行业汇总表','Calling','2','2','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('819','26','[公共]招聘途径','Path','2','2','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('820','26','企业年薪类型','Payinfo','2','2','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('393','37','主要题库','infos','1','1','0','0','935','0','0','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('394','37','公共的数据','pub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('395','37','章节大类','strType_f','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('396','37','章节小类','strType_s','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('813','26','面试管理系统','Interview','1','2','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('804','26','CRM公用数据结构','crmpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('399','38','成功案例管理','projects','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('400','38','FLASH广告管理','flashad','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('401','38','对外信息管理','outnews','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('402','38','对外信息分类','outnewstype','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('403','38','对外资料管理','outfile','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('404','38','对外资料分类','outfiletype','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('405','38','发布语言分类','lang','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('406','38','热门职位','hotjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('407','38','用户管理','user','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('408','38','系统权限表','access','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('409','38','附件管理','attach','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('410','38','权限组别用户','groupuser','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('411','38','权限节点','node','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('412','38','权限组别','group','1','1','0','0','935','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('413','38','行业分类','calling','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('414','38','网上留言管理','contact','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('415','38','Ns公司招聘','nsjob','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('416','38','客户列表','nsclient','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('417','38','公司部门管理','dept','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('418','38','树状菜单','tree','1','1','0','0','935','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('419','38','留言类型分类','contacttype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('420','38','NSweb公共','WEBpub','1','1','0','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('421','38','网站静态信息','sta_infos','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('422','38','网站静态信息分类','sta_infos_type','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('423','38','FAQ系统','faq','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('424','38','FAQ分类管理','faqtype','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('718','39','company客户表','bas_company','1','1','2','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('719','39','Person人才基本表','bas_person','1','1','3','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('720','39','bas_person_ns','bas_person_ns','1','1','4','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('721','39','bas_style_log','bas_style_log','1','1','5','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('722','39','bbs_content','bbs_content','1','1','6','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('723','39','bbs','bbs_type','1','1','7','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('724','39','cal_contents','cal_contents','1','1','8','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('725','39','站内信息个人分类','cal_per_type','1','1','9','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('726','39','cal_type','cal_type','1','1','10','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('727','39','cate_area','cate_area','1','1','11','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('728','39','com_department','com_department','1','1','12','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('729','39','com_order','com_order','1','1','13','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('730','39','站内信息表','inside_msg','1','1','14','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('731','39','站内信息列表','inside_msg_list','1','1','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('732','39','站内信息个人分类','inside_msg_per_type','1','1','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('733','39','站内信息列表','inside_msg_type','1','1','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('734','39','附件','mail_atta','1','1','18','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('735','39','站内信息个人分类','mail_per_type','1','1','19','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('736','39','收件箱','mailbox','1','1','20','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('737','39','msg_count','msg_count','1','1','21','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('738','39','per_introview','per_introview','1','1','22','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('739','39','per_jobinfo','per_jobinfo','1','1','23','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('740','39','recommend推荐记录表汇总表','per_recomand','1','1','24','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('741','39','pub_is','pub_is','1','1','25','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('742','39','province省汇总表','sub_area1','1','1','26','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('743','39','area2','sub_area2','1','1','27','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('744','39','1???±3?°','sub_beijing','1','1','28','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('745','39','sub_bugtype','sub_bugtype','1','1','29','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('746','39','?óòμ??è?2??à??','sub_c2p_type','1','1','30','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('747','39','áa?μ·?ê?','sub_c_type','1','1','31','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('748','39','calling行业汇总表','sub_calling','1','1','32','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('749','39','系统着色','sub_color','1','1','33','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('750','39','sub_connect','sub_connect','1','1','34','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('751','39','sub_country','sub_country','1','1','35','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('752','39','sub_exp_isoktype','sub_exp_isoktype','1','1','36','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('753','39','sub_exp_needeidt','sub_exp_needeidt','1','1','37','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('754','39','sub_files','sub_files','1','1','38','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('755','39','sub_info','sub_info','1','1','39','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('756','39','sub_lang','sub_lang','1','1','40','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('757','39','email','sub_mails','1','1','41','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('758','39','??μ￥íê3é×′ì?','sub_order_finish','1','1','42','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('759','39','??μ￥×′ì?','sub_order_style','1','1','43','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('760','39','??μ￥ààDí','sub_order_type','1','1','44','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('761','39','è?2????óòμ?à??','sub_p2c_type','1','1','45','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('762','39','1????￡à?±í','sub_path','1','1','46','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('763','39','计价单位','sub_phone','1','1','47','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('764','39','1????êD???êy','sub_pmoth','1','1','48','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('765','39','sub_post','sub_post','1','1','49','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('766','39','Post1大类职位表','sub_post1','1','1','50','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('767','39','Post2?????','sub_post2','1','1','51','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('768','39','人才推荐结果选择','sub_rec_style','1','1','52','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('769','39','人才推荐结果选择','sub_recom_result','1','1','53','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('770','39','sub_roomshare','sub_roomshare','1','1','54','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('771','39','sub_searchtype','sub_searchtype','1','1','55','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('772','39','D??￠à′?′','sub_sou','1','1','56','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('773','39','1????￡à?±í','sub_stipend','1','1','57','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('774','39','网址全集合','sub_web','1','1','58','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('775','39','网址分类','sub_web_type','1','1','59','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('776','39','sys_department','sys_department','1','1','60','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('777','39','????μ￥??','sys_file_type','1','1','61','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('778','39','1??????t??á÷','sys_files','1','1','62','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('779','39','左边的人才&企业菜单','sys_label','1','1','63','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('780','39','sys_links','sys_links','1','1','64','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('781','39','sys_logs','sys_logs','1','1','65','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('782','39','sys_mail_connect','sys_mail_connect','1','1','66','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('783','39','sys_mail_file','sys_mail_file','1','1','67','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('784','39','sys_mail_msg','sys_mail_msg','1','1','68','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('785','39','sys_msg','sys_msg','1','1','69','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('786','39','sys_msg_type','sys_msg_type','1','1','70','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('787','39','sys_saveresult','sys_saveresult','1','1','71','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('788','39','sys_searchkey','sys_searchkey','1','1','72','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('789','39','sys_tags_list','sys_tags_list','1','1','73','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('790','39','sys_tags_title','sys_tags_title','1','1','74','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('791','39','sys_tags_type','sys_tags_type','1','1','75','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('792','39','左边的菜单','sys_treemenu','1','1','76','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('793','39','maneger管理员表','sys_user','1','1','77','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('794','39','sys_user_layers','sys_user_layers','1','1','78','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('795','39','sys_user_pref','sys_user_pref','1','1','79','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('796','39','tableright','tableright','1','1','80','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('797','39','任务列表','task_group','1','1','81','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('798','39','任务列表','task_list','1','1','82','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('799','39','task_words','task_words','1','1','83','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('800','39','userlevelpermissions','userlevelpermissions','1','1','84','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('801','39','userlevels','userlevels','1','1','85','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('802','39','webcal_categories','webcal_categories','1','1','86','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('803','39','webcal_entry','webcal_entry','1','1','87','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('821','26','职位分类表','Post','2','2','15','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('822','26','企业电话类型','Souretype','2','2','16','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('823','26','客户之间的关系','Com2com','2','2','17','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('717','39','客户之间的关系','bas_com2com','1','1','1','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('716','39','AD人才','ad_label','1','1','0','0','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('986','41','[sub]人才推荐结果','sub_recom_result','1','','31','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('915','41','[公共]空数据结构','[公共]空数据结构','1','1','26','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('914','41','[公共]简单公用数据结构','[公共]简单公用数据结构','1','1','27','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('987','41','[oa]办公会议室管理','sub_roomshare','1','','21','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('942','41','[ns]NS内部招聘管理','ns_person','1','','1','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('951','41','[com]企业部门管理','com_department','1','','6','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('949','41','[sys]系统状态记录','bas_style_log','1','','32','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('950','41','[bug]系统UBG管理','bug_report','1','','69','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('985','41','[sub]人才推荐状态','sub_rec_style','1','','33','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('984','41','[sub]职位小类表','sub_post2','1','','38','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('983','41','[sub]大类职位表','sub_post1','1','','39','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('982','41','[com]企业其它空缺职位','com_otherpost','1','','5','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('981','41','[sub]企业年薪月数','sub_pmoth','1','','40','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('980','41','[per]人才电话管理表','per_phone','1','','72','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('979','41','[sub]招聘途径','sub_path','1','','41','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('978','41','[sub]人才对企业的态度','sub_p2c_type','1','','42','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('977','41','[sub]订单类型管理','sub_order_type','1','','43','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('976','41','[sub]订单状态管理','sub_order_style','1','','44','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1000','41','[oa]外发邮件模板管理','sys_mail_msg','1','','22','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('999','41','[oa]外发邮件文件管理','sys_mail_file','1','','23','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('921','41','[sys]用户管理','user','1','1','12','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('922','41','[sys]系统权限表','access','1','1','13','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('923','41','[sys]附件管理','attach','1','1','14','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('924','41','[sys]权限组别用户','groupuser','1','1','15','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('925','41','[sys]权限节点','node','1','1','16','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('926','41','[sys]权限组别','group','1','1','17','0','914','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('998','41','[user]邮件联系管理','sys_mail_connect','1','','60','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('997','41','[user]员工保存页面管理','sys_links','1','','57','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('996','41','[user]个人文件信息分类','sys_label','1','','64','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('995','41','[oa]系统公共信息管理','sys_files','1','','24','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('994','41','[sub]系统公告类型','sys_file_type','1','','45','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1025','41','[ns]竞争对手管理','ns_consultants','1','','2','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('992','41','[user]员工网址分类','sub_web_type','1','','65','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('935','41','[公共]CRM公用数据结构','[公共]CRM公用数据结构','1','1','28','1','935','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('991','41','[user]网址全集合','sub_web','1','','63','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('990','41','[sub]薪金类型','sub_stipend','1','','46','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('989','41','[sub]信息来源设置','sub_sou','1','','47','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('952','41','[order]系统订单管理','com_order','1','','48','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('944','41','[sys]用户拷贝数据记录','usercopy','1','','18','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('943','41','[com]企业关系-商业关系','com_relation_biz','1','','9','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('939','41','[com]基本客户信息管理','company','1','','7','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('941','41','[per]基本人才信息管理','person','1','','70','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('945','41','[oa]外发招聘信息人才','ad_label','1','','25','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('940','41','[sub]公共地区管理','area','1','','49','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('975','41','[sub]订单完成类型','sub_order_finish','1','','50','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('974','41','[user]email信息汇总','sub_mails','1','','61','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('973','41','[sub]人才语言汇总表','sub_lang','1','','52','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('972','41','[com]企业其它信息','com_otherinfo','1','','11','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('971','41','[com]企业或人才其它文件','sub_files','1','','8','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('968','41','[sub]国家汇总表','sub_country','1','','34','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('967','41','[user]联系信息汇总表','sub_connect','1','','62','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('966','41','[sub]行业汇总表','sub_calling','1','','35','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('965','41','[sub]客户类型','sub_c_type','1','','53','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('964','41','[sub]客户对人才的态度','sub_c2p_type','1','','54','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('963','41','[bug]BUG类型设定','sub_bugtype','1','','68','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('962','41','[sub]企业背景表','sub_beijing','1','','36','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1028','41','[per]人才邮件管理表','per_email','1','','73','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('958','41','[recomand]系统推荐记录表汇总表','per_recomand','1','','55','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('956','41','[user]个人提示信息管理','per_msg','1','','66','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('955','41','[per]人才工作经历','per_jobinfo','1','','71','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('954','41','[interview]人才面试信息管理','per_introview','1','','56','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1004','41','[user]个人搜索条件保存','sys_searchkey','1','','67','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1005','41','[user]系统标签列表','sys_tags_list','1','','58','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1006','41','[user]员工标签列表','sys_tags_title','1','','59','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1007','41','[sub]系统标签类型设定','sys_tags_type','1','','29','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1009','41','[sys]系统用户扩展表','sys_user','1','','19','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1023','41','[sub]部门归属类型','sub_department_type','1','','51','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1024','41','[com]企业关系-人才关系','com_relation_per','1','','10','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1026','41','[ns]竞争对手动态及资料','ns_con_news','1','','3','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1027','41','[com]企业合作猎头管理','com_consultants','1','','4','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1029','41','[per]人才其它联系方式管理表','per_im','1','','74','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1030','41','[sub]企业规模表','sub_kuimu','1','','37','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1031','42','[公共]简单公用数据结构','[公共]简单公用数据结构','1','1','27','1','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1032','42','[sys]用户管理','user','1','1','12','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1033','42','[sys]系统权限表','access','1','1','13','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1034','42','[sys]权限组别用户','groupuser','1','1','15','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1035','42','[sys]权限节点','node','1','1','16','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1036','42','[sys]权限组别','group','1','1','17','0','1031','1','1','1','1','1','1','0','1');
INSERT INTO `tp_sys_tables` VALUES ('1037','42','屏幕轨迹记录管理','maps','0','0','0','0','1031','1','1','1','0','0','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1038','42','统计标识管理','labels','0','0','0','0','1031','1','1','1','0','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1039','42','IP详细记录[工作]','ipdatas_work','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1040','42','IP对照记录表','ip2area','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1041','42','IP详细记录[备份]','workipdatas_backup','0','0','0','0','1031','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1045','43','广告类型设置','conf_ad','1','0','2','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1046','43','商务统计类型设置','conf_biz','1','0','3','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1047','43','流量统计设置','conf_ip','1','0','4','0','1063','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1048','43','页面浏览IP统计','count_pageip','1','0','5','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1049','43','页面浏览统计','count_pageview','1','0','6','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1050','43','统计用户标识管理','count_user','1','0','7','0','1063','1','1','0','0','0','0','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1051','43','[sys]权限组别','group','1','0','8','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1052','43','[sys]权限组别用户','groupuser','1','0','9','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1053','43','[sys]权限节点','node','1','0','10','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1054','43','IP对照记录表','pub_ip2area','1','0','11','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1055','43','广告详细记录','tmp_addatas','1','0','12','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1056','43','商务详细记录','tmp_bizdatas','1','0','13','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1057','43','IP流量详细记录','tmp_ipdatas','1','0','14','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1058','43','屏幕轨迹记录管理','tmp_mapdatas','1','0','15','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1059','43','[sys]用户管理','user','1','0','16','0','1063','1','1','1','1','1','1','0','0');
INSERT INTO `tp_sys_tables` VALUES ('1060','20','pubid','pubid','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1061','20','pubid','pubid','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1062','20','','','1','','0','0','0','1','1','1','1','1','1','1','0');
INSERT INTO `tp_sys_tables` VALUES ('1063','43','[公共]简单公用数据结构','pub','1','1','27','1','0','1','1','1','1','1','1','1','0');
DROP TABLE `tp_sys_viewcondition`;
CREATE TABLE `tp_sys_viewcondition` (
  `id` int(11) NOT NULL auto_increment,
  `vid` int(11) NOT NULL,
  `in_tid` int(11) NOT NULL,
  `in_field` varchar(40) NOT NULL,
  `out_tid` int(11) NOT NULL,
  `out_field` varchar(40) NOT NULL,
  `condition` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型表条件';

DROP TABLE `tp_sys_viewfields`;
CREATE TABLE `tp_sys_viewfields` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `vid` int(11) NOT NULL COMMENT '视图ID',
  `caption` varchar(40) NOT NULL COMMENT '标题[cn]',
  `title` varchar(40) NOT NULL COMMENT '标题[en]',
  `newtitle` varchar(40) NOT NULL COMMENT '新的名称',
  `tid` int(11) NOT NULL COMMENT '属所表的ID',
  `seqNo` int(11) NOT NULL COMMENT '排序',
  `islist` int(11) NOT NULL COMMENT '是否显示在列表',
  `iswrap` int(11) NOT NULL COMMENT '是否需要排序筛选',
  `issearch` int(11) NOT NULL COMMENT '是否需要搜索功能',
  `searchtype` int(11) NOT NULL COMMENT '一般搜索形式',
  `advsearchtype` int(11) NOT NULL COMMENT '高级搜索形式',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型表字段';

DROP TABLE `tp_sys_viewmodel`;
CREATE TABLE `tp_sys_viewmodel` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `projectid` int(11) NOT NULL,
  `title` varchar(40) NOT NULL COMMENT '标题[en]',
  `caption` varchar(40) NOT NULL COMMENT '标题[cn]',
  `infos` varchar(240) NOT NULL COMMENT '说明',
  `seqNo` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视图模型';

DROP TABLE `tp_tab_edittype`;
CREATE TABLE `tp_tab_edittype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='编辑类型设定';

INSERT INTO `tp_tab_edittype` VALUES ('1','[默认]一般形式','0','1','');
INSERT INTO `tp_tab_edittype` VALUES ('2','快速编辑形式','1','2','');
DROP TABLE `tp_tab_searchtype`;
CREATE TABLE `tp_tab_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='搜索形式设定';

INSERT INTO `tp_tab_searchtype` VALUES ('1','[默认]简单搜索','0','1','');
INSERT INTO `tp_tab_searchtype` VALUES ('2','简单+高级搜索','1','7','');
INSERT INTO `tp_tab_searchtype` VALUES ('3','不需要搜索功能','0','2','');
INSERT INTO `tp_tab_searchtype` VALUES ('4','仅搜索功能','0','9','');



