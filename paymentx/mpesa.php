<?php

/**
 * Created by PhpStorm.
 * User: moses
 * Date: 15/10/17
 * Time: 4:59 PM
 */

class Mpesa
{
    public static function generateLiveToken()
    {
        $consumer_key = 'OwAMXZ7kAjXVv6R7OHDzbGZQtXMvqMCF';
        $consumer_secret = 'lfsMkGGoxOuDsHpb';
        if (!isset($consumer_key) || !isset($consumer_secret)) {
            die("please declare the consumer key and consumer secret as defined in the documentation");
        }
        $url = 'https://api.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        $credentials = base64_encode($consumer_key . ':' . $consumer_secret);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Authorization: Basic ' . $credentials)); //setting a custom header
        curl_setopt($curl, CURLOPT_HEADER, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);

        $curl_response = curl_exec($curl);

        return json_decode($curl_response)->access_token;
    }

    public function STKPushRequest($BusinessShortCode, $LipaNaMpesaPasskey, $TransactionType, $Amount, $PartyA, $PartyB, $PhoneNumber, $CallBackURL, $AccountReference)
    {
        $url = 'https://api.safaricom.co.ke/mpesa/stkpush/v1/processrequest';
        $token = self::generateLiveToken();
        $timestamp = '20' . date("ymdhis");
        $password = base64_encode($BusinessShortCode . $LipaNaMpesaPasskey . $timestamp);
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json', 'Authorization:Bearer ' . $token));
        $curl_post_data = array(
            'BusinessShortCode' => $BusinessShortCode,
            'Password' => $password,
            'Timestamp' => $timestamp,
            'TransactionType' => $TransactionType,
            'Amount' => $Amount,
            'PartyA' => $PartyA,
            'PartyB' => $PartyB,
            'PhoneNumber' => $PhoneNumber,
            'CallBackURL' => $CallBackURL,
            'AccountReference' => $AccountReference,
            'TransactionDesc' => $TransactionType
        );

        $data_string = json_encode($curl_post_data);

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($curl, CURLOPT_HEADER, false);
        $curl_response = curl_exec($curl);
        return $curl_response;
    }


    public static function STKPushQueryStatus($CheckoutRequestID, $BusinessShortCode, $LipaNaMpesaPasskey)
    {
        $token = self::generateLiveToken();
        $timestamp = '20' . date("ymdhis");
        $Password = base64_encode($BusinessShortCode . $LipaNaMpesaPasskey . $timestamp);
        $curl = curl_init();
        $url = 'https://api.safaricom.co.ke/mpesa/stkpushquery/v1/query';
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json', 'Authorization:Bearer ' . $token));
        $curl_post_data = array(
            'BusinessShortCode' => $BusinessShortCode,
            'Password' => $Password,
            'Timestamp' => $timestamp,
            'CheckoutRequestID' => $CheckoutRequestID
        );
        $data_string = json_encode($curl_post_data);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($curl, CURLOPT_HEADER, false);

        $curl_response = curl_exec($curl);

        return $curl_response;
    }
    public function getDataFromCallback()
    {
        $callbackJSONData = file_get_contents('php://input');
        return $callbackJSONData;
    }

    public static function STKPushQuery($CheckoutRequestID, $BusinessShortCode,$LipaNaMpesaPasskey ){
        $token=self::generateLiveToken();
        $timestamp='20'.date("ymdhis");
        $Password=base64_encode($BusinessShortCode.$LipaNaMpesaPasskey.$timestamp);
        $curl = curl_init();
        $url = 'https://api.safaricom.co.ke/mpesa/stkpushquery/v1/query';
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json','Authorization:Bearer '.$token));
        $curl_post_data = array(
            'BusinessShortCode' => $BusinessShortCode,
            'Password' => $Password,
            'Timestamp' => $timestamp,
            'CheckoutRequestID' => $CheckoutRequestID
        );
        $data_string = json_encode($curl_post_data);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($curl, CURLOPT_HEADER, false);

        $curl_response = curl_exec($curl);

        return $curl_response;
    }
    
}
