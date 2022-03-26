<?php
header( "refresh:3;url=adverts.php" );
include_once ("z_db.php");
// Inialize session
session_start();
// Check, if username session is NOT set then this page will jump to login page
if (!isset($_SESSION['adminidusername'])) {
        print "
				<script language='javascript'>
					window.location = 'index.php';
				</script>
			";
			
}
$tomake= mysqli_real_escape_string($con,$_GET["id"]);
$query2 = "SELECT * FROM advert where id = '$tomake'"; 
$pointcalla = mysqli_query($con,$query2 ); 
 $row = mysqli_fetch_assoc($pointcalla);
 $tt =$row['user_id'];
 $queryupdate = "SELECT * FROM affiliateuser where username = '$tt'";
 $pointcall = mysqli_query($con,$queryupdate ); 
 $row = mysqli_fetch_assoc($pointcall);
 

$result=mysqli_query($con,"UPDATE advert SET status=1 WHERE id='$tomake'");
if ($result)
{
print "<center>Advert Activated Successfully<br/>Redirecting in 2 seconds...</center>";
}
else
{
print "<center>Action could not be performed, Something went wrong. Check back again<br/>Redirecting in 2 seconds...</center>";
}

?>