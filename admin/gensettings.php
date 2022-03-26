<?php

//Authentify
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
<title>General Settings</title>
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
            <p><strong>Important Instructions </strong> <b>1.</b> All Details Are Mandatory.</p>
          </header>
          <section class="scrollable wrapper">
            <div class="row">
              
              <div class="col-sm-12 portlet">
                <section class="panel panel-success portlet-item">
                  <header class="panel-heading"> General Settings </header>
                  <section class="panel panel-default">
                  <header class="panel-heading bg-light">
                    <ul class="nav nav-tabs nav-justified">
                      <li class="active"><a href="#home" data-toggle="tab"> Settings</a></li>
                      <?php 
					  
					  $query="SELECT * FROM  settings"; 
 
 
 $result = mysqli_query($con,$query);
$i=0;
while($row = mysqli_fetch_array($result))
{
	
	$email="$row[email]";
	$wlink="$row[wlink]";
	$ide="$row[invoicedetails]";
	$coname="$row[coname]";
	$fblink="$row[fblink]";
	$tlink="$row[twitterlink]";
	$pid="$row[paypalid]";
	$sno="$row[sno]";
	$ftrtext="$row[footer]";
	$hdrtext="$row[header]";
	$maintain="$row[maintain]";
        $blog_status="$row[blog_status]";
	$payzaid="$row[payzaid]";
	$solidtrustid="$row[solidtrustid]";
	$solidbuttonid="$row[solidbutton]";
	}
					  
					  ?>  
                    </ul>
                  </header>
                  <div class="panel-body">
                    <div class="tab-content">
                      <div class="tab-pane active" id="home">
					  
					  
					  <div class="panel-body">
                    <form action="updategensettings.php" method="post">
					
					
                      <div class="form-group">
					 
					  
                        <label>Website Link (Where This Script Is Hosted)</label>
                        <input type="text" value="<?php print $wlink ?>" class="form-control" placeholder="http://www.yourwebsite.com/user/ | Enter url on which this script to be hosted. Invalid link may effect website working " name="wlink" >
                      </div>
					  <input type="hidden" value="<?php print $sno ?>"  name="sno">
					  <div class="form-group">
                        <label>Company Name</label>
                        <input type="text" value="<?php print $coname ?>" class="form-control" placeholder="Enter Company Name To Be Used On Invoice." name="coname">
                      </div>
                      <div class="form-group">
                        <label>Company Full Address</label>
                        <input type="textarea" value="<?php print $ide ?>" class="form-control" placeholder="To be Used On Invoice" name="codetail">
                      </div>
					  
					  <div class="form-group">
                        <label>Admin Email</label>
                        <input type="email" value="<?php print $email ?>" class="form-control" placeholder="For Account information purpose." name="coemail" >
                      </div>
					  
					  
					  <div class="form-group">
					  <label>Enable Paypal Gateway </label>
					  <select name="alwdpaypal" required>
					  <option value=''>Select</option>
						<option value='1'>Yes</option>
						<option value='0'>No</option>
						
						</select>
					  <br/>
                        <label>Paypal Email</label>
                        <input type="email" value="<?php print $pid ?>" class="form-control" placeholder="To Receive Payments." name="payemail" >
						Instructions : Update your IPN settings in selling tools : 
						Set Notification url : www.yourwebsite.com/user/success.php?method=PAYPAL
						Please follow setup instructions on image given in package named as : paypal_ipn _setting.jpg
                      </div>
					  
					  <div class="form-group">
					  <label>Enable Payza Gateway </label>
					  <select name="alwdpayza" required>
					  <option value=''>Select</option>
						<option value='1'>Yes</option>
						<option value='0'>No</option>
						
						</select>
					  <br/>
                        <label>Payza Merchant ID</label>
                        <input type="text" value="<?php print $payzaid ?>" class="form-control" placeholder="To Receive Payments." name="payzaid" >
                      </div>
					  
					  <div class="form-group">
					  <label>Enable Solid Trust Pay Gateway </label>
					  <select name="alwdsolid" required>
					  <option value=''>Select</option>
						<option value='1'>Yes</option>
						<option value='0'>No</option>
						Please follow setup instructions on image given in package named as : how-to-setup-solidtrustpay-ipn.png
						</select>
					  <br/>
                        <label>SolidTrustPay Merchand Id</label>
                        <input type="text" value="<?php print $solidtrustid ?>" class="form-control" placeholder="To Receive Payments." name="solidid" >
                      </div>
					  
					  <div class="form-group">
                        <label>SolidTrustPay Button Password (Secondary Password)</label>
                        <input type="text" value="<?php print $solidbuttonid ?>" class="form-control" placeholder="To Receive Payments." name="solidbuttonid" >
                      </div>
					  <div class="form-group">
					  <label>Enable Cash on delivery Pay Gateway </label>
					  <select name="alwdcash" required>
					  <option value=''>Select</option>
						<option value='1'>Yes</option>
						<option value='0'>No</option>
						
						</select>
					  <br/>
                        
                      </div>
					  
					  
					  <div class="form-group">
                        <label>Allowed Payment Options (To Fulfil Payment requests) </label>
                        
						<select name="alwdpayment">
						<option value='1'>PayPal (Manual)</option>
						<option value='2'>To Bank(Manual)</option>
						<option value='3'>Both</option>
						</select>
                      </div>
					  
					  <div class="form-group">
                        <label>Facebook Page Link</label>
                        <input type="text" value="<?php print $fblink ?>" class="form-control" placeholder="Including http://fb.com/username" name="fblink" >
                      </div>
					  <div class="form-group">
                        <label>Twitter Link</label>
                        <input type="text" value="<?php print $tlink ?>" class="form-control" placeholder="Whole Link including http://twitter.com/username" name="twitterlink" >
                      </div>
					  <div class="form-group">
                        <label>Header Text</label>
                        <input type="text" value="<?php print $hdrtext ?>" class="form-control" placeholder="To update above Logo at left corner." name="hdrtext" >
                      </div>
					  <div class="form-group">
                        <label>Footer Text (Leave Blank To Show Nothing )</label>
                        <input type="text" value="<?php print $ftrtext ?>" class="form-control" placeholder="To show text on every page" name="ftrtext" >
                      </div>
                                          
                        <div class="form-group">
					 
					  
                        <label>Current Blog Status</label>
                        <input type="text" value="<?php if ($blog_status==1) { print "Blog is enabled for users"; } else  { print "Blog Disabled For Members"; }?>" class="form-control" name="blog_status" disabled >
                      </div>
					  <div class="list-group-item">
		  <label>
         Blog Status : 
		  <select name="blog_status">
		  <option value='0'>Dissable</option> 
		  <option value='1'>Enable</option> 
</select>
</label> 
</div>                    
                                          
					  <div class="form-group">
					 
					  
                        <label>Current Website Status</label>
                        <input type="text" value="<?php if ($maintain==0) { print "Website Is Live For Users"; } else if ($maintain==1) { print "Website Is Under Maintenance And Login Is Disabled For Members";} else if ($maintain==2) { print "Website Is Under Maintenance And Registrations Are Disabled For Members";} else if ($maintain==3) { print "Website Is Under Maintenance, Both Registrations And Login Are Disabled For Members";}?>" class="form-control" name="wlink" disabled >
                      </div>
					  <div class="list-group-item">
		  <label>
          Website Status : 
		  <select name="maintain">
		  <option value='0'>Go Live</option> 
		  <option value='1'>Disable Login</option> 
		  <option value='2'>Disable Sign Up</option> 
		  <option value='3'>Disable Both</option> 
</select>
</label> 
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