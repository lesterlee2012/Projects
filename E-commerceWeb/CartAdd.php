<html>
<?php
session_start();

$itemid = $_POST['itemid'];
$itemname = $_POST['itemname'];
$item_price = $_POST['item_price'];
$num = $_POST['num'];

include('conn.php');

if(!isset($_SESSION['userid'])){
  $exist=0;
  for($i=0;$i<$_SESSION['cartindex']; $i=$i+1){
    if($itemid==$_SESSION['cart'][$i]['itemid'] ){
      if( $_SESSION['cart'][$i]['quantity']+$num <11) $_SESSION['cart'][$i]['quantity']=$_SESSION['cart'][$i]['quantity']+$num;
      else  exit('You can only purchase at most 10 for one item!! click to<a href="javascript:history.back(-1);">go back</a>');
      $exist=1;
      break;
    }
  }
  
  if(!$exist){
  $_SESSION['cartindex']=$_SESSION['cartindex']+1;
  $cartsessionrow['itemid']=$itemid;
  $cartsessionrow['itemname']=$itemname;
  $cartsessionrow['price']=$item_price;
  $cartsessionrow['quantity']=$num;

  if(!isset($_SESSION['cart'])){$_SESSION['cart']=array();}
  array_push($_SESSION['cart'],$cartsessionrow);
  
  }
  
  exit('Add to cart successfully!! click to<a href="javascript:history.back(-1);">go back</a>');
  
}



else{
            $userid = $_SESSION['userid'];
            
            $check_query = mysql_query("select * from cart where userid='$userid' and itemid='$itemid' limit 1");
          if($row=mysql_fetch_array($check_query)){
                
		if($row['quantity']+$num < 11 ){
              		mysql_query("UPDATE cart SET quantity = quantity + $num WHERE userid = '$userid' AND itemid = '$itemid'");
               		exit('Add to cart successfully!! click to<a href="javascript:history.back(-1);">go back</a>');
		}
		else 
			exit('You can only purchase at most 10 for one item!! click to<a href="javascript:history.back(-1);">go back</a>');
          }
          
           else{ 
            
            $sql="INSERT INTO cart(userid,itemid,price,quantity) values ('$userid','$itemid','$item_price','$num')";
            if(mysql_query($sql,$conn)){
            mysql_close($conn);
            exit('Add to cart successfully!! click to<a href="javascript:history.back(-1);">go back</a>');
             
            } else {
                 echo 'database error:',mysql_error(),'<br />';
            }
           }
           
}
?>
</html>
