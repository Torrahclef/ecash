<?php
$data = file_get_contents('php://input');
$logFile = "stkPushCallbackResponse.json";
$log = fopen($logFile, "a");
fwrite($log, $data);
$postData = json_decode($data);
$resultCode = $postData->Body->stkCallback->ResultCode;
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
if ($resultCode == 0) {
    $checkoutID = $postData->Body->stkCallback->CheckoutRequestID;
    $MerchantReq = $postData->Body->stkCallback->MerchantRequestID;
    $amount = $postData->Body->stkCallback->CallbackMetadata->Item[0]->Value;
    $transactionNo = $postData->Body->stkCallback->CallbackMetadata->Item[1]->Value;
    $balance=$postData->Body->stkCallback->CallbackMetadata->Item[2]->Name;
    if($balance=="Balance"){
        $transDate = $postData->Body->stkCallback->CallbackMetadata->Item[3]->Value;
        $phoneNumber = $postData->Body->stkCallback->CallbackMetadata->Item[4]->Value;
    }else{
        $transDate = $postData->Body->stkCallback->CallbackMetadata->Item[2]->Value;
        $phoneNumber = $postData->Body->stkCallback->CallbackMetadata->Item[3]->Value;
    }
   
    $arrData = array(
        "MerchantRequestID" => $MerchantReq, "CheckoutRequestID" => $checkoutID,
        "Amount" => $amount, "MpesaReceiptNumber" =>   $transactionNo, "TransactionDate" => $transDate,
        "PhoneNumber" => $phoneNumber,
    );
    
    
    
    try {
        $conn = getConnection();
        $sql = "SELECT * FROM affiliateuser WHERE  CheckoutRequestID = ? ORDER BY id DESC LIMIT 1";
        $query = $conn->prepare($sql);
        $query->execute([$checkoutID]);
        if ($query->rowCount() > 0) {
            $row = $query->fetch(PDO::FETCH_ASSOC);
            $userId = $row['Id'];
            $userBal=$row['tamount'];
            $username=$row['username'];
            saveTransaction($conn, $arrData, $userId, $userBal, $username);
        
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        fwrite($log, $error);
        fclose($log);
        die($error);
    }
}

function saveTransaction($conn, $arrData, $userId, $userBal,$username)
{
    try {
        $sql = "INSERT INTO mpesa_online (user_id, MerchantRequestID, CheckoutRequestID, Amount, MpesaReceiptNumber, TransactionDate, PhoneNumber, Username) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        $query = $conn->prepare($sql);
        $query->execute([$userId, $arrData['MerchantRequestID'], $arrData['CheckoutRequestID'], $arrData['Amount'], $arrData['MpesaReceiptNumber'], $arrData['TransactionDate'], $arrData['PhoneNumber'],$username]);


    
    /*try {
            $total = $arrData['Amount'] + $userBal;
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE Id = ?");
            $query->execute([$total,  $userId]);
        } 
        catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }*/
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
}
