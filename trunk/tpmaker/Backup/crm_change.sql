
--删除旧的不用的表

DROP TABLE `webcal_view` ,
`webcal_view_user` ,
`website_logo` ,
`website_newscompany` ,
`website_newscompanytype` ,
`website_newsinfo` ,
`website_newsinfotype` ,
`website_newsperson` ,
`website_newspersontype` ,
`website_project` ,
`website_service` ,
`website_simpage` ,
`website_sugetson` ,
`website_sugetsontype` ;



DROP TABLE `webcal_asst` ,
`webcal_entry_ext_user` ,
`webcal_entry_repeats_not` ,
`webcal_group` ,
`webcal_group_user` ,
`webcal_import` ,
`webcal_import_data` ,
`webcal_nonuser_cals` ,
`webcal_reminder_log` ,
`webcal_report` ;


ALTER TABLE `bas_company` DROP `tmp_ser` ,
DROP `modstyle` ;

ALTER TABLE `bas_company` DROP `doc_cn` ,
DROP `o_files` ,
DROP `doc_sim` ,
DROP `doc_detail` ;


ALTER TABLE `bas_person` DROP `tmp_ser` ,
DROP `modstyle` ;

 ALTER TABLE `bas_person` DROP `h_stipend_id`  ;
 DROP TABLE `msg_count`;
