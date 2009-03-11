<?php
class export_db {

	
	
	
	function list_tables($database)
	{
	    $rs = mysql_list_tables($database);
	    $tables = array();
	    while ($row = mysql_fetch_row($rs)) {
	        $tables[] = $row[0];
	    }
	    mysql_free_result($rs);
	    return $tables;
	}
	
	function dump_table($table, $fp = null)
	{
	    $need_close = false;
	    if (is_null($fp)) {
	        $fp = fopen($table . '.sql', 'w');
	        $need_close = true;
	    }
	    fwrite($fp, "-- \n-- {$table}\n-- \n");
	    $rs = mysql_query("SELECT * FROM `{$table}`");
	    while ($row = mysql_fetch_row($rs)) {
	        fwrite($fp, get_insert_sql($table, $row));
	    }
	    mysql_free_result($rs);
	    if ($need_close) {
	        fclose($fp);
	    }
	    fwrite($fp, "\n\n");
	}
	
	function get_insert_sql($table, $row)
	{
	    $sql = "INSERT INTO `{$table}` VALUES (";
	    $values = array();
	    foreach ($row as $value) {
	        $values[] = "'" . mysql_real_escape_string($value) . "'";
	    }
	    $sql .= implode(', ', $values) . ");\n";
	    return $sql;
	}
	

}
?>