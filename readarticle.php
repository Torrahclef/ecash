<?php 
include 'head.php';
$toupdate =  mysqli_real_escape_string($con,$_GET['id']);
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
                         
                            
                            
          
           
		
                
                      
                      
                    <?php 
					 $query="SELECT * FROM  article where id='$toupdate' "; 
 
 
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$to="$row[id]";
	$title="$row[title]";
	$body="$row[body]";
	$status="$row[status]";
         $user_id="$row[user_id]";
	$date="$row[date]";
        $date= $date= date("l jS \of F Y h:i:s A", strtotime($date));

	
					  
		}			  ?>  
                 
                   
                
                      
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                     
                                  <div class="card-body">
            <div class="u-container-layout u-similar-container u-container-layout-3"><!--blog_post_image-->
              
              <div class="u-align-center u-container-style u-expanded-width u-group u-video-cover u-group-2">
                <div class="u-container-layout u-container-layout-4"><!--blog_post_header-->
                  <h2 class="u-blog-control u-custom-font u-font-montserrat u-text u-text-default u-text-4">
                    <a class="u-post-header-link" href="#"><!--blog_post_header_content--> <?php print $title ?><!--/blog_post_header_content--></a>
                  </h2><!--/blog_post_header--><!--blog_post_metadata-->
                  <div class="u-blog-control u-metadata u-text-grey-30 u-metadata-2"><!--blog_post_metadata_date-->
                      <span class="u-meta-date u-meta-icon"><!--blog_post_metadata_date_content-->Posted by <b><?php print $user_id ?></b> on <?php print $date ?> <!--/blog_post_metadata_date_content--></span><!--/blog_post_metadata_date-->
                  </div><!--/blog_post_metadata--><!--blog_post_content-->
                  <hr>
                  <div class="u-blog-control u-post-content u-text u-text-default u-text-5"><!--blog_post_content_content--><?php print $body ?><!--/blog_post_content_content--></div><!--/blog_post_content-->
                  
                   <hr>
                  <div class="fb-comments" data-href="readarticle.php?id=$id" data-width="" data-numposts="5"></div>
                </div>
              </div>
            </div>
          </div>
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