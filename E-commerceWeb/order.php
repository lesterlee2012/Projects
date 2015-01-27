<?php 

session_start(); 
include('conn.php');

echo "Final Review:</br>";

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

$accountsql = "SELECT * FROM Account WHERE userName = '".$userid."'";
//echo "$accountsql";
$accountResult = mysql_query($accountsql);
$accountrow = mysql_fetch_array($accountResult);

echo "Billing information:</br>";


?>

<form action="ordercomfirm.php" method="post">
User<input name="userName" value="<?php echo $_SESSION['userid']; ?>" readonly="redonly"></br>
Holder Last Name<input name="holderLastName" value="<?php echo $_POST[holderLastName];?>" readonly="redonly"></br>
Holder First Name<input name="holderFirstName" value="<?php echo $_POST[holderFirstName];?>" readonly="redonly"></br>
Card Number<input name="cardNumber" value="<?php echo $_POST[cardNumber];?>" readonly="redonly"></br>
Exipre Date<input name="exipirationDate" value="<?php echo $_POST[exipirationDate];?>" readonly="redonly"></br>
Shipping Address<input name="shippingAddr" value="<?php echo $_POST[shippingAddr];?>" readonly="redonly"></br>
Billing Address<input name="billingAddr" value="<?php echo $_POST[billingAddr];?>" readonly="redonly"></br>
<input type="submit" value="Click to Buy">
<input type="button" onclick="javascript:window.history.back();" value="Back">
</form>

