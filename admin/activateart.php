<?php
header( "refresh:2;url=articles.php" );
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
$query2 = "SELECT * FROM article where id = '$tomake'"; 
$pointcalla = mysqli_query($con,$query2 ); 
 $row = mysqli_fetch_assoc($pointcalla);
 $tt =$row['user_id'];
 $queryupdate = "SELECT * FROM affiliateuser where username = '$tt'";
 $pointcall = mysqli_query($con,$queryupdate ); 
 $row = mysqli_fetch_assoc($pointcall);
 $prevtamount =$row['tamount']+$art_bonus;
 




$result=mysqli_query($con,"UPDATE article SET status=1 WHERE id='$tomake'");

$res11=mysqli_query($con,"update affiliateuser set tamount = $prevtamount where username='$tt'");
$res12=mysqli_query($con,"INSERT INTO transaction (username, paidfor, amount, date) VALUES ('$tt', 'Article Bonus', '$art_bonus', NOW() )");
if ($result && $res11)
{
print "<center>Article Approved Successfully<br/>Redirecting in 2 seconds...</center>";
}
else
{
print "<center>Action could not be performed, Something went wrong. Check back again<br/>Redirecting in 2 seconds...</center>";
}

?>