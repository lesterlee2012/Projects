<?php

require '%conn.php';
$card = mysqli_real_escape_string($conn, $_GET['id']);
$sql="DELETE FROM hotList WHERE cardNumber='$card'";

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo '1 record removed, click <a href="hotList.php">here</a> to return';

mysqli_close($conn);


?>
