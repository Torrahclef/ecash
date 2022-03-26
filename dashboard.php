<?php 
include 'head.php';
// Check, if username session is NOT set then this page will jump to login page


$payto=$_SESSION['username'];



if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wtd']))
{
$wtd=mysqli_real_escape_string($con,$_POST['wtd']);
$trx_pin=mysqli_real_escape_string($con,$_POST['trx_pin']);
$username=mysqli_real_escape_string($con,$_SESSION['username']);

$status = "OK"; //initial status
$msg="";



$r1=mysqli_query($con,"SELECT Id FROM affiliateuser WHERE username = '$username'");
$rw = mysqli_fetch_row($r1);
$uid = $rw[0];

$r2=mysqli_query($con,"SELECT pcktaken FROM affiliateuser WHERE username = '$username'");
$rs = mysqli_fetch_row($r2);
$pc = $rs[0];

$r3=mysqli_query($con,"SELECT mpay FROM packages WHERE id='$pc'");
$rf = mysqli_fetch_row($r3);
$mpay = $rf[0];

$r4=mysqli_query($con,"SELECT tamount FROM affiliateuser WHERE username = '$username'");
$rd = mysqli_fetch_row($r4);
$nr = $rd[0];

$rk=mysqli_query($con,"SELECT trx_pin FROM affiliateuser WHERE username = '$username'");
$ry = mysqli_fetch_row($rk);
$trx = $ry[0];

$fk=mysqli_query($con,"SELECT bankname FROM affiliateuser WHERE username = '$username'");
$fy = mysqli_fetch_row($fk);
$bk = $fy[0];

if($trx == 0){
      $msg=$msg."Make Sure You Have Created A Transaction Pin.<BR>";
$status= "NOTOK";
}
if($bk == 0){
    $msg=$msg."Make Sure You Have Updated Bank Details.<BR>";
$status= "NOTOK";
}

if($trx !== $trx_pin){
      $msg=$msg."Transaction Pin Not Correct.<BR>";
$status= "NOTOK";
}

if ($wtd>$nr) {
    $msg=$msg."You can not withdraw more than your current balance.<BR>";
$status= "NOTOK";
}

if($nr<$mpay){
$msg=$msg."You are not eligible for payment!!!! Contact support for more info.<BR>";
$status= "NOTOK";
}

if($status=="OK")
{
    $topay=$nr-$wtd;
$res11=mysqli_query($con,"update affiliateuser set tamount='$topay' where username='$username'");
$res1=mysqli_query($con,"INSERT INTO payments (userid, payment_amount, createdtime) VALUES ('$uid', '$wtd', NOW())");

if($res1)
{
$errormsg= "
<div class='alert alert-success'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Success : </br></strong>Your Payment Request of $$wtd Has Been Sent! Payment Will be Processed After Successful Verification On Time.</div>"; //printing error if found in validation

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

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        
                        
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
                                        
                                        


                                        <?php 
				
                $sqlquerytx="SELECT bankname FROM affiliateuser where username='".$_SESSION['username']."'"; //fetching website from databse
                $rect=mysqli_query($con,$sqlquerytx);
                $rowt = mysqli_fetch_row($rect);  
                $banke=$rowt[0];
                ?>

                <?php 

                                        if( $banke=='0' )
					{
                                            echo " 
  <a href='bankinfo.php' class='d-none d-sm-inline-block btn btn-sm btn-info shadow-sm'><i
                                class='fas fa-lock fa-sm text-white-50'></i>Update Bank Info</a>
";
                                      }
					
					else
					{
                                    
					}
					
                    ?> 
					





                        
                        
                        <?php 
		if($_SERVER['REQUEST_METHOD'] == 'POST')
						{
						print $errormsg;
						}
   
						?>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
  <?php $query="SELECT id,fname,email,doj,active,username,address,pcktaken,tamount FROM  affiliateuser where username = '".$_SESSION['username']."'"; 
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
 $aid="$row[id]";
 $regdate="$row[doj]";
 $name="$row[fname]";
 $address="$row[address]";
 $acti="$row[active]";
 $pck="$row[pcktaken]";
 $ear="$row[tamount]";
 
 }
 ?> 
 <?php $query="SELECT * FROM  packages where id=$pck"; 
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
 $pname="$row[name]";
 $pdetails="$row[details]";
 $pprice="$row[price]";
 $pcur="$row[currency]";
 $ptax="$row[tax]";
 $mpay="$row[mpay]";
 }
 @$left=$mpay-$ear; 
@$pro=(($ear/$mpay)*100);
 ?>
 
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card bg-primary text-white shadow">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-white text-uppercase mb-1">
                                                Total Balance</div>
                                            <div class="h5 mb-0 font-weight-bold text-white"><?php @print $pcur ?><?php echo $english_format_number = number_format($ear); ?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                     
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card bg-success text-white shadow">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <?php
$result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where referedby = '".$_SESSION['username']."'");
$row = mysqli_fetch_row($result);
$numrows = $row[0];

?>
                                            <div class="text-xs font-weight-bold text-white text-uppercase mb-1">
                                               Referrals (Direct)</div>
                                            <div class="h5 mb-0 font-weight-bold text-white"><?php print $numrows ?></div>
                                        </div>
                                         <div class="col-auto">
                                            <i class="fas fa-sync-alt fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card bg-warning text-white shadow">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                             <?php
 	  
$result11 = mysqli_query($con,"SELECT SUM(amount) FROM  transaction where paidfor='Blog Bonus' AND username='".$_SESSION['username']."'");
$row21 = mysqli_fetch_row($result11);
$numr1 = $row21[0];

?>
                                            
               
                                            <div class="text-xs font-weight-bold text-white text-uppercase mb-1">
                                              Blog Earnings</div>
                                            <div class="h5 mb-0 font-weight-bold text-white"><?php @print $pcur ?><?php echo $english_format_number = number_format($numr1); ?></div>
                                        </div>
                                         <div class="col-auto">
                                            <i class="fas fa-blog fa-2x text-gray-300"></i>
                                        </div>
                                    </div>                             
                                            
                                             
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                       
                        
                        
                        
                      
                        
                        
                        
                        
                    </div>

                  
                    
                   
                    
                    <div class="row">

                        <!-- Area Chart -->

                        <div class="col-lg-3 mb-4">

<!-- Illustrations -->
<div class="card shadow mb-4">
     <img class="img-fluid " style="width: 25rem;"
          src="img/2.jpg" alt="...">
    <div class="card-body">
      
          
 
         <p class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-weight: 700; font-size: 18px;text-align: center !important;">Login Bonus </p>
       
        <p>You Earn Ksh. 20 daily when you login. </p>
       
    </div>
</div>
</div>





                     
                        <div class="col-lg-3 mb-4">

<!-- Illustrations -->
<div class="card shadow mb-4">
     <img class="img-fluid " style="width: 25rem;"
          src="img/blog.png" alt="...">
    <div class="card-body">
      
          
 
         <p class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-weight: 700; font-size: 18px;text-align: center !important;">Blogging </p>
       
        <p>Earn up to Ksh. 1000 every minute . </p>
        <a href="add_news"><button class="btn btn-sm btn-primary shadow-sm form-control">Get Started</button></a>
    </div>
</div>
</div>

                        
                        
                         <div class="col-lg-3 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                 <img class="img-fluid " style="width: 25rem;"
                                             src="img/ref.jpg" alt="...">
                                <div class="card-body">
                                  
                                      
                             
                                     <p class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-weight: 700; font-size: 18px;text-align: center !important;">Referrals </p>
                                   
                                    <p>You earn on referrals. </p>
                                    
                                    <input type="text" value="<?php $query121="SELECT * FROM  settings"; $result121 = mysqli_query($con,$query121);
$i=0;
while($row121 = mysqli_fetch_array($result121))
{
	
	
	$wlink="$row121[wlink]";
	
	}
				
					  
        $pathu="/signup.php?aff=";		 print $wlink.$pathu.$_SESSION['username'] ?>" class="form-control" placeholder="Your Invite URL" name="inviteurl" id="input-text" >
                                   <button onClick="copy()" class="btn btn-sm btn-primary shadow-sm form-control">Copy Referral Link</button>
                                </div>
                            </div>
                            </div>
                        <!-- Pie Chart -->
                        
                        
                          <div class="col-lg-3 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                              
                                <div class="card-body  card bg-dark text-white shadow">
          
            <!-- /.box-header -->
            <div class="box-body">
              <div class="progress">
                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="<?php print $pro ?>%" aria-valuemin="0" aria-valuemax="100" style="width: <?php print $pro ?>%">
                  <span class="sr-only"><?php print $pro ?>% Complete (success)</span>
                </div>
              </div>
            <?php 
					
					
					if($left<=0)
					{
					$congomsg1="Congratulations you have reached minimum payout!!! You can submit request for payment. </br>";
					print $congomsg1;
					$congomsg2="<form action='"; 
					print $congomsg2;
					echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8");
					$congomsg3="' method='post'></br><input type='number' name='wtd' placeholder='Enter Amount' class='form-control'></br><input type='password' name='trx_pin' class='form-control' placeholder='Transaction Pin'><br><button type='button' class='btn btn-success btn-s-xs'  data-toggle='modal' data-target='#exampleModal'>Request Payment </button>  
                                      
 <!-- Modal -->
 <div class='modal fade' id='exampleModal' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>
   <div class='modal-dialog' role='document'>
     <div class='modal-content'>
       <div class='modal-header'>
         <h5 class='modal-title' id='exampleModalLabel' style='color:#686565 !important;'>Confirm</h5>
         <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
           <span aria-hidden='true'>&times;</span>
         </button>
       </div>
       <div class='modal-body' style='color:#686565 !important;'>
        Do you really want to perform this task?
       </div>
       <div class='modal-footer'>
         <button type='button' class='btn btn-secondary' data-dismiss='modal'>No</button>
         <button type='submit'  class='btn btn-primary'>Yes Please</button>
       </div>
     </div>
   </div>
 </div>
                
                    
                    </form> ";
					print $congomsg3;
					}
					
					else
					{
					print "You need to earn <b>$pcur $left</b> more to become eligible for payment. ";
					}
					
					?>
            </div>
            <!-- /.box-body -->
         
                                </div>
                            </div>

                            <!-- Approach -->
              

                        </div>
                        
                    </div>
                    
          
     
                    
                    <!-- Content Row -->
<div class="row">
        <!-- Left col -->
       <div class="col-lg-4 mb-4">

                      
                              
                                
				
                        
                     
                         <script>
 function copy() {
  var inputElement=document.getElementById('input-text');
  inputElement.select();
  document.execCommand('copy');
    alert("Copied to clipboard");
}
 </script>
                              </div>
       
</div>

                    <!-- Content Row -->
                  

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

          <?php include 'footer.php'; ?>