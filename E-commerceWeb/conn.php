
<?php

$conn = @mysql_connect("localhost","root","");
if (!$conn){
    die("mysql connection fail:" . mysql_error());
}
mysql_select_db("movieserver", $conn);
mysql_query("set character set 'gbk'");
mysql_query("set names 'gbk'");
?>







