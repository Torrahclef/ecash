<?php
header( "refresh:3;url=helabiz.php" );
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
$query2 = "SELECT * FROM helabiz where id = '$tomake'"; 
$pointcalla = mysqli_query($con,$query2 ); 
 $row = mysqli_fetch_assoc($pointcalla);
 $tt =$row['user_id'];
 $queryupdate = "SELECT * FROM affiliateuser where username = '$tt'";
 $pointcall = mysqli_query($con,$queryupdate ); 
 $row = mysqli_fetch_assoc($pointcall);
 
 $quaryss ="SELECT tamount FROM affiliateuser where username = '$tt'";
 $pointcallw = mysqli_query($con,$quaryss ); 
 $roww = mysqli_fetch_assoc($pointcallw);
 $tamount="$roww[tamount]";
 $tta = $tamount + 500;
 

$result=mysqli_query($con,"UPDATE helabiz SET pay=1 WHERE id='$tomake'");
if ($result)
{
    mysqli_query($con,"UPDATE affiliateuser SET tamount='$tta' WHERE username='$tt'");
print "<center>User Paid<br/>Redirecting in 2 seconds...</center>";
}
else
{
print "<center>Action could not be performed, Something went wrong. Check back again<br/>Redirecting in 2 seconds...</center>";
}

?>