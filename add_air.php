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
                 

                    <!-- Topbar Search -->
                   

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    
                     
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
                                <a class="dropdown-item" href="profile.php">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.php" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                 <!-- DataTales Example -->
                   <div class="col-lg-8 mb-4">

                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Buy Airtime</h6>
                        </div>
                        <div class="card-body">
                           
                        <div class="" style=" padding: 20px;"><p><span style="color:red;">Please Make Payment to the till number  below:</span><br>
                              <b>TILL NAME:</b> Earnpros Agencies<br>
                             <b> TILL NO: </b> 5690045
                           
                          </p>
                          <p style="color:green;">Purchase airtime with us at 15% discount.  Only safaricom provided at the moment</p></div>
                          
              <hr>
			
				 <?php
           $status = "OK"; //initial status
$msg="";
           if(ISSET($_POST['save'])){
$user_id = mysqli_real_escape_string($con,$_POST['user_id']);
 $amount = mysqli_real_escape_string($con,$_POST['amount']);
  $network= mysqli_real_escape_string($con,$_POST['network']);
  $mpesa= mysqli_real_escape_string($con,$_POST['mpesa']);
  
  
  
		
 
 if ( strlen($amount) == 0 ){
$msg=$msg."Amount must not be empty.<BR>";
$status= "NOTOK";}
if ( strlen($network) < 1 ){
$msg=$msg."Network Must Be More Than 1 Char Length.<BR>";
$status= "NOTOK";}
 if ( strlen($mpesa) < 3 ){
$msg=$msg."Mpesa Code Must Be More Than 3 Char Length.<BR>";
$status= "NOTOK";}
/*$uploads_dir = 'uploads';

        $tmp_name = $_FILES["ufile"]["tmp_name"];
        // basename() may prevent filesystem traversal attacks;
        // further validation/sanitation of the filename may be appropriate
        $name = basename($_FILES["ufile"]["name"]); 
        $random_digit=rand(0000,9999);
        $new_file_name=$random_digit.$name;
        
        move_uploaded_file($tmp_name, "$uploads_dir/$new_file_name");
*/
if($status=="OK")
{
$qb=mysqli_query($con,"INSERT INTO airtime (user_id, amount, network, mpesa) VALUES ('$user_id', '$amount', '$network', '$mpesa')");
 

		
		if($qb){
		    	$errormsg= "
<div class='alert alert-success'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Success : </br></strong>Airtime Request Sent Successfully.</div>"; //printing error if found in validation

		}
	}
        
        elseif ($status!=="OK") {
            $errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>".$msg."</div>"; //printing error if found in validation
		
        
    }
    else{
			$errormsg= "
<div class='alert alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Please Fix Below Errors : </br></strong>Some Technical Glitch Is There. Please Try Again Later Or Ask Admin For Help. </div>"; //printing error if found in validation
				
	 
		}
           }
           ?>
                         
                 
                 
                    <div class="panel-body">
                       <?php
if($_SERVER['REQUEST_METHOD'] == 'POST')
						{
						print $errormsg;
						}
   ?>
                      <form action="" method="post" enctype="multipart/form-data">
					<input type="hidden" name="todo" value="post">
                     
                        <?php
                        $query="SELECT username FROM affiliateuser where username = '".$_SESSION['username']."'";
		        $result = mysqli_query($con,$query);
                        
                {
                    $row = mysqli_fetch_array($result)
			?>
                        <input  type="hidden" value="<?php echo $row['username'] ?>" name="user_id">
                    <?php }?>
                      
                                       <div class="form-group">
                        <label>Amount</label>
                        <input type="number" name="amount" class="form-control" placeholder="Airtime Amount" required>
                      </div>     
                                           
                                     <div class="form-group">
		  <label>
                      Network  </label> 
                                         <select class="form-control" name="network">
		  <?php $query="SELECT id,air_net FROM network";   
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
	$id="$row[id]";
	$air_net="$row[air_net]";
	

  print "<option value='$air_net'>$air_net</option>";
  
  }
  ?>
</select>
                 
</div>                      
				
                       <div class="form-group">
                        <label>MPesa Code</label>
                        <input type="text" name="mpesa" class="form-control" placeholder="MPesa Code" required>
                      </div>     
                      <button  type="submit" name="save" class="pull-right btn btn-primary">Request Airtime
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
              </form>
            </div>
          
                            
                            
                            
                        </div>
             </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


<?php include 'footer.php'; ?>
