<?php 

session_start(); 
include('conn.php');

if(!isset($_SESSION['userid'])){

  $cartnum=$_SESSION['cartindex']; 
}else{

  $userid = $_SESSION['userid'];


}
?>
<html>
<head>

<title>Checkout Page</title>

</head>
<body>
<table width="100%" height="100%" border="0" bgcolor="white">
  <tr bgcolor="white" height="50">
    <td  >
    <fieldset  style="float: left">
<?php 
  if (!isset($_SESSION['userid'])){
?>
    <legend>customer login</legend>
	
	<form id='LoginForm' name='LoginForm' method='post' action='index.php' onsubmit='return InputCheck(this)'>
	<p><a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>
    	<label for='userid' class="label">userid:</label>
	<input id='userid' name='userid'  type='text' class='input'/>
	</p>
    	<p> 
  	<label for='password' class="label">password:</label>
    	<input id='password' name='password' type='password' class='input' />
   	</p>
    	<p>
     	<input type='submit' name='submit' id='submit' value='login' class='left' />
      	<input type='button' onclick="location.href='reg.php'" name='register' id='register' value='register' />
      	<input type='reset'>
    	</p>
	</form>
	<?php }

else
	{
	echo "<a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>";
	echo ' Welcome ,<a href="Profile.php">'.$_SESSION['username'].'</a><br/>';
    	echo 'click <a href="index.php?action=logout">here </a>to logout！<br />';
	
}
?>
    
    </fieldset>
    </td>
    <td colspan="4"> <div align="right"><img src="images/ShoppingCartLogo.gif" /><font size="+4"><a href="ShoppingCart.php">(<?php echo $cartnum?>)</a></font></div></td>
  </tr>
 
  <tr bgcolor="#0099CC" height="100">
    <td colspan="5"><span class="STYLE4"></span>
      <font size="+5" color="#FFFFFF"><?php echo $item_name?> Order List</font></td>
  </tr>
</table>


<?php

if($_GET['action'] == "logout"){
    unset($_SESSION['userid']);
    unset($_SESSION['username']);
    unset($_SESSION['adminid']);
    unset($_SESSION['adminname']);
    echo 'logout success and click here to <a href="index.php">login</a>';
    exit;
}

$username="root";$password="";$database="movieserver";
$con=mysql_connect("localhost",$username,$password);
if (!$con)
  {
    die('Could not connect:'.mysql_error());
  }
mysql_select_db($database, $con);

$imdb = $_GET["imdb"];
$sql = "SELECT * FROM Inventory where imdb = '". $imdb. "'";
$result=mysql_query($sql);
$row = mysql_fetch_array($result)

?>


<?php

//echo $review;
$userid=$_SESSION['userid'];
$orderlistsql = "SELECT * FROM cart WHERE userid = '".$userid."'";
$orderlistResult=mysql_query($orderlistsql);
echo "<table border='1'>
<tr>
<th>Name</th>
<th>Price</th>
<th>Quantity</th>
";
//echo"$orderlistsql";

while ($orderlistrow = mysql_fetch_array($orderlistResult))
  {
    $ordernamesql = "SELECT * FROM Inventory WHERE imdb = '".$orderlistrow['itemid']."'";
    //echo"$ordernamesql";
    $ordernameResult = mysql_query($ordernamesql);
    $ordernamerow = mysql_fetch_array($ordernameResult);
    echo "<tr>";
    echo "<td>".$ordernamerow['name']."</td>";
    echo "<td>".$orderlistrow['price']."</td>";  
    echo "<td>".$orderlistrow['quantity']."</td>"; 
    echo "</tr>";
  }
echo "</table>";
$totalpricesql = "SELECT SUM(price*quantity) FROM cart WHERE userid = '".$userid."'";
//echo"$totalpricesql";
$totalpriceResult = mysql_query($totalpricesql);
$totalpricerow = mysql_fetch_array($totalpriceResult);
echo"Total Price:".$totalpricerow[0]."";
echo "</br>";

echo "Please check your billing information here:</br>";

$accountsql = "SELECT * FROM Account WHERE userName = '".$userid."'";
//echo "$accountsql";
$accountResult = mysql_query($accountsql);
$accountrow = mysql_fetch_array($accountResult);
?>

<form action="order.php" method="post">
User<input name="userName" value="<?php echo $_SESSION['userid']; ?>" readonly="redonly"></br>
Holder Last Name<input name="holderLastName" value="<?php echo $accountrow[2];?>" ></br>
Holder First Name<input name="holderFirstName" value="<?php echo $accountrow[1];?>" ></br>
Card Number<input name="cardNumber" value="<?php echo $accountrow[3];?>" ></br>
Exipre Date<input name="exipirationDate" value="<?php echo $accountrow[4];?>" ></br>
Shipping Address<input name="shippingAddr" value="<?php echo $accountrow[5];?>" ></br>
Billing Address<input name="billingAddr" value="<?php echo $accountrow[6];?>" ></br>
<input type="submit" value="Checkout">
<input type="button" onclick="javascript:window.history.back();" value="Back">
</form>

</body>
</html>
<?php 
  mysql_close($conn);
?>