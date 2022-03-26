<?php
session_start(); //starting session
include('z_db.php'); //connection details

$cat = $_POST['cat_id']; //fetching details through post method
$res1=mysqli_query($con,"DELETE FROM blog_category WHERE id=$cat");

if($res1)
{
print "Category Deleted!";
}
else
{
print "error! try again later or ask for help from your administrator.";
}

header( "refresh:1;url=new_cat.php" );
?>
