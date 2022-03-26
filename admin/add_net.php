<?php
header( "refresh:1;url=new_net.php" );
session_start(); //starting session
include('z_db.php'); //connection details
$status = "OK"; //initial status
$msg="";
$air_net = $_POST['air_net'];

if ( strlen($air_net) < 2 ){ //checking if body is greater then 4 or not
$msg=$msg."Network Name must contain more than 2 char length.<BR>";
$status= "NOTOK";}

if($status=="OK")
{
$res1=mysqli_query($con,"INSERT INTO network (air_net) VALUES ('$air_net')");

if($res1)
{
print "Network Added!!!";
}
else
{
print "error!!!! try again later or ask for help from your administrator.";
}


} 
else {
        
echo "<font face='Verdana' size='2' color=red>$msg</font><br><input type='button' value='Retry' onClick='history.go(-1)'>"; //printing errors
	 
}

?>
