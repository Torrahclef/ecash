 <aside class="bg-black aside-md hidden-print" id="nav">
        <section class="vbox">
          <section class="w-f scrollable">
            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-color="#333333">
              <div class="clearfix wrapper dk nav-user hidden-xs">
                <div class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="thumb avatar pull-left m-r"> <img src="images/a0.jpg"> <i class="on md b-black"></i> </span> <span class="hidden-nav-xs clear"> <span class="block m-t-xs"> <strong class="font-bold text-lt"><?php
		  $sql="SELECT fname,country FROM  affiliateuser WHERE username='".$_SESSION['adminidusername']."'";
		  if ($result = mysqli_query($con, $sql)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        print $row[0];
		$coun=$row[1];
    }

}

   
	   
	   ?></strong> <b class="caret"></b> </span> <span class="text-muted text-xs block">Art Director</span> </span> </a>
                  <ul class="dropdown-menu animated fadeInRight m-t-xs">
                    <span class="arrow top hidden-nav-xs"></span>
                    <li> <a href="profile.php">Profile</a> </li>
                    <li class="divider"></li>
                    <li> <a href="logout.php" data-toggle="ajaxModal" >Logout</a> </li>
                  </ul>
                </div>
              </div>
              <!-- nav -->
              <nav class="nav-primary hidden-xs">
                <div class="text-muted text-sm hidden-nav-xs padder m-t-sm m-b-sm">Start</div>
                <ul class="nav nav-main" data-ride="collapse">
                  <li class=""> <a href="dashboard.php" class="auto"> <i class="i i-statistics icon"> </i> <span class="font-bold">Dashboard</span> </a> 
				 
				  </li>
                  
                  <li > <a href="#" class="auto"> <span class="pull-right text-muted"> <i class="i i-circle-sm-o text"></i> <i class="i i-circle-sm text-active"></i> </span> <i class="i i-lab icon"> </i> <span class="font-bold">Website Configuration</span> </a>
                    <ul class="nav dk">
                      <li > <a href="gensettings.php" class="auto"> <i class="i i-dot"></i> <span>General Settings</span> </a> </li>
					  <li> <a href="emailsettings.php" class="auto"> <i class="i i-dot"></i> <span>E-Mail Settings</span> </a> </li>
                      
                      
                      
                      <li > <a href="pacsettings.php" class="auto"> <i class="i i-dot"></i> <span>Packages Settings</span> </a> </li>
					
                    </ul>
                  </li>
                  
                  <li > <a href="#" class="auto"> <span class="pull-right text-muted"> <i class="i i-circle-sm-o text"></i> <i class="i i-circle-sm text-active"></i> </span> <i class="i i-info icon"> </i> <span class="font-bold">Manage Blog</span> </a>
                    <ul class="nav dk">
                        <li > <a href="new_cat.php" class="auto"><i class="i i-dot"></i> <span>Manage Category</span> </a> </li>
                         <li > <a href="blogreq.php" class="auto"><i class="i i-dot"></i> <span>New Requests</span> </a> </li>
                        <li > <a href="blog.php" class="auto"><i class="i i-dot"></i> <span>Approved Blogs</span> </a> </li>
                            <li > <a href="rejblog.php" class="auto"><i class="i i-dot"></i> <span>Rejected Blogs</span> </a> </li>
                         <li > <a href="blogset.php" class="auto"><i class="i i-dot"></i> <span>Blog Setting</span> </a> </li>
                     <li > <a href="notifications.php" class="auto"><i class="i i-dot"></i> <span>Post Notifications</span> </a> </li>
                      
                    </ul>
                  </li>
                  
                  
               
                  
                  
				  <li > <a href="#" class="auto"> <span class="pull-right text-muted"> <i class="i i-circle-sm-o text"></i> <i class="i i-circle-sm text-active"></i> </span> <i class="fa fa-users"> </i> <span class="font-bold">Manage Users</span> </a>
                    <ul class="nav dk">
                      <li > <a href="non-active.php" class="auto"><i class="i i-dot"></i> <span>Inactive Users</span> </a> </li>
                      <li > <a href="active-users.php" class="auto"><i class="i i-dot"></i> <span>Active Users</span> </a> </li>
                      <li > <a href="active_today.php" class="auto"><i class="i i-dot"></i> <span>Users Activated Today</span> </a> </li>
                      <li > <a href="users-today.php" class="auto"><i class="i i-dot"></i> <span>Users Registered Today</span> </a> </li>
                      
                      <li > <a href="payments.php" class="auto"><i class="i i-dot"></i> <span>Paypal Payment Received </span> </a> </li>
					  <li > <a href="payrequest.php" class="auto"><i class="i i-dot"></i> <span>User's Payment Requests </span> </a> </li>
					    <li > <a href="paid-request.php" class="auto"><i class="i i-dot"></i> <span>User's Paid Requests </span> </a> </li>
					  <li > <a href="renewpaymentscod.php" class="auto"><i class="i i-dot"></i> <span>Account Renew Requests </span> </a> </li>
                    </ul>
                  </li>
                     <li > <a href="#" class="auto"> <span class="pull-right text-muted"> <i class="i i-circle-sm-o text"></i> <i class="i i-circle-sm text-active"></i> </span> <i class="i i-code icon"> </i> <span class="font-bold">Manage Activation Code</span> </a>
                    <ul class="nav dk">
                        <li > <a href="gen_pin.php" class="auto"><i class="i i-dot"></i> <span>Generate Code</span> </a> </li>
                        <li > <a href="allpin.php" class="auto"><i class="i i-dot"></i> <span>Activation Code List</span> </a> </li>
                      
                    </ul>
                  </li>
                  
               
				  
                </ul>
                <div class="line dk hidden-nav-xs"></div>
                
                
              </nav>
              <!-- / nav -->
            </div>
          </section>
          <footer class="footer hidden-xs no-padder text-center-nav-xs"> <a href="logout.php" data-toggle="ajaxModal" class="btn btn-icon icon-muted btn-inactive pull-right m-l-xs m-r-xs hidden-nav-xs"> <i class="i i-logout"></i> </a> <a href="#nav" data-toggle="class:nav-xs" class="btn btn-icon icon-muted btn-inactive m-l-xs m-r-xs"> <i class="i i-circleleft text"></i> <i class="i i-circleright text-active"></i> </a> </footer>
        </section>
      </aside>