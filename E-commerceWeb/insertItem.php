<?php

require '%conn.php';

$imdb = mysqli_real_escape_string($conn, $_POST['imdb']);
$name = mysqli_real_escape_string($conn, $_POST['name']);
$director = mysqli_real_escape_string($conn, $_POST['director']);
$genre = mysqli_real_escape_string($conn, $_POST['genre']);
$price = mysqli_real_escape_string($conn, $_POST['price']);
$description = mysqli_real_escape_string($conn, $_POST['description']);

$sql="insert into Inventory values ('$imdb','$name','$director','$genre','$price','$description',CURDATE())";

if (!mysqli_query($conn,$sql)) {
  die('Error: ' . mysqli_error($conn));
}
echo '1 record added, click <a href="addItem.html">here</a> to return';

mysqli_close($conn);
?>
