<?php
/////////////////////////////////////////////////////////////////////////////
//* @author lee99 <lee99.com@gmail.com> Sat Mar 15 11:32:05 GMT 2008
//+----------------------------------------------------------
//* 说明
//+----------------------------------------------------------
//* D:\xampp\htdocs\sample_verson\mytp\Lib\Action\DesignerAction.class.php
/////////////////////////////////////////////////////////////////////////////
class DesignerAction extends AdminAction{

	public function Index(){

		require COMMON_PATH."tpmaker.class.php";//引入自定义的类
	

	
	
	//获取表
	   $list=D('sys_tables');
	   $tabledata=$list->findall('ismodel=0 and pid='.$_REQUEST['id']);
	   $this->assign('tables',$tabledata);
		//dump($data);
		$t=new tpmaker();
		$t->projectid=$_REQUEST['id'];
		foreach ($tabledata as $subtables){
			$subtable[$subtables['title']]=$t->getfieldsbytbid($subtables['id']);
			for ($i = 0; $i <count($subtable[$subtables['title']]); $i++) {//重新加入数组的新元素
			$field=getfielddetail($subtable[$subtables['title']][$i]['fieldtype']);
			//
			$subtable[$subtables['title']][$i]['img']=$field['img'];
			$subtable[$subtables['title']][$i]['type']=$field['type'];
			$subtable[$subtables['title']][$i]['leng']=$field['leng'];
			$subtable[$subtables['title']][$i]['iskey']=$field['iskey'];
			
			}


			//dump($subtable[$subtables['title']]);exit;
		}
		$this->assign('subtables',$subtable);

		
	//查出关联JS
	$Designer=D('Designer');
	$condate=$Designer->findall('master_pid='.$_REQUEST['id']);
    $ti = 0;
    $script_contr =
        '<script type="text/javascript">' . "\n" .
        '// <![CDATA[' . "\n" .
        'var contr = new Array();' . "\n";
   //for ($i = 0; $i < count($con); $i++) {
    foreach ($condate as $con){
        $js_var = ' contr[' . $ti . ']';
        $script_contr .= $js_var . " = new Array();\n";
       // $js_var .= "['" . $con['master_table'].".". $con['master_field'] . "']";
        $js_var .= "['" . "']";
        $script_contr .= $js_var . " = new Array();\n";

            $js_var .= "['" .  $con['foreign_pid'].".". $con['foreign_table'] . "']";
            $script_contr .= $js_var . " = new Array();\n";
            $m_col = array();//}
            $js_var .= "['" .$con['foreign_field'] . "']";
            $script_contr .= $js_var . " = new Array();\n";//}
            $script_contr .= $js_var . "[0] = '" .$con['master_pid'].".". $con['master_table'] . "';\n"; //
            $script_contr .= $js_var . "[1] = '" . $con['master_field'] . "';\n"; //

        $ti++;
    }
    $script_contr .=
        '// ]]>' . "\n" .
        '</script>' . "\n";
        
    $this->assign('script_contr',$script_contr);

    //查出位置
    	$d=D('designer_coords');
		$ds=$d->findall("projectid=".$_REQUEST['id']);
		foreach ($ds as $date){
			//$tab_pos[$date['table_name']]=$date['table_name'];
			$tab_pos[$date['table_name']]["X"]=$date['x'];
			$tab_pos[$date['table_name']]["Y"]=$date['y'];
			$tab_pos[$date['table_name']]["H"]=$date['h'];
			$tab_pos[$date['table_name']]["V"]=$date['v'];
			
		}
		$this->assign('tab_pos',$tab_pos);
		//dump($tab_pos);

		$this->display();

	}



	public function relation_new (){
		$list=D('Designer');
		//$Designer->find($_REQUEST['id']);
		$list->master_pid=$_REQUEST['db'];
		$list->master_table=$_REQUEST['T2'];
		$list->master_field=$_REQUEST['F2'];
		$list->foreign_pid=$_REQUEST['db'];
		$list->foreign_table=$_REQUEST['T1'];
		$list->foreign_field=$_REQUEST['F1'];
		if($list->add()){
			header("Content-Type: text/xml; charset=utf-8");//utf-8 .$_GLOBALS['charset']
		    header("Cache-Control: no-cache");
		    die('<root act="relation_new" return="strInternalRelationAdded" b="1" 
		    DB1="'.urlencode($_REQUEST['db']).
		    '" T1="'.urlencode($_REQUEST['T1']).
		    '" F1="'.urlencode($_REQUEST['F1']).
		    '" DB2="'.urlencode($_REQUEST['db']).
		    '" T2="'.urlencode($_REQUEST['T2']).
		    '" F2="'.urlencode($_REQUEST['F2']).
		    '"></root>');
		}else {
			header("Content-Type: text/xml; charset=utf-8");//utf-8 .$_GLOBALS['charset']
		    header("Cache-Control: no-cache");
		    die('<root act="relation_new" return="strErrorRelationAdded" b="0" 
		    DB1="'.urlencode($_REQUEST['db']).
		    '" T1="'.urlencode($_REQUEST['T1']).
		    '" F1="'.urlencode($_REQUEST['F1']).
		    '" DB2="'.urlencode($_REQUEST['db']).
		    '" T2="'.urlencode($_REQUEST['T2']).
		    '" F2="'.urlencode($_REQUEST['F2']).
		    '"></root>');
		}
	//dump($Designer);
	}


	public function relation_upd(){
	
		$list=D('Designer');
		
		$key1 = explode(".",$_REQUEST['T1']);
		$DB1=$key1[0];
		$T1=$key1[1];
		$F1=$_REQUEST['F1'];
		$key2 = explode(".",$_REQUEST['T2']);
		$DB2=$key2[0];
		$T2=$key2[1];
		$F2=$_REQUEST['F2'];

		//$Designer->find($_REQUEST['id']);
		$condition="master_pid = $DB1 AND master_table = '$T1' AND master_field = '$F1' AND foreign_pid = $DB2 AND foreign_table = '$T2' AND foreign_field = '$F2'";
          
		if($list->delete($condition)){
		  header("Content-Type: text/xml; charset=utf-8");
		  header("Cache-Control: no-cache");
			echo('<root act="relation_upd" return="strRelationDeleted" b="1" K="'.$_REQUEST['K'].'"></root>');
		}

	//dump($Designer);
	}


	public function save_pos(){
		$list=D('designer_coords');
		$list->delete("projectid=".$_REQUEST['db']);
		//$t_x=$_REQUEST['t_x'];
		//dump($t_x);
		foreach ($_REQUEST['t_x'] as $key => $value) {
		    $tempkey = explode(".", $key);
		    $DB=$tempkey[0];
		    $TAB=$tempkey[1];
		    
			$list->projectid=$_REQUEST['db'];
			$list->table_name=$TAB;
			$list->x=$_REQUEST['t_x'][$key];
			$list->y=$_REQUEST['t_y'][$key];
			$list->v=$_REQUEST['t_v'][$key];
			$list->h=$_REQUEST['t_h'][$key];
			$list->add();
		}
		
  header("Content-Type: text/xml; charset=utf-8");
  header("Cache-Control: no-cache");
	die("<root act='save_pos' return='strModifications'></root>");
}

	public function addform(){
		$list=D('Designer');
		$add_date=$_REQUEST;
		$list->create($add_date);
		$list->add($add_date);
		$this->ajaxReturn('','操作成功！',1);



//redirect(__URL__."/index");
	}

}



?>