<?php 
include 'head.php';
// Check, if username session is NOT set then this page will jump to login page

?>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include 'aside.php'; ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
    <i class="fa fa-bars"></i>
</button>

<!-- Topbar Navbar -->
<ul class="navbar-nav ml-auto">

    <!-- Nav Item - Search Dropdown (Visible Only XS) -->


    <!-- Nav Item - Alerts -->


    <!-- Nav Item - Messages -->

<?php
$sql="SELECT fname,country,pcktaken FROM  affiliateuser WHERE username='".$_SESSION['username']."'";
if ($result = mysqli_query($con, $sql)) {

/* fetch associative array */
while ($row = mysqli_fetch_row($result)) {
$name=$row[0];
$coun=$row[1];
$pcktaken=$row[2];
$sql2="SELECT name FROM packages WHERE id=$pcktaken";
if ($result2 = mysqli_query($con, $sql2)) {
while ($row2 = mysqli_fetch_row($result2)) {

$pkname=$row2[0];
}
}

}

}



?>
    <!-- Nav Item - User Information -->
    <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $name;?></span>
            <img class="img-profile rounded-circle"
                src="img/undraw_profile.svg">
        </a>
        <!-- Dropdown - User Information -->
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
            aria-labelledby="userDropdown">
            <a class="dropdown-item" href="profile">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                Profile
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="bank">
                <i class="fas fa-key fa-sm fa-fw mr-2 text-gray-400"></i>
                Update Bank
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="logout" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
            </a>
        </div>
    </li>

</ul>

</nav>
<!-- End of Topbar -->
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        
                        
                        
                  
                        
                        
                        <?php 
		if($_SERVER['REQUEST_METHOD'] == 'POST')
						{
						print $errormsg;
						}
   
						?>
                    </div>

                    <!-- Content Row -->
           

                  

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Contact Us</h6>
                                </div>
                                <div class="card-body">
                                    <div class="box box-info">
            
              
           <?php
          
         if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['email']))
{
$subject=mysqli_real_escape_string($con,$_POST['subject']);
$subjetc=$subject."Registered Customer Query";
$message=mysqli_real_escape_string($con,$_POST['message']);
$email=mysqli_real_escape_string($con,$_POST['email']);
$from=$email;



//if(isset($todo) and $todo=="post"){

$status = "OK";
$msg="";
//validation starts
if ( strlen($subject) < 2 ){
$msg=$msg."Enter Subject.<BR>";
$status= "NOTOK";}

if ( strlen($message) < 2 ){
$msg=$msg."Enter Message.<BR>";
$status= "NOTOK";}

if ( strlen($email) < 2 ){
$msg=$msg."Enter Email.<BR>";
$status= "NOTOK";}

$sqlquery="SELECT email FROM settings where sno=0"; //fetching website from databse
$rec2=mysqli_query($con,$sqlquery);
$row2 = mysqli_fetch_row($rec2);
$to=$row2[0]; //assigning website address
//}

if ($status=="OK") 
{
// More headers
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: <'.$email.'>' . "\r\n";
mail($to,$subject,$message,$headers);
$errormsg= "
<div class='alert alert-success'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Success : </br></strong>Your Mail Has Been Sent! Our Representative Will Get Back To You.</div>"; //printing error if found in validation
}
else
{ 
$errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>".$msg."</div>"; //printing error if found in validation
				
	 
}
}
 ?>
  
              
              
                <body oncontextmenu="return false;">
              <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?> method="post">
                <div class="form-group">
                        <?php
                        $query="SELECT email FROM affiliateuser where username = '".$_SESSION['username']."'";
		        $result = mysqli_query($con,$query);
                        
                {
                    $row = mysqli_fetch_array($result)
			?>
                    <input type="email" class="form-control"  value="<?php echo $row['email'] ?>"  name="email" placeholder="Email to:" readonly="">
                 <?php }?>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" placeholder="Subject">
                </div>
                <div>
                  <textarea class="textarea" name="message" placeholder="Message"
                            style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
                    <div class="box-footer clearfix">
              <button  type="submit"  class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm pull-right">Send
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
              </form>
            </div>
          
                                    
                                </div>
                            </div>

                            <!-- Color System -->
                           

                        </div>

                       
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

          <?php include 'footer.php'; ?>