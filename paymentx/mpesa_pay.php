<?php
include_once("mpesa.php");
if (isset($_POST)) {
    function getConnection()
    {

        $servername = "localhost";
        $username = "earnccge_userx";
        $password = "E4(}TJw++c*U";
        $dbname = "earnccge_supreme";
        $conn = null;
        try {
            $conn = new PDO("mysql:host=$servername;dbname=" . $dbname, $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        return $conn;
    }
    function getMobile($conn)
    {
        $mobile = null;
        try {
          $uname = $_POST['username'];
            $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
            $sql->execute([$uname]);
            if ($sql->rowCount() > 0) {
                $row = $sql->fetch(PDO::FETCH_ASSOC);
                $mobile = $row['mobile'];
            } else {
                //$no_phone2 = "Phone not found";
                $no_phone = "Invalid Phone Number Supplied!";
            }
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        return $mobile;
    }
    function getPackageCost($conn)
    {
        $cost = null;
        $package = null;
        try {
            $uname = $_POST['username'];
            $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
            $sql->execute([$uname]);
            if ($sql->rowCount() > 0) {
                $row = $sql->fetch(PDO::FETCH_ASSOC);
                $package = $row['pcktaken'];
            }
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        try {
            $query = $conn->prepare("SELECT * FROM packages WHERE id = ?");
            $query->execute([$package]);
            if ($query->rowCount() > 0) {
                $row = $query->fetch(PDO::FETCH_ASSOC);
                $cost = $row['price'];
            }
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        return $cost;
    }

    function initiatePayment($amount, $msisdn)
    {
        $BusinessShortCode = '7833749';
        $LipaNaMpesaPasskey = '4e8d71afd724e8ec335d2222cb627c3d10e6e03fe506c430f61c731ecf1138b8';
        $TransactionType = 'CustomerBuyGoodsOnline';
        $Amount =$amount ;
        $PartyA = $msisdn;
        $PartyB = '5831987';
        $PhoneNumber = $PartyA;
        $CallBackURL = 'https://earnpro.co.ke/paymentx/back.php';
        $AccountReference = 'CART3';
        $mpesa = new Mpesa();
        $result = $mpesa->STKPushRequest($BusinessShortCode, $LipaNaMpesaPasskey, $TransactionType, $Amount, $PartyA, $PartyB, $PhoneNumber, $CallBackURL, $AccountReference);
        return $result;
    }



    function getSTKStatus($checkoutID)
    {
        $BusinessShortCode = '7833749';
        $CheckoutRequestID = $checkoutID;
        $LipaNaMpesaPasskey = '4e8d71afd724e8ec335d2222cb627c3d10e6e03fe506c430f61c731ecf1138b8';
        $response = Mpesa::STKPushQuery($CheckoutRequestID, $BusinessShortCode, $LipaNaMpesaPasskey);
        return $response;
    }



    function makeSTKRequest()
    {
        $conn = getConnection();
        $mobile = getMobile($conn);
        $amount = getPackageCost($conn);
        $stkResponse = initiatePayment($amount, $mobile);
        $payArray = json_decode($stkResponse, true);
        $payObject = json_decode($stkResponse);
        if (array_key_exists("errorCode", $payArray)) {
            $notify =  $payObject->errorMessage;
            return $notify;
        } else {
            $checkoutID = $payObject->CheckoutRequestID;
            $sql = "UPDATE affiliateuser SET CheckoutRequestID = ? WHERE mobile = ?";
            $query = $conn->prepare($sql);
            $query->execute([$checkoutID, $mobile]);
            while (true) {
                $stkStatus = getSTKStatus($checkoutID);
                $statusArray = json_decode($stkStatus, true);
                $statusObject = json_decode($stkStatus);
                if (!array_key_exists("errorCode", $statusArray)) {
                    if (array_key_exists("ResponseCode", $statusArray)) {
                        $resultcode = $statusObject->ResultCode;
                        if ($resultcode == 0) {

                            print '<h2>Payment Successful and account is Active Now LOGIN</h2>';
                            
                            session_start();
                            $_SESSION['username'] = $_POST['username'];
                            header("Location: https://earnpro.co.ke/launch.php");
                            die();
           // $sql = "UPDATE affiliateuser SET active = ?, launch=? WHERE username = ?";
           // $query = $conn->prepare($sql);
          //  $query->execute([1, 1, $_POST['username']]);
              //             sleep(3);
                       print "
                                 <script language='javascript'>
                                   window.location = 'https://earnpro.co.ke/dashboard.php';
                                 </script>";
                            return;
                        } elseif ($resultcode == 1) {
                            print '<h2>User balance is insufficient for the transaction</h2>';
                            sleep(3);
                            echo "
                          <script language='javascript'>
                              window.location = 'https://earnpro.co.ke/index10.php';
                         </script>";
                            return;
                        } elseif ($resultcode == 1031) {
                            print '<h2>Request cancelled by user</h2>';
                            sleep(3);
                            echo "<script language='javascript'>
                      window.location = 'https://earnpro.co.ke/index10.php';
                 </script>";
                            return;
                        } elseif ($resultcode == 1037) {
                            print '<h2>Transaction Request Timed out.</h2>';
                            sleep(3);
                            echo "<script language='javascript'>
                      window.location = 'https://earnpro.co.ke/index10.php';
                 </script>";
                            return;
                        } else {
                            print  '<h2>Transaction Cancelled!</h2>';
                            sleep(3);
                            echo "<script language='javascript'>
                      window.location = 'https://earnpro.co.ke/index10.php';
                 </script>";
                            return;
                        }
                    } else {
                        $notify =  '<h2>Kindly retry again or Use Manual activation. Thank you.</h2>';
                        return $notify;
                    }
                }
            }
        }
    }
    echo makeSTKRequest();
}
