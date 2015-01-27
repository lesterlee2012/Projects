
<html>
<body>

<?php
$username="root";$password="";$database="movieserver";
mysql_connect("localhost",$username,$password);
@mysql_select_db($database) or die( "Unable to select database");
if(isset($POST["ordering"])) { 
    $sql = "SELECT * FROM Inventory ORDER".$POST["ordering"];
} else {
     $sql = "SELECT * FROM Inventory ORDER BY Price ";
}
$result=mysql_query($sql);
$num=mysql_numrows($result);mysql_close();

?>

<table border="1" cellspacing="2" cellpadding="2">
<tr>
<td>
<font face="Arial, Helvetica, sans-serif"><?php print $num;?></font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif">Name</font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif">Director</font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif">Type</font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif">Price</font>
</td>
</tr>

<?php
$i=0;
while($i < $num) 
{$col1= mysql_result($result,$i,0);
$col2= mysql_result($result,$i,1);
$col3= mysql_result($result,$i,2);
$col4= mysql_result($result,$i,3);
$col5= mysql_result($result,$i,4);?>

<tr>
<td>
<a href="login.php">
<font face="Arial, Helvetica, sans-serif"><?php echo $col1;?></font>
</a>
</td>
<td>
<font face="Arial, Helvetica, sans-serif"><?php echo $col2;?></font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif"><?php echo $col3;?></font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif"><?php echo $col4;?></font>
</td>
<td>
<font face="Arial, Helvetica, sans-serif"><?php echo $col5;?></font>
</td>
</tr>
<?php $i++;}?>

</body>
</html>
