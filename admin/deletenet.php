<?php
session_start(); //starting session
include('z_db.php'); //connection details

$cat = $_POST['air_net']; //fetching details through post method
$res1=mysqli_query($con,"DELETE FROM network WHERE id=$cat");

if($res1)
{
print "Network Deleted!";
}
else
{
print "error! try again later or ask for help from your administrator.";
}

header( "refresh:1;url=new_net.php" );
?>
