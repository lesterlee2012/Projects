
<?php

session_start();
$itemid = $_GET['itemid'];
if(!isset($_SESSION['userid'])){
 for($i=0;$i<$_SESSION['cartindex']; $i=$i+1){
    	if($itemid==$_SESSION['cart'][$i]['itemid']){
   	unset($_SESSION['cart'][$i]);
	$_SESSION['cartindex']=$_SESSION['cartindex']-1;
	header("refresh:3;url=ShoppingCart.php");
	echo '<center>Delete item successfully!!</center>';
    	break;
    }
  }
   
}

else{
$userid = $_SESSION['userid'];
include('conn.php');

mysql_query("delete from cart where userid='$userid' and itemid='$itemid'");
header("refresh:3;url=ShoppingCart.php");
echo '<center>Delete item successfully!!</center>';

mysql_close($conn);

}
?>
