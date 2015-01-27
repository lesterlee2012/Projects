<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>user registration</title>
  <style type="text/css">
    html{font-size:12px;}
	fieldset{width:520px; margin: 0 auto;}
	legend{font-weight:bold; font-size:14px;}
	label{float:left; width:90px; margin-left:10px;}
	.left{margin-left:80px;}
	.input{width:150px;}
	span{color: #666666;}
  </style>
<script language=JavaScript>
<!--

function InputCheck(RegForm)
{
  if (RegForm.username.value == "")
  {
    alert("AdminID can't be empty!");
    RegForm.username.focus();
    return (false);
  }
  if (RegForm.password.value == "")
  {
    alert("password required!");
    RegForm.password.focus();
    return (false);
  }
  if (RegForm.repass.value != RegForm.password.value)
  {
    alert("retyped password is not the same!");
    RegForm.repass.focus();
    return (false);
  }
  if (RegForm.email.value == "")
  {
    alert("e-mail address can't be empty!");
    RegForm.email.focus();
    return (false);
  }
}

//-->
</script>
</head>
<div>
<fieldset>
<legend>admin register</legend>
<form name="RegForm" method="post" action="reg.php" onSubmit="return InputCheck(this)">
    <p>
    <label for="userid" class="label">AdminID:</label>
    <input id="userid" name="userid" type="text" class="input" />
    <span>(required,6-15 characters )</span>
    <p/>
    
    <p>
    <label for="firstname" class="label">Firstname:</label>
    <input id="firstname" name="firstname" type="text" class="input" />
    <span>(required)</span>
    <p/>
    
    <p>
    <label for="lastname" class="label">Lastname:</label>
    <input id="lastname" name="lastname" type="text" class="input" />
    <span>(required)</span>
    <p/>
    
    <p>
    <label for="password" class="label">Password:</label>
    <input id="password" name="password" type="password" class="input" />
    <span>(required,at least 6 digits)</span>
    <p/>
    
    <p>
    <label for="repass" class="label">Pass again:</label>
    <input id="repass" name="repass" type="password" class="input" />
    <p/>
    
    <p>
    <label for="email" class="label">Email:</label>
    <input id="email" name="email" type="text" class="input" />
    <span>(required)</span>
    <p/>
    
    <p>
    <label for="age" class="label">Your Age:</label>
    <input id="age" name="age" type="text" class="input" />
    <span>(required)</span>
    <p/>
    
    <p>
    <input type="submit" name="submit" value="submit your registration" class="left" />
    <input type="reset">
    </p>
</form>
</fieldset>
</div>
<?php
if(isset($_POST['submit'])){
    

$userid = $_POST['userid'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$age = $_POST['age'];

if(!preg_match('/^[\w\x80-\xff]{6,15}$/', $userid)){
    exit('Adminid is not allowed <a href="javascript:history.back(-1);">back</a>');
}
if(strlen($password) < 6){
    exit('password must be at least 6 charactors!<a href="javascript:history.back(-1);">back</a>');
}
if(!preg_match('/^\w+([-+.]\w+)*@\w+([-.]\w+)*.\w+([-.]\w+)*$/', $email)){
    exit('not a valid email address<a href="javascript:history.back(-1);">back</a>');
}

include('conn.php');

$check_query = mysql_query("select userid from users where userid='$userid' limit 1");
if(mysql_fetch_array($check_query)){
    echo 'error:userID ',$userid,' already exists.<a href="javascript:history.back(-1);">back</a>';
    exit;
}

$password = HASH('SHA256',$password);

$sql = "INSERT INTO users(userid,password,firstname,lastname,email,age,isadmin)VALUES('$userid','$password','$firstname','$lastname','$email','$age','1')";
if(mysql_query($sql,$conn)){
    exit('register success,click to<a href="index.php">login</a>');
} else {
    echo 'database error:',mysql_error(),'<br />';
    echo 'click <a href="javascript:history.back(-1);">here</a> to retry';
}



}
?>

<body>
</body>
</html>
