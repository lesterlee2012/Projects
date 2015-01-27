<?php 

session_start(); 
include('conn.php');
echo '<a href="/index.php">Go Back To Home Page</a>';
if(!isset($_SESSION['userid'])){

  $cartnum=$_SESSION['cartindex']; 
}else{

  $userid = $_SESSION['userid'];

  $user_query = mysql_query("select * from users where userid='$userid' limit 1");
  $row = mysql_fetch_array($user_query);
  $cartresult = mysql_query("select count(*) from cart where userid='$userid'");
  $cartrow = mysql_fetch_array($cartresult);
  $cartnum = $cartrow['count(*)'];
}
?>
<html>
<head>

<title>Detail Page</title>

</head>
<body>
<table width="100%" height="100%" border="0" bgcolor="white">
  <tr bgcolor="white" height="50">
    <td  >
    <fieldset  style="float: left">
<?php 
  if (!isset($_SESSION['userid'])){
?>
    <legend>customer login</legend>
	
	<form id='LoginForm' name='LoginForm' method='post' action='index.php' onsubmit='return InputCheck(this)'>
	<p><a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>
    	<label for='userid' class="label">userid:</label>
	<input id='userid' name='userid'  type='text' class='input'/>
	</p>
    	<p> 
  	<label for='password' class="label">password:</label>
    	<input id='password' name='password' type='password' class='input' />
   	</p>
    	<p>
     	<input type='submit' name='submit' id='submit' value='login' class='left' />
      	<input type='button' onclick="location.href='reg.php'" name='register' id='register' value='register' />
      	<input type='reset'>
    	</p>
	</form>
	<?php }

else
	{
	echo "<a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>";
	echo ' Welcome ,<a href="Profile.php">'.$_SESSION['username'].'</a><br/>';
    	echo 'click <a href="index.php?action=logout">here </a>to logout！<br />';
	
}
?>
    
    </fieldset>
    </td>
    <td colspan="4"> <div align="right"><img src="images/ShoppingCartLogo.gif" /><font size="+4"><a href="ShoppingCart.php">(<?php echo $cartnum?>)</a></font></div></td>
  </tr>
 
  <tr bgcolor="#0099CC" height="100">
    <td colspan="5"><span class="STYLE4"></span>
      <font size="+5" color="#FFFFFF"><?php echo $item_name?> Details</font></td>
  </tr>
</table>


<?php

if($_GET['action'] == "logout"){
    unset($_SESSION['userid']);
    unset($_SESSION['username']);
    unset($_SESSION['adminid']);
    unset($_SESSION['adminname']);
    echo 'logout success and click here to <a href="index.php">login</a>';
    exit;
}

$username="root";$password="";$database="movieserver";
$con=mysql_connect("localhost",$username,$password);
if (!$con)
  {
    die('Could not connect:'.mysql_error());
  }
mysql_select_db($database, $con);

$imdb = $_GET["imdb"];
$sql = "SELECT * FROM Inventory where imdb = '". $imdb. "'";
$result=mysql_query($sql);
$row = mysql_fetch_array($result)

?>


<table width="100%" height="100%" bgcolor="white">
  <tr>
    <td width="18%" rowspan="2"><img src= <?php echo $item_image?> width="300" height="300"/></td>
    <td colspan="2" bgcolor="#66CCFF">


    Name: <?php echo $row['name'] ?><br/>
  
    Director: <?php echo $row['director']?><br/>
  
    Genre: <?php echo $row['genre']  ?><br/>

    Price: <?php echo $row['price']   ?><br/>
  
    Add Date: <?php echo $row['dateAdded']  ?><br/>
  
    Description: <?php echo $row['description']   ?></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#66CCFF"><font size="+3" color="#FF0000">Price: <?php echo $item_price?></font><br />
        <form id="formnum" name="formnum" method="post" action="CartAdd.php">
        <input type="hidden" name="itemid" value="<?php echo $imdb?>"/>
        <input type="hidden" name="item_price" value="<?php echo  $row['price']?>"/>
	<input type="hidden" name="itemname" value="<?php echo $row['name'] ?>" />
        Select number:
	<select name="num" >
	  <option selected >1</option>
	  <option >2</option>
	  <option >3</option>
	  <option >4</option>
	  <option >5</option>
	  <option >6</option>
	  <option >7</option>
	  <option >8</option>
	  <option >9</option>
	  <option >10</option>
        </select>
	</form><br/>
        Add to Cart<a href="#" onClick="formnum.submit();"><img src="images/AddCart.png" width=40 height=40 /></a></td>
  </tr>
 
  <tr height="60">
    <td colspan="3" bgcolor="#0099CC">&nbsp;</td>
  </tr>
</table>

<?php

echo "
<p>Review:</p>
";



//echo $review;
$reviewsql = "SELECT * FROM Review WHERE imdb = '". $imdb. "'";
$reviewResult=mysql_query($reviewsql);
echo "<table border='1'>
<tr>
<th>Rank</th>
<th>Comment</th>
<th>Username</th>
";

while ($row = mysql_fetch_array($reviewResult))
  {
    echo "<tr>";
    echo "<td>".$row['rank']."</td>";
    echo "<td>".$row['comment']."</td>";
    echo "<td>".$row['username']."</td>";   
    echo "</tr>";
  }
echo "</table>";

mysql_close($con);

echo "</br>";


echo "Please leave your review here:</br>";

?>

<form action="review.php" method="post">
<input type="radio" name="rank" value="5" required="required">Very Good</br>
<input type="radio" name="rank" value="4" required="required">Good</br>
<input type="radio" name="rank" value="3" required="required">OK</br>
<input type="radio" name="rank" value="2" required="required">Not bad</br>
<input type="radio" name="rank" value="1" required="required">Bad</br>
User<input name="username" value="<?php echo $_SESSION['username']; ?>" readonly="redonly"></br>
Imdb<input name="imdb" value="<?php echo $imdb;?>" readonly="redonly"></br>
Comment:</br><textarea type="text" name="comment" rows="3" cols="50" required="required"></textarea></br>
<input type="submit" value="Submit">
</form>

</body>
</html>
<?php 
  mysql_close($conn);
?>