<?php

require '%conn.php';

$username = mysqli_real_escape_string($conn, $_POST['username']);
$firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
$lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
$cardnumber = mysqli_real_escape_string($conn, $_POST['cardnumber']);
$expiredate = mysqli_real_escape_string($conn, $_POST['expiredate']);
$Shipping = mysqli_real_escape_string($conn, $_POST['Shipping']);
$Billing = mysqli_real_escape_string($conn, $_POST['Billing']);




$sql="insert into Account values ('$username','$firstname','$lastname','$cardnumber','$expiredate','$Shipping','$Billing')";

$username = mysqli_real_escape_string($conn, $_POST['username']);
$firstname = mysqli_real_escape_string($conn, $_POST['firstname']);

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo "1 record added";

mysqli_close($conn);
?>
