-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2009 年 02 月 01 日 22:36
-- 服务器版本: 5.0.41
-- PHP 版本: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `tp_maker`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_apptree`
--

CREATE TABLE IF NOT EXISTS `tp_apptree` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(40) NOT NULL COMMENT '标题',
  `shortname` varchar(24) NOT NULL,
  `projectid` int(11) NOT NULL COMMENT '项目ID',
  `type` int(11) NOT NULL COMMENT '类型',
  `pid` int(11) NOT NULL default '0' COMMENT '上级ID',
  `tid` int(11) NOT NULL COMMENT '数据表ID',
  `seqNo` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='左边的树' AUTO_INCREMENT=39 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='数据关联' AUTO_INCREMENT=24 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='坐标定位' AUTO_INCREMENT=631 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_pro_templete`
--

CREATE TABLE IF NOT EXISTS `tp_pro_templete` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `tplname` varchar(200) default NULL COMMENT '模板的文件夹',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目模板风格设定' AUTO_INCREMENT=5 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='自动填充设定' AUTO_INCREMENT=5 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看类型设定' AUTO_INCREMENT=22 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='字属性设定' AUTO_INCREMENT=17 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='验证条件' AUTO_INCREMENT=4 ;

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

-- --------------------------------------------------------

--
-- 表的结构 `tp_sub_yesno`
--

CREATE TABLE IF NOT EXISTS `tp_sub_yesno` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `tid` int(11) NOT NULL,
  `title` varchar(200) default NULL COMMENT '标题',
  `seqNo` int(11) default NULL COMMENT '排序',
  `color` int(11) default NULL,
  `othervar` varchar(200) default NULL COMMENT '其它属性',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='查看类型设定' AUTO_INCREMENT=3 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='定义每个点' AUTO_INCREMENT=4854 ;

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
  `tplid` tinyint(2) NOT NULL default '1' COMMENT '模板ID',
  `isaction` int(11) NOT NULL default '1' COMMENT '是否活动状态',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='生成项目说明' AUTO_INCREMENT=42 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='数据表' AUTO_INCREMENT=1023 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_viewcondition`
--

CREATE TABLE IF NOT EXISTS `tp_sys_viewcondition` (
  `id` int(11) NOT NULL auto_increment,
  `vid` int(11) NOT NULL,
  `in_tid` int(11) NOT NULL,
  `in_field` varchar(40) NOT NULL,
  `out_tid` int(11) NOT NULL,
  `out_field` varchar(40) NOT NULL,
  `condition` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='视图模型表条件' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_viewfields`
--

CREATE TABLE IF NOT EXISTS `tp_sys_viewfields` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='视图模型表字段' AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sys_viewmodel`
--

CREATE TABLE IF NOT EXISTS `tp_sys_viewmodel` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `projectid` int(11) NOT NULL,
  `title` varchar(40) NOT NULL COMMENT '标题[en]',
  `caption` varchar(40) NOT NULL COMMENT '标题[cn]',
  `infos` varchar(240) NOT NULL COMMENT '说明',
  `seqNo` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='视图模型' AUTO_INCREMENT=11 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='搜索形式设定' AUTO_INCREMENT=7 ;
