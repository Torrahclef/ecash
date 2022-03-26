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
$toupdate =  mysqli_real_escape_string($con,$_GET['username']);
?>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>User Settings</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="css/app.v1.css" type="text/css" />
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

   
	   
	   ?> <b class="caret"></b> </a>
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
        <section class="vbox">
          <header class="header bg-white b-b b-light">
            <p><strong>Important Instructions </strong> <b>1.</b> All Details Are Mandatory. <b>2. </b> Enter 0 to disable the referral level. <b>3.</b> All amounts should be in integer (1) not decimal (1.0).</p>
          </header>
          <section class="scrollable wrapper">
            <div class="row">
              
              <div class="col-sm-12 portlet">
                <section class="panel panel-success ">
                       <?php 
					 $query="SELECT * FROM  affiliateuser where username='$toupdate' "; 
  
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$id="$row[Id]";
	$username="$row[username]";
	$pass="$row[password]";
	$address="$row[address]";
	$fname="$row[fname]";
	$email="$row[email]";
	$mobile="$row[mobile]";
	$active="$row[active]";
	$doj="$row[doj]";
	$country="$row[country]";
	$ear="$row[tamount]";
	$ref="$row[referedby]";
	$pck="$row[pcktaken]";
	$lprofile="$row[launch]";
	if($active==1)
	{
	$status="Active/Paid";
	}
	else if($active==0)
	{
	$status="UnActive/Unpaid";
	}
	else
	{
	$status="Unknown";
	}
	
	$qu="SELECT * FROM  packages where id = $pck"; 
 
 
 $re = mysqli_query($con,$qu);

while($r = mysqli_fetch_array($re))
{
	$pckid="$r[id]";
	$pckname="$r[name]";
	$pckprice="$r[price]";
	$pcktax="$r[tax]";
	$pckcur="$r[currency]";
	$pcksbonus="$r[sbonus]";
  }
	$total=$pckprice+$pcktax;
 
					  
		}			  ?>  
                  <header class="panel-heading"> General Settings |  <a href='deleteuser.php?username=<?php print $username ?>'>Delete User</a>  |</header>
                  <section class="panel panel-default">
                  <header class="panel-heading bg-light">
                    <ul class="nav nav-tabs nav-justified">
                      <ul class="active"><a href="#home" data-toggle="tab"><b> Settings</b></a>
                      <center><a href='launchprofile.php?username=<?php print $username?>'enter><b>Launch</b></a></center></li>
                      </ul> 
                      <?php 
					 $query="SELECT * FROM  affiliateuser where username='$toupdate' "; 
 
 
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$id="$row[Id]";
	$username="$row[username]";
	$pass="$row[password]";
	$address="$row[address]";
	$fname="$row[fname]";
	$email="$row[email]";
	$mobile="$row[mobile]";
	$active="$row[active]";
	$doj="$row[doj]";
	$country="$row[country]";
	$ear="$row[tamount]";
	$trx_pin="$row[trx_pin]";
	$ref="$row[referedby]";
	$pck="$row[pcktaken]";
	$lprofile="$row[launch]";
	if($active==1)
	{
	$status="Active/Paid";
	}
	else if($active==0)
	{
	$status="UnActive/Unpaid";
	}
	else
	{
	$status="Unknown";
	}
	
	$qu="SELECT * FROM  packages where id = $pck"; 
 
 
 $re = mysqli_query($con,$qu);

