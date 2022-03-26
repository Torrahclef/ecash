<?php
include_once ("z_db.php");


if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['femail']))
{

$email=mysqli_real_escape_string($con,$_POST['femail']);
$status=1;
if($status==1){

$status = "OK";
$msg="";
//checking constraints
if ( strlen($email) < 1 ){
$msg=$msg."Please Enter Your Email Id.<BR>";
$status= "NOTOK";}



$result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where email = '$email'");
$row = mysqli_fetch_row($result);
$numrows = $row[0];

if(($numrows) == 0) {
$msg=$msg."Your account not found or your account is inactive. Please contact your administrator.<BR>";
$status= "NOTOK";}

$sqlquery="SELECT wlink FROM settings where sno=0"; //fetching website from databse
$rec2=mysqli_query($con,$sqlquery);
$row2 = mysqli_fetch_row($rec2);
$wlink=$row2[0]; //assigning website address
}

$newpassword = substr(str_shuffle('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*') , 0 , 14 );

if ( strlen($newpassword) < 8 ){
$msg=$msg."Password Can not generated, system error. Try again.<BR>";
$status= "NOTOK";}


if($status=="OK")
{
$sqlquery111="SELECT etext FROM emailtext where code='FORGOTPASSWORD'"; //fetching website from databse
$rec2111=mysqli_query($con,$sqlquery111);
$row2111 = mysqli_fetch_row($rec2111);
$emailtext=$row2111[0]; //assigning email text for email


$re = mysqli_query($con,"update affiliateuser set password = '$newpassword' where email = '$email'");
if($re)
{

$message=$emailtext;
$to=$email;
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: <no-reply@'.$wlink.'>' . "\r\n";
$subject="Password Request";
$message.="This is your new password : <b> $newpassword </b><br><br>";
mail($to,$subject,$message,$headers);

$errormsg= "<br><center><font face='Verdana' size='2' color=red>Your password has been sent to your registered mail id. Please check your junk or spam folder if you do not find in your inbox. </font><br>";
}
else
{
$errormsg= "<center><font face='Verdana' size='2' color=red><br>We have found some technical glitch and unable to process your request. Please Ask Admin or try again after some time.</font><br>";
}
//updating status if validation passes

}
else{
$errormsg= "<br/><br/><br/><center><font face='Verdana' size='2' color=red>$msg</font><br>"; //priting error if found in validation


}
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

    <title>Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                      <?php 
						if($_SERVER['REQUEST_METHOD'] == 'POST' && ($status=="NOTOK"))
						{
						print $errormsg;
						}
						?>
                                    <form class="user"  action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>" method="post">
                                        <input type="hidden" name="todo" value="post">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" name="femail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..." required="">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Reset Password
                                        </button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="signup">Create an Account!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="login">Already have an account? Login!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>