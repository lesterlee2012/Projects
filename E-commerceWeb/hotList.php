<html>
<div style="position: absolute; top:3%; left:85%; font-size:.6em;">
<a  href="addHot.html">Add New to Hot List</a>
</div>
Hello Admin, <a href="index.php">Logout</a>, <a href="adminView.html">Home</a><br>
<p>Click the card# to delete</p>

<?php

require '%conn.php';
$sql="SELECT * FROM hotList";
$result = mysqli_query($conn,$sql);

echo "<table border='1'>
<tr>
	<th>Hot Listed Card No.</th>
</tr>";

while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
	  echo "<td>";
	  echo '<a href="deleteHot.php?id='. $row['cardNumber']. '">'. $row['cardNumber'].'</a>';
	  echo "</td>";
  echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>

</html>
