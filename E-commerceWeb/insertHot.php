<?php

require '%conn.php';

$card = mysqli_real_escape_string($conn, $_POST['card']);

$sql="insert into hotList values ('$card')";

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo '1 record added, click <a href="addHot.html">here</a> to return';

mysqli_close($conn);
?>
