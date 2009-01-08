<?php
	

class {name}Model extends Model{

    // 验证信息
    protected $_validate     =     array(

	//必填信息
{val_var_req}        array('{v_name}','{v_rag}','{v_caption}','{v_time}'),	//{v_note}{/val_var_req}
	//其它验证信息
{val_var_val}        array('{v_name}','{v_rag}','{v_con}','{a_reg}','{v_caption}','{v_time}'), 	//{v_note}{/val_var_val}

		);

    //自动填充信息
    protected $_auto     =     array(

{val_var_auto}        array('{a_name}','{a_text}','{a_condition}','{a_regular}'),	//{a_note}
{/val_var_auto}

        ); 


}
	
	

?>