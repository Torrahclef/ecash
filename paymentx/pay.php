<?php
include_once("../z_db.php");
// Inialize session
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
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
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
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400&amp;display=swap" rel="stylesheet">

  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style-liberty.css">
  <link rel="icon" type="image/png" href="../assets/images/download.png" />

</head>

<body>
  <script src="../../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
  <script>
    (function() {
      if (typeof _bsa !== 'undefined' && _bsa) {
        // format, zoneKey, segment:value, options
        _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
      }
    })();
  </script>
  <script>
    (function() {
      if (typeof _bsa !== 'undefined' && _bsa) {
        // format, zoneKey, segment:value, options
        _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
      }
    })();
  </script>
  <script>
    (function() {
      if (typeof _bsa !== 'undefined' && _bsa) {
        // format, zoneKey, segment:value, options
        _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
      }
    })();
  </script>
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'UA-149859901-1');
  </script>

  <script>
    window.ga = window.ga || function() {
      (ga.q = ga.q || []).push(arguments)
    };
    ga.l = +new Date;
    ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
    ga('require', 'eventTracker');
    ga('require', 'outboundLinkTracker');
    ga('require', 'urlChangeTracker');
    ga('send', 'pageview');
  </script>
  <script async src='../../../../../../js/autotrack.js'></script>

  <meta name="robots" content="noindex">

  <body>
    <link rel="stylesheet" href="../../../../../../assests/css/font-awesome.min.css">
    <!-- New toolbar-->
    <style>
      * {
        box-sizing: border-box;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
      }


      #w3lDemoBar.w3l-demo-bar {
        top: 0;
        right: 0;
        bottom: 0;
        z-index: 9999;
        padding: 40px 5px;
        padding-top: 70px;
        margin-bottom: 70px;
        background: #0D1326;
        border-top-left-radius: 9px;
        border-bottom-left-radius: 9px;
      }

      #w3lDemoBar.w3l-demo-bar a {
        display: block;
        color: #e6ebff;
        text-decoration: none;
        line-height: 24px;
        opacity: .6;
        margin-bottom: 20px;
        text-align: center;
      }

      #w3lDemoBar.w3l-demo-bar span.w3l-icon {
        display: block;
      }

      #w3lDemoBar.w3l-demo-bar a:hover {
        opacity: 1;
      }

      #w3lDemoBar.w3l-demo-bar .w3l-icon svg {
        color: #e6ebff;
      }

      #w3lDemoBar.w3l-demo-bar .responsive-icons {
        margin-top: 30px;
        border-top: 1px solid #41414d;
        padding-top: 40px;
      }

      #w3lDemoBar.w3l-demo-bar .demo-btns {
        border-top: 1px solid #41414d;
        padding-top: 30px;
      }

      #w3lDemoBar.w3l-demo-bar .responsive-icons a span.fa {
        font-size: 26px;
      }

      #w3lDemoBar.w3l-demo-bar .no-margin-bottom {
        margin-bottom: 0;
      }

      .toggle-right-sidebar span {
        background: #0D1326;
        width: 50px;
        height: 50px;
        line-height: 50px;
        text-align: center;
        color: #e6ebff;
        border-radius: 50px;
        font-size: 26px;
        cursor: pointer;
        opacity: .5;
      }

      .pull-right {
        float: right;
        position: fixed;
        right: 0px;
        top: 70px;
        width: 90px;
        z-index: 99999;
        text-align: center;
      }

      body {
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
      }

      body:before {
        content: '';
        position: fixed;
        width: 100vw;
        height: 100vh;
        background-image: url(https://earnpro.co.ke/images/bg10.png);
        background-position: center center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        -webkit-background-size: cover;
        background-size: cover;
        -webkit-filter: blur(1px);
        -moz-filter: blur(1px);
        filter: blur(1px);
      }

      .contact-form {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 400px;
        height: 800px;
        padding: 80px 40px;
        background: rgba(0, 0, 0, 0.5);
      }

      .avatar {
        position: absolute;
        width: 80px;
        height: 80px;
        border-radius: 50%;
        overflow: hidden;
        top: calc(-10px/2);
        left: 140px;
      }

      .contact-form h2 {
        margin: 0;
        padding: 0 0 20px;
        color: #fff;
        text-align: center;
        text-transform: uppercase;
      }

      .contact-form p {
        margin: 0;
        padding: 0;
        font-weight: bold;
        text-align: center;
        color: #fff;
      }

      .contact-form input {
        width: 100%;
        margin-bottom: 20px;
      }

      .contact-form input[type=mobile],
      .contact-form input[type=amount] {
        border: none;
        border-bottom: 1px solid #fff;
        background: transparent;
        outline: none;
        height: 40px;
        color: #fff;
        font-size: 16px;
      }

      .contact-form input[type=submit] {
        height: 30px;
        color: #fff;
        font-size: 15px;
        background: green;
        cursor: pointer;
        border-radius: 25px;
        border: none;
        outline: none;
        margin-top: 15%;
      }

      .contact-form a {
        color: #fff;
        font-size: 14px;
        text-align: center;
        font-weight: bold;
        text-decoration: none;
      }
     .manuallist{
         color:white;
     }
     .tillnumber{
         color:white;
     }


      @media (max-width: 992px) {
        #w3lDemoBar.w3l-demo-bar a.desktop-mode {
          display: none;

        }
      }

      @media (max-width: 767px) {
        #w3lDemoBar.w3l-demo-bar a.tablet-mode {
          display: none;

        }
      }

      @media (max-width: 568px) {
        #w3lDemoBar.w3l-demo-bar a.mobile-mode {
          display: none;
        }

        #w3lDemoBar.w3l-demo-bar .responsive-icons {
          margin-top: 0px;
          border-top: none;
          padding-top: 0px;
        }

        #right-sidebar,
        .pull-right {
          width: 90px;
        }

        #w3lDemoBar.w3l-demo-bar .no-margin-bottom-mobile {
          margin-bottom: 0;
        }
      }
    </style>

    </div>

    <!-- site header -->
    <header id="site-header" class="fixed-top">

    </header>
    <!-- //site header -->

    <!-- banner section -->
    <section id="home" class="banner">
      <div id="banner-bg-effect" class="banner-effect"><canvas class="particles-js-canvas-el" width="1349" height="361" style="width: 100%; height: 100%;"></canvas></div>
      <div class="contact-form">
        <img alt="" class="avatar" src="https://i.postimg.cc/zDyt7KCv/a1.jpg">
        <h2>Mpesa Stk Payment<br> (PROXAT AGENCIES)</h2>
        <form action="mpesa_pay.php" method="post" onsubmit="return myFunction();">

          <p>Phone Number</p><input type="text" name="phone" value="<?php echo $mobile ?>" required readonly>
          <p> </p><input type="hidden" name="username" value="<?php echo $username ?>" required>
          <p>Amount</p><input type="number" name="amount" value="500" required readonly>
          <input type="submit" name="submit" value="Pay now">
          <p> You will receive an mpesa pop up.<br>
            Enter your pin to complete payment</p><br><br>
            <p>
             <span class="tillnumber">If online payment fails, kindly use Our Buy Goods Till Number for Manual Activation</span>
             (EARNPROS AGENCIES)</span><br>
                <ul class="manuallist">
                    <li>Till Number: 5690045</li>
                    <li>Amount: KSH500</li>
                    <li>Enter Mpesa Pin</li>
                </ul>
            </p>
        </form>
      </div>
      </div>
      </div>
    </section>
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
          element1.innerHTML = "<h6>  Please Do not click refresh or leave this page,we are processing your transaction. You will be redirected automatically. If you find any error below then the transcation may have been successful.</h6>";
        }

        var element2 = document.getElementById("disablediv");
        element2.classList.add("disabled");


      }
    </script>


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
      }
    </style>
    <!-- //banner section -->

    <!-- homepage blog grids -->
    <!-- //homepage blog grids -->

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
    <script src="../assets/js/jquery-3.3.1.min.js"></script>

    <!-- libhtbox -->
    <script src="../assets/js/lightbox-plus-jquery.min.js"></script>

    <!-- particles -->
    <script src='../assets/js/particles.min.js'></script>
    <script src="../assets/js/script.js"></script>
    <!-- //particles -->

    <!-- owl carousel -->
    <script src="../assets/js/owl.carousel.js"></script>
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
    <script src="../assets/js/bootstrap.min.js"></script>


    <!--livehat -->
    <!--<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/60571a7e067c2605c0bab31d/1f1a3v0d5';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>-->
    <!--hii ni livechat-->

  </body>

  <div id="v-w3layouts"></div>
  <script>
    (function(v, d, o, ai) {
      ai = d.createElement('script');
      ai.defer = true;
      ai.async = true;
      ai.src = v.location.protocol + o;
      d.head.appendChild(ai);
    })(window, document, '../../../../../../../a.vdo.ai/core/v-w3layouts/vdo.ai.js');
  </script>


  <!-- Mirrored from demo.w3layouts.com/demos_new/template_demo/29-02-2020/captivate-liberty-demo_Free/232105078/web/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Feb 2021 19:19:56 GMT -->

</html>

































