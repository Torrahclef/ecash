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
                 <!-- DataTales Example -->
                   <div class="col-lg-8 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Bank Information</h6>
                        </div>
                        <div class="card-body">
                      
                        <?php
	if(ISSET($_POST['save']))
{


// Collect the data from post method of form submission // 
$bankname=mysqli_real_escape_string($con,$_POST['bankname']);
$accountname=mysqli_real_escape_string($con,$_POST['accountname']);
$accountno=mysqli_real_escape_string($con,$_POST['accountno']);
$accounttype=mysqli_real_escape_string($con,$_POST['accounttype']);
//collection ends

$check=1;
if($check==1){

$status = "OK";
$msg="";
//validation starts
// if userid is less than 6 char then status is not ok

if ( strlen($bankname) < 3 ){
$msg=$msg."Bank Name Must Be More Than 3 Char Length.<BR>";
$status= "NOTOK";}	

if ( strlen($accountname) < 5 ){
    $msg=$msg."Account Name Must Be More Than 5 Char Length.<BR>";
    $status= "NOTOK";}	

    
if ( strlen($accountno) == 10 ){
$msg=$msg."Account Number Must Be 10 Char Length.<BR>";
$status= "NOTOK";}

if ( strlen($accounttype) < 3 ){
    $msg=$msg."Account Type Must contain Char Length.<BR>";
    $status= "NOTOK";}
}

if ($status=="OK") 
{

$query=mysqli_query($con,"update affiliateuser set bankname='$bankname', accountname='$accountname', accountno='$accountno', accounttype='$accounttype' where username='".$_SESSION['username']."'");


$errormsg= "
<div class='alert alert-success'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Success : </br></strong>Your Bank information has been updated.</div>"; //printing error if found in validation



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
       
       
                            
                      <?php 
					  
					  $query="SELECT * FROM  affiliateuser WHERE username='".$_SESSION['username']."'"; 
 
 
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$bankname="$row[bankname]";
	$accountname="$row[accountname]";
	$accountno="$row[accountno]";
	$accounttype="$row[accounttype]";
	};
			  ?>  
                 
                  <div class="panel-body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="home">
                      <?php
if($_SERVER['REQUEST_METHOD'] == 'POST')
						{
						print $errormsg;
						}
   ?>
					  
					  <div class="panel-body">
                    <form action="" method="post">
                      
					 <div class="form-group">
                        <label>Bank Name</label>
                        <input type="text" value="<?php print $bankname ?>" class="form-control" placeholder="Bank Name" name="bankname" >
                      </div>
					  <div class="form-group">
                        <label>Account Name</label>
                        <input type="text" value="<?php print $accountname ?>" class="form-control" placeholder="Account Name" name="accountname"  >
                      </div>
					  <div class="form-group">
                        <label>Account Number</label>
                        <input type="number" value="<?php print $accountno?>" class="form-control" placeholder="Account Number" name="accountno" >
                      </div>
					
					  
		
					  <div class="form-group">
                        <label>Account Type</label>
                        <input type="text" value="<?php print $accounttype?>" class="form-control" placeholder="Account Type" name="accounttype"  >
                      </div>
					
					  
					 
		</div>
                    <button  type="submit" name="save" class="btn btn-lg btn-primary btn-block">Update Bank</button>
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