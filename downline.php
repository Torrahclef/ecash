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
                    <div class="container-fluid">

       <p class="mb-4">
        Downline
        <small>Red = Unverified/Unpaid Account  AND Green = Verified/Paid Account</small>
      </p>
      
      
       <?php
		  $sql="SELECT fname,country,pcktaken FROM  affiliateuser WHERE username='".$_SESSION['username']."'";
		  if ($result = mysqli_query($con, $sql)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
       $row[0];
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

//customized Code Part 1 Start
//fetching level settings
  $qu="SELECT * FROM  packages where id = $pcktaken"; 
$re = mysqli_query($con,$qu);
while($r = mysqli_fetch_array($re))
{
	$pckid="$r[id]";
	$pckname="$r[name]";
	$pckprice="$r[price]";
	
	$pckcur="$r[currency]";
	$pcksbonus="$r[sbonus]";
	$l1="$r[level1]";
	$l2="$r[level2]";
	$l3="$r[level3]";
	$l4="$r[level4]";
	$l5="$r[level5]";
	$l6="$r[level6]";
	$l7="$r[level7]";
	$l8="$r[level8]";
	$l9="$r[level9]";
	$l10="$r[level10]";
	$l11="$r[level11]";
	$l12="$r[level12]";
	$l13="$r[level13]";
	$l14="$r[level14]";
	$l15="$r[level15]";
	$l16="$r[level16]";
	$l17="$r[level17]";
	$l18="$r[level18]";
	$l19="$r[level19]";
	$l20="$r[level20]"; 
//fetching elevl settings ends
//Customiezed Code Part 1 Ends
}	
	   ?>
             
                      
            
      
      
                  


                            <!-- Illustrations -->
                            <div class="card shadow mb-3">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">    Your Referral List </h6>
                                </div>
                              </div>

                            <div class="row">    
                            <!-- Approach -->
                              <div class="col-lg-3 mb-3">

                            <!-- Illustrations -->
                            <div class="card shadow mb-3">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Level 1</h6>
                                </div>
                                <div class="card-body">
                                    <?php 
  

$totalref=0;
$totalrefear=0;
$query="SELECT fname,email,doj,active,username,pcktaken FROM  affiliateuser where referedby = '".$_SESSION['username']."'"; 
  $result = mysqli_query($con,$query);
while($row = mysqli_fetch_array($result))
{
 $ac="$row[active]";
 $countusername="$row[username]";
	$pcktook="$row[pcktaken]";
	$qu="SELECT level1 FROM  packages where id = $pcktook"; 
$re = mysqli_query($con,$qu);
while($r = mysqli_fetch_array($re))
{
	$ll1="$r[0]";
}
if ($ac==1)
{
$status="success";
$totalrefear=$totalrefear+$ll1;
}
else
{
$status="danger";
}

  echo "<li class='list-group-item'>
                      <div class='media'>
                         <div class='media-body'>
                          <div><a href='#'>$row[fname]</a></div>
                            <div><a href='#'>$row[username]</a></div>
                         <small class='text-muted'>E-Mail : $row[email]</small> <br><small class='text-muted'>Registration Date : $row[doj] </small><br></small></div>
                        <div class='col-auto'>
                                            <i class='fa fa-circle text-$status'></i>
                                        </div>
</div>
                    </li> ";
  
  
  }

 
print "</br> <P><b>&nbsp;&nbsp;&nbsp; Total Earnings - </b>$pckcur $totalrefear</p>";
?>
                                </div>
                            </div>
                              </div>

                        
                            <!-- Approach -->
                              <div class="col-lg-3 mb-3">

                            <!-- Illustrations -->
                            <div class="card shadow mb-3">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Level 2</h6>
                                </div>
                                <div class="card-body">
                                  				  
<?php 
$totalrefear=0;
$query="SELECT fname,email,doj,active,username FROM  affiliateuser where referedby = '".$_SESSION['username']."'"; 
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
 $ac="$row[active]";
 $countusername="$row[username]";
 $query22="SELECT fname,email,doj,active,username,pcktaken FROM  affiliateuser where referedby = '$countusername'"; 
 $result22 = mysqli_query($con,$query22);

while($row22 = mysqli_fetch_array($result22))
{
 $ac2="$row22[active]";
 $countusername2="$row22[username]";
 $pcktook="$row22[pcktaken]";
	$qu="SELECT level2 FROM  packages where id = $pcktook"; 
$re = mysqli_query($con,$qu);
while($r = mysqli_fetch_array($re))
{
	$ll2="$r[0]";
}
if ($ac2==1)
{
$status2="success";
$totalrefear=$totalrefear+$ll2;
}
else
{
$status2="danger";
}


  echo "<li class='list-group-item'>
                      <div class='media'>
                        <div class='pull-right text-$status2 m-t-sm'> <i class='fa fa-circle'></i> </div>
                        <div class='media-body'>
                          <div><a href='#'>$row22[fname]</a></div>
                         <small class='text-muted'>E-Mail : $row22[email]</small> <br><small class='text-muted'>Registration Date : $row22[doj] </small><br>Referred By - $row[fname]</small></div>
                   <div class='col-auto'>
                                            <i class='fa fa-circle text-$status2'></i>
                                        </div>    

</div>
                    </li> ";
  
  
  }

 }
 print "</br> <P><b>&nbsp;&nbsp;&nbsp; Total Earnings - </b>$pckcur $totalrefear</p>";
?>
                                </div>
                            </div>
                              </div>
                        
                        
                            </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

          <?php include 'footer.php'; ?>