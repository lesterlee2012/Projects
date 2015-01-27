<?php
session_start();
$_SESSION['username'];
echo 'account='.$_SESSION['test'];
$username="root";$password="";$database="movieserver";
$con=mysql_connect("localhost",$username,$password);
if (!$con)
  {
    die('Could not connect:'.mysql_error());
  }
mysql_select_db($database, $con);

$sql="INSERT INTO Review (username, imdb, rank, comment) 
values 
('$_POST[username]','$_POST[imdb]','$_POST[rank]','$_POST[comment]')";
//$_SESSION['username'];
//echo $sql;

if (!$con)
  {
    die('Could not connect'.mysql_error());
  }
mysql_query($sql);
echo "Review upload succeeded</br>";
echo '<input type="button" onclick="javascript:window.history.back();" value="Back">';
mysqli_close($con);

?>
