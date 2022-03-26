<?php
$con = new mysqli("localhost", "root", "", "netmlm22");
if ($con->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

//Your Website URL Goes Here
$url="https://localhost:8080/AAA/";


//Set Blog Activation Bonus Here (It must be only Number)
$blog_bonus ="150";

//Set Article Activation Bonus Here (It must be only Number)
$art_bonus ="20";



//Set Daily Login Bonus Here (It must be only Number)
$login_bonus="100";

//Set Currency Symbol for daily login bonus Here
$money="₦";

// Set Welcome Bonus Here
$wbonus="1000";
?>