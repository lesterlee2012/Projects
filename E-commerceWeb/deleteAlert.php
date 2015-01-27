<?php

require '%conn.php';
$id = mysqli_real_escape_string($conn, $_GET['id']);
$sql="DELETE FROM alertEvent WHERE id='$id'";

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo '1 record deleted, click <a href="alertList.php">here</a> to return';

mysqli_close($conn);


?>