while($r = mysqli_fetch_array($re))
{
	$pckid="$r[id]";
	$pckname="$r[name]";
	$pckprice="$r[price]";
	$pcktax="$r[tax]";
	$pckcur="$r[currency]";
	$pcksbonus="$r[sbonus]";
  }
	$total=$pckprice+$pcktax;
 
					  
		}			  ?>  
                    </ul>
                  </header>
                  <div class="panel-body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="home">
					  
					  
					  <div class="panel-body">
                    <form action="updateusersettings.php" method="post">
					 <input type="hidden" value="<?php print $username ?>" name="username">
					<div class="form-group">
                        <label>User Active Status | 0 means unactive and 1 means active</label>
                        <input type="text" value="<?php print $active ?>" class="form-control" placeholder="Enter 0 or 1" name="act">
                      </div>
					  <div class="form-group">
                        <label>User Name</label>
                        <input type="text" value="<?php print $toupdate ?>" class="form-control" placeholder="Enter Username" name="us" disabled>
                      </div>
					  
                       
                        <input type="hidden" value="<?php print $toupdate ?>" class="form-control" placeholder="Enter Username" name="username">
                      
                      <div class="form-group">
                        <label>User Full Name</label>
                        <input type="text" value="<?php print $fname ?>" class="form-control" placeholder="Enter Full Name" name="fname">
                      </div>
					  <div class="form-group">
                        <label>Address</label>
                        <input type="textarea" value="<?php print $address ?>" class="form-control" placeholder="Address" name="address">
                      </div>
                      <div class="form-group">
                        <label>Username Password</label>
                        <input type="textarea" value="<?php print $pass ?>" class="form-control" placeholder="Alphnumeric password" name="password">
                      </div>
					  
					  <div class="form-group">
                        <label>User Email</label>
                        <input type="text" value="<?php print $email ?>" class="form-control" placeholder="email@host.com" name="email" >
                      </div>
					  
						<div class="form-group">
                        <label>Mobile</label>
                        <input type="text" value="<?php print $mobile ?>" class="form-control" placeholder="Like 10,20" name="mobile" >
                      </div>

						<div class="form-group">
                        <label>country</label>
                        <input type="text" value="<?php print $country ?>" class="form-control" placeholder="country" name="country" >
                      </div>
					  
					   <div class="form-group">
                        <label>Total Earnings</label>
                        <input type="text" value="<?php print $ear ?>" class="form-control" placeholder="Earnings" name="earnings" >
                      </div>
                      <?php
                      
                      $bbs= mysqli_query($con,"SELECT SUM(amount) FROM  transaction where paidfor='Blog Bonus' AND username='$toupdate'");
                      	 $row22 = mysqli_fetch_row($bbs);
$bb= $row22[0];

                      ?>
                      	   <div class="form-group">
                        <label>Blog Earnings</label>
                        <input type="text" value="<?php print $bb ?>" class="form-control" placeholder="Blog Earnings" name="blog" readonly >
                      </div>
					       <?php
                      
                      $babs= mysqli_query($con,"SELECT SUM(amount) FROM  transaction where paidfor='Article Bonus' AND username='$toupdate'");
                      	 $row22 = mysqli_fetch_row($babs);
$bbk= $row22[0];

                      ?>
                      	   <div class="form-group">
                        <label>Article Earnings</label>
                        <input type="text" value="<?php print $bbk ?>" class="form-control" placeholder="Article Earnings" name="article" readonly >
                      </div>
					  
					  
					  <div class="form-group">
                        <label>Referred By</label>
                        <input type="text" value="<?php print $ref ?>" class="form-control" placeholder="Referred By" name="refer"  >
                      </div>
                      
                      <div class="form-group">
                        <label>Transaction Pin</label>
                        <input type="text" value="<?php print $trx_pin ?>" class="form-control" placeholder="Transaction Pin" name="trx_pin" disabled >
                      </div>
					 <div class="form-group">
                      
					  <div class="form-group">
                        <label>Package Taken</label>
                        <input type="text" value="<?php print $pckname ?>" class="form-control" placeholder="Referred By" name="pck" disabled >
                      </div>
					 <div class="form-group">
                        <label>
            Select Package To Update/Edit : 
		  <select name="package">
		  <?php $query="SELECT id,name,price,currency,tax FROM  packages where active=1"; 
 
 
 $result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result))
{
	$id="$row[id]";
	$pname="$row[name]";
	$pprice="$row[price]";
	$pcur="$row[currency]";
	$ptax="$row[tax]";
$total=$pprice+$ptax;
  print "<option value='$id'>$pname | Price - $pcur $total </option>";
  
  }
  ?>
 
</select>
                      
                      
					  
					  
</div>
        
					  


					  
					  
					  
</div>
                      
                     <button type="submit" class="btn btn-lg btn-primary btn-block">I Have Filled And Checked All Details. Update/Edit Details For Me Now.</button>
                    </form>
                  </div>
					  
					  </div>
                      
                      
                      
                    </div>
                  </div>
                </section>
                </section>
                
              </div>
            </div>
          </section>
        </section>
        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a> </section>
    </section>
  </section>
</section>
<!-- Bootstrap -->
<!-- App -->
<script src="js/app.v1.js"></script>
<script src="js/jquery.ui.touch-punch.min.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/app.plugin.js"></script>
</body>
</html>