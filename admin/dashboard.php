<?php
include_once ("z_db.php");
// Inialize session
session_start();
// Check, if username session is NOT set then this page will jump to login page
if (!isset($_SESSION['adminidusername'])) {
        print "
				<script language='javascript'>
					window.location = 'index.php';
				</script>
			";
}

?>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>MLM Admin Panel</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="css/app.v1.css" type="text/css" />
<link rel="stylesheet" href="js/calendar/bootstrap_calendar.css" type="text/css" />
<!--[if lt IE 9]> <script src="js/ie/html5shiv.js"></script> <script src="js/ie/respond.min.js"></script> <script src="js/ie/excanvas.js"></script> <![endif]-->
<div id="google_translate_element" align="right"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, multilanguagePage: true}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        
</head>
<body class="">
<section class="vbox">
  <header class="bg-white header header-md navbar navbar-fixed-top-xs box-shadow">
    <div class="navbar-header aside-md dk"> <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen" data-target="#nav"> <i class="fa fa-bars"></i> </a> <a href="dashboard.php" class="navbar-brand"><img src="images/logo.png" class="m-r-sm">Skyey</a> <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user"> <i class="fa fa-cog"></i> </a> </div>
  
    
    <ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user user">
      
      <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="thumb-sm avatar pull-left"> <img src="images/a0.jpg"> </span> <?php
		  $sql="SELECT fname FROM  affiliateuser WHERE username='".$_SESSION['adminidusername']."'";
		  if ($result = mysqli_query($con, $sql)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        print $row[0];
    }

}

   
	   
	   ?><b class="caret"></b> </a>
        <ul class="dropdown-menu animated fadeInRight">
          <span class="arrow top"></span>
          <li> <a href="profile.php">Profile</a> </li>
          <li class="divider"></li>
          <li> <a href="logout.php" data-toggle="ajaxModal" >Logout</a> </li>
        </ul>
      </li>
    </ul>
  </header>
  <section>
    <section class="hbox stretch">
      <!-- .aside -->
     <?php include'aside.php'; ?>
      <!-- /.aside -->
      <section id="content">
        <section class="hbox stretch">
          <section>
            <section class="vbox">
              <section class="scrollable padder">
                <section class="row m-b-md">
                  <div class="col-sm-6">
                    <h3 class="m-b-xs text-black">Dashboard</h3>
                    <small>Welcome back, <?php
		  $sql="SELECT fname FROM  affiliateuser WHERE username='".$_SESSION['adminidusername']."'";
		  if ($result = mysqli_query($con, $sql)) {

    /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        print $row[0];
    }

}

   
	   
	   ?>, <i class="fa fa-map-marker fa-lg text-primary"></i> <?php print $coun ?></small> </div>
                  <div class="col-sm-6 text-right text-left-xs m-t-md">
                    
                    <a href="#" class="btn btn-icon b-2x btn-default btn-rounded hover"><i class="i i-bars3 hover-rotate"></i></a> <a href="#nav, #sidebar" class="btn btn-icon b-2x btn-info btn-rounded" data-toggle="class:nav-xs, show"><i class="fa fa-bars"></i></a> </div>
                </section>
                <div class="row">
				<div class="col-lg-12">
                <section class="panel panel-default">
                  <div class="panel-body">
                    <?php $query="SELECT id,fname,email,doj,active,username,address,pcktaken,tamount FROM  affiliateuser where username = '".$_SESSION['adminidusername']."'"; 
 
 
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
                      
                      
  
                      
                  
     <?php
                      $result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where level = 2 and active = 1 OR active=0 OR launch=0");
$row = mysqli_fetch_row($result);
$totalusers = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <a href="users.php"><span class="m-b-xs h3 block text-white"><?php print $totalusers ?></span> <small class="text-muted">Total  Users</small></a> </div>
                          
                      </div>
                     
                         <div class="col-xs-6 dk">
                         <?php
$result = mysqli_query($con,"SELECT SUM(payment_amount) FROM payments where payment_status=1");
$row = mysqli_fetch_row($result);
$totalpay = $row[0];


   
?>
                               <div class="padder-v"><a href="paid-request.php"> <span class="m-b-xs h3 block text-white"><?php print $totalpay ?></span> <small class="text-muted">Total Payment to users</small> </a></div>
                    </div>
                  </footer>                  
                      
 <?php
$result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where level = 2 and active = 1");
$row = mysqli_fetch_row($result);
$totalusers = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <a href="active-users.php"><span class="m-b-xs h3 block text-white"><?php print $totalusers ?></span> <small class="text-muted">Total Active Users</small></a> </div>
                      </div>
                        
                        
                      <div class="col-xs-6 dk">
					 <?php
$result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where level = 2 and active = 0");
$row = mysqli_fetch_row($result);
$totalnon = $row[0];
?>
                          <div class="padder-v"> <a href="non-active.php"><span class="m-b-xs h3 block text-white"><?php print $totalnon ?></span> <small class="text-muted">Total Inactive Users </small> </a></div>
                      </div>
                      
                    </div>
                  </footer>
                               
 
                      <?php
                      $curdate=date("Y-m-d");
                      $result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where level = 2 and active = 1 AND launch=1 AND doj='$curdate'");
