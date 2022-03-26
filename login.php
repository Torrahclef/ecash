<?php
include_once("z_db.php");
$sql = "SELECT maintain FROM  settings WHERE sno=0";
if ($result = mysqli_query($con, $sql)) {

  /* fetch associative array */
  while ($row = mysqli_fetch_row($result)) {
    $main = $row[0];
  }
  if ($main == 1 || $main == 3) {
    print "
				<script language='javascript'>
					window.location = 'maintain.php';
				</script>
			";
  }
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['username'])) {
  $status = "OK"; //initial status
  $msg = "";
  $username = mysqli_real_escape_string($con, $_POST['username']); //fetching details through post method
  $password = mysqli_real_escape_string($con, $_POST['password']);
  $phoneNumber = "";
  if (strlen($username) < 6) {
    $msg = $msg . "Username must be more than 5 char legth<BR>";
    $status = "NOTOK";
  }

  if (strlen($password) < 6) { //checking if password is greater then 8 or not
    $msg = $msg . "Password must be more than 5 char legth<BR>";
    $status = "NOTOK";
  }

  if ($status == "OK") {

    // Retrieve username and password from database according to user's input, preventing sql injection
    $query = "SELECT * FROM affiliateuser WHERE (username = '" . mysqli_real_escape_string($con, $_POST['username']) . "') AND (password = '" . mysqli_real_escape_string($con, $_POST['password']) . "') AND (level = '" . mysqli_real_escape_string($con, "2") . "')";
    if ($stmt = mysqli_prepare($con, $query)) {

      /* execute query */
      mysqli_stmt_execute($stmt);

      /* store result */
      mysqli_stmt_store_result($stmt);

      $num = mysqli_stmt_num_rows($stmt);

      /* close statement */
      mysqli_stmt_close($stmt);
    }
    //mysqli_close($con);
    // Check username and password match

$sqlquery11="SELECT launch FROM affiliateuser where username = '$username'"; //fetching expiry date of username from table
$rec211=mysqli_query($con,$sqlquery11);
$row211 = mysqli_fetch_row($rec211);
$launch=$row211[0];

   if ($num == 1){

//$curdate=date("Y-m-d");
/*if($curdate > $expirydate)
{
	$errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>Hello User, Your Account Has Been Deactivated, As Your Account Is Expired. Please Check Below To Renew Your Account.</div>"; //printing error if found in validation
				
   $statusflag= "NOTOK";
}*/


if($launch == 0){
       session_start();
        // Set username session variable
        $_SESSION['username'] = $username;
         $_SESSION['phoneNumber'] = $phoneNumber;
        echo "<script>alert('Kindly activate your account to access our services.')</script>";
      echo "<script>window.location = 'verify'</script>";
    			
}
else{
    
session_start();
        // Set username session variable
        $_SESSION['username'] = $username;
		
       $username = $_SESSION['username'];
 $queryupdate = "SELECT * FROM affiliateuser where username = '$username'"; 
  $pointcall = mysqli_query($con,$queryupdate );
  $row = mysqli_fetch_assoc($pointcall);
  
  $status = $row['userstatus'];
  $prevtamount =$row['tamount']+$login_bonus;
  $session = $row['session'];
$update = "UPDATE affiliateuser SET session=$num, userstatus=1, tamount = $prevtamount WHERE username = '$username'";
if($status==0){
 mysqli_query($con,$update);   
 print "
			<script>alert('You have recieved $money $login_bonus daily login bonus!')</script>";
}




        // Jump to secured page
		print "
				<script language='javascript'>
					window.location = 'dashboard';
				</script>"; 
}
	 
}



else{
$errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i>Username And/Or Password Is Incorrect</div>"; //printing error if found in validation
				
}} 
else {
        
$errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>".$msg."</div>"; //printing error if found in validation
				
	 
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

    <title>SB Admin 2 - Register</title>

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
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <?php 
						if($_SERVER['REQUEST_METHOD'] == 'POST' && ($errormsg!=""))
						{
						print $errormsg;
						}
						?>
                                    <form class="user" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" name="username" aria-describedby="emailHelp"
                                                placeholder="Enter Username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" name="password" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <button type="submit"  class="btn btn-primary btn-user btn-block">
                                            Login
                                        </button>
                                     
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgotpassword">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="signup">Create an Account!</a>
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