<?php
session_start();

include('conn.php');

if(!isset($_SESSION['userid'])){
  $cartnum=$_SESSION['cartindex'];
  for($i=0;$i<$_SESSION['cartindex']; $i=$i+1){
  if($_GET['itemid']==$_SESSION['cart'][$i]['itemid']){
	if($_SESSION['cart'][$i]['quantity']+$_GET['addquan'] > 0 && $_SESSION['cart'][$i]['quantity']+$_GET['addquan'] < 11)
	$_SESSION['cart'][$i]['quantity']=$_SESSION['cart'][$i]['quantity']+$_GET['addquan'];
    	break;
    }
  }
  $rows=$_SESSION['cart'];
}

else{
  $userid = $_SESSION['userid'];
  $username = $_SESSION['username'];
  
  $cartresult = mysql_query("select count(*) from cart where userid='$userid'");
  $cartrow = mysql_fetch_array($cartresult);
  $cartnum = $cartrow['count(*)'];
  $result = mysql_query("select * from cart where userid='$userid'");
  $rows=array();
  while($row=mysql_fetch_array($result)	){
	if($_GET['itemid']==$row['itemid']){
	   if($row['quantity']+$_GET['addquan'] >0 && $row[quantity]+$_GET['addquan'] <11 ){
	    $row['quantity']=$row['quantity']+$_GET['addquan'] ;
	    $itemid=$row['itemid'];
	    $newquan=$row['quantity'];
	    mysql_query("UPDATE cart SET quantity = $newquan WHERE userid ='$userid' AND itemid = '$itemid'");
	   }
	 
    }
  array_push($rows,$row);
 
}
 
}





?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Inventory List</title>
<link rel='stylesheet' href='css/style.css' type='text/css' media='screen' />

</head>
<body>
<table width="100%" height="100%" border="0" bgcolor="white">
  <tr>
     <td >
    <fieldset style="float: left">
<?php 
  if (!isset($_SESSION['userid'])){
?>
    <legend>customer login</legend>
	
	<form id='LoginForm' name='LoginForm' method='post' action='index.php' onsubmit='return InputCheck(this)'>
	<p><a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>
    	<label for='userid' class="label">userid:</label>
	<input id='userid' name='userid'  type='text' class='input' />
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
    <td colspan="4"> <div align="right"><img src="images/ShoppingCartLogo.gif"><a href="ShoppingCart.php"><font size="+4">(<?php echo $cartnum?>)</a></font></div></td>
  </tr>
  
  <tr bgcolor="#0099CC" height="100">
    <td colspan="5"><span class="STYLE4"></span>
      <font size="+5" color="#FFFFFF">Shopping Cart</font></td>
  </tr>
</table>
<table width="100%" height="100%" border="0" bgcolor="white">
  <tr>
    <?php
    

    foreach($rows as $cartdata) {
    $itemid = $cartdata['itemid'];
    $item_query = mysql_query("select * from Inventory where imdb ='$itemid'");
    $item_row = mysql_fetch_array($item_query);
    ?>
    <td width="253" height="206" rowspan="2"><img src= <?php echo $item_row["image"] ?> width="100%" height="100%"/>
	</td>
    <td width="768" height="30%" bgcolor="#66CCFF"><a href= "detailpage.php?imdb=<?php echo $cartdata['itemid']?>">  
	Name:<?php echo " ".$item_row["name"] ?></a></td>
  </tr>
  <tr>
    <td bgcolor="#66CCFF"><font color="black">
	Description: <br />
	Director: <?php echo $item_row["director"] ?> <br />
	Genre: <?php echo $item_row["genre"] ?> <br />
	Number: <?php echo $cartdata["quantity"] ?>
	<a href="ShoppingCart.php?addquan=1&itemid=<?php echo $itemid ?>"><img src="images/up.png" /></a>
	<a href="ShoppingCart.php?addquan=-1&itemid=<?php echo $itemid ?>"><img src="images/down.png" /></a>
	<br />
	<font size="+3" color="#FF0000">Price: <?php echo $cartdata["price"] ?> </font><br />
        Delete from Cart<a href="CartDelete.php?itemid=<?php echo $itemid ?>"><img src="images/ShoppingCartDelete.png" /></a>
    </td>	
  </tr>
  <?php 
  } 
  mysql_close($conn);
  ?>
  <tr height="60">
<?php 
	if($cartnum){ 
?>
	<td colspan="2"><div align="right"><a href="checkoutlogin.php" ><img src="images/Checkout.png" height="60"></a></div></td>
<?php 
	}
	else {
?>
    <td colspan="2"><div align="right"><img src="images/Checkout.png" height="60"></div></td>
<?php
	}
?>
  </tr>
  <tr height="60">
    <td colspan="2" bgcolor="#0099CC">&nbsp;</td>
  </tr>
</table>
</body>
</html>