$row = mysqli_fetch_row($result);
$totaltoday = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <a href="active_today.php"><span class="m-b-xs h3 block text-white"><?php print $totaltoday ?></span> <small class="text-muted">Users Activated Today</small></a> </div>
                          
                      </div>
                     
                         <div class="col-xs-6 dk">
                         <?php
 $curdate=date("Y-m-d");
                      $result = mysqli_query($con,"SELECT count(*) FROM  affiliateuser where doj='$curdate'");
$row = mysqli_fetch_row($result);
$totalin = $row[0];


   
?>
                               <div class="padder-v"><a href="users-today.php"> <span class="m-b-xs h3 block text-white"><?php print $totalin ?></span> <small class="text-muted"> Users Registered Today</small> </a></div>
                    </div>
                  </footer>
                      <?php
$result = mysqli_query($con,"SELECT count(*) FROM  payments where payment_status = 0");
$row = mysqli_fetch_row($result);
$pendingpay = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <a href="payrequest.php"><span class="m-b-xs h3 block text-white"><?php print $pendingpay ?></span> <small class="text-muted">Total Unpaid Transactions</small> </div>
                      </div>
                      <div class="col-xs-6 dk">
					<?php
$result = mysqli_query($con,"SELECT count(*) FROM  payments where payment_status=1");
$row = mysqli_fetch_row($result);
$totalpaid = $row[0];
?>
<div class="padder-v"><a href="paid-request.php"><span class="m-b-xs h3 block text-white"><?php echo $totalpaid; ?></span> <small class="text-muted">Total Paid Transactions </small> </div>
                     
                      </div>
                      
                    </div>
                  </footer> 
                      
                      
                      

                       <?php
$result = mysqli_query($con,"SELECT count(*) FROM  blog where status=2");
$row = mysqli_fetch_row($result);
$rejectedblog = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <a href="blog.php"><span class="m-b-xs h3 block text-white"><?php print $rejectedblog ?></span> <small class="text-muted">Rejected Blogs</small></a> </div>
                      </div>
                      <div class="col-xs-6 dk">
					<?php
$result = mysqli_query($con,"SELECT count(*) FROM blog where status =0");
$row = mysqli_fetch_row($result);
$newblog = $row[0];


   
?>
                          <div class="padder-v"> <a href="blogreq.php"><span class="m-b-xs h3 block text-white"><?php print $newblog ?></span> <small class="text-muted">New Blog Requests </small></a> </div>

                     
                      </div>
                      
                    </div></footer>
                                   <?php
$result = mysqli_query($con,"SELECT count(*) FROM  blog where status=1");
$row = mysqli_fetch_row($result);
$approvedblog = $row[0];
?>
                 
 <?php
$result = mysqli_query($con,"SELECT SUM(tamount) FROM affiliateuser where launch=1 AND active=1");
$row = mysqli_fetch_row($result);
$pendingpay = $row[0];
?>
                  <footer class="panel-footer bg-info text-center">
                    <div class="row pull-out">
                      <div class="col-xs-6">
                          <div class="padder-v"> <span class="m-b-xs h3 block text-white"><?php print $pendingpay ?></span> <small class="text-muted">Total Active User Balance</small> </div>
                      </div>
                        
                      <?php
$result = mysqli_query($con,"SELECT SUM(amount) FROM mpesa_online");
$row = mysqli_fetch_row($result);
$pendingpay = $row[0];
?>
               
               <div class="col-xs-6 dk">
                          <div class="padder-v"> <span class="m-b-xs h3 block text-white"><?php print $pendingpay ?></span> <small class="text-muted">Total Online payments</small> </div>
                      </div>


</footer>
              
                  
                  
                  
                  
                  
                  
                  
                </section>
              </div>
                  
                </div>
                
                
              
            </section>
          </section>
    
          <!-- / side content -->
        </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a> </section>
    </section>
  </section>
</section>
<!-- Bootstrap -->
<!-- App -->
<script src="js/app.v1.js"></script>
<script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
<script src="js/charts/sparkline/jquery.sparkline.min.js"></script>
<script src="js/charts/flot/jquery.flot.min.js"></script>
<script src="js/charts/flot/jquery.flot.tooltip.min.js"></script>
<script src="js/charts/flot/jquery.flot.spline.js"></script>
<script src="js/charts/flot/jquery.flot.pie.min.js"></script>
<script src="js/charts/flot/jquery.flot.resize.js"></script>
<script src="js/charts/flot/jquery.flot.grow.js"></script>
<script src="js/charts/flot/demo.js"></script>
<script src="js/calendar/bootstrap_calendar.js"></script>
<script src="js/calendar/demo.js"></script>
<script src="js/sortable/jquery.sortable.js"></script>
<script src="js/app.plugin.js"></script>
</body>
</html>