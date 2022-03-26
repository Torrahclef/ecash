 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.php">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
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
                <div class="sidebar-brand-text mx-3"><?php print "$pkname"; ?> </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="dashboard">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                MLM
            </div>
   
           <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-money-check"></i>
                    <span>Finance</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="downline">Downline/Earnings</a>
                        <a class="collapse-item" href="payhistory">Payment History</a>
                        <a class="collapse-item" href="transfer">Send Money</a>
                    </div>
                </div>
            </li>
            
             <!-- Heading -->
             <div class="sidebar-heading">
                Addons
            </div>
             
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse1"
                    aria-expanded="true" aria-controls="collapse1">
                    <i class="fas fa-newspaper"></i>
                    <span>Blogging</span>
                </a>
                <div id="collapse1" class="collapse" aria-labelledby="heading1" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        
                   
                  <?php 
                  $query2 = "SELECT * FROM settings"; 
$pointcalla = mysqli_query($con,$query2 ); 
 $row = mysqli_fetch_assoc($pointcalla);
 $t =$row['blog_status'];
                 //$query="SELECT * FROM  settings where 'blog_status'=$t "; 
                   // $result = mysqli_query($con,$query);
        if ($t == 1){
    echo ' 
                    <a class="collapse-item" href="add_news">New Blog</a>
                   ';
               }
               else{
                   echo '';
               }
                  ?>     
                        
                        <a class="collapse-item" href="blog">Blog</a>
                        <a class="collapse-item" href="myblog">My Blog</a>
                         <a class="collapse-item" href="blogpay">Blog Payments</a>
                    </div>
                </div>
                 
               
            </li>
             
              
          
             
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                   <i class="far fa-flag"></i>
                    <span>Notification</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                    
                        <a class="collapse-item" href="notification">Notification</a>
                        <a class="collapse-item" href="contact">Send Email</a>
                       
                    </div>
                </div>
            </li>


            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
       

        </ul>