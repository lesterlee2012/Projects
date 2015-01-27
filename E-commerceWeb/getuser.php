
<?php
$q=strval($_GET['q']);

require '%conn.php';
$sql="SELECT * FROM Inventory ORDER BY $q";
$result = mysqli_query($conn,$sql);

echo "<table border='1'>
<tr>
<th>imdb</th>
<th>Name</th>
<th>Director</th>
<th>Genre</th>
<th>Price</th>
</tr>";

while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>";
  echo '<a href="detailpage.php?imdb='.$row['imdb'].'">'. $row['imdb'] .'</a>';
  echo "</td>";
  echo "<td>" . $row['name'] . "</td>";
  echo "<td>" . $row['director'] . "</td>";
  echo "<td>" . $row['genre'] . "</td>";
  echo "<td>" . $row['price'] . "</td>";
  echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>

