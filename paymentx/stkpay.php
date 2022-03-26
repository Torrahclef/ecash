<?php
include_once("../z_db.php");
// Inialize sessionuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
session_start();
// Check, if username session is NOT set then this page will jump to login page
if (!isset($_SESSION['username'])) {
  print "
				<script language='javascript'>
					window.location = 'index.php';
				</script>
			";
}
$username = $_SESSION['username'];
$queryupdate = "SELECT * FROM affiliateuser where username = '$username'";
$pointcall = mysqli_query($con, $queryupdate);
$row = mysqli_fetch_assoc($pointcall);
$mobile = $row['mobile'];
?>

<!doctype html>
<html lang="en">


<!-- Mirrored from demo.w3layouts.com/demos_new/template_demo/29-02-2020/captivate-liberty-demo_Free/232105078/web/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Feb 2021 19:19:40 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>EarnPro Agencies</title>
<style>

@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
	box-sizing: border-box;
}

body {
	background: #f6f5f7;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}

h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

button {
	border-radius: 20px;
	border: 1px solid #FF1520;
	background-color: #FF1520;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container{
	transform: translateX(-100%);
}

.overlay {
	background: #FF416C;
	background: -webkit-linear-gradient(to right, #2E8CC4, #1A6F18);
	background: linear-gradient(to right, #2E8CC4, #1A6F18);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

footer {
    background-color: #222;
    color: #fff;
    font-size: 14px;
    bottom: 0;
    position: fixed;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 999;
}

footer p {
    margin: 10px 0;
}

footer i {
    color: red;
}

footer a {
    color: #3c97bf;
    text-decoration: none;
}
</style>
<script>
   
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>

</head>

<body>
    <body oncontextmenu="return false;">
<h2>Mpesa Stk Payment <br>(PROXAT AGENCIES)</h2>
<div class="container" id="container">

	<div class="form-container sign-in-container col-md-6">
		<form action="mpesa_pay.php" method="post" onsubmit="return myFunction();">
		<img alt="" class="avatar" style="max-width:150px; padding-bottom: 50px;" src="../images/Mpesa-logo.jpg">
		
			<label>Phone Number</label>
			<input  type="number"  name="phone" value="<?php echo $mobile ?>" required readonly />
			<input type="hidden" name="username" value="<?php echo $username ?>" required>
			<label>Amount</label>
			<input type="number" name="amount" value="200" required readonly />
		
			<button>Pay Now</button>
			<div><p>Got the activation Code? <a href="../verify.php">Click Here!</a></p></div>
		</form>
		  <div>
		      
		       <div id="loadSpin"></div>
          <div id="loadMessage"></div>
		  </div>
	</div>
	<div class="overlay-container col-md-6">
		<div class="overlay">
	
			<div class="overlay-panel overlay-right">
				<p><b style="font-size: larger;"> You will receive an mpesa pop up.<br>
            Enter your pin to complete payment.</b></p>
             <span class="tillnumber">If online payment fails, kindly use Our Buy Goods Till Number for Manual Activation.</span>
                        <p>  <span style="color: red; font-size: initial; font-weight: bold;">(EARNPROS AGENCIES)</span><br>

                    Till Number: 5690045 <br>
                    Amount: KSH 200<br>
                    Enter Mpesa Pin<br>
            </p>
			</div>
		</div>
	</div>
</div>




    <style>
      .disabled {
        pointer-events: none;
      }

      .spinner {
        position: absolute;
        left: 50%;
        top: 50%;
        height: 60px;
        width: 60px;
        margin-left: -50px;
        margin-top: -50px;
        -webkit-animation: rotation .6s infinite linear;
        -moz-animation: rotation .6s infinite linear;
        -o-animation: rotation .6s infinite linear;
        animation: rotation .6s infinite linear;
        border-left: 6px solid rgba(0, 174, 239, .15);
        border-right: 6px solid rgba(0, 174, 239, .15);
        border-bottom: 6px solid rgba(0, 174, 239, .15);
        border-top: 6px solid rgba(0, 174, 239, .8);
        border-radius: 100%;
      }

      @-webkit-keyframes rotation {
        from {
          -webkit-transform: rotate(0deg);
        }

        to {
          -webkit-transform: rotate(359deg);
        }
      }

      @-moz-keyframes rotation {
        from {
          -moz-transform: rotate(0deg);
        }

        to {
          -moz-transform: rotate(359deg);
        }
      }

      @-o-keyframes rotation {
        from {
          -o-transform: rotate(0deg);
        }

        to {
          -o-transform: rotate(359deg);
        }
      }

      @keyframes rotation {
        from {
          transform: rotate(0deg);
        }

        to {
          transform: rotate(359deg);
        }
      }

      .alerter {
        position: absolute;
        left: 50%;
        top: 50%;
        margin-left: -100px;
        margin-top: 10px;
        color: green;
      }
    </style>
    <!-- //banner section -->

    <!-- homepage blog grids -->
    <!-- //homepage blog grids -->
 <script>
      function myFunction() {
        var element, name, arr;
        element = document.getElementById("loadSpin");
        name = "spinner";
        arr = element.className.split(" ");
        if (arr.indexOf(name) == -1) {
          element.className += " " + name;
        }
        var element1, name1, arr1;
        element1 = document.getElementById("loadMessage");
        name1 = "alerter";
        arr1 = element1.className.split(" ");
        if (arr1.indexOf(name1) == -1) {
          element1.className += " " + name1;
          element1.innerHTML = "<h6> Please Wait and check your phone..<br><strong>DO NOT CLOSE THIS WINDOW</strong></h6>";
        }

        var element2 = document.getElementById("disablediv");
        element2.classList.add("disabled");


      }
    </script>

    
    <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function() {
        scrollFunction()
      };

      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }
      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
    <!-- //move top -->

    <!-- javascript -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>

    <!-- libhtbox -->
    <script src="assets/js/lightbox-plus-jquery.min.js"></script>

    <!-- particles -->
    <script src='assets/js/particles.min.js'></script>
    <script src="assets/js/script.js"></script>
    <!-- //particles -->

    <!-- owl carousel -->
    <script src="assets/js/owl.carousel.js"></script>
    <script>
      $(document).ready(function() {
        var owl = $('.owl-carousel');
        owl.owlCarousel({
          margin: 10,
          nav: true,
          loop: false,
          responsive: {
            0: {
              items: 1
            },
            767: {
              items: 2
            },
            1000: {
              items: 3
            }
          }
        })
      })
    </script>

    <!-- disable body scroll which navbar is in active -->
    <script>
      $(function() {
        $('.navbar-toggler').click(function() {
          $('body').toggleClass('noscroll');
        })
      });
    </script>
    <!-- disable body scroll which navbar is in active -->

    <!-- bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?phone=254113931949&text=Hola%21%20from%20Earnpro." class="float" target="_blank">
<i class="fa fa-whatsapp my-float"></i>
</a>
<style>
    
    .float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#25d366;
	color:#FFF;
	border-radius:50px;
	text-align:center;
  font-size:30px;
	box-shadow: 2px 2px 3px #999;
  z-index:100;
}

.my-float{
	margin-top:16px;
}
    
</style>

<footer>
	<p>
You have made the right decision. You are just a step away from earning with ease.
	</p>
</footer>

  </body>
  </html>