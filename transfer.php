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
                        
                        
                        
                  

                    </div>

                    <!-- Content Row -->
           

                  

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">
                      
                        <?php
$sqlquery2="SELECT trx_pin FROM affiliateuser where username='".$_SESSION['username']."'"; //fetching website from databse
$rec5=mysqli_query($con,$sqlquery2);
@$row5 = mysqli_fetch_row($rec5);  
@$trx_pin = $row5[0];
                           ?>
     <?php 
			if($trx_pin==0)
					{
                                            echo " 
  <a href='create_pin.php' class='d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm'><i
                                class='fas fa-lock fa-sm text-white-50'></i> Create Transaction Pin</a>
";
                                      }
					
					else
					{
                                                
					}

                                        ?>                 
                            <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Send Money</h6>
                                </div>
                                <div class="card-body">


                                
                                    <div class="box box-info">
            
              
           <?php
          


          $user=$_SESSION['username'];



          if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wtd']))
          {
          $remail=mysqli_real_escape_string($con,$_POST['remail']);
          $wtd=mysqli_real_escape_string($con,$_POST['wtd']);
          $trx_pin=mysqli_real_escape_string($con,$_POST['trx_pin']);
          $username=mysqli_real_escape_string($con,$_SESSION['username']);
          
          $status = "OK"; //initial status
          $msg="";
          
          

          $rj=mysqli_query($con,"SELECT * FROM affiliateuser WHERE email = '$remail'");
          $ew= mysqli_fetch_row($rj);
          $user2 = $ew[0];
          

          $r1=mysqli_query($con,"SELECT Id FROM affiliateuser WHERE username = '$username'");
          $rw = mysqli_fetch_row($r1);
          $uid = $rw[0];
          
          $r4=mysqli_query($con,"SELECT tamount FROM affiliateuser WHERE username = '$username'");
          $rd = mysqli_fetch_row($r4);
          $amount1 = $rd[0];

             
          $r3=mysqli_query($con,"SELECT tamount FROM affiliateuser WHERE email = '$remail'");
          $rs = mysqli_fetch_row($r3);
          $amount2 = $rs[0];
          
          $rk=mysqli_query($con,"SELECT trx_pin FROM affiliateuser WHERE username = '$username'");
          $ry = mysqli_fetch_row($rk);
          $trx = $ry[0];
          
          $ree=mysqli_query($con,"SELECT email FROM affiliateuser where username = '".$_SESSION['username']."'");
          $rc = mysqli_fetch_row($ree);
          $toemail = $rc[0];
          

      
          if($trx == 0){
                $msg=$msg."Make Sure You Have Created A Transaction Pin.<BR>";
          $status= "NOTOK";
          }
        
          if($trx !== $trx_pin){
                $msg=$msg."Transaction Pin Not Correct.<BR>";
          $status= "NOTOK";
          }
          
          if ($wtd>$amount1) {
              $msg=$msg."You can not transfer more than your current balance.<BR>";
          $status= "NOTOK";
          }
          


          if($status=="OK")
          {
              $topay=$amount1-$wtd;
              $postpay=$amount2+$wtd;
          $res11=mysqli_query($con,"update affiliateuser set tamount='$topay' where username='$username'");
          $resv=mysqli_query($con,"update affiliateuser set tamount='$postpay' where email = '$remail'");
          $res1=mysqli_query($con,"INSERT INTO payments (userid, payment_amount, createdtime) VALUES ('$uid', '$wtd', NOW())");
          
          if($res1)
          {
            $subject1="Payment Sent Successfully";
            $message1='You have successfully transfered the sum of $ '.$wtd.' to '.$remail.'';
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
            $headers .= 'From: <'.$email.'>' . "\r\n";
            mail($toemail,$subject1,$message1,$headers);

            $subject2="New Payment Recieved";
            $message2='You just recieved a sum of $ '.$wtd.' from '.$toemail.'';
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
            $headers .= 'From: <'.$email.'>' . "\r\n";
            mail($remail,$subject2,$message2,$headers);

          $errormsg= "
          <div class='alert alert-success'>
                              <button type='button' class='close' data-dismiss='alert'>&times;</button>
                              <i class='fa fa-ban-circle'></i><strong>Success : </br></strong> Your transfer was sent successfully</div>"; //printing error if found in validation
          
          }
          else
          {
          $errormsg= "
          <div class='alert alert-danger'>
                              <button type='button' class='close' data-dismiss='alert'>&times;</button>
                              <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>Some Technical Glitch Is There. Please Try Again Later Or Ask Admin For Help. </div>"; //printing error if found in validation
                          
               
          }
          
          
          } 
          else {
                  
          $errormsg= "
          <div class='alert alert-danger'>
                              <button type='button' class='close' data-dismiss='alert'>&times;</button>
                              <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>".$msg."</div>"; //printing error if found in validation
                          
               
               
          }
          
          }
          
          ?>
          
  
              
              
                <body oncontextmenu="return false;">

                <?php
if($_SERVER['REQUEST_METHOD'] == 'POST')
						{
						print $errormsg;
						}
   ?>


              <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?> method="post">

              <div class="form-group">
                  <input type="number" class="form-control" name="wtd" placeholder="Amount">
                </div>
                <div class="form-group">
                        <input type="email" class="form-control" name="remail" placeholder="Recipent Email">
              
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" name="trx_pin" placeholder="Transaction Password">
                </div>
              
                    <div class="box-footer clearfix">
              <button  type="submit"  class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm pull-right">Send Money
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