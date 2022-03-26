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
                         
                            
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                     
                                  <div class="card-body">
       
                                     <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Free Spin</h6>
                                </div>
                            
                              <table>
                                <td>
                                  <form wire:submit.prevent="validateAmount">
                                    <div class="input-group mb-0 p-r-4">
                                      <input type="hidden" id="amount" name="amount" class="form-control" value="100" style="background: none !important" maxlength="4" size="4">
                                      <div class="input-group-append">
                                        <button id="spin_button" class="btn btn-success">
                                          <span class="">SPIN NOW</span>
                                        </button>
                                      </div>
                                    </div>
                                  </form>
                                </td>
                                <tr>
                                  <td width="260" height="420" class="the_wheel" align="center" valign="center">
                                    <canvas id="canvas" width="320" height="320">
                                      <p style="color: white;" align="center">
                                        Sorry, your browser doesn't support Please try another.
                                      </p>
                                    </canvas>
                                  </td>
                                </tr>
                              </table>
                            </div>
                          </div>
                        </div>     
                                      
                                      
                                      
          </div>
                       
                            
                      
                      
                   
               
            <!-- End of Main Content -->
            
 <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="spin/js/Winwheel.min.js"></script>
                <script type="text/javascript" src="spin/js/TweenMax.min.js"></script>
                <script>
                  // Create new wheel object specifying the parameters at creation time.
                  let theWheel = new Winwheel({
                    'outerRadius': 150, // Set outer radius so wheel fits inside the background.
                    'innerRadius': 40, // Make wheel hollow so segments don't go all way to center.
                    'textFontSize': 14, // Set default font size for the segments.
                    'textOrientation': 'vertical', // Make text vertial so goes down from the outside of wheel.
                    'textAlignment': 'outer', // Align text to outside of wheel.
                    'numSegments': 18, // Specify number of segments.
                    'segments': // Define segments including colour and text.
                      [

                        <?php
                        /* Select Columns from table*/
                        $sql = "SELECT * FROM `segments`";
                        /* Query your SQL code to SQLDatabase */
                        $result = mysqli_query($con, $sql);
                        /* Find rows in table*/
                        $check = mysqli_num_rows($result);
                        if ($check > 0) {
                          while ($data = mysqli_fetch_assoc($result)) {
                            /* Print all of your data*/
                            echo "{
                                  'fillStyle':";
                            echo "'" . $data["color"] . "'";
                            echo ",
                                'text':";
                            echo "'" . $data["name"] . "'},";
                          }
                        }
                        ?>


                      ],
                    'animation': // Specify the animation to use.
                    {
                      'type': 'spinToStop',
                      'duration': 20, // Duration in seconds.
                      'spins': 20, // Default number of complete spins.
                      'callbackFinished': alertPrize,
                      'callbackSound': playSound, // Function to call when the tick sound is to be triggered.
                      'soundTrigger': 'pin' // Specify pins are to trigger the sound, the other option is 'segment'.
                    },
                    'pins': // Turn pins on.
                    {
                      'number': 18,
                      'fillStyle': 'gold',
                      'outerRadius': 4,
                    }
                  });
                  // Loads the tick audio sound in to an audio object.
                  let audio = new Audio('/spin/tick.mp3');

                  // This function is called when the sound is to be played.
                  function playSound() {
                    // Stop and rewind the sound if it already happens to be playing.
                    audio.pause();
                    audio.currentTime = 0;

                    // Play the sound.
                    audio.play();
                  }

                  // Vars used by the code in this page to do power controls.
                  let wheelPower = 0;
                  let wheelSpinning = false;

                  // -------------------------------------------------------
                  // Function to handle the onClick on the power buttons.
                  // -------------------------------------------------------
                  function powerSelected(powerLevel) {
                    // Ensure that power can't be changed while wheel is spinning.
                    if (wheelSpinning == false) {
                      // Reset all to grey incase this is not the first time the user has selected the power.
                      document.getElementById('pw1').className = "";
                      document.getElementById('pw2').className = "";
                      document.getElementById('pw3').className = "";

                      // Now light up all cells below-and-including the one selected by changing the class.
                      if (powerLevel >= 1) {
                        document.getElementById('pw1').className = "pw1";
                      }

                      if (powerLevel >= 2) {
                        document.getElementById('pw2').className = "pw2";
                      }

                      if (powerLevel >= 3) {
                        document.getElementById('pw3').className = "pw3";
                      }

                      // Set wheelPower var used when spin button is clicked.
                      wheelPower = powerLevel;

                      // Light up the spin button by changing it's source image and adding a clickable class to it.
                      document.getElementById('spin_button').src = "/spin/spin_on.png";
                      document.getElementById('spin_button').className = "clickable";
                    }
                  }

                  // -------------------------------------------------------
                  // Click handler for spin button.
                  // -------------------------------------------------------
                  function startSpin(angler) {
                    // Ensure that spinning can't be clicked again while already running.
                    if (wheelSpinning == false) {
                      // Based on the power level selected adjust the number of spins for the wheel, the more times is has
                      // to rotate with the duration of the animation the quicker the wheel spins.

                      theWheel.animation.spins = 3;

                      theWheel.animation.stopAngle = angler;

                      // Disable the spin button so can't click again while wheel is spinning.
                      document.getElementById('spin_button').disabled = true;
                      document.getElementById('amount').disabled = true;
                      document.getElementById('spin_button').innerHTML = "Wait...";
                      document.getElementById('spin_button').className = "btn btn-secondary"

                      // Begin the spin animation by calling startAnimation on the wheel object.
                      theWheel.startAnimation();

                      // Set to true so that power can't be changed and spin button re-enabled during
                      // the current animation. The user will have to reset before spinning again.
                      wheelSpinning = true;
                    }
                  }
                  // -------------------------------------------------------
                  // Function for reset segment.
                  // -------------------------------------------------------
                  function setSegment(index, value) {
                    theWheel.segments[index].text = value;
                    console.log(theWheel.segments[index]);
                  }


                  function resetSegments() {
                    <?php
                    /* Select Columns from table*/
                    $sql = "SELECT * FROM `segments`";
                    /* Query your SQL code to SQLDatabase */
                    $result = mysqli_query($con, $sql);
                    /* Find rows in table*/
                    $check = mysqli_num_rows($result);
                    if ($check > 0) {
                      while ($data = mysqli_fetch_assoc($result)) {
                        /* Print all of your data*/
                        echo "theWheel.segments['" . $data["id"] . "'].text = '" . $data["name"] . "';";
                        echo "theWheel.segments['" . $data["id"] . "'].fillStyle = '" . $data["color"] . "';";
                      }
                    }
                    ?>
                  }

                  function resetWheel() {
                    theWheel.stopAnimation(false); // Stop the animation, false as param so does not call callback function.
                    theWheel.rotationAngle = 0; // Re-set the wheel angle to 0 degrees.
                    theWheel.draw(); // Call draw to render changes to the wheel.
                    // Enable the spin button so can't click again while wheel is spinning.
                    document.getElementById('spin_button').disabled = false;
                    document.getElementById('amount').disabled = false;
                    document.getElementById('spin_button').innerHTML = "SPIN";
                    document.getElementById('spin_button').className = "btn btn-success"
                    wheelSpinning = false; // Reset to false to power buttons and spin can be clicked again.
                    theWheel.animation.stopAngle = null;
                  }

                  // -------------------------------------------------------
                  // Called when the spin animation has finished by the callback feature of the wheel because I specified callback in the parameters.
                  // -------------------------------------------------------
                  function alertPrize(indicatedSegment) {
                    // Just alert to the user what happened.
                    // In a real project probably want to do something more interesting than this with the result.
                    if (indicatedSegment.text == 'LOOSE TURN') {
                      alert('Sorry but you loose a turn.');
                    } else if (indicatedSegment.text == 'BANKRUPT') {
                      alert('Oh no, you have gone BANKRUPT!');
                    } else {
                      alert("You have won " + indicatedSegment.text);
                      resetWheel();
                    }
                    // Just alert to the user what happened.
                    // In a real project probably want to do something more interesting than this with the result.
                    if (indicatedSegment.text == 'Loose Turn') {
                      // alert('Sorry but you loose a turn.');
                      //  document.getElementById('bello').style.display='block';
                      $obj = document.getElementById("alert_prize");
                      $obj.setAttribute('class', 'alert alert-has-icon alert-warning');
                      $obj.innerHTML = "Sorry You have lost. Try again";
                      $obj.style.display = "block";
                    } else {
                      // alert("You have won " + indicatedSegment.text);
                      //document.getElementById('bello').style.display='block';
                      $obj = document.getElementById("alert_prize");
                      $obj.setAttribute('class', 'alert alert-has-icon alert-success');
                      $obj.innerHTML = "Congratulation you have won " + indicatedSegment.text;
                      $obj.style.display = "block";
                    }
                  }
                </script>
                <script>
                  jQuery(document).ready(function($) {
                    $("#spin_button").click(function(e) {
                      $.ajaxSetup({
                        headers: {
                          'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
                        }
                      });
                      e.preventDefault();
                      var formData = {
                        amount: jQuery("#amount").val(),
                        instance: 'Free',
                        username: '<?php echo $_SESSION['username']; ?>'
                      };
                      var type = "POST";
                      var ajaxurl = 'spin2/now.php';
                      $.ajax({
                        type: type,
                        url: ajaxurl,
                        data: formData,
                        dataType: 'json',
                        success: function(data) {
                          if (!data.success) {
                            alert(data.errors);
                          } else {
                            resetSegments();
                            setSegment(data.index, data.value);
                            startSpin(data.stepper);
                          }

                        },

                      });

                    });
                  });
                </script>
                <link rel="stylesheet" href="spin/css/main.css" type="text/css" />

<?php include 'footer.php'; ?>