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
                            <h6 class="m-0 font-weight-bold text-primary">View & Download Here</h6>
                        </div>
                      <ul class="list-group alt">
				  <!-- Started Fetching Downline Of User-->
					<?php $query="SELECT Id FROM  affiliateuser where username = '".$_SESSION['username']."'"; 
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
 $uid="$row[Id]";
}

$query2="SELECT * FROM download ORDER BY id DESC"; 
 
 
 $result2 = mysqli_query($con,$query2);

while($row2 = mysqli_fetch_array($result2))
{
 $title="$row2[title]";
 $id="$row2[id]";
 $date="$row2[date]";
  $ufile="$row2[ufile]";
 $date= $date= date("l jS \of F Y h:i:s A", strtotime($date));
 
  echo "<li class='list-group-item'>
                      <div class='media'> <span class='pull-left thumb-sm'></span>
                          <div class='media-body'>
                          <div>	 <a href='$url/admin/uploads/$ufile'><b>$row2[title]</b></a></div>
                         <small class='text-muted'><b>Posted</b> on $date </small> <br></div>
                   <div class='col-auto'>
                                           <a href='$url/admin/uploads/$ufile' class='btn btn-success btn-sm'>View</a> <a href='$url/admin/uploads/$ufile' class='btn btn-info btn-sm fa-fa-download' download>Download</a>
                                        </div>   
</div>
                    </li> ";
  
  //echo $row['fname'] . " " . $row['email'];
  //echo "<br>";
  }

 
 //if ($result = mysqli_query($con, $query)) {
 
 //mysqli_field_seek($result, 0);

    /* Get field information for all fields */
    //while ($finfo = mysqli_fetch_field($result)) {
	
	/* echo "<li class='list-group-item'>
                      <div class='media'> <span class='pull-left thumb-sm'><img src='images/a1.jpg' alt='John said' class='img-circle'></span>
                        <div class='pull-right text-success m-t-sm'> <i class='fa fa-circle'></i> </div>
                        <div class='media-body'>
                          <div><a href='#'>$finfo->fname</a></div>
                          <small class='text-muted'>E-Mail : $row[1] </small> <br><small class='text-muted'>E-Mail : $row[2] </small><br><small class='text-muted'>Date Of Joining : $row[3] </small></div>
                      </div>
                    </li> ";

        //printf("Name:     %s\n", $finfo->fname);
        //printf("E-Mail:    %s\n", $finfo->email);
        //printf("max. Len: %d\n", $finfo->doj);
        //printf("Flags:    %d\n", $finfo->active);
        //printf("Type:     %d\n\n", $finfo->type);
    }
    mysqli_free_result($result);
}

 
 /* if ($result = $con->query( $query)) {

    
   /* fetch row 
    $row = $result->fetch_row();
	echo "<li class='list-group-item'>
                      <div class='media'> <span class='pull-left thumb-sm'><img src='images/a1.jpg' alt='John said' class='img-circle'></span>
                        <div class='pull-right text-success m-t-sm'> <i class='fa fa-circle'></i> </div>
                        <div class='media-body'>
                          <div><a href='#'>$row[0]</a></div>
                          <small class='text-muted'>E-Mail : $row[1] </small> <br><small class='text-muted'>E-Mail : $row[2] </small><br><small class='text-muted'>Date Of Joining : $row[3] </small></div>
                      </div>
                    </li> ";

    //printf ("Name: %s  E-Mail: %s\n", $row[0], $row[1]);

    /* free result set*/
//$result->close();
//}
 //$i=0;
 //$num=$num1 - 1;
//while ($i < $num1)
//{
//$fname=mysqli_fetch_field($result,$num,"fname");
//$eemail=mysql_result($result,$num,"email");
//$ddoj=mysql_result($result,$num,"doj");
//$status=mysql_result($result,$num,"active");
//$i=$i+1;
//$num=$num-1;
//if ($active==1)
//{
//$status="Verified";
//}
//else
//{
//$status="Not Verified";
//}
//print "$fname";
//echo "	<tr><td>$i</td><td>$fname</td><td>$eemail</td><td class='price'>$ddoj</td><td class='total'>$status</td></tr>" ;


//} */
?>
<!-- End Fetching Downline Of User-->
                    
                    
                   
                  </ul>
          
                            
                            
                            
                        </div>
                    </div>

                </div>
             </div>
                <!-- /.container-fluid -->

          </div> 
            <!-- End of Main Content -->


<?php include 'footer.php'; ?>