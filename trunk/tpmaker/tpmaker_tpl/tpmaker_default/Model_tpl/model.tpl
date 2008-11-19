<?php
	

class HotjobViewModel extends Model {

    protected $viewModel = true;
    protected $viewFields = array(
        'Hotjob'=>array('id','title','jobcode','content','jobnote','callingId'),
        'Lang'=>array('title'=>'category'),
		'nsjob'=>array('title'=>'nsjobt'),
        );
    protected $viewCondition = array(
		"Hotjob.langId" => array('eqf',"Lang.id"),
		"Hotjob.callingId" => array('eqf',"nsjob.id"),

	);

}
	
	

?>