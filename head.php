<?php
include_once ("z_db.php");
// Inialize session
session_start();
// Check, if username session is NOT set then this page will jump to login page

if (!isset($_SESSION['username'])) {
        print "
				<script language='javascript'>
					window.location = '../login.php';
				</script>
			";
}

// Check, if username session is NOT set then this page will jump to login page
if (isset($_SESSION['username'])) {
    
 $username = $_SESSION['username']; 
}
 else {
    print "
				<script language='javascript'>
					window.location = 'login.php';
				</script>
			";
}
 
 ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Make Extra Cash</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v10.0&appId=660203284858189&autoLogAppEvents=1" nonce="w2211Of2"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
</head>