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
                            <h6 class="m-0 font-weight-bold text-primary">New Blog</h6>
                        </div>
                        <div class="card-body">
                           
                          <?php
           $status = "OK"; //initial status
$msg="";
           if(ISSET($_POST['save'])){
$user_id = mysqli_real_escape_string($con,$_POST['user_id']);
 $meta_keyword = mysqli_real_escape_string($con,$_POST['meta_keyword']);
  $meta_desc = mysqli_real_escape_string($con,$_POST['meta_desc']);
$title = mysqli_real_escape_string($con,$_POST['title']);
$category = mysqli_real_escape_string($con,$_POST['category']);
 $details = mysqli_real_escape_string($con,$_POST['body']);
           
 
 	
 
 if ( strlen($title) < 8 ){
$msg=$msg."Blog Title Must Be More Than 8 Char Length.<BR>";
$status= "NOTOK";}
 if ( strlen($details) < 8 ){
$msg=$msg."Blog detail Must Be More Than 8 Char Length.<BR>";
$status= "NOTOK";}
/*$uploads_dir = 'uploads';

        $tmp_name = $_FILES["ufile"]["tmp_name"];
        // basename() may prevent filesystem traversal attacks;
        // further validation/sanitation of the filename may be appropriate
        $name = basename($_FILES["ufile"]["name"]); 
        $random_digit=rand(0000,9999);
        $new_file_name=$random_digit.$name;
        
        move_uploaded_file($tmp_name, "$uploads_dir/$new_file_name");*/

if($status=="OK")
{
$qb=mysqli_query($con,"INSERT INTO blog (user_id, meta_keyword, meta_desc, title, category, details) VALUES ('$user_id', '$meta_keyword', '$meta_desc', '$title', '$category', '$details')");
 

		if($qb){
		    	$errormsg= "
<div class='alert alert-success'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <i class='fa fa-ban-circle'></i><strong>Success : </br></strong>Your blog has been submitted successfully.</div>"; //printing error if found in validation

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
                        <label>Meta Keywords</label>
                        <input type="text" name="meta_keyword" class="form-control" placeholder="Food, school, Love, etc" required>
                      </div>
                                            <div class="form-group">
                        <label>Meta Description</label>
                        <input type="text" name="meta_desc" class="form-control" placeholder="Short Description" required>
                      </div>
                                        <hr>
                         <div class="form-group">
                             <label>Title</label>
                  <input type="text" class="form-control" name="title" placeholder="Subject">
                </div>
                        
                        
                        <div class="form-group">
		  <label>
                      Blog Category  </label> 
                                         <select class="form-control" name="category">
		  <?php $query="SELECT id,cat_name FROM  blog_category";   
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
	$id="$row[id]";
	$cat_name="$row[cat_name]";
	

  print "<option value='$cat_name'>$cat_name</option>";
  
  }
  ?>
</select>
                 
</div>                      
                        
                          <div>
                              <label>Blog Details</label>
                  <textarea class="textarea" name="body" placeholder="Message"
                            style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                 <script>
                        CKEDITOR.replace( 'body' );
                </script>
                          </div>
                        
                    <div class="box-footer clearfix">
              <button  type="submit" name="save" class="pull-right btn btn-primary">Create Blog
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
              </form>
            </div>
             
                            
                            
                            
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


<?php include 'footer.php'; ?>