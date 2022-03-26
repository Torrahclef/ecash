<?php

session_start();
        // Set username session variable
		
include_once("z_db.php");
$sql="SELECT maintain FROM  settings WHERE sno=0";
		  if ($result = mysqli_query($con, $sql)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        $main= $row[0];
    }
	if($main==1 || $main==3)
	{
	print "
				<script language='javascript'>
					window.location = 'maintain.php';
				</script>
			";
	}

}


$username = $_SESSION['username'];
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['pin_code']))
{

$pin_code = mysqli_real_escape_string($con, $_POST["pin_code"]);
$original = mysqli_fetch_row(mysqli_query($con, ("SELECT pin_code FROM pin WHERE pin_code='".$pin_code."'")));

if($pin_code==$original[0]){
    $res = mysqli_query($con, ("UPDATE affiliateuser SET active=1, launch=1, tamount =$wbonus WHERE username =  '".$username."'"));
//$res = mysqli_query($con, ("UPDATE affiliateuser SET  active=1, launch=1 where username = '".$username."'"));
$ress = mysqli_query($con, ("DELETE FROM pin WHERE pin_code='".$pin_code."'"));
echo "<script>alert('Account Activated Successfully!')</script>";
			echo "<script>window.location = 'dashboard'</script>";
}
   

elseif ($pin_code==!$original){
echo "<script>alert('Wrong Activation Code!')</script>";
			echo "<script>window.location = 'verify'</script>";
}
else{
 echo "<script>alert('Something Went Wrong!')</script>";
			echo "<script>window.location = 'verify'</script>";
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

    <title>Activate Account</title>

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
                                        <h1 class="h4 text-gray-900 mb-2">Activate Account</h1>
                                        <p class="mb-4">You have an activation code? Enter in the field below to continue.</p>
                                    </div>
                                    <?php 
						if($_SERVER['REQUEST_METHOD'] == 'POST' && ($errormsg!=""))
						{
						print $errormsg;
						}
						?>
                                    <form class="user"  action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail"  name="pin_code"  aria-describedby="emailHelp"
                                                placeholder="Enter Activation Code...">
                                        </div>
                                          <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Activate Account
                                        </button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="logout.php">Logout!</a>
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