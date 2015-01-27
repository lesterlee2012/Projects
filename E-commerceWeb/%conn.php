
<?php

$conn = mysqli_connect("localhost","root","");
if (!$conn){
    die("mysqli connection fail:" . mysqli_error());
}
mysqli_select_db($conn,"movieserver");
mysqli_query("set character set 'gbk'");
mysqli_query("set names 'gbk'");
?>







