<?php

class {name}ViewModel extends Model{

    protected $viewModel = true;
	protected $viewFields = array(
	
	//属性表示视图模型包含的字段
{val_var_field}		'Category'=>array('title'=>'categoryName'),
{/val_var_field}
        );
	protected $viewCondition = array(
	
	//视图的基础关联条件
{val_var_condition}		'Category'=>array('title'=>'categoryName'),
{/val_var_condition}

        );
}

?>