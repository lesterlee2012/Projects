<?php
session_start();
require '%conn.php';

$card = mysqli_real_escape_string($conn, $_POST['cardNumber']);
$sql="SELECT * FROM hotList WHERE cardNumber='$card'";
$result = mysqli_query($conn,$sql);

if(mysqli_num_rows($result)){
	echo "Checkout Failure: Your card is on the Hot List and cannot be used<br>";
	echo '<a href="/checkoutlogin.php">Go Back To edit your Checkout Info.</a>';
	mysqli_query($conn,"Insert INTO alertEvent(userName, holderFirstName, holderLastName, cardNumber, IP, Time, description) Values('$_POST[userName]', '$_POST[holderFirstName]', '$_POST[holderLastName]', '$_POST[cardNumber]', '$_SERVER[REMOTE_ADDR]', NOW(), 'Credit card on hot list detected and stopped')");
}
else{
	$sql="INSERT INTO BigOrder (userName, holderLastName, holderFirstName, cardNumber, exipirationDate, shippingAddr, billingAddr)
	VALUES
	('$_POST[userName]','$_POST[holderLastName]','$_POST[holderFirstName]','$_POST[cardNumber]','$_POST[exipirationDate]','$_POST[shippingAddr]','$_POST[billingAddr]')";
	//$_SESSION['username'];
	//echo $sql;
	mysqli_query($conn, $sql);

	$maxsql = "SELECT MAX(orderID) FROM BigOrder";
	$maxresult = mysql_query($maxsql);
	$maxrow = mysql_fetch_array($maxresult);
	$orderID =  $maxrow[0];
	$datesql = "SELECT CURDATE()";
	$dateresult = mysqli_query($conn, $datesql);
	$orderDate = mysql_fetch_array($dateresult);

	$userid=$_SESSION['userid'];
	$orderlistsql = "SELECT * FROM cart WHERE userid = '".$userid."'";
	$orderlistResult=mysqli_query($conn, $orderlistsql);
	while ($orderlistrow = mysqli_fetch_array($orderlistResult))
	  {
		$insert = "INSERT INTO ShoppingOrder (orderid, username, item, count, dateOrdered) VALUES ('".$orderID."', '".$orderlistrow['userid']."', '".$orderlistrow['itemid']."', '".$orderlistrow['quantity']."', '".$orderDate[0]."')";
		mysqli_query($conn, $insert);
	  }

	$deletcartsql = "DELETE FROM cart WHERE userid = '".$userid."'";
	mysqli_query($conn, $deletcartsql);
	echo "Order Confirm</br>";
	echo '<a href="/index.php">Go Back To Home Page</a>';
}

mysqli_close($conn);

?>
