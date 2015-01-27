<?php

require '%conn.php';
$imdb = mysqli_real_escape_string($conn, $_GET['id']);
$sql="DELETE FROM Inventory WHERE imdb='$imdb'";

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo '1 record removed, click <a href="adminView.html">here</a> to return';

mysqli_close($conn);


?>
