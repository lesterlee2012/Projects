<html>

<head>
<title>Edit Page</title>
</head>

<body>
Hello Admin, <a href="index.php">Logout</a>, <a href="adminView.html">Home</a>
<?php

require '%conn.php';

$imdb = $_GET["id"];
$sql = "SELECT * FROM Inventory where imdb = '". $imdb. "'";
$result=mysqli_query($conn,$sql);
$row = mysqli_fetch_array($result);

echo '<form action="modifyItem.php" method="post">';
	echo '<p>IMDB Serial No.: <input type="text" name="imdb" value='. $row['imdb']. '></p>';
	echo '<p>Name: <input type="text" name="name" value='. str_replace(" ","&nbsp;",$row['name']). '></p>';
	echo '<p>Director: <input type="text" name="director" value='. str_replace(" ","&nbsp;",$row['director']). '></p>';
	echo '<p>Genre: <input type="text" name="genre" value='. str_replace(" ","&nbsp;",$row['genre']). '></p>';
	echo '<p>Price: <input type="text" name="price" value='. $row['price']. '></p>';
	echo '<p>Description: <input type="text" name="description" value='. str_replace(" ","&nbsp;",$row['description']). '></p>';
	echo '<p><input type="submit" value="Submit changes"></p>';
echo "</form>";
	
echo '<div style="position: absolute; top:3%; left:85%; font-size:.6em;">
<a href="deleteItem.php?id='. $row['imdb']. '">Remove current item</a>
</div>';
  
mysqli_close($conn);

?>


</body>
</html>