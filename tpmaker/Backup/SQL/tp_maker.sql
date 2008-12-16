-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2008 年 12 月 16 日 10:17
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `tp_maker`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_con_tree`
--

CREATE TABLE IF NOT EXISTS `tp_con_tree` (
  `id` int(11) NOT NULL auto_increment,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL default '0',
  `title` varchar(240) NOT NULL,
  `model` varchar(240) NOT NULL,
  `action` varchar(240) NOT NULL,
  `icon` varchar(240) NOT NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='左边的树' AUTO_INCREMENT=102 ;

--
-- 导出表中的数据 `tp_con_tree`
--

INSERT INTO `tp_con_tree` (`id`, `tid`, `pid`, `title`, `model`, `action`, `icon`, `seqNo`) VALUES
(100, 0, 0, '系统属性管理[菜单管理]', '', '', 'b_import.png', 0),
(2, 2, 0, '其它小工具', '', '', 'b_import.png', 0),
(3, 3, 1, '[字段]设定', '', '', 'b_import.png', 0),
(4, 4, 1, '[数据表]设定', '', '', 'b_import.png', 0),
(5, 5, 1, '[其它]操作', '', '', 'b_import.png', 0),
(6, 6, 3, '字段属性设定', 'sub_fieldtype', 'index', 'page.gif', 0),
(7, 7, 3, '查看类型设定', 'sub_viewtype', 'index', 'page.gif', 0),
(8, 8, 3, '编辑类型设定', 'sub_edittype', 'index', 'page.gif', 0),
(9, 9, 3, '增加类型设定', 'sub_addtype', 'index', 'page.gif', 0),
(10, 10, 3, '搜索形式设定', 'sub_searchtype', 'index', 'page.gif', 0),
(11, 11, 3, '系统保留设定', 'sub_issystem', 'index', 'page.gif', 0),
(12, 12, 3, '验证形式设定', 'sub_validate', 'index', 'page.gif', 0),
(13, 13, 4, '编辑类型设定', 'tab_edittype', 'index', 'page.gif', 0),
(14, 14, 4, '搜索形式设定', 'tab_searchtype', 'index', 'page.gif', 0),
(15, 15, 5, '所有表大写', '', '', 'page.gif', 0),
(16, 16, 5, '所有表首位大写', '', '', 'page.gif', 0),
(17, 17, 2, '数据备份工具', 'dbbackup', 'index', 'b_import.png', 0),
(18, 18, 17, '数据备份', 'dbbackup', 'export_db', 'page.gif', 0),
(20, 20, 2, '系统颜色表', 'sub_color', 'index', 'page.gif', 0),
(21, 21, 2, 'phpMyadmin', 'phpMyadmin', 'index', 'page.gif', 0),
(1, 1, 0, '系统属性管理', '', '', 'b_import.png', 0),
(27, 27, 1, '[项目]设定', '', '', 'b_import.png', 0),
(28, 28, 27, '模板风格设定', 'pro_templete', 'index', 'page.gif', 0),
(29, 29, 1, '系统公共参数配置', 'sys_config', 'index', 'page.gif', 0),
(30, 30, 29, '公共参数分类', 'Sys_configtype', 'index', 'page.gif', 0),
(31, 31, 6, '数据字段类型设定', 'sys_fieldtypesub', 'index', 'page.gif', 0),
(32, 32, 12, '验证条件设定', 'sub_validate_vcon', 'index', 'page.gif', 0),
(33, 33, 12, '附加规则设定', 'sub_validate_arag', 'index', 'page.gif', 0),
(34, 34, 3, '自动填充设定', 'sub_auto', 'index', 'b_import.png', 0),
(35, 35, 34, '附加规则设定', 'sub_auto_reg', 'index', 'page.gif', 0),
(36, 36, 34, '填充条件设定', 'sub_auto_con', 'index', 'page.gif', 0),
(37, 37, 1, '公共HTML标签类型', 'sub_htmltags', 'index', 'b_import.png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_designer`
--

