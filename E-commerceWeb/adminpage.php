<?php
session_start();

if(!isset($_SESSION['adminid'])){
	echo 'not admin! click here to <a href="index.php"> return to the shop</a>';
	exit;
	}
?>
<html>
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
        <link rel='stylesheet' href='css/style.css' type='text/css' media='screen' />
        <title> The Admin Board</title>
    </head>
    <body>
        <div id='navbar'>
	    <a href='index.php'><img style=' float:right' src='images/logo.png' width='179' height='158'  /></a>  
	    <font size='5' style='color: #9A2211; font-family: Times New Roman'><b><center>The Admin Board</center></b></font></br>
     
	
	    <input type='button' onclick="location.href='adminreg.php'" name='register' id='register' value='register a new Administrator' />
	    <input type='button' onclick="location.href='index.php?action=logout'" name='logout' id='logout' value='logout' />
            <div id='navbarcont'>Welcome： <?php echo $_SESSION['adminname'] ?></div>
	    
	    <div id='sections'>
                <div id='inventoryManagement' style="width: 250px; float: left">
                    <a style="color: #9A2211; font-size: 20px; text-decoration:none;" href="inventorym.php" target="content">Inventory Management</a>
                </div>
		
                <div id='hotList' style="width: 150px; float: left;">
                    <a style="color: #9A2211; font-size: 20px; text-decoration:none;" href="hotlistm.php" target="content">Hot List Management</a>
                </div>
		
                <div id='statistics' style="width: 150px; float: left;">
                    <a style="color: #9A2211; font-size: 20px; text-decoration:none;" href="orderm.php" target="content">Order Management</a>
                </div>
                
            </div>
	</div>
	
	<hr style="width: 600px; color: #9A2211"/>
	
        <div id='content'> 
	    <iframe width="800" height="800" frameborder="0" name="content"></iframe>
        </div>
    </body>
</html>
