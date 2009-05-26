<?php
// +----------------------------------------------------------------------+
// | Copyright (c) 2008    lee99.com@gmail.com   All rights reserved.     |
// +----------------------------------------------------------------------+

/**
* Name: Tab_searchtypeAction.class.php
* Author: lee99.com@gmail.com
* Description:
* Date: 2008-3-20 9:01:45
* Datetime: 2008-3-20
**/


class FieldsViewModel extends Model
{
	     protected $viewModel= true;
         protected $viewFields =array(
                   'sys_fields'=>array('caption'),
                   'sub_fieldtype' =>array('primary'),
                   );
		 protected $viewCondition =array(
			'sys_fields.fieldtype' =>array('eq','sub_fieldtype.id'),
		);
}
?>
