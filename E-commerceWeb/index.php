


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>MovieNight Shop</title>

<link rel='stylesheet' href='css/style.css' type='text/css' media='screen' />
<script>
function showUser(str) {
    if (str=="") {
        document.getElementById("txtHint").innerHTML="";
        return;
    }
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    } else { // code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","getuser.php?q="+str,true);
    xmlhttp.send();
}
</script>

</head>

<?php 

session_start();
$_SESSSION['test']='shen';
    
include('conn.php');

//logout
if($_GET['action'] == "logout"){
    unset($_SESSION['userid']);
    unset($_SESSION['username']);
    unset($_SESSION['adminid']);
    unset($_SESSION['adminname']);
    echo 'logout success and click here to <a href="index.php">login</a>';
    exit;
}


//login
$userid = htmlspecialchars($_POST['userid']);
$password = HASH('SHA256',$_POST['password']);
$check_query = mysql_query("select * from users where userid='$userid' and password='$password' 
limit 1");

if($result = mysql_fetch_array($check_query)){
    if($result[isadmin]==1){
      
        $_SESSION['adminid'] = $userid;
        $_SESSION['adminname'] = $result['firstname']." ".$result['lastname'];
       
        echo "<script language='javascript' type='text/javascript'>";  
        echo "window.location.href='adminView.html'";
        echo "</script>";
	exit;
	}
        else{
         $_SESSION['userid'] = $userid;
         $_SESSION['username'] = $result['firstname']." ".$result['lastname'];
        }
}
else{
  if(!$userid ==""){
    echo "wrong username/password";
    echo $result;
 }
  
 }



?>

<body>




<form name="searchform" method="post" action="index.php">
<table width="100%"  border="0" bgcolor="white">
  <tr>
    
    <td >
    <fieldset style="float: left">
<?php 
  if (!isset($_SESSION['userid'])){
?>
    <legend>customer login</legend>
	
	<form id='LoginForm' name='LoginForm' method='post' action='index.php'>
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
        echo "<a href='index.php'><img style='float:right' src='images/logo.png' width='179' height='158' /></a>";
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
      <font size="+5" color="#FFFFFF">Product Browsing</font></td>
  </tr>
  
  <tr bgcolor="#0099CC">
  
  
    <td>
      <font color="#FFFFFF">GENRE </font>
      
      <select name="genre" >
        <option <?php  if($_POST['genre']==""){?>selected <?php }?> value="">all</option>

      </select>
    </td>
    <td>
      <font color="#FFFFFF">Director: </font>
      <select name="director" >
        <option <?php  if($_POST['director']==""){?>selected <?php }?> value="">all</option>

      </select>
    </td>
    <td>
      <font color="#FFFFFF">IMDB: </font>
      <select name="imdb" >
        <option <?php  if($_POST['imdb']==""){?>selected <?php }?> value="">all</option>

      </select>
    </td>

    <td>
      <input type="submit" name="search" value="search" />
    </td>
  
  </tr>
  
</table>
</form>

<form>
<select name="users" onchange="showUser(this.value)">
<option value="" id="Select">Select to order</option>
<option value="price" id="price">price</option>
<option value="genre" id="genre">genre</option>
<option value="director" id="director">director</option>
<option value="name" id="name">name</option>
<option value="imdb" id="imdb">imdb</option>
</select>
</form>

<br>

<div style="position: absolute; top:3%; left:90%; font-size:.6em;">
<a  href="addaccount.html">Your Profile</a>
</div>

<div id="txtHint"><b>Movie info will be listed here.</b></div>
<table width="100%" height="100%" border="0" bgcolor="white">
  
    <?php 
    while($row = mysql_fetch_array($result)){
    ?>
  <tr>
    <td width="253" height="206" rowspan="2"><img src= <?php echo $row["image"] ?> width="100%" height="100%"/>
    </td>
    <td width="768" height="30%" bgcolor="#66CCFF"><a href= "ItemDetail.php?itemid=<?php echo $row['itemid']?>">  
	<font size="+3" >Name:<?php echo " ".$row["name"] ?></font></a></td>
  </tr>
  <tr>
    <td bgcolor="#66CCFF">>
	
	<font size="+3" color="#FF0000">Price: <?php echo $row["price"] ?> 
        </font>
    </td>	
  </tr>
  <?php 
  } 
  mysql_close($conn);
  ?>
  <tr height="60">
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr height="60">
    <td colspan="2" bgcolor="#0099CC">&nbsp;</td>
  </tr>
</table>
</body>
</html>
