<html>
Hello Admin, <a href="index.php">Logout</a>, <a href="adminView.html">Home</a><br>
<p>Alert Event List (click username to delete) </p>

<?php

require '%conn.php';
$sql="SELECT * FROM alertEvent";
$result = mysqli_query($conn,$sql);

echo "<table border='1'>
<tr>
	<th>Profile</th>
	<th>Holder</th>
	<th>Card Number</th>
	<th>IP Addr</th>
	<th>Date</th>
	<th>Description</th>
</tr>";

while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>";
          echo '<a href="deleteAlert.php?id='. $row['id']. '">'. $row['userName'].'</a>';
  echo "</td>";
  echo "<td>" . $row['holderFirstName'] ." ". $row['holderLastName']. "</td>";
  echo "<td>" . $row['cardNumber'] . "</td>";
  echo "<td>" . $row['IP'] . "</td>";
  echo "<td>" . $row['Time'] . "</td>";
  echo "<td>" . $row['description'] . "</td>";
  echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>

</html>