CREATE TABLE IF NOT EXISTS `tp_designer` (
  `id` int(11) NOT NULL auto_increment,
  `master_pid` int(11) NOT NULL,
  `master_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_pid` int(11) NOT NULL,
  `foreign_table` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='数据关联' AUTO_INCREMENT=16 ;

--
-- 导出表中的数据 `tp_designer`
--

INSERT INTO `tp_designer` (`id`, `master_pid`, `master_table`, `master_field`, `foreign_pid`, `foreign_table`, `foreign_field`) VALUES
(15, 26, 'node', 'pid', 26, 'sta_infos', 'id');

-- --------------------------------------------------------

--
-- 表的结构 `tp_designer_coords`
--

CREATE TABLE IF NOT EXISTS `tp_designer_coords` (
  `id` int(11) NOT NULL auto_increment,
  `projectid` int(11) NOT NULL,
  `table_name` varchar(64) NOT NULL default '',
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `v` tinyint(4) default NULL,
  `h` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='坐标定位' AUTO_INCREMENT=567 ;

--
-- 导出表中的数据 `tp_designer_coords`
--

INSERT INTO `tp_designer_coords` (`id`, `projectid`, `table_name`, `x`, `y`, `v`, `h`) VALUES
(557, 21, 'user', 616, 436, 0, 1),
(556, 21, 'orderlogs', 664, 153, 0, 1),
(555, 21, 'order', 776, 105, 0, 1),
(554, 21, 'items_type', 193, 370, 1, 1),
(553, 21, 'items', 478, 72, 1, 1),
(552, 26, 'sta_infos_type', 646, 320, 0, 1),
(551, 26, 'sta_infos', 44, 264, 0, 1),
(550, 26, 'contacttype', 15, 139, 0, 1),
(549, 26, 'tree', 1004, 71, 0, 1),
(548, 26, 'dept', 976, 357, 0, 1),
(547, 26, 'nsclient', 668, 274, 0, 1),
(546, 26, 'nsjob', 481, 68, 0, 1),
(545, 26, 'contact', 892, 86, 0, 1),
(544, 26, 'calling', 982, 426, 0, 1),
(543, 26, 'group', 626, 120, 0, 1),
(542, 26, 'node', 307, 269, 0, 1),
(541, 26, 'groupuser', 590, 244, 0, 1),
(540, 26, 'attach', 7, 407, 0, 1),
(539, 26, 'access', 364, 208, 0, 1),
(538, 26, 'user', 902, 111, 0, 1),
(537, 26, 'hotjob', 190, 97, 0, 1),
(536, 26, 'lang', 789, 376, 0, 1),
(535, 26, 'outfiletype', 21, 299, 1, 1),
(534, 26, 'outfile', 641, 421, 0, 1),
(533, 26, 'outnewstype', 255, 50, 0, 1),
(532, 26, 'outnews', 1013, 493, 0, 1),
(531, 26, 'flashad', 488, 363, 0, 1),
(530, 26, 'projects', 289, 311, 1, 1),
(558, 21, 'access', 384, 297, 1, 1),
(559, 21, 'groupuser', 778, 66, 0, 1),
(560, 21, 'group', 797, 499, 0, 1),
(561, 21, 'node', 919, 277, 0, 1),
(562, 21, 'sysconfig', 719, 377, 0, 1),
(563, 21, 'company', 296, 58, 1, 1),
(564, 21, 'contactlist', 791, 430, 0, 1),
(565, 21, 'comnotes', 190, 258, 1, 1),
(566, 21, 'comaddrs', 382, 481, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_pro_templete`
--

CREATE TABLE IF NOT EXISTS `tp_pro_templete` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目模板风格设定' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `tp_pro_templete`
--

INSERT INTO `tp_pro_templete` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]TP-maker风格', 0, 1, 'tpmaker_default'),
(2, '[高级]JQ-grid风格', 0, 2, 'tpmaker_jqgrid');

-- --------------------------------------------------------

--
-- 表的结构 `tp_relation`
--

CREATE TABLE IF NOT EXISTS `tp_relation` (
  `master_db` varchar(64) collate utf8_bin NOT NULL default '',
  `master_table` varchar(64) collate utf8_bin NOT NULL default '',
  `master_field` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_db` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_table` varchar(64) collate utf8_bin NOT NULL default '',
  `foreign_field` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- 导出表中的数据 `tp_relation`
--

INSERT INTO `tp_relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('my_cal', '', '', 'my_cal', '', ''),
('my_cal', 'sys_user', 'id', 'my_cal', 'sys_cal_type', 'id'),
('my_cal', 'sys_cal_info', 'id', 'my_cal', 'sys_user', 'id'),
('my_cal', 'sys_cal_info', 'start_y', 'my_cal', 'sys_user', 'id'),
('my_cal', 'sys_cal_info', 'content', 'my_cal', 'sys_user', 'id'),
('my_cal', 'sys_cal_info', 'end_d', 'my_cal', 'sys_user', 'id');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_addtype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_addtype` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='编辑类型设定' AUTO_INCREMENT=18 ;

--
-- 导出表中的数据 `tp_sub_addtype`
--

INSERT INTO `tp_sub_addtype` (`id`, `title`, `htmltype`, `htmlname`, `htmlid`, `htmlvar`, `htmlstyle`, `htmlclass`, `isdisabled`, `isreadonly`, `outtable`, `outkey`, `outfield`, `outcondition`, `outorder`, `outadd`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]input', 'input', '', '', '', 'width:300px', 'input', 0, 0, '', '', NULL, '', '', '', 0, 1, ''),
(2, '单选[select]', 'select', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 1, 2, ''),
(3, '是否&不定', 'radio', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 2, 3, ''),
(4, '多选[check]', 'checkboxGroup', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 3, 4, ''),
(5, '多选[select]', 'selectmultiple', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 4, 5, ''),
(6, '文件上传', 'files', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 5, 6, ''),
(7, '图标', 'input', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 6, 7, ''),
(8, '文本[正常]', 'textarea', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 7, 8, ''),
(9, '文本[word]', 'word', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 8, 9, ''),
(10, '隐藏[时间]', 'hidden', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 9, 10, ''),
(11, '联想输入', 'input', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 11, 11, ''),
(12, '隐藏[IP]', 'hidden', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 10, 12, ''),
(13, '时间[年月日]', 'calendar', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 12, 13, ''),
(14, '时间[YMDHIS]', 'calendar', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 13, 14, ''),
(15, '只读[HTML]', 'htmltext', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, ''),
(16, '只读[TEXT]', 'text', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, ''),
(17, '只读[tIme]', 'time', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_auto`
--

CREATE TABLE IF NOT EXISTS `tp_sub_auto` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `content` varchar(40) default NULL COMMENT '填充内容',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `condition` varchar(40) default NULL COMMENT '填充条件',
  `regular` varchar(40) default NULL COMMENT '附加规则',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='自动填充设定' AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `tp_sub_auto`
--

INSERT INTO `tp_sub_auto` (`id`, `title`, `content`, `seqNo`, `color`, `condition`, `regular`) VALUES
(1, 'time', 'time', 0, 1, 'ADD', 'function'),
(2, 'time_update', 'time', 0, 1, 'UPDATE', 'function'),
(0, '无填充', '', 0, 1, 'ADD', 'function');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_auto_con`
--

CREATE TABLE IF NOT EXISTS `tp_sub_auto_con` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='填充条件' AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `tp_sub_auto_con`
--

INSERT INTO `tp_sub_auto_con` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, 'ADD', 0, 1, '新增数据的时候处理（默认方式）'),
(2, 'UPDATE', 0, 2, '更新数据的时候处理'),
(3, 'ALL ', 0, 3, '所有情况下都进行处理 ');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_auto_reg`
--

CREATE TABLE IF NOT EXISTS `tp_sub_auto_reg` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='附加规则' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `tp_sub_auto_reg`
--

INSERT INTO `tp_sub_auto_reg` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, 'string', 0, 8, '字符串（默认方式）'),
(2, 'field ', 0, 3, '用其它字段填充'),
(3, 'function', 0, 6, '使用函数'),
(4, 'callback ', 0, 7, '回调方法');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_color`
--

CREATE TABLE IF NOT EXISTS `tp_sub_color` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看类型设定' AUTO_INCREMENT=21 ;

--
-- 导出表中的数据 `tp_sub_color`
--

INSERT INTO `tp_sub_color` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, 'gray', 1, 1, ''),
(2, 'salmon', 2, 2, ''),
(3, 'copper', 3, 3, ''),
(4, 'yellow', 4, 4, ''),
(5, 'powderblue', 5, 5, ''),
(6, 'steelblue', 6, 6, ''),
(7, 'lime', 7, 7, ''),
(8, 'orange', 8, 8, ''),
(9, 'purple', 9, 9, ''),
(10, 'yellowgreen', 10, 10, ''),
(11, 'silver', 11, 11, ''),
(12, 'chocolate', 12, 12, ''),
(13, 'aliceblue', 13, 13, ''),
(14, 'springgreen', 14, 14, ''),
(15, 'tan', 15, 15, ''),
(16, 'quartz', 16, 16, ''),
(17, 'blueviolet', 17, 17, ''),
(18, 'red', 18, 18, ''),
(19, 'deeppink', 19, 19, ''),
(0, 'White', 0, 19, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_edittype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_edittype` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='编辑类型设定' AUTO_INCREMENT=18 ;

--
-- 导出表中的数据 `tp_sub_edittype`
--

INSERT INTO `tp_sub_edittype` (`id`, `title`, `htmltype`, `htmlname`, `htmlid`, `htmlvar`, `htmlstyle`, `htmlclass`, `isdisabled`, `isreadonly`, `outtable`, `outkey`, `outfield`, `outcondition`, `outorder`, `outadd`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]input', 'input', '', '', '', 'width:300px', 'input', 0, 0, '', '', NULL, '', '', '', 0, 1, ''),
(2, '单选[select]', 'select', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 1, 2, ''),
(3, '是否&不定', 'radio', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 2, 3, ''),
(4, '多选[check]', 'checkboxGroup', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 3, 4, ''),
(5, '多选[select]', 'selectmultiple', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 4, 5, ''),
(6, '文件上传', 'files', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 5, 6, ''),
(7, '图标', 'input', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 6, 7, ''),
(8, '文本[正常]', 'textarea', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 7, 8, ''),
(9, '文本[word]', 'word', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 8, 9, ''),
(10, '隐藏[时间]', 'hidden', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 9, 10, ''),
(11, '联想输入', 'input', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 11, 11, ''),
(12, '隐藏[IP]', 'hidden', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 10, 12, ''),
(13, '时间[年月日]', 'calendar', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 12, 13, ''),
(14, '时间[YMDHIS]', 'calendar', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 13, 14, ''),
(15, '只读[HTML]', 'htmltext', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, ''),
(16, '只读[TEXT]', 'text', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, ''),
(17, '只读[tIme]', 'time', '', '', '', '', '', 0, 0, '', '', NULL, '', '', '', 0, 14, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_fieldtype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_fieldtype` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='字属性设定' AUTO_INCREMENT=18 ;

--
-- 导出表中的数据 `tp_sub_fieldtype`
--

INSERT INTO `tp_sub_fieldtype` (`id`, `title`, `seqNo`, `type`, `notnull`, `default`, `primary`, `autoInc`, `leng`, `color`, `othervar`) VALUES
(1, '[varchar][40]', 1, 'VARCHAR', 0, '', 0, 0, 40, 5, ''),
(2, '[INI][11]', 2, 'INT', 0, '', 0, 0, 11, 3, ''),
(3, '[text]', 3, 'TEXT', 0, '', 0, 0, 0, 1, ''),
(4, '[varchar][240]', 4, 'VARCHAR', 0, '', 0, 0, 240, 7, ''),
(5, '[SMALLINT][4]', 5, 'SMALLINT', 0, '', 0, 0, 4, 2, ''),
(6, '[autoid][11]', 6, 'INT', 0, '', 1, 1, 11, 4, ''),
(17, '[datetime][INI][11]', 8, 'INT', 0, '', 0, 0, 11, 8, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_htmltags`
--

CREATE TABLE IF NOT EXISTS `tp_sub_htmltags` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `usetype` int(11) default '1' COMMENT '使用范围',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=23 ;

--
-- 导出表中的数据 `tp_sub_htmltags`
--

INSERT INTO `tp_sub_htmltags` (`id`, `title`, `usetype`, `seqNo`, `color`, `othervar`) VALUES
(1, 'input', 1, 0, 1, 'OK'),
(2, 'password', 1, 0, 2, 'OK'),
(3, 'textarea', 1, 0, 3, 'OK'),
(5, 'radio', 1, 0, 5, 'OK'),
(6, 'hidden', 1, 0, 6, 'OK'),
(7, 'checkbox[single]', 1, 0, 7, ''),
(8, 'checkboxGroup', 1, 0, 8, 'OK'),
(9, 'select', 1, 0, 9, 'OK'),
(10, 'selectmultiple', 1, 0, 10, 'OK'),
(11, 'files', 1, 0, 11, 'ok'),
(12, 'word', 1, 0, 11, 'OK'),
(13, 'calendar', 1, 0, 11, 'OK'),
(14, 'text', 3, 0, 12, 'OK'),
(19, 'htmltext', 3, 0, 14, 'OK'),
(15, 'time', 3, 0, 13, 'OK'),
(16, 'image', 2, 0, 15, ''),
(17, 'icon', 2, 0, 16, ''),
(18, 'link', 2, 0, 19, ''),
(20, 'outtable', 2, 0, 19, 'OK'),
(21, 'filedown', 2, 0, 8, 'OK');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_htmlusetype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_htmlusetype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='HTMLtag使用范围' AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `tp_sub_htmlusetype`
--

INSERT INTO `tp_sub_htmlusetype` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '编辑时使用', NULL, 1, NULL),
(2, '查看时使用', NULL, 2, NULL),
(3, '全局使用', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_issystem`
--

CREATE TABLE IF NOT EXISTS `tp_sub_issystem` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` text COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='系统保留设定' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `tp_sub_issystem`
--

INSERT INTO `tp_sub_issystem` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '非保留', 1, 1, 'none'),
(2, '文件上传', 2, 2, 'file'),
(3, '自定[权限]', 3, 3, 'right');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_searchtype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `tp_sub_searchtype`
--

INSERT INTO `tp_sub_searchtype` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]形式', 0, 1, NULL),
(2, '是否存在', 1, 2, NULL),
(3, '时间跨度', 2, 3, NULL),
(4, '可选比较', 3, 4, NULL),
(5, '包含[like]', 4, 5, NULL),
(6, '多搜[ID]', 5, 6, NULL),
(7, '是否&不定', 1, 7, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_validate`
--

CREATE TABLE IF NOT EXISTS `tp_sub_validate` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=11 ;

--
-- 导出表中的数据 `tp_sub_validate`
--

INSERT INTO `tp_sub_validate` (`id`, `title`, `seqNo`, `color`, `v_note`, `v_rag`, `v_con`, `a_reg`, `v_time`) VALUES
(1, '[默认]无', 0, 1, '', '', '0', 'regex', 'ALL'),
(2, 'EMAIL', 1, 2, '请输入正确的EMAIL地址!', 'email', '2', 'regex', 'ALL'),
(3, '纯数字', 2, 3, '输入项须为纯数字!', 'number', '0', 'regex', 'ALL'),
(4, '纯英文', 3, 4, '输入项须为纯英文!', 'english', '2', 'regex', 'ALL'),
(5, '电话', 4, 5, '输入项须为电话格式!', 'phone', '2', 'regex', 'ALL'),
(6, '手机格式', 5, 6, '输入项须为手机格式!', 'mobile', '2', 'regex', 'ALL'),
(7, '网址', 7, 8, '输入项须为网址格式!', 'url', '2', 'regex', 'ALL'),
(8, '货币格式', 8, 7, '输入项须为货币格式!', 'currency', '2', 'regex', 'ALL'),
(9, '长整数字格式', 9, 10, '输入项须为长整数字格式!', 'integer', '2', 'regex', 'ALL'),
(10, 'QQ号码', 10, 11, '输入项须为QQ号码格式!', 'qq', '2', 'regex', 'ALL');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_validate_arag`
--

CREATE TABLE IF NOT EXISTS `tp_sub_validate_arag` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='附加规则' AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `tp_sub_validate_arag`
--

INSERT INTO `tp_sub_validate_arag` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, 'regex', 0, 1, '使用正则进行验证，表示前面定义的验证规则是一个正则表达式（默认）'),
(2, 'function', 0, 1, '使用函数验证，前面定义的验证规则是一个函数名 '),
(3, 'callback', 0, 1, '使用方法验证，前面定义的验证规则是一个当前 Model类的方法'),
(4, 'confirm ', 0, 1, '验证表单中的两个字段是否相同，前面定义的验证规则是一个字段名'),
(5, 'equal ', 0, 1, '验证是否等于某个值，该值由前面的验证规则定义'),
(6, 'in', 0, 1, '验证是否在某个范围内，前面定义的验证规则必须是一个数组'),
(7, 'unique', 0, 1, '验证是否唯一，系统会根据字段目前的值查询数据库来判断是否存在相同的值 ');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_validate_vcon`
--

CREATE TABLE IF NOT EXISTS `tp_sub_validate_vcon` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='验证条件' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `tp_sub_validate_vcon`
--

INSERT INTO `tp_sub_validate_vcon` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(0, '存在字段就验证（默认）', NULL, NULL, NULL),
(1, '必须验证', NULL, NULL, NULL),
(2, '值不为空的时候验证', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_viewtype`
--

CREATE TABLE IF NOT EXISTS `tp_sub_viewtype` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看类型设定' AUTO_INCREMENT=11 ;

--
-- 导出表中的数据 `tp_sub_viewtype`
--

INSERT INTO `tp_sub_viewtype` (`id`, `title`, `htmltype`, `htmlname`, `htmlid`, `htmlvar`, `htmlstyle`, `htmlclass`, `isdisabled`, `isreadonly`, `outtable`, `outkey`, `outfield`, `outcondition`, `outorder`, `outadd`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]text', 'text', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, ''),
(2, '引用外表', 'outtable', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, ''),
(3, '图标显示', 'icon', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, ''),
(4, '图片显示', 'image', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, ''),
(5, '文件下载', 'filedown', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, ''),
(6, '链接[索引]', 'text', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6, ''),
(7, '时间[YMD]', 'time', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 6, 7, ''),
(8, '时间[全]', 'time', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 7, 8, ''),
(9, '1对多', 'text', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 8, 9, ''),
(10, 'HTML', 'htmltext', '', NULL, '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_yesno`
--

CREATE TABLE IF NOT EXISTS `tp_sub_yesno` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看类型设定' AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `tp_sub_yesno`
--

INSERT INTO `tp_sub_yesno` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(0, '否', 1, 1, NULL),
(1, '是', 2, 8, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_config`
--

CREATE TABLE IF NOT EXISTS `tp_sys_config` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL COMMENT '上级',
  `type` int(11) default NULL COMMENT '值的类型',
  `title` varchar(200) default NULL,
  `value` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='默认的系统参数' AUTO_INCREMENT=100 ;

--
-- 导出表中的数据 `tp_sys_config`
--

INSERT INTO `tp_sys_config` (`id`, `pid`, `type`, `title`, `value`, `note`, `seqNo`) VALUES
(1, 1, 1, 'DISPATCH_ON', 'true', '是否启用Dispatcher', 0),
(2, 1, 3, 'DISPATCH_NAME', 'Think', '默认的Dispatcher名称', 0),
(3, 1, 2, 'URL_MODEL', '0', '// URL模式： 0 普通模式 1 PATHINFO 2 REWRITE', 0),
(4, 1, 2, 'PATH_MODEL', '2', '// 默认为PATHINFO 模式，提供最好的用户体验和SEO支持// 普通模式1 参数没有顺序/m/module/a/action/id/1// 智能模式2 自动识别模块和操作/module/action/id/1/ 或者 /module,action,id,1/...', 0),
(5, 1, 3, 'PATH_DEPR', '/', 'PATHINFO参数之间分割号', 0),
(6, 1, 1, 'ROUTER_ON', 'true', '启用路由判断', 0),
(7, 1, 3, 'COMPONENT_DEPR', '@', '组件模块和操作的URL分割符', 0),
(8, 2, 1, 'WEB_LOG_RECORD', 'false', '默认不记录日志', 0),
(9, 2, 2, 'LOG_FILE_SIZE', '2097152', '日志文件大小限制', 0),
(10, 3, 1, 'THINK_PLUGIN_ON', 'false', '默认启用插件机制', 0),
(11, 4, 1, 'LIMIT_RESFLESH_ON', 'false', '默认关闭防刷新机制', 0),
(12, 4, 1, 'LIMIT_REFLESH_TIMES', '3', '页面防刷新时间 默认3秒', 0),
(13, 5, 1, 'DEBUG_MODE', 'false', '调试模式默认关闭', 0),
(14, 5, 3, 'ERROR_MESSAGE', '您浏览的页面暂时发生了错误！请稍后再试～', '错误显示信息 非调试模式有效', 0),
(15, 5, 3, 'ERROR_PAGE', '', '错误定向页面', 0),
(16, 6, 3, 'VAR_PATHINFO', 's', 'PATHINFO 兼容模式获取变量例如 ?s=/module/action/id/1 后面的参数取决于PATH_MODEL 和 PATH_DEPR', 0),
(17, 6, 3, 'VAR_MODULE', 'm', '默认模块获取变量', 0),
(18, 6, 3, 'VAR_ACTION', 'a', '默认操作获取变量', 0),
(19, 6, 3, 'VAR_ROUTER', 'r', '默认路由获取变量', 0),
(20, 6, 3, 'VAR_FILE', 'f', '默认文件变量', 0),
(21, 6, 3, 'VAR_PAGE', 'p', '默认分页跳转变量', 0),
(22, 6, 3, 'VAR_LANGUAGE', 'l', '默认语言切换变量', 0),
(23, 6, 3, 'VAR_TEMPLATE', 't', '默认模板切换变量', 0),
(24, 6, 3, 'VAR_AJAX_SUBMIT', 'ajax', '默认的AJAX提交变量', 0),
(25, 7, 3, 'DEFAULT_MODULE', 'Index', '默认模块名称', 0),
(26, 7, 3, 'DEFAULT_ACTION', 'index', '默认操作名称', 0),
(27, 8, 1, 'TMPL_CACHE_ON', 'true', '默认开启模板编译缓存 false 的话每次都重新编译模板', 0),
(28, 8, 2, 'TMPL_CACHE_TIME', '-1', '模板缓存有效期 -1 永久 单位为秒', 0),
(29, 8, 1, 'TMPL_SWITCH_ON', 'true', '启用多模版支持', 0),
(30, 8, 3, 'DEFAULT_TEMPLATE', 'default', '默认模板名称', 0),
(31, 8, 3, 'TEMPLATE_SUFFIX', '.html', '默认模板文件后缀', 0),
(32, 8, 3, 'CACHFILE_SUFFIX', '.php', '默认模板缓存后缀', 0),
(33, 8, 3, 'TEMPLATE_CHARSET', 'utf-8', '模板模板编码', 0),
(34, 8, 3, 'OUTPUT_CHARSET', 'utf-8', '默认输出编码', 0),
(35, 9, 3, 'CONTR_CLASS_PREFIX', '', '', 0),
(36, 9, 3, 'CONTR_CLASS_SUFFIX', 'Action', '', 0),
(37, 9, 3, 'ACTION_PREFIX', '', '', 0),
(38, 9, 3, 'ACTION_SUFFIX', '', '', 0),
(39, 9, 3, 'MODEL_CLASS_PREFIX', '', '', 0),
(40, 9, 3, 'MODEL_CLASS_SUFFIX', 'Model', '', 0),
(41, 10, 3, 'HTML_FILE_SUFFIX', '.shtml', '默认静态文件后缀', 0),
(42, 10, 1, 'HTML_CACHE_ON', 'false', '默认关闭静态缓存', 0),
(43, 10, 2, 'HTML_CACHE_TIME', '60', '静态缓存有效期', 0),
(44, 10, 2, 'HTML_READ_TYPE', '1', '静态缓存读取方式 0 readfile 1 redirect', 0),
(45, 10, 3, 'HTML_URL_SUFFIX', '', '伪静态后缀设置', 0),
(46, 11, 1, 'LANG_SWITCH_ON', 'false', '默认关闭多语言包功能', 0),
(47, 11, 3, 'DEFAULT_LANGUAGE', 'zh-cn', '默认语言', 0),
(48, 11, 3, 'TIME_ZONE', 'PRC', '默认时区', 0),
(49, 12, 1, 'USER_AUTH_ON', 'false', '默认不启用用户认证', 0),
(50, 12, 2, 'USER_AUTH_TYPE', '1', '默认认证类型 1 登录认证 2 实时认证', 0),
(51, 12, 3, 'USER_AUTH_KEY', 'authId', '用户认证SESSION标记', 0),
(52, 12, 3, 'AUTH_PWD_ENCODER', 'md5', '用户认证密码加密方式', 0),
(53, 12, 3, 'USER_AUTH_PROVIDER', 'DaoAuthentictionProvider', '默认认证委托器', 0),
(54, 12, 3, 'USER_AUTH_GATEWAY', '/Public/login', '默认认证网关', 0),
(55, 12, 3, 'NOT_AUTH_MODULE', 'Public', '默认无需认证模块', 0),
(56, 12, 3, 'REQUIRE_AUTH_MODULE', '', '默认需要认证模块', 0),
(57, 13, 3, 'SESSION_NAME', 'ThinkID', '默认Session_name 如果需要不同项目共享SESSION 可以设置相同', 0),
(58, 13, 3, 'SESSION_PATH', '', '采用默认的Session save path', 0),
(59, 13, 3, 'SESSION_TYPE', 'File', '默认Session类型 支持 DB 和 File ', 0),
(60, 13, 3, 'SESSION_EXPIRE', '300000', '默认Session有效期', 0),
(61, 13, 3, 'SESSION_TABLE', 'think_session', '数据库Session方式表名', 0),
(62, 13, 3, 'SESSION_CALLBACK', '', '反序列化对象的回调方法', 0),
(63, 14, 3, 'DB_CHARSET', 'utf8', '数据库编码默认采用utf8', 0),
(64, 14, 2, 'DB_DEPLOY_TYPE', '0', '数据库部署方式 0 集中式（单一服务器） 1 分布式（主从服务器）', 0),
(65, 14, 1, 'SQL_DEBUG_LOG', 'false', '记录SQL语句到日志文件', 0),
(66, 14, 1, 'DB_FIELDS_CACHE', 'true', '缓存数据表字段信息', 0),
(67, 15, 2, 'DATA_CACHE_TIME', '-1', '数据缓存有效期', 0),
(68, 15, 1, 'DATA_CACHE_COMPRESS', 'false', '数据缓存是否压缩缓存', 0),
(69, 15, 1, 'DATA_CACHE_CHECK', 'false', '数据缓存是否校验缓存', 0),
(70, 15, 3, 'DATA_CACHE_TYPE', 'File', '数据缓存类型 支持 File Db Apc Memcache Shmop Sqlite Xcache Apachenote Eaccelerator', 0),
(71, 15, 1, 'DATA_CACHE_SUBDIR', 'false', '使用子目录缓存 （自动根据缓存标识的哈希创建子目录）', 0),
(72, 15, 3, 'DATA_CACHE_TABLE', 'think_cache', '数据缓存表 当使用数据库缓存方式时有效', 0),
(73, 15, 3, 'CACHE_SERIAL_HEADER', '<?php\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\n//', '文件缓存开始标记', 0),
(74, 15, 3, 'CACHE_SERIAL_FOOTER', '\\\\\\\\\\\\\\\\n?.>', '文件缓存结束标记[注意PHP的保留点号要用开]', 0),
(75, 15, 2, 'SHARE_MEM_SIZE', '1048576', '共享内存分配大小', 0),
(76, 16, 1, 'SHOW_RUN_TIME', 'false', '运行时间显示', 0),
(77, 16, 1, 'SHOW_ADV_TIME', 'false', '显示详细的运行时间', 0),
(78, 16, 1, 'SHOW_DB_TIMES', 'false', '显示数据库查询和写入次数', 0),
(79, 16, 1, 'SHOW_CACHE_TIMES', 'false', '显示缓存操作次数', 0),
(80, 16, 1, 'SHOW_USE_MEM', 'false', '显示内存开销', 0),
(81, 16, 1, 'SHOW_PAGE_TRACE', 'false', '显示页面Trace信息 由Trace文件定义和Action操作赋值', 0),
(82, 17, 3, 'TMPL_ENGINE_TYPE', 'Think', '默认模板引擎 以下设置仅对使用Think模板引擎有效', 0),
(83, 17, 3, 'TMPL_DENY_FUNC_LIST', 'echo,exit', '模板引擎禁用函数', 0),
(84, 17, 3, 'TMPL_L_DELIM', '{', '模板引擎普通标签开始标记', 0),
(85, 17, 3, 'TMPL_R_DELIM', '}', '模板引擎普通标签结束标记', 0),
(86, 17, 3, 'TAGLIB_BEGIN', '<', '标签库标签开始标记', 0),
(87, 17, 3, 'TAGLIB_END', '>', '标签库标签结束标记', 0),
(88, 18, 2, 'COOKIE_EXPIRE', '3600', 'Coodie有效期', 0),
(89, 18, 3, 'COOKIE_DOMAIN', '', 'Cookie有效域名', 0),
(90, 18, 3, 'COOKIE_PATH', '/', 'Cookie路径', 0),
(91, 18, 3, 'COOKIE_PREFIX', '', 'Cookie前缀 避免冲突', 0),
(92, 19, 2, 'PAGE_NUMBERS', '5', '分页显示页数', 0),
(93, 19, 2, 'LIST_NUMBERS', '20', '分页每页显示记录数', 0),
(94, 20, 3, 'AJAX_RETURN_TYPE', 'JSON', 'AJAX 数据返回格式 JSON XML ...', 0),
(95, 20, 3, 'DATA_RESULT_TYPE', '0', '默认数据返回格式 1 对象 0 数组', 0),
(96, 21, 3, 'AUTO_LOAD_PATH', 'Think.Util.', ' __autoLoad 的路径设置 当前项目的Model和Action类会自动加载，无需设置 注意搜索顺序', 0),
(97, 21, 3, 'CALLBACK_LOAD_PATH', '', '反序列化对象时自动加载的路径设置', 0),
(98, 21, 3, 'UPLOAD_FILE_RULE', 'uniqid', '文件上传命名规则 例如 time uniqid com_create_guid 等 支持自定义函数 仅适用于内置的UploadFile类', 0),
(99, 21, 3, 'LIKE_MATCH_FIELDS', '', '数据库查询的时候需要进行模糊匹配的字段', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_configtype`
--

CREATE TABLE IF NOT EXISTS `tp_sys_configtype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `note` varchar(240) default NULL COMMENT '注解',
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='默认的系统参数' AUTO_INCREMENT=22 ;

--
-- 导出表中的数据 `tp_sys_configtype`
--

INSERT INTO `tp_sys_configtype` (`id`, `title`, `note`, `seqNo`) VALUES
(1, 'Dispatch设置', '', 0),
(2, '日志设置', '', 0),
(3, '插件设置', '', 0),
(4, '防刷新设置', '', 0),
(5, '错误设置', '', 0),
(6, '系统变量设置', '', 0),
(7, '模块和操作设置', '', 0),
(8, '模板设置', '', 0),
(9, '模型设置', '', 0),
(10, '静态缓存设置', '', 0),
(11, '语言时区设置', '', 0),
(12, '用户认证设置', '', 0),
(13, 'SESSION设置', '', 0),
(14, '数据库设置', '', 0),
(15, '数据缓存设置', '', 0),
(16, '运行时间设置', '', 0),
(17, '模板引擎设置', '', 0),
(18, 'Cookie设置', '', 0),
(19, '分页设置', '', 0),
(20, '数据格式设置', '', 0),
(21, '其它设置', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_datatype`
--

CREATE TABLE IF NOT EXISTS `tp_sys_datatype` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型' AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `tp_sys_datatype`
--

INSERT INTO `tp_sys_datatype` (`id`, `title`, `seqNo`, `note`) VALUES
(1, '布尔值', 111, 'qqq'),
(2, '数字值', 222, 'www'),
(3, '文本值', 333, 'eee');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_fields`
--

CREATE TABLE IF NOT EXISTS `tp_sys_fields` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL COMMENT '所属的表',
  `name` varchar(200) NOT NULL COMMENT '英文',
  `caption` varchar(200) NOT NULL,
  `islist` int(11) default '1' COMMENT '是否列表',
  `fieldtype` int(11) default NULL COMMENT '字属性',
  `fieldlenght` int(11) default NULL COMMENT '字符长度',
  `request` int(11) default NULL COMMENT '必填',
  `validate` int(11) default NULL COMMENT '验证形式',
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
  `autotype` int(11) NOT NULL default '0' COMMENT '自动填充类型',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='定义每个点' AUTO_INCREMENT=4444 ;

--
-- 导出表中的数据 `tp_sys_fields`
--

INSERT INTO `tp_sys_fields` (`id`, `pid`, `name`, `caption`, `islist`, `fieldtype`, `fieldlenght`, `request`, `validate`, `validate_tex`, `validate_reg`, `viewtype`, `isview`, `edittype`, `isedit`, `addtype`, `isadd`, `islistwidth`, `islistviewtype`, `iswrap`, `indexvar`, `autotype`, `issystem`, `outkey`, `outkeyis`, `outkeyid`, `outkeyf`, `outkeywhere`, `searchtype`, `advsearchtype`, `issearch`, `seqNo`, `modelid`) VALUES
(557, 131, 'groupId', '权限组', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 1, 0),
(556, 125, 'content_en', '内容[英文]', 0, 3, NULL, 1, 1, '', '', 10, 1, 9, 1, 9, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(555, 125, 'content_cn', '内容[中文]', 0, 3, NULL, 1, 1, '', '', 10, 1, 9, 1, 9, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(554, 125, 'title_en', '标题[英文]', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(553, 125, 'title_cn', '标题[中文]', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(552, 125, 'sta_infos_typeId', '内容分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'sta_infos_type', 1, 'id', 'title', '', 1, 1, 0, 5, 0),
(551, 125, 'langId', '发布语言', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(550, 130, 'downloadTime', '下载次数', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(549, 130, 'updateTime', '更新时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(525, 127, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(526, 127, 'langId', '发布语言', 0, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 4, 0),
(527, 129, 'account', '用户名', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(528, 129, 'nickname', '昵称', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(529, 129, 'password', '密码', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(530, 129, 'verify', '验证码', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(531, 129, 'email', 'email', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(532, 129, 'remark', '备注', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(533, 129, 'status', '用户状态', 1, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 7, 0),
(534, 130, 'name', '名称', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(535, 130, 'type', '附件类型', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(536, 130, 'size', '附件大小', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(537, 130, 'extension', '文件后辍', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(538, 130, 'savepath', '保存路径', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(539, 130, 'savename', '保存名称', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(540, 130, 'module', '模块', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(541, 130, 'recordId', '记录ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(542, 130, 'userId', '用户ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(543, 130, 'uploadTime', '上传时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(544, 130, 'downCount', '下载次数', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(545, 130, 'hash', 'hash值', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(546, 130, 'verify', '验证码', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(547, 130, 'remark', '说明', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(548, 130, 'version', '版本', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(36, 1, 'f_name', '姓', 1, 1, NULL, 1, 2, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 36, 0),
(37, 1, 'l_name', '名字', 1, 1, NULL, 1, 2, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 37, 0),
(38, 1, 'e_name', '英文名', 1, 1, NULL, 1, 3, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 38, 0),
(682, 153, 'simword', '简称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(40, 1, 'sex', '姓别', 1, 5, NULL, 1, 3, ' 错误提示[不填为默认]  ', '', 3, 1, 3, 1, 3, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 7, 1, 0, 40, 0),
(41, 1, 'langid', '人才语言', 1, 1, NULL, 1, 1, '', '', 9, 1, 4, 1, 4, 1, NULL, 1, 0, '', 0, 1, 'lang', 0, '', '', '', 6, 1, 0, 41, 0),
(217, 24, 'id', '[系统]ID号', 0, 6, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(218, 24, 'create_on', '[系统]加入时间', 1, 2, NULL, 0, 1, NULL, NULL, 8, 1, 12, 1, 10, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 3, 1, 0, 100, 0),
(219, 24, 'update_on', '[系统]更新时间', 1, 2, NULL, 0, 1, NULL, NULL, 8, 1, 12, 1, 10, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 3, 1, 0, 101, 0),
(50, 1, 'areaid', '现在所在地', 1, 2, NULL, 1, 3, '', '', 6, 1, 11, 1, 11, 1, NULL, 1, 0, '', 0, 1, 'area', 0, '', '', '', 1, 1, 0, 50, 0),
(49, 7, 'title', '标题', 1, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(122, 8, 'isnomor', '是否常用', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 3, 1, 3, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 7, 1, 0, 122, 0),
(123, 1, 'nowsalry', '现在薪金', 1, 2, NULL, 1, 3, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 123, 0),
(121, 8, 'parea', '上级地名', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 121, 0),
(120, 8, 'areashort', '简写', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 120, 0),
(119, 8, 'areacode', '邮政编码', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 119, 0),
(118, 8, 'areaphone', '区号', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 118, 0),
(711, 135, 'logo', '行业LOGO', 1, 1, NULL, 0, 1, '', '', 4, 1, 6, 1, 6, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(117, 8, 'areapy', '拼音', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 117, 0),
(572, 134, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(561, 131, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(112, 8, 'areaname', '地区名', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 112, 0),
(571, 134, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(558, 131, 'nodeId', '权限节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(124, 1, 'hopesalry', '期望薪金', 1, 2, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 124, 0),
(125, 1, 'nowsalryremark', '现在薪金备注', 1, 4, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 5, 1, 0, 125, 0),
(126, 1, 'left_timeid', '到岗时间', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, 'left_time', 0, '', '', '', 1, 1, 0, 126, 0),
(684, 153, 'type', '分类', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 11, 0),
(128, 10, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(570, 134, 'title', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(569, 134, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(568, 133, 'userId', '用户Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(567, 133, 'groupId', '级别Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(566, 132, 'ename', '标记名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(564, 132, 'status', '状态', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(565, 132, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(148, 11, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 9, 0),
(683, 153, 'level', '等级', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 11, 0),
(140, 12, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(238, 21, 'title', '标题', 1, 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(239, 21, 'content', '内容', 0, 3, NULL, 0, 0, NULL, NULL, 1, 1, 9, 1, 9, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(560, 131, 'parentNodeId', '上组节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(559, 131, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(145, 12, 'shortkey', '快捷键', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 6, 0),
(146, 12, 'isnomor', '是否常用', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 3, 1, 3, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 2, 1, 0, 7, 0),
(563, 132, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(154, 13, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(233, 23, 'a_day', '获取时间', 1, 1, NULL, 0, 0, NULL, NULL, 7, 1, 12, 1, 13, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 233, 0),
(234, 23, 'img', '图片', 1, 4, NULL, 0, 0, NULL, NULL, 4, 1, 6, 1, 6, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 234, 0),
(235, 26, 'title', '标题', 1, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(236, 20, 'title', '标题', 1, 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(237, 20, 'zhajitypeid', '分类', 1, 2, NULL, 1, 0, NULL, NULL, 2, 1, 2, 1, 2, 1, NULL, 1, NULL, '', 0, 1, 'zhajitype', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(160, 14, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(229, 25, 'xiaoshuoshowid', '所属小说', 0, 2, NULL, 1, 0, NULL, NULL, 2, 1, 2, 1, 2, 1, NULL, 1, NULL, '', 0, 1, 'xiaoshuoshow', 0, NULL, NULL, NULL, 1, 1, 0, 229, 0),
(230, 22, 'title', '名称', 1, 1, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 230, 0),
(231, 22, 'content', '内容', 1, 4, NULL, 1, 1, NULL, NULL, 1, 1, 8, 1, 8, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 231, 0),
(232, 23, 'title', '标题', 1, 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 232, 0),
(166, 15, 'title', '标题', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(224, 19, 'c_time', '创作时间', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 224, 0),
(225, 19, 'someinfo', '小说说明', 0, 3, NULL, 0, 1, NULL, NULL, 1, 1, 9, 1, 9, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 225, 0),
(226, 19, 'pub_bis', '发行商', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 226, 0),
(227, 19, 'otherinfo', '其它信息', 0, 3, NULL, 0, 1, NULL, NULL, 1, 1, 9, 1, 9, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 227, 0),
(228, 25, 'title', '章节名', 1, 1, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 228, 0),
(172, 16, 'title', '电话名', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(221, 24, 'viewtime', '查看次数', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 99, 0),
(222, 19, 'title', '小说名', 1, 1, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 222, 0),
(223, 19, 'page', '小说封面', 0, 4, NULL, 0, 1, NULL, NULL, 4, 1, 6, 1, 6, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 223, 0),
(177, 16, 'content', '说明', 0, 4, NULL, 0, 0, NULL, NULL, 1, 1, 8, 1, 8, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(681, 153, 'paytypeid', '付款方式', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 3, 0),
(184, 17, 'cid_from', '原发客户ID', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(216, 18, 'u_update', '[系统]更新者', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '33', 1, 2, '', 0, '', '', '', 1, 1, 0, 1003, 0),
(220, 24, 'order', '[系统]排序', 1, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 102, 0),
(185, 17, 'cid_to', '目标客户ID', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(186, 17, 'c2ctype', '客户间关系', 1, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(187, 17, 'c2cdesc', '关系简述', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 8, 1, 8, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(188, 17, 'c2ptype', '对人才关系', 1, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(189, 17, 'c2pdesc', '人才关系简述', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 8, 1, 8, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(710, 153, 'systype', '系统分类', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 12, 0),
(191, 2, 'name_cn', '中文名', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(192, 2, 'name_en', '英文名', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(193, 2, 'sname', '简称', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(194, 2, 'logo', 'LOGO', 0, 1, 0, 0, 1, '', '', 4, 1, 6, 1, 7, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 0, 0),
(195, 2, 'beijinid', '资金背景', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(196, 2, 'addr', '地址', 0, 1, 0, 0, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 5, 1, 1, 0, 0),
(197, 2, 'website', '网址', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(198, 2, 'kuimu', '企业规模', 0, 3, 0, 0, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(199, 2, 'shouyu', '收入水平', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(200, 2, 'paytype', '薪金[税前/税后]', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(201, 2, 'paymoth', '年薪月数', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(202, 2, 'payinfo', '薪金说明', 0, 4, NULL, 0, 0, NULL, NULL, 1, 1, 8, 1, 8, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(562, 132, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(210, 18, 'id', '[系统]ID号', 1, 6, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 2, 2, '', 0, '', '', '', 1, 1, 0, 0, 0),
(211, 18, 'order', '[系统]排序', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 1005, 0),
(212, 18, 'create_on', '[系统]加入时间', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 2, 2, '', 0, '', '', '', 1, 1, 0, 1000, 0),
(213, 18, 'update_on', '[系统]更新时间', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 1001, 0),
(214, 18, 'systemp', '[系统]搜索', 1, 3, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '33', 0, 2, '', 0, '', '', '', 1, 1, 0, 1004, 0),
(215, 18, 'u_add', '[系统]输入者', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 1002, 0),
(695, 154, 'type', '职位', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(697, 154, 'sex', '性别', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(694, 154, 'dep', '部门', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(693, 154, 'companyid', '公司', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 0, 0),
(691, 154, 'emain', 'E-MAIL', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(692, 154, 'mphone', '手机', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(690, 154, 'phone', '电话', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(698, 154, 'content', '备注', 0, 4, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(699, 155, 'companyid', '公司', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(713, 157, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(680, 153, 'fax', '传真', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 4, 0),
(679, 153, 'phone', '电话', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 5, 0),
(678, 153, 'email', 'E-MAIL', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 6, 0),
(677, 153, 'powerman', '负责人', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 7, 0),
(676, 153, 'area', '地区', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 8, 0),
(675, 153, 'add', '地址', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 9, 0),
(573, 134, 'pid', '上组ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(574, 134, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(575, 134, 'type', '类型', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(576, 135, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(577, 136, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(578, 136, 'content', '内容', 1, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(579, 138, 'title_cn', '客户名称[中文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(580, 138, 'title_en', '客户名称[英文]', 0, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(581, 138, 'callingid', '客户行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 3, 0),
(582, 138, 'logo', '客户LOGO', 1, 1, 0, 0, 1, '', '', 1, 1, 6, 1, 6, 1, '', 1, 1, '', 0, 2, '', 0, '', '', '', 1, 1, 1, 4, 0),
(583, 138, 'info_cn', '客户说明[中文]', 0, 3, 0, 1, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(584, 138, 'info_en', '客户说明[英文]', 0, 3, 0, 0, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(585, 135, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(586, 137, 'title', '职位名称', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(587, 137, 'content', '职位要求', 0, 3, 0, 1, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(588, 137, 'startday', '开始时间', 1, 1, 0, 1, 1, '', '', 1, 1, 13, 1, 13, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(589, 137, 'endday', '结束时间', 1, 1, 0, 1, 1, '', '', 1, 1, 13, 1, 13, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 5, 0),
(590, 137, 'count', '招聘人数', 0, 2, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(591, 137, 'jobno', '职位编号', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(592, 136, 'contacttypeid', '留言类型分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'contacttype', 1, 'id', 'title_cn', '', 1, 1, 0, 2, 0),
(593, 139, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(594, 139, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(595, 129, 'create_time', '创建时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(596, 129, 'update_time', '更新时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(598, 140, 'name', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(599, 140, 'nodeId', '所属权限', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(600, 140, 'pId', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(601, 140, 'isleaf', '是否主类', 0, 5, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(602, 141, 'caption', '部门名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(603, 141, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(604, 141, 'notes', '说明', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(605, 142, 'id', '[系统]ID号', 0, 6, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, -1, 0),
(606, 142, 'create_at', '[系统]加入时间', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 1000, 0),
(607, 142, 'update_on', '[系统]更新时间', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 1001, 0),
(608, 142, 'seqNo', '[系统]排序', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 2, '', 0, NULL, NULL, NULL, 1, 1, 0, 1002, 0),
(609, 143, 'title', '名称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(610, 143, 'typeid', '所属类别', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(611, 143, 'unit', '单位', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(612, 143, 'keys', '快捷键', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(613, 143, 'img', '图片', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(614, 143, 'price_min', '最小浮动', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(615, 143, 'standard', '规格', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(616, 141, 'detzz', '部门职责', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(617, 141, 'area', '分布地区', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(618, 141, 'Lang', '是否主管部门', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(619, 144, 'title', '名称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(620, 144, 'pid', '上级类别', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(621, 144, 'unit', '默认单位', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(674, 153, 'title', '名称', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(673, 153, 'comid', '编号', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(624, 144, 'price_min', '最小浮动', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(626, 144, 'caption', '说明', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(627, 143, 'price_max', '最大浮动', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(628, 144, 'price_max', '最大浮动', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(629, 143, 'length', '长度', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(630, 143, 'width', '宽度', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(631, 143, 'thickness', '厚度/高度', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(632, 143, 'quantity', '数量', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(633, 145, 'title', '标题', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(634, 145, 'compayid', '客户', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(635, 145, 'indate', '下单时间', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(636, 145, 'roderid', '订单号', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(637, 145, 'state', '状态', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(638, 146, 'title', '标题', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(639, 146, 'orderid', '订单ID', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(640, 146, 'content', '说明', 0, 4, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(641, 146, 'userid', '操作人', 0, 2, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(642, 147, 'account', '用户名', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(644, 147, 'password', '密码', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 3, 0),
(645, 147, 'verify', '验证码', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 4, 0),
(646, 147, 'email', 'email', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 5, 0),
(647, 147, 'remark', '备注', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 6, 0),
(648, 147, 'status', '用户状态', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 7, 0),
(687, 154, 'name', '姓名', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(712, 136, 'pid', '是否回复', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(651, 148, 'groupId', '权限组Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(652, 148, 'status', '状态', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(653, 148, 'nodeId', '权限节点Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 3, 0),
(654, 148, 'parentNodeId', '上组节点Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 4, 0),
(655, 148, 'level', '级别', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 5, 0),
(656, 149, 'userId', '用户Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(657, 149, 'groupId', '级别Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(658, 150, 'name', '名称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(659, 150, 'pid', '上级ID', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(660, 150, 'ename', '标记名', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 3, 0),
(661, 150, 'remark', '说明', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 4, 0),
(662, 150, 'status', '状态', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 5, 0),
(663, 151, 'title', '标题', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(664, 151, 'name', '名称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(665, 151, 'pid', '上组ID', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 3, 0),
(666, 151, 'level', '级别', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 4, 0),
(667, 151, 'type', '类型', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 5, 0),
(668, 151, 'remark', '说明', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 6, 0),
(669, 151, 'status', '状态', 0, 5, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 7, 0),
(670, 152, 'title', '名称', 0, 1, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(671, 152, 'values', '属性', 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(672, 152, 'infos', '说明', 0, 4, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(524, 127, 'content', '职位内容', 0, 3, 0, 1, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(523, 127, 'jobcode', '职位代码', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(522, 127, 'title', '职位名称', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(521, 128, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(520, 126, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(519, 124, 'seqNo', '排序', 0, 2, 0, 0, 3, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 102, 0),
(518, 124, 'update_on', '更新时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 2, 2, '', 0, '', '', '', 1, 1, 0, 101, 0),
(517, 124, 'create_at', '加入时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 1, 2, '', 0, '', '', '', 1, 1, 0, 100, 0),
(516, 124, 'id', 'ID', 1, 6, 0, 0, 1, '', '', 1, 1, 16, 1, 16, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 1, 0, 0),
(709, 156, 'content', '地址&工厂', 0, 4, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 8, 0),
(708, 156, 'companyid', '公司', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 0, 0),
(707, 155, 'content', '备注', 0, 4, NULL, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 8, 0),
(714, 157, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(729, 160, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(725, 159, 'outfiletypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outfiletype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(723, 159, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(728, 160, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(727, 159, 'files', '文件', 0, 1, 0, 1, 1, '', '', 1, 1, 6, 1, 6, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 8, 0),
(721, 159, 'content', '内容', 1, 3, 0, 1, 1, '', '', 1, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(726, 159, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(730, 161, 'content', '内容', 0, 3, NULL, 1, 1, '', '', 1, 1, 9, 1, 9, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(731, 161, 'title', '标题', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(732, 161, 'outnewstypeId', '内容分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, 'outnewstype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(733, 161, 'langId', '发布语言', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(735, 138, 'isvip', '是否VIP', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 1, 6, 0),
(742, 127, 'finishdate', '完成日期', 1, 1, 0, 0, 1, '', '', 1, 1, 13, 1, 13, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(737, 162, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(741, 127, 'isfinish', '是否完成', 1, 1, 0, 0, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 0, 6, 0),
(739, 162, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(740, 162, 'files', '文件', 0, 1, 0, 0, 1, '', '', 1, 1, 6, 1, 6, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 8, 0),
(743, 127, 'jobnote', '职位要求', 1, 4, 0, 1, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(744, 127, 'number', '需求人数', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(745, 163, 'content', '内容', 0, 3, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(746, 163, 'title', '标题', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(747, 163, 'outnewstypeId', '内容分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, 'outnewstype', 0, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(748, 163, 'langId', '发布语言', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, 'lang', 0, 'id', 'title', '', 1, 1, 0, 6, 0),
(749, 163, 'startdate', '开始时间', 1, 1, NULL, 1, 1, '', '', 1, 1, 13, 1, 13, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(750, 163, 'enddate', '完成时间', 1, 1, NULL, 1, 1, '', '', 1, 1, 13, 1, 13, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(751, 163, 'callingId', '所属行业', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, 'calling', 0, 'id', 'title_cn', '', 1, 1, 0, 2, 0),
(752, 159, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(753, 140, 'model', '模块名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(754, 140, 'action', '操作', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1343, 276, 'remark', '备注', 0, 4, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1341, 276, 'verify', '验证码', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1342, 276, 'email', 'email', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1336, 275, 'remark', '说明', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1337, 275, 'version', '版本', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1338, 276, 'account', '用户名', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1339, 276, 'nickname', '昵称', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1340, 276, 'password', '密码', 0, 4, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1335, 275, 'verify', '验证码', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1334, 275, 'hash', 'hash值', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1324, 275, 'type', '附件类型', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1325, 275, 'size', '附件大小', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1326, 275, 'extension', '文件后辍', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1327, 275, 'savepath', '保存路径', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1328, 275, 'savename', '保存名称', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1329, 275, 'module', '模块', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1330, 275, 'recordId', '记录ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1331, 275, 'userId', '用户ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1332, 275, 'uploadTime', '上传时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1333, 275, 'downCount', '下载次数', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1008, 0, 'asdf', 'sdf', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 0, 0),
(1364, 280, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1363, 280, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1362, 280, 'content', '内容', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1344, 276, 'status', '用户状态', 1, 5, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 7, 0),
(1345, 276, 'create_time', '创建时间', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1346, 276, 'update_time', '更新时间', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1347, 277, 'title', '标题', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1348, 278, 'callingId', '所属行业', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1349, 278, 'langId', '发布语言', 0, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 4, 0),
(1350, 278, 'content', '职位内容', 0, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1351, 278, 'jobcode', '职位代码', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1352, 278, 'title', '职位名称', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1353, 278, 'finishdate', '完成日期', 1, 1, NULL, 0, 1, '', '', 8, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1354, 278, 'isfinish', '是否完成', 1, 1, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 0, 6, 0),
(1355, 278, 'jobnote', '职位要求', 1, 4, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1356, 278, 'number', '需求人数', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1357, 279, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1358, 279, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1359, 280, 'outfiletypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outfiletype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1360, 280, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1361, 280, 'files', '文件', 1, 1, 0, 0, 1, '', '', 5, 1, 6, 1, 6, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1262, 262, 'content_cn', '内容[中文]', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1261, 262, 'content_en', '内容[英文]', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1257, 261, 'seqNo', '排序', 0, 2, 0, 0, 3, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 102, 0),
(1258, 261, 'update_on', '更新时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 2, 1, '', 0, '', '', '', 1, 1, 0, 101, 0),
(1259, 261, 'create_at', '加入时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 1, 1, '', 0, '', '', '', 1, 1, 0, 100, 0),
(1260, 261, 'id', 'ID', 1, 6, 0, 0, 1, '', '', 1, 1, 16, 1, 16, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(1265, 262, 'sta_infos_typeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'sta_infos_type', 1, 'id', 'title', '', 1, 1, 0, 5, 0),
(1263, 262, 'title_en', '标题[英文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1264, 262, 'title_cn', '标题[中文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1267, 263, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1266, 262, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1268, 264, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1269, 264, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1270, 265, 'name', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1271, 265, 'nodeId', '所属权限', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1272, 265, 'pId', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1273, 265, 'isleaf', '是否主类', 0, 5, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1274, 265, 'model', '模块名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1275, 265, 'action', '操作', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1286, 267, 'info_cn', '客户说明[中文]', 0, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1285, 267, 'logo', '客户LOGO', 1, 1, NULL, 0, 1, '', '', 4, 1, 6, 1, 6, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1284, 267, 'callingid', '客户行业', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1283, 267, 'title_en', '客户名称[英文]', 0, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1282, 267, 'title_cn', '客户名称[中文]', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1281, 266, 'Lang', '是否主管部门', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1280, 266, 'area', '分布地区', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1276, 266, 'caption', '部门名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1277, 266, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0);
INSERT INTO `tp_sys_fields` (`id`, `pid`, `name`, `caption`, `islist`, `fieldtype`, `fieldlenght`, `request`, `validate`, `validate_tex`, `validate_reg`, `viewtype`, `isview`, `edittype`, `isedit`, `addtype`, `isadd`, `islistwidth`, `islistviewtype`, `iswrap`, `indexvar`, `autotype`, `issystem`, `outkey`, `outkeyis`, `outkeyid`, `outkeyf`, `outkeywhere`, `searchtype`, `advsearchtype`, `issearch`, `seqNo`, `modelid`) VALUES
(1278, 266, 'notes', '说明', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1279, 266, 'detzz', '部门职责', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 5, 0),
(1323, 275, 'name', '名称', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1322, 275, 'updateTime', '更新时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1321, 275, 'downloadTime', '下载次数', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1287, 267, 'info_en', '客户说明[英文]', 0, 3, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1288, 267, 'isvip', '是否VIP', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 1, 7, 0),
(1289, 268, 'title', '职位名称', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1290, 268, 'content', '职位要求', 0, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1291, 268, 'startday', '开始时间', 1, 1, NULL, 1, 1, '', '', 7, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1292, 268, 'endday', '结束时间', 1, 1, NULL, 1, 1, '', '', 7, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 5, 0),
(1293, 268, 'count', '招聘人数', 0, 2, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1294, 268, 'jobno', '职位编号', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1295, 269, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1296, 269, 'content', '内容', 1, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1297, 269, 'contacttypeid', '留言类型分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'contacttype', 1, 'id', 'title_cn', '', 1, 1, 0, 2, 0),
(1298, 269, 'pid', '是否回复', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1299, 270, 'logo', '行业LOGO', 1, 1, 0, 0, 1, '', '', 4, 1, 6, 0, 6, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1300, 270, 'title_cn', '标题[中文]', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 0, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1301, 270, 'title_en', '标题[英文]', 1, 1, 0, 1, 1, '', '', 1, 0, 1, 1, 1, 0, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1302, 271, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1303, 271, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1304, 271, 'title', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1305, 271, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1306, 271, 'pid', '上组ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1307, 271, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1308, 271, 'type', '类型', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1309, 272, 'ename', '标记名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1310, 272, 'status', '状态', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1311, 272, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1312, 272, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1313, 272, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1314, 273, 'userId', '用户Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(1315, 273, 'groupId', '级别Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(1316, 274, 'groupId', '权限组', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 1, 0),
(1317, 274, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1318, 274, 'nodeId', '权限节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1319, 274, 'parentNodeId', '上组节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1320, 274, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1365, 281, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1366, 281, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1367, 282, 'content', '内容', 0, 3, 0, 1, 1, '', '', 1, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1368, 282, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '40%', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1369, 282, 'outnewstypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outnewstype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1370, 282, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1371, 283, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 0, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1372, 283, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1373, 283, 'files', '文件', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 0, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1374, 284, 'content', '内容', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1375, 284, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1376, 284, 'outnewstypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outnewstype', 0, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1377, 284, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 0, 'id', 'title', '', 1, 1, 0, 5, 0),
(1378, 284, 'startdate', '开始时间', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1379, 284, 'enddate', '完成时间', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1380, 284, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'calling', 0, 'id', 'title_cn', '', 1, 1, 0, 3, 0),
(1880, 393, 'chengji', '成绩', 1, 2, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 14, 0),
(1881, 395, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 0, 0),
(1882, 396, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 0, 0),
(1883, 396, 'pid', '上级项目', 1, 2, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 0, 0),
(1876, 393, 'strRight_answer', '正确答案', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 11, 0),
(1877, 393, 'pic', '图案', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 10, 0),
(1878, 393, 'Hint', '提示', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 13, 0),
(1879, 393, 'strYour_answer', '个人答案', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 12, 0),
(1875, 393, 'strD', 'D答案', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 8, 0),
(1873, 393, 'strB', 'B答案', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 6, 0),
(1874, 393, 'strC', 'C答案', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 7, 0),
(1872, 393, 'strA', 'A答案', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 5, 0),
(1871, 393, 'strQuestion', '问题内容', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 4, 0),
(1870, 393, 'strType_x', '试题类型', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 9, 0),
(1869, 393, 'strType_s', '章节小类', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 3, 0),
(1866, 394, 'id', 'ID', 1, 6, 0, 0, 1, '', '', 1, 1, 16, 1, 16, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 1, 0, 0),
(1868, 393, 'intNumber', '标识符号', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 1, 0),
(1867, 393, 'strType_f', '章节大类', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, '', '', '', 1, 1, 1, 2, 0),
(1884, 394, 'seq_no', '排序', 1, 2, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 1, 'id', '', '', 1, 1, 1, 101, 0),
(1885, 397, 'title', '标题', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(1886, 397, 'content', '回答', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(1887, 397, 'pid', '分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'faqtype', 0, 'id', 'title_cn', '', 1, 1, 1, 0, 0),
(1888, 398, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1889, 398, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1891, 399, 'content', '内容', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1892, 399, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1893, 399, 'outnewstypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outnewstype', 0, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1894, 399, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 0, 'id', 'title', '', 1, 1, 0, 5, 0),
(1895, 399, 'startdate', '开始时间', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1896, 399, 'enddate', '完成时间', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1897, 399, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'calling', 0, 'id', 'title_cn', '', 1, 1, 0, 3, 0),
(1898, 400, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1899, 400, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1900, 400, 'files', '文件', 0, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1901, 401, 'content', '内容', 0, 3, 0, 1, 1, '', '', 1, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1902, 401, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '40%', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1903, 401, 'outnewstypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outnewstype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1904, 401, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1905, 402, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1906, 402, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1907, 403, 'callingId', '所属行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1908, 403, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(1909, 403, 'content', '内容', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1910, 403, 'outfiletypeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 0, '', 0, 1, 'outfiletype', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1911, 403, 'title', '标题', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1912, 403, 'files', '文件', 1, 1, 0, 0, 1, '', '', 5, 1, 6, 1, 6, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1913, 404, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1914, 404, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1915, 405, 'title', '标题', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1916, 406, 'callingId', '所属行业', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 4, 0),
(1917, 406, 'langId', '发布语言', 0, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 4, 0),
(1918, 406, 'content', '职位内容', 0, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1919, 406, 'jobcode', '职位代码', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1920, 406, 'title', '职位名称', 1, 4, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1921, 406, 'finishdate', '完成日期', 1, 1, NULL, 0, 1, '', '', 8, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1922, 406, 'isfinish', '是否完成', 1, 1, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 0, 6, 0),
(1923, 406, 'jobnote', '职位要求', 1, 4, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1924, 406, 'number', '需求人数', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1925, 407, 'remark', '备注', 0, 4, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1926, 407, 'verify', '验证码', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1927, 407, 'email', 'email', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1928, 407, 'account', '用户名', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1929, 407, 'nickname', '昵称', 1, 1, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1930, 407, 'password', '密码', 0, 4, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1931, 407, 'status', '用户状态', 1, 5, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 7, 0),
(1932, 407, 'create_time', '创建时间', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1933, 407, 'update_time', '更新时间', 0, 2, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1934, 408, 'groupId', '权限组', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 1, 0),
(1935, 408, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1936, 408, 'nodeId', '权限节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1937, 408, 'parentNodeId', '上组节点', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1938, 408, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1939, 409, 'remark', '说明', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1940, 409, 'version', '版本', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1941, 409, 'verify', '验证码', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1942, 409, 'hash', 'hash值', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1943, 409, 'type', '附件类型', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1944, 409, 'size', '附件大小', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1945, 409, 'extension', '文件后辍', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1946, 409, 'savepath', '保存路径', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1947, 409, 'savename', '保存名称', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 6, 0),
(1948, 409, 'module', '模块', 1, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1949, 409, 'recordId', '记录ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 8, 0),
(1950, 409, 'userId', '用户ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 9, 0),
(1951, 409, 'uploadTime', '上传时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1952, 409, 'downCount', '下载次数', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1953, 409, 'name', '名称', 1, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1954, 409, 'updateTime', '更新时间', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1955, 409, 'downloadTime', '下载次数', 1, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1956, 410, 'userId', '用户Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 1, 0),
(1957, 410, 'groupId', '级别Id', 0, 2, NULL, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '', 0, 1, '', 0, NULL, NULL, NULL, 1, 1, 0, 2, 0),
(1958, 411, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1959, 411, 'status', '状态', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 7, 0),
(1960, 411, 'title', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1961, 411, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1962, 411, 'pid', '上组ID', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1963, 411, 'level', '级别', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1964, 411, 'type', '类型', 0, 5, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1965, 412, 'ename', '标记名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1966, 412, 'status', '状态', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1967, 412, 'remark', '说明', 0, 4, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1968, 412, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1969, 412, 'name', '名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1970, 413, 'logo', '行业LOGO', 1, 1, NULL, 0, 1, '', '', 4, 1, 6, 1, 6, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1971, 413, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1972, 413, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1973, 414, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1974, 414, 'content', '内容', 1, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1975, 414, 'contacttypeid', '留言类型分类', 1, 2, NULL, 1, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 1, '', 0, 1, 'contacttype', 1, 'id', 'title_cn', '', 1, 1, 0, 2, 0),
(1976, 414, 'pid', '是否回复', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 5, 0),
(1977, 415, 'title', '职位名称', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1978, 415, 'content', '职位要求', 0, 3, NULL, 1, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1979, 415, 'startday', '开始时间', 1, 1, NULL, 1, 1, '', '', 7, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1980, 415, 'endday', '结束时间', 1, 1, NULL, 1, 1, '', '', 7, 1, 13, 1, 13, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 5, 0),
(1981, 415, 'count', '招聘人数', 0, 2, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1982, 415, 'jobno', '职位编号', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1983, 416, 'info_cn', '客户说明[中文]', 0, 3, 0, 1, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1984, 416, 'logo', '客户LOGO', 1, 1, 0, 0, 1, '', '', 4, 1, 6, 1, 6, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1985, 416, 'callingid', '客户行业', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'calling', 1, 'id', 'title_cn', '', 1, 1, 0, 5, 0),
(1986, 416, 'title_en', '客户名称[英文]', 0, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1987, 416, 'title_cn', '客户名称[中文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1988, 416, 'info_en', '客户说明[英文]', 0, 3, 0, 0, 1, '', '', 1, 1, 8, 1, 8, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(1989, 416, 'isvip', '是否VIP', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'array', 1, '0,1', '否,是', '', 1, 1, 1, 7, 0),
(1990, 417, 'Lang', '是否主管部门', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1991, 417, 'area', '分布地区', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(1992, 417, 'caption', '部门名称', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(1993, 417, 'pid', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(1994, 417, 'notes', '说明', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 6, 0),
(1995, 417, 'detzz', '部门职责', 0, 1, NULL, 0, 1, '', '', 1, 1, 8, 1, 8, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 5, 0),
(1996, 418, 'name', '标题', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(1997, 418, 'nodeId', '所属权限', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 2, 0),
(1998, 418, 'pId', '上级', 0, 2, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(1999, 418, 'isleaf', '是否主类', 0, 5, NULL, 0, 1, '', '', 2, 1, 2, 1, 2, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 4, 0),
(2000, 418, 'model', '模块名', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(2001, 418, 'action', '操作', 0, 1, NULL, 0, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 0, 3, 0),
(2002, 419, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(2003, 419, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(2004, 420, 'seqNo', '排序', 0, 2, 0, 0, 3, '', '', 1, 1, 1, 1, 1, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 0, 102, 0),
(2005, 420, 'update_on', '更新时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 2, 2, '', 0, '', '', '', 1, 1, 0, 101, 0),
(2006, 420, 'create_at', '加入时间', 0, 2, 0, 0, 1, '', '', 7, 1, 17, 1, 17, 1, '', 1, 0, '', 1, 2, '', 0, '', '', '', 1, 1, 0, 100, 0),
(2007, 420, 'id', 'ID', 1, 6, 0, 0, 1, '', '', 1, 1, 16, 1, 16, 1, '', 1, 0, '', 0, 2, '', 0, '', '', '', 1, 1, 1, 0, 0),
(2008, 421, 'content_cn', '内容[中文]', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 3, 0),
(2009, 421, 'content_en', '内容[英文]', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 0, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 4, 0),
(2010, 421, 'sta_infos_typeId', '内容分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'sta_infos_type', 1, 'id', 'title', '', 1, 1, 0, 5, 0),
(2011, 421, 'title_en', '标题[英文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(2012, 421, 'title_cn', '标题[中文]', 1, 4, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(2013, 421, 'langId', '发布语言', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'lang', 1, 'id', 'title', '', 1, 1, 0, 6, 0),
(2014, 422, 'title', '标题', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(2015, 423, 'title', '标题', 1, 1, 0, 1, 1, '', '', 1, 1, 1, 1, 1, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(2016, 423, 'content', '回答', 0, 3, 0, 1, 1, '', '', 10, 1, 9, 1, 9, 1, '', 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 0, 0),
(2017, 423, 'pid', '分类', 1, 2, 0, 1, 1, '', '', 2, 1, 2, 1, 2, 1, '', 1, 1, '', 0, 1, 'faqtype', 0, 'id', 'title_cn', '', 1, 1, 1, 0, 0),
(2018, 424, 'title_en', '标题[英文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 2, 0),
(2019, 424, 'title_cn', '标题[中文]', 1, 1, NULL, 1, 1, '', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, '', 0, 1, '', 0, '', '', '', 1, 1, 1, 1, 0),
(4176, 1686, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4177, 1686, 'pid', 'pid', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4178, 1686, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4179, 1686, 'model', 'model', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4180, 1686, 'action', 'action', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4181, 1686, 'icon', 'icon', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4182, 1686, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4183, 1687, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4184, 1687, 'master_pid', 'master_pid', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4185, 1687, 'master_table', 'master_table', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4186, 1687, 'master_field', 'master_field', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4187, 1687, 'foreign_pid', 'foreign_pid', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4188, 1687, 'foreign_table', 'foreign_table', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4189, 1687, 'foreign_field', 'foreign_field', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4190, 1688, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4191, 1688, 'projectid', 'projectid', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4192, 1688, 'table_name', 'table_name', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4193, 1688, 'x', 'x', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4194, 1688, 'y', 'y', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4195, 1688, 'v', 'v', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4196, 1688, 'h', 'h', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4197, 1689, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4198, 1689, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4199, 1689, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4200, 1689, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4201, 1689, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4202, 1690, 'master_db', 'master_db', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4203, 1690, 'master_table', 'master_table', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4204, 1690, 'master_field', 'master_field', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4205, 1690, 'foreign_db', 'foreign_db', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4206, 1690, 'foreign_table', 'foreign_table', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4207, 1690, 'foreign_field', 'foreign_field', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4208, 1691, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4209, 1691, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4210, 1691, 'htmltype', '类型', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4211, 1691, 'htmlname', '名称[name]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4212, 1691, 'htmlid', 'ID[ID]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4213, 1691, 'htmlvar', '默认值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4214, 1691, 'htmlstyle', '格式[style]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4215, 1691, 'htmlclass', 'class', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4216, 1691, 'isdisabled', 'disabled', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4217, 1691, 'isreadonly', 'readonly', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4218, 1691, 'outtable', '外表', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4219, 1691, 'outkey', '外表ID', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4220, 1691, 'outfield', '展示', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 12, 0),
(4221, 1691, 'outcondition', '条件', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 13, 0),
(4222, 1691, 'outorder', '外表排序', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 14, 0),
(4223, 1691, 'outadd', '连接符', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 15, 0),
(4224, 1691, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 16, 0),
(4225, 1691, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 17, 0),
(4226, 1691, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 18, 0),
(4227, 1692, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4228, 1692, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4229, 1692, 'content', '填充内容', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4230, 1692, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4231, 1692, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4232, 1692, 'condition', '填充条件', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4233, 1692, 'regular', '附加规则', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4234, 1693, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4235, 1693, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4236, 1693, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4237, 1693, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4238, 1693, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4239, 1694, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4240, 1694, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4241, 1694, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4242, 1694, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4243, 1694, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4244, 1695, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4245, 1695, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4246, 1695, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4247, 1695, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4248, 1695, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4249, 1696, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4250, 1696, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4251, 1696, 'htmltype', '类型', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4252, 1696, 'htmlname', '名称[name]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4253, 1696, 'htmlid', 'ID[ID]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4254, 1696, 'htmlvar', '默认值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4255, 1696, 'htmlstyle', '格式[style]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4256, 1696, 'htmlclass', 'class', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4257, 1696, 'isdisabled', 'disabled', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4258, 1696, 'isreadonly', 'readonly', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4259, 1696, 'outtable', '外表', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4260, 1696, 'outkey', '外表ID', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4261, 1696, 'outfield', '展示', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 12, 0),
(4262, 1696, 'outcondition', '条件', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 13, 0),
(4263, 1696, 'outorder', '外表排序', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 14, 0),
(4264, 1696, 'outadd', '连接符', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 15, 0),
(4265, 1696, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 16, 0),
(4266, 1696, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 17, 0),
(4267, 1696, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 18, 0),
(4268, 1697, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4269, 1697, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4270, 1697, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4271, 1697, 'type', '类型', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4272, 1697, 'notnull', '是否为空', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4273, 1697, 'default', '默认值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4274, 1697, 'primary', '是否主键', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4275, 1697, 'autoInc', '自动增加', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4276, 1697, 'leng', '长度', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4277, 1697, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4278, 1697, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4279, 1698, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4280, 1698, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4281, 1698, 'usetype', '使用范围', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4282, 1698, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4283, 1698, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4284, 1698, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4285, 1699, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4286, 1699, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4287, 1699, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4288, 1699, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4289, 1699, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4290, 1700, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4291, 1700, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4292, 1700, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4293, 1700, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4294, 1700, 'othervar', '其它属性', 1, 3, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4295, 1701, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4296, 1701, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4297, 1701, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4298, 1701, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4299, 1701, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4300, 1702, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4301, 1702, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4302, 1702, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4303, 1702, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4304, 1702, 'v_note', '默认提示信息', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4305, 1702, 'v_rag', '验证规则', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4306, 1702, 'v_con', '验证条件', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4307, 1702, 'a_reg', '附加规则', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4308, 1702, 'v_time', '验证时间', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4309, 1703, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4310, 1703, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4311, 1703, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4312, 1703, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4313, 1703, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4314, 1704, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0);
INSERT INTO `tp_sys_fields` (`id`, `pid`, `name`, `caption`, `islist`, `fieldtype`, `fieldlenght`, `request`, `validate`, `validate_tex`, `validate_reg`, `viewtype`, `isview`, `edittype`, `isedit`, `addtype`, `isadd`, `islistwidth`, `islistviewtype`, `iswrap`, `indexvar`, `autotype`, `issystem`, `outkey`, `outkeyis`, `outkeyid`, `outkeyf`, `outkeywhere`, `searchtype`, `advsearchtype`, `issearch`, `seqNo`, `modelid`) VALUES
(4315, 1704, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4316, 1704, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4317, 1704, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4318, 1704, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4319, 1705, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4320, 1705, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4321, 1705, 'htmltype', '类型', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4322, 1705, 'htmlname', '名称[name]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4323, 1705, 'htmlid', 'ID[ID]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4324, 1705, 'htmlvar', '默认值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4325, 1705, 'htmlstyle', '格式[style]', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4326, 1705, 'htmlclass', 'class', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4327, 1705, 'isdisabled', 'disabled', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4328, 1705, 'isreadonly', 'readonly', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4329, 1705, 'outtable', '外表', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4330, 1705, 'outkey', '外表ID', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4331, 1705, 'outfield', '展示', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 12, 0),
(4332, 1705, 'outcondition', '条件', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 13, 0),
(4333, 1705, 'outorder', '外表排序', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 14, 0),
(4334, 1705, 'outadd', '连接符', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 15, 0),
(4335, 1705, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 16, 0),
(4336, 1705, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 17, 0),
(4337, 1705, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 18, 0),
(4338, 1706, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4339, 1706, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4340, 1706, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4341, 1706, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4342, 1706, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4343, 1707, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4344, 1707, 'pid', '上级', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4345, 1707, 'type', '值的类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4346, 1707, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4347, 1707, 'value', 'value', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4348, 1707, 'note', '注解', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4349, 1707, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4350, 1708, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4351, 1708, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4352, 1708, 'note', '注解', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4353, 1708, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4354, 1709, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4355, 1709, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4356, 1709, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4357, 1709, 'note', '注解', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4358, 1710, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4359, 1710, 'pid', '所属的表', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4360, 1710, 'name', '英文', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4361, 1710, 'caption', 'caption', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4362, 1710, 'islist', '是否列表', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4363, 1710, 'fieldtype', '字属性', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4364, 1710, 'fieldlenght', '字符长度', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4365, 1710, 'request', '必填', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4366, 1710, 'validate', '验证形式', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4367, 1710, 'validate_tex', '自定义错误', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4368, 1710, 'validate_reg', '自定义正则', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4369, 1710, 'viewtype', '查看类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4370, 1710, 'isview', '是否列表', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 12, 0),
(4371, 1710, 'edittype', '编辑类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 13, 0),
(4372, 1710, 'isedit', '是否编辑', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 14, 0),
(4373, 1710, 'addtype', '增加类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 15, 0),
(4374, 1710, 'isadd', '是否增加', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 16, 0),
(4375, 1710, 'islistwidth', '列表长度', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 17, 0),
(4376, 1710, 'islistviewtype', '列表查看类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 18, 0),
(4377, 1710, 'iswrap', '是否排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 19, 0),
(4378, 1710, 'indexvar', '默认值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 20, 0),
(4379, 1710, 'autotype', '自动填充类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 21, 0),
(4380, 1710, 'issystem', '是否系统保留', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 22, 0),
(4381, 1710, 'outkey', '外键索引', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 23, 0),
(4382, 1710, 'outkeyis', '是否', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 24, 0),
(4383, 1710, 'outkeyid', '外键ID', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 25, 0),
(4384, 1710, 'outkeyf', '外键值', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 26, 0),
(4385, 1710, 'outkeywhere', '外键条件', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 27, 0),
(4386, 1710, 'searchtype', '搜索形式', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 28, 0),
(4387, 1710, 'advsearchtype', '高级搜索形式', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 29, 0),
(4388, 1710, 'issearch', '是否搜索', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 30, 0),
(4389, 1710, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 31, 0),
(4390, 1710, 'modelid', '数据模版ID', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 32, 0),
(4391, 1711, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4392, 1711, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4393, 1711, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4394, 1711, 'note', '注解', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4395, 1712, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4396, 1712, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4397, 1712, 'caption', 'caption', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4398, 1712, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4399, 1713, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4400, 1713, 'dbname', 'dbname', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4401, 1713, 'caption', 'caption', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4402, 1713, 'proname', '项目名称', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4403, 1713, 'dbuser', 'dbuser', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4404, 1713, 'tbpre', '数据表前缀', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4405, 1713, 'dbpassword', 'dbpassword', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4406, 1713, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4407, 1713, 'ison', '是否生成', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4408, 1713, 'creattime', '生成日期', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4409, 1713, 'think_pach', 'think_pach', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4410, 1713, 'isaction', '是否活动状态', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4411, 1714, 'id', 'id', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4412, 1714, 'pid', '项目ID', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4413, 1714, 'caption', 'caption', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4414, 1714, 'title', 'title', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4415, 1714, 'searchtype', '探索形式', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4416, 1714, 'edittype', '编辑类型', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0),
(4417, 1714, 'seqNo', 'seqNo', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 6, 0),
(4418, 1714, 'ismodel', '是否数据模板', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 7, 0),
(4419, 1714, 'datemodelid', '指定数据模板', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 8, 0),
(4420, 1714, 'list', '是否列表', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 9, 0),
(4421, 1714, 'view', '是否显示详细', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 10, 0),
(4422, 1714, 'add', 'add', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 11, 0),
(4423, 1714, 'del', 'del', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 12, 0),
(4424, 1714, 'edit', 'edit', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 13, 0),
(4425, 1714, 'search', 'search', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 14, 0),
(4426, 1714, 'isaction', '是否活动', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 15, 0),
(4427, 1714, 'issystem', '是否系统保留', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '0', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 16, 0),
(4428, 1715, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4429, 1715, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4430, 1715, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4431, 1715, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4432, 1715, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4433, 1716, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4434, 1716, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4435, 1716, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4436, 1716, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4437, 1716, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4438, 1717, 'id', 'ID', 0, 6, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(4439, 1717, 'title', '标题', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0),
(4440, 1717, 'usetype', '使用范围', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '1', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 2, 0),
(4441, 1717, 'seqNo', '排序', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 3, 0),
(4442, 1717, 'color', 'color', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 1, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 4, 0),
(4443, 1717, 'othervar', '其它属性', 1, 4, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 1, '', 0, 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_fieldtypesub`
--

CREATE TABLE IF NOT EXISTS `tp_sys_fieldtypesub` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  `note` varchar(240) NOT NULL COMMENT '注解',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='默认的数据库类型' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `tp_sys_fieldtypesub`
--

INSERT INTO `tp_sys_fieldtypesub` (`id`, `title`, `seqNo`, `note`) VALUES
(1, 'VARCHAR', 0, 'VARCHAR数据类型'),
(2, 'INT', 0, 'INT,需要定义长度'),
(3, 'TEXT', 0, 'TEXT不需要定义长度'),
(4, 'SMALLINT', 0, 'SMALLINT数据类型');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_models`
--

CREATE TABLE IF NOT EXISTS `tp_sys_models` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `caption` varchar(200) default NULL,
  `seqNo` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据模型' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `tp_sys_models`
--


-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_projects`
--

CREATE TABLE IF NOT EXISTS `tp_sys_projects` (
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
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动状态',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='生成项目说明' AUTO_INCREMENT=55 ;

--
-- 导出表中的数据 `tp_sys_projects`
--

INSERT INTO `tp_sys_projects` (`id`, `dbname`, `caption`, `proname`, `dbuser`, `tbpre`, `dbpassword`, `seqNo`, `ison`, `creattime`, `think_pach`, `isaction`) VALUES
(1, 'crmv2', 'CRM第二版', 'crm2', 'root', 'crm_', '123456', 1, 1, NULL, '../ThinkPHP', 1),
(8, 'pershow', '个人网站', 'pershow', 'root', 'lp_', '123456', 1, 1, NULL, '../ThinkPHP', 0),
(21, 'wooderp', '木工厂ERP', 'erp', 'root', 'erp_', '123456', 1, 1, NULL, '../ThinkPHP', 0),
(20, 'ns_website', 'NS网站新版', 'website', 'root', 'web_', '123456', 1, 1, NULL, '../ThinkPHP', 0),
(26, 'demo', 'demo', 'demo', 'root', 'demo_', 'hbadmin', 1, 1, NULL, '../ThinkPHP', 1),
(37, 'traindb', '汽车培训', 'train', 'root', 'lee99_', '123456', 1, NULL, NULL, '../ThinkPHP', 0),
(54, 'ns_crm_v2', 'demo2', 'demo2', 'root', '', 'hbadmin', 0, NULL, NULL, '../ThinkPHP', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_tables`
--

CREATE TABLE IF NOT EXISTS `tp_sys_tables` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '1' COMMENT '项目ID',
  `caption` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `searchtype` int(11) default NULL COMMENT '探索形式',
  `edittype` int(11) default NULL COMMENT '编辑类型',
  `seqNo` int(11) default NULL,
  `ismodel` int(11) NOT NULL default '0' COMMENT '是否数据模板',
  `datemodelid` int(11) default NULL COMMENT '指定数据模板',
  `list` int(11) default '1' COMMENT '是否列表',
  `view` int(11) default '1' COMMENT '是否显示详细',
  `add` int(11) default '1',
  `del` int(11) default '1',
  `edit` int(11) default '1',
  `search` int(11) default '1',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动',
  `issystem` int(11) NOT NULL default '0' COMMENT '是否系统保留',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='数据表' AUTO_INCREMENT=1718 ;

--
-- 导出表中的数据 `tp_sys_tables`
--

INSERT INTO `tp_sys_tables` (`id`, `pid`, `caption`, `title`, `searchtype`, `edittype`, `seqNo`, `ismodel`, `datemodelid`, `list`, `view`, `add`, `del`, `edit`, `search`, `isaction`, `issystem`) VALUES
(1, 1, '人才管理系统', 'Person', 2, 2, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(2, 1, '企业管理系统', 'Company', 2, 1, 2, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 1, '订单管理系统', 'Order', 2, 1, 3, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(4, 1, '职位管理系统', 'Jobs', 2, 1, 4, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(5, 1, '面试管理系统', 'Interview', 1, 2, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 1, '推荐管理系统', 'Recomand', 1, 2, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 1, '人才语言', 'Lang', 1, 2, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(8, 1, '地区管理', 'Area', 1, 2, 8, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(10, 1, '人才到岗时间', 'Left_time', 1, 2, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(11, 1, '企业福利', 'Bas_boon', 1, 2, 11, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(12, 1, '行业汇总表', 'Bas_calling', 2, 2, 12, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(13, 1, '[公共]招聘途径', 'Bas_path', 2, 2, 13, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 1, '企业年薪类型', 'Bas_payinfo', 2, 2, 14, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(15, 1, '职位分类表', 'Bas_post', 2, 2, 15, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(16, 1, '企业电话类型', 'Bas_souretype', 2, 2, 16, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(17, 1, '客户之间的关系', 'Com2com', 2, 2, 17, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(18, 1, '简单系统保留', 'Sim_system', 2, 2, 18, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(19, 8, '小说作品管理', 'Xiaoshuoshow', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(20, 8, '从文札记管理', 'Zhaji', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(21, 8, '客家文化研究', 'Kejianwenhu', 1, 1, 2, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(22, 8, '关于本人', 'Aboutme', 1, 1, 3, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(23, 8, '个人荣誉', 'Rongyu', 1, 1, 4, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(24, 8, '公共属性', 'Pu_class', 1, 1, 100, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(25, 8, '小说章节管理', 'Xiaoshuo', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(26, 8, '从文札记分类', 'Zhajitype', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(124, 20, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(399, 48, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(400, 48, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(401, 48, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(125, 20, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(126, 20, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(45, 43, '从文札记分类', 'Array', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(46, 43, '从文札记分类', 'Array', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(47, 45, '客家文化研究', 'Array', 1, 1, 2, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 45, '客家文化研究', 'Array', 1, 1, 2, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(49, 47, '关于本人', 'Array', 1, 1, 3, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 47, '关于本人', 'Array', 1, 1, 3, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 49, '个人荣誉', 'Array', 1, 1, 4, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(52, 49, '个人荣誉', 'Array', 1, 1, 4, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 51, '公共属性', 'Array', 1, 1, 100, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 51, '公共属性', 'Array', 1, 1, 100, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(139, 20, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(140, 20, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(141, 20, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(138, 20, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(137, 20, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(136, 20, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(135, 20, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(134, 20, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(132, 20, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(133, 20, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(131, 20, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(130, 20, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(129, 20, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(128, 20, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(127, 20, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(142, 21, '[公用]', 'tmp_sql', 1, 1, 5, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(143, 21, '单元管理', 'items', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(144, 21, '单元类别管理', 'items_type', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(145, 21, '订单管理', 'order', 1, 1, 8, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(146, 21, '订单状态日志', 'orderlogs', 1, 1, 9, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(147, 21, '用户管理', 'user', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(148, 21, '系统权限表', 'access', 1, 1, 11, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(149, 21, '权限组别用户', 'groupuser', 1, 1, 12, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(150, 21, '权限组别', 'group', 1, 1, 13, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(151, 21, '权限节点', 'node', 1, 1, 14, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(152, 21, '系统设定', 'sysconfig', 1, 1, 15, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(153, 21, '供应商&客户管理', 'company', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(154, 21, '联络人员管理', 'contactlist', 1, 1, 2, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(155, 21, '公司备注', 'comnotes', 1, 1, 3, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(156, 21, '公司地址', 'comaddrs', 1, 1, 4, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(157, 20, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(159, 20, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(160, 20, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(161, 20, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(162, 20, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(163, 20, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(284, 26, '成功案例管理', 'projects', 1, 1, 7, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(283, 26, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(282, 26, '对外信息管理', 'outnews', 1, 1, 7, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(281, 26, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(280, 26, '对外资料管理', 'outfile', 1, 1, 6, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(279, 26, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(277, 26, '发布语言分类', 'lang', 1, 1, 0, 0, 261, 1, 1, 0, 0, 0, 1, 1, 0),
(278, 26, '热门职位', 'hotjob', 1, 1, 5, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(276, 26, '用户管理', 'user', 1, 1, 0, 0, 261, 1, 1, 1, 1, 1, 1, 0, 1),
(274, 26, '系统权限表', 'access', 1, 1, 0, 0, 261, 1, 1, 1, 1, 1, 1, 0, 1),
(275, 26, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(273, 26, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(271, 26, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(272, 26, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(270, 26, '行业分类', 'calling', 1, 1, 0, 0, 261, 1, 1, 0, 0, 0, 1, 1, 0),
(269, 26, '网上留言管理', 'contact', 1, 1, 10, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(268, 26, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 261, 1, 1, 0, 0, 1, 1, 1, 0),
(267, 26, '客户列表', 'nsclient', 1, 1, 0, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(266, 26, '公司部门管理', 'dept', 1, 1, 0, 0, 261, 1, 1, 0, 1, 1, 1, 0, 0),
(265, 26, '树状菜单', 'tree', 1, 1, 0, 0, 261, 1, 1, 0, 1, 1, 1, 0, 0),
(264, 26, '留言类型分类', 'contacttype', 1, 1, 10, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(261, 26, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(262, 26, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(263, 26, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(393, 37, '主要题库', 'infos', 1, 1, 0, 0, 522, 0, 0, 1, 1, 1, 1, 1, 0),
(394, 37, '公共的数据', 'pub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(395, 37, '章节大类', 'strType_f', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(396, 37, '章节小类', 'strType_s', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(397, 26, 'FAQ系统', 'faq', 1, 1, 0, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(398, 26, 'FAQ分类管理', 'faqtype', 1, 1, 10, 0, 261, 1, 1, 0, 1, 1, 1, 1, 0),
(402, 48, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(403, 48, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(404, 48, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(405, 48, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(406, 48, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(407, 48, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(408, 48, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(409, 48, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(410, 48, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(411, 48, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(412, 48, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(413, 48, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(414, 48, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(415, 48, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(416, 48, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(417, 48, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(418, 48, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(419, 48, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(420, 48, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(421, 48, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(422, 48, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(423, 49, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(424, 49, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(425, 49, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(426, 49, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(427, 49, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(428, 49, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(429, 49, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(430, 49, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(431, 49, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(432, 49, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(433, 49, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(434, 49, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(435, 49, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(436, 49, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(437, 49, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(438, 49, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(439, 49, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(440, 49, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(441, 49, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(442, 49, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(443, 49, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(444, 49, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(445, 49, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(446, 49, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(447, 50, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(448, 50, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(449, 50, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(450, 50, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(451, 50, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(452, 50, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(453, 50, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(454, 50, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(455, 50, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(456, 50, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(457, 50, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(458, 50, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(459, 50, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(460, 50, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(461, 50, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(462, 50, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(463, 50, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(464, 50, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(465, 50, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(466, 50, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(467, 50, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(468, 50, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(469, 50, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(470, 50, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(471, 50, 'FAQ系统', 'faq', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(472, 50, 'FAQ分类管理', 'faqtype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(473, 51, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(474, 51, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(475, 51, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(476, 51, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(477, 51, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(478, 51, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(479, 51, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(480, 51, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(481, 51, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(482, 51, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(483, 51, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(484, 51, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(485, 51, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(486, 51, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(487, 51, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(488, 51, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(489, 51, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(490, 51, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(491, 51, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(492, 51, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(493, 51, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(494, 51, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(495, 51, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(496, 51, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(497, 51, 'FAQ系统', 'faq', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(498, 51, 'FAQ分类管理', 'faqtype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(499, 52, '公共属性', 'Array', 1, 1, 100, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(500, 52, '公共属性', 'Array', 1, 1, 100, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(501, 52, '成功案例管理', 'projects', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(502, 52, 'FLASH广告管理', 'flashad', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(503, 52, '对外信息管理', 'outnews', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(504, 52, '对外信息分类', 'outnewstype', 1, 1, 7, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(505, 52, '对外资料管理', 'outfile', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(506, 52, '对外资料分类', 'outfiletype', 1, 1, 6, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(507, 52, '发布语言分类', 'lang', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(508, 52, '热门职位', 'hotjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(509, 52, '用户管理', 'user', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(510, 52, '系统权限表', 'access', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(511, 52, '附件管理', 'attach', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(512, 52, '权限组别用户', 'groupuser', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(513, 52, '权限节点', 'node', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(514, 52, '权限组别', 'group', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 1),
(515, 52, '行业分类', 'calling', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(516, 52, '网上留言管理', 'contact', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(517, 52, 'Ns公司招聘', 'nsjob', 1, 1, 5, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(518, 52, '客户列表', 'nsclient', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(519, 52, '公司部门管理', 'dept', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(520, 52, '树状菜单', 'tree', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 0, 0),
(521, 52, '留言类型分类', 'contacttype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(522, 52, 'NSweb公共', 'WEBpub', 1, 1, 0, 1, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(523, 52, '网站静态信息', 'sta_infos', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(524, 52, '网站静态信息分类', 'sta_infos_type', 1, 1, 1, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(525, 52, 'FAQ系统', 'faq', 1, 1, 0, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(526, 52, 'FAQ分类管理', 'faqtype', 1, 1, 10, 0, 522, 1, 1, 1, 1, 1, 1, 1, 0),
(1686, 54, '左边的树', 'con_tree', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1687, 54, '数据关联', 'designer', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1688, 54, '坐标定位', 'designer_coords', 1, 1, 2, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1689, 54, '项目模板风格设定', 'pro_templete', 1, 1, 3, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1690, 54, 'Relation table', 'relation', 1, 1, 4, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1691, 54, '编辑类型设定', 'sub_addtype', 1, 1, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1692, 54, '自动填充设定', 'sub_auto', 1, 1, 6, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1693, 54, '填充条件', 'sub_auto_con', 1, 1, 7, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1694, 54, '附加规则', 'sub_auto_reg', 1, 1, 8, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1695, 54, '查看类型设定', 'sub_color', 1, 1, 9, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1696, 54, '编辑类型设定', 'sub_edittype', 1, 1, 10, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1697, 54, '字属性设定', 'sub_fieldtype', 1, 1, 11, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1698, 54, '搜索形式设定', 'sub_htmltags', 1, 1, 12, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1699, 54, 'HTMLtag使用范围', 'sub_htmlusetype', 1, 1, 13, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1700, 54, '系统保留设定', 'sub_issystem', 1, 1, 14, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1701, 54, '搜索形式设定', 'sub_searchtype', 1, 1, 15, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1702, 54, '搜索形式设定', 'sub_validate', 1, 1, 16, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1703, 54, '附加规则', 'sub_validate_arag', 1, 1, 17, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1704, 54, '验证条件', 'sub_validate_vcon', 1, 1, 18, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1705, 54, '查看类型设定', 'sub_viewtype', 1, 1, 19, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1706, 54, '查看类型设定', 'sub_yesno', 1, 1, 20, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1707, 54, '默认的系统参数', 'sys_config', 1, 1, 21, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1708, 54, '默认的系统参数', 'sys_configtype', 1, 1, 22, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1709, 54, '默认的数据库类型', 'sys_datatype', 1, 1, 23, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1710, 54, '定义每个点', 'sys_fields', 1, 1, 24, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1711, 54, '默认的数据库类型', 'sys_fieldtypesub', 1, 1, 25, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1712, 54, '数据模型', 'sys_models', 1, 1, 26, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1713, 54, '生成项目说明', 'sys_projects', 1, 1, 27, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1714, 54, '数据表', 'sys_tables', 1, 1, 28, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1715, 54, '编辑类型设定', 'tab_edittype', 1, 1, 29, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1716, 54, '搜索形式设定', 'tab_searchtype', 1, 1, 30, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(1717, 54, '搜索形式设定', 'test', 1, 1, 31, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_tab_edittype`
--

CREATE TABLE IF NOT EXISTS `tp_tab_edittype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='编辑类型设定' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `tp_tab_edittype`
--

INSERT INTO `tp_tab_edittype` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]一般形式', 0, 1, NULL),
(2, '快速编辑形式', 1, 2, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_tab_searchtype`
--

CREATE TABLE IF NOT EXISTS `tp_tab_searchtype` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `tp_tab_searchtype`
--

INSERT INTO `tp_tab_searchtype` (`id`, `title`, `seqNo`, `color`, `othervar`) VALUES
(1, '[默认]简单搜索', 0, 1, ''),
(2, '简单+高级搜索', 1, 7, ''),
(3, '不需要搜索功能', 0, 2, ''),
(4, '仅搜索功能', 0, 9, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_test`
--

CREATE TABLE IF NOT EXISTS `tp_test` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `usetype` int(11) default '1' COMMENT '使用范围',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=24 ;

--
-- 导出表中的数据 `tp_test`
--

INSERT INTO `tp_test` (`id`, `title`, `usetype`, `seqNo`, `color`, `othervar`) VALUES
(2, 'password', 1, 0, 2, 'OK'),
(11, 'files', 1, 0, 11, 'ok'),
(12, 'word', 1, 0, 11, 'OK'),
(13, 'calendar', 1, 0, 11, 'OK'),
(16, 'image', 2, 0, 15, ''),
(18, 'link', 2, 0, 19, '');
