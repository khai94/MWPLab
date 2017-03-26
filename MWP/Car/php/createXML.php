<?php
header("Content-type:text/xml");
header("Access-Control-Allow-Origin: *");

// Connect to db and query student table items
$dbconn = mysql_connect("localhost", "login", "password");
mysql_select_db("db_name", $dbconn);
$query = mysql_query("select * from car", $dbconn);

// Create SimpleXMLElement instance.
$xml = new SimpleXMLElement('<list/>');

mysql_close($dbconn);

echo $xml->asXML();
?>