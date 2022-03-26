<?php
header( "refresh:1;url=new_cat.php" );
session_start(); //starting session
include('z_db.php'); //connection details
$status = "OK"; //initial status
$msg="";
$cat_name = $_POST['cat_name'];

if ( strlen($cat_name) < 3 ){ //checking if body is greater then 4 or not
$msg=$msg."Category Name must contain more than 3 char length.<BR>";
$status= "NOTOK";}

if($status=="OK")
{
$res1=mysqli_query($con,"INSERT INTO blog_category (cat_name) VALUES ('$cat_name')");

if($res1)
{
print "Category Added!!!";
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
