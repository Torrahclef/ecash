<?php 
include 'head.php';
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
                 <!-- DataTales Example -->
                   <div class="col-lg-8 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Profile Setting</h6>
                        </div>
                        <div class="card-body">
                      
                            
                            
                      <?php 
					  
					  $query="SELECT * FROM  affiliateuser WHERE username='".$_SESSION['username']."'"; 
 
 
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$name="$row[fname]";
	$add="$row[address]";
	$contry="$row[country]";
	$email="$row[email]";
	}
	
	$query121="SELECT * FROM  settings"; 
 
 
 $result121 = mysqli_query($con,$query121);
$i=0;
while($row121 = mysqli_fetch_array($result121))
{
	
	
	$wlink="$row121[wlink]";
	
	}
				
					  
		$pathu="/signup.php?aff=";			  ?>  
                 
                  <div class="panel-body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="home">
					  <?php 
						if($_SERVER['REQUEST_METHOD'] == 'POST' && ($status!=""))
						{
						print $errormsg;
						}
						?>
					  
					  <div class="panel-body">
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>" method="post">
                      
					  <div class="form-group">
					  <input type="hidden" name="todo" value="post">
                        <label>My Personal Invite URL</label>
                        <input type="text" value="<?php print $wlink.$pathu.$_SESSION['username'] ?>" class="form-control" placeholder="Your Invite URL" name="inviteurl" disabled>
                      </div>
					  
					  <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" value="<?php print $name ?>" class="form-control" placeholder="Full Name" name="fullname" disabled>
                      </div>
					  <div class="form-group">
                        <label>Address</label>
                        <input type="text" value="<?php print $add ?>" class="form-control" placeholder="Full Address" name="address" disabled >
                      </div>
					  <div class="form-group">
                        <label>Country</label>
                        <input type="text" value="<?php print $contry?>" class="form-control" placeholder="Full Country Name" name="contrydisplay" disabled>
                      </div>
					
					  
		
					  <div class="form-group">
                        <label>E-Mail</label>
                        <input type="text" value="<?php print $email?>" class="form-control" placeholder="Full Name" name="email"  disabled>
                      </div>
					
					  <input type="hidden" value=""  name="sno">
					  <div class="form-group">
                        <label>Password</label>
                        <input type="password" value="" class="form-control" placeholder="Alphnumeric Password" name="p1" required>
                      </div>
                      <div class="form-group">
                        <label>Password Again</label>
                        <input type="password" value="" class="form-control" placeholder="Alphanumeric Password Again" name="p2" required >
                      </div>
		</div>
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Update Settings</button>
                    </form>
                  </div>
					  
					  
                            
                            
                            
                        </div>
                    </div>

                </div>
             </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


<?php include 'footer.php'; ?>