<?php

require_once 'Mpesa.php';


/**
 * Class MpesaPayOrder
 * @package App\Services\Mpesa
 */
class MpesaMakePayRequest extends Mpesa
{
    const MSISDN_PREFIX = '254';

    const PAYMENT_STATUSES = [
        "PENDING" => 'pending',
        "COMPLETED" => 'completed',
        "FAILED" => 'failed',
    ];

    public function payOrder($phoneNumber, $amount, $currency)
    {
        $body = json_encode([
            "ShortCode" => "600610",
            "CommandID" => "CustomerPayBillOnline",
            "Amount" => $amount,
            "Msisdn" => self::MSISDN_PREFIX . $phoneNumber,
            "BillRefNumber" => "account"
        ]);

        // @Todo - get access token from cache.
        return $this->callMepsa(
            '/mpesa/c2b/v1/simulate',
            'POST',
            [
                'setBearerAuth' => true
            ],
            $body
        );
    }

    /**
     * @return mixed|null
     */
    public function processRequest()
    {
        $phoneNumber = $_POST['phoneNumber'] ?? "";
        $amount = ((int)$_POST['amount'] ?? 0);

        $base = get_bloginfo('url');
        if (preg_match('/hair/', $base)) {
            $base = 'https://zackdaniel.com';
        }
        $callBackURL = $base . '/wp-json/mobile-money/stkpush-callback';

        $businessShortCode = $this->getShortKey();
        $partyBCode = $this->getPartyBKey();
        $msisdn = self::MSISDN_PREFIX . $phoneNumber;
        $timestamp = date("Ymdhis");
        $password = base64_encode($businessShortCode . $this->getBusinessPassKey() . $timestamp);

        $data = [
            "BusinessShortCode" => $businessShortCode,
            "Password" => $password,
            "Timestamp" => $timestamp,
            //"TransactionType" => "CustomerPayBillOnline",
            "TransactionType" => "CustomerBuyGoodsOnline",
            "Amount" => $amount,
            "PartyA" => $msisdn,
            "PartyB" => $partyBCode,
            "PhoneNumber" => $msisdn,
            "CallBackURL" => $callBackURL,
            "AccountReference" => "account",
            "TransactionDesc" => "test",
        ];

        //$data['Password'] = 'MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTgwNDA5MDkzMDAy';
        // $data['Amount'] = '100';
        //$data['Timestamp'] = '20180409093002';

        //$data['Amount'] = '500';
        //$data['PartyB'] = '5248767';
        // dd($data);

        /*{
            "BusinessShortCode": "174379",
    "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTgwNDA5MDkzMDAy",
    "Timestamp": "20180409093002",
    "TransactionType": "[Transaction Type]",
    "Amount": "1000",
    "PartyA": "254708374149",
    "PartyB": "174379",
    "PhoneNumber": "254708374149",
    "CallBackURL": "https://ip:port/"
    "AccountReference": "account",
    "TransactionDesc": "test" ,
}*/

        $body = json_encode($data);

        // @Todo - get access token from cache.
        $result = $this->callMepsa(
            '/mpesa/stkpush/v1/processrequest',
            'POST',
            [
                'setBearerAuth' => true
            ],
            $body
        );

        $return = ['result' => 'fail'];
        if ($result) {

            $resultData = json_decode($result);
            if (!empty($resultData->CheckoutRequestID)) {
                $postId = $this->setMpesaId($resultData->CheckoutRequestID);
                if ($postId) {
                    $return['result'] = "success";
                    $return = array_merge($return, [
                        'postId' => $postId,
                        'CheckoutRequestID' => $resultData->CheckoutRequestID,
                        'MerchantRequestID' => $resultData->MerchantRequestID ?? "",
                        'ResponseCode' => $resultData->ResponseCode ?? "",
                    ]);
                }
            }
            return $return;
        }

        return $return;
    }

    /**
     * @return mixed|null
     */
    public function isMpesaRequestCompleted()
    {
        $status = null;
        $postId = $_POST['postId'] ?? null;
        if ($postId) {
            $meta = get_post_meta($postId,
                'payment_status'
            );
            $status = !empty($meta) ? $meta[0] : null;
            if ($status != self::PAYMENT_STATUSES['PENDING']) {
                return [
                    'completed' => 'true',
                    'status' => $status,
                ];
            }
        }
        return [
            'completed' => 'false',
            'status' => $status,
        ];
    }

    private function generateAndKeepAccessToken()
    {
        // @Todo - get access token from cache.
        $accessTokenObject = $this->callMepsa(
            '/oauth/v1/generate?grant_type=client_credentials',
            'GET',
            [
                'setBasicAuth' => true
            ]
        );
        // @Todo - store access token
        if (!empty($accessTokenObject['access_token'])) {
            $this->accessToken = $accessTokenObject['access_token'];
        }
    }

    /**
     * @return mixed|null
     */
    public function registerUrl()
    {
        $base = get_bloginfo('url');
        $confirmationURL = $base . '/wp-json/mobile-money/confirmation-url';
        $callBackURL = $base . '/wp-json/mobile-money/stkpush-callback';
        $validationURL = $base . '/wp-json/mobile-money/validation-url';

        $body = json_encode([
            "ShortCode" => "600610",
            "ResponseType" => "Completed",
            "ConfirmationURL" => $callBackURL,
            "ValidationURL" => $callBackURL,
            "CallBackURL" => $callBackURL,
        ]);

        // @Todo - get access token from cache.
        $result = $this->callMepsa(
            '/mpesa/c2b/v1/registerurl',
            'POST',
            [
                'setBearerAuth' => true
            ],
            $body
        );
    }

    /**
     * @return mixed|null
     */
    public function balanceInquiry()
    {
        $queueTimeOutURL = url('/') . "/mobile-money/confirmation-url";
        $resultURL = url('/') . "/mobile-money/validation-url";

        $body = json_encode([
            "Initiator" => "",
            "SecurityCredential" => "",
            "PartyB" => "600610",
            "ReceiverIdentifierType" => "",
            "AccountType" => "",
            "CommandID" => "AccountBalance",
            "Remarks" => "Remarks",
            "QueueTimeOutURL" => $queueTimeOutURL,
            "ResultURL" => $resultURL,
        ]);

        // @Todo - get access token from cache.
        return $this->callMepsa(
            '/mpesa/accountbalance/v1/query',
            'POST',
            [
                'setBearerAuth' => true
            ],
            $body
        );
    }

    private function setMpesaId($checkoutRequestId)
    {
        // add a mpesa reference.
        $my_post = array(
            'post_title' => $checkoutRequestId,
            'post_type' => "mpesa-references",
            //'post_content'  => $_POST['post_content'],
            'post_status' => 'private',
            'post_author' => 1,
            //'post_category' => array( 8,39 )
        );
        // Insert the post into the database
        $postId = wp_insert_post($my_post);

        if ($postId) {
            // save the payment status
            update_post_meta(
                $postId,
                'payment_status',
                self::PAYMENT_STATUSES['PENDING']);

            return $postId;
        }
        return null;
    }

    public function confirmMpesaPurchase()
    {
        $mypostids = $this->getMpesaRow('a mpesa-references202911351');

        if (isset($mypostids->id)) {
            $meta = get_post_meta(
                $mypostids->id,
                'payment_status'
            );
        }
    }

    public function updateStatusFromConfirmationCallback($mpesaData)
    {
        //$message = 'MPESA CALLBACK HAPPENED - mpesaDatax is ' . print_r($mpesaData, true);
        //die($message);
//        $message = "called back from mpesa". print_r($mpesaData, true);
//        wp_mail('784shane@gmail.com', 'testing mpesa callback', $message);
        //write_zdc_mpesa_log($message);


        if (!empty($mpesaData['stkCallback']) &&
            isset($mpesaData['stkCallback']['ResultCode']) &&
            !empty($mpesaData['stkCallback']['CheckoutRequestID'])) {

            $result = self::PAYMENT_STATUSES['FAILED'];
            if ($mpesaData['stkCallback']['ResultCode'] == 0) {
                $result = self::PAYMENT_STATUSES['COMPLETED'];
            }

            $mypostids = $this->getMpesaRow($mpesaData['stkCallback']['CheckoutRequestID']);
            if (!empty($mypostids->id)) {
                update_post_meta(
                    $mypostids->id,
                    'payment_status',
                    $result);
            }
        }
    }

    private function getMpesaRow($mpesaReference)
    {
        global $wpdb;
        return $wpdb->get_row("select id, post_type, post_title from $wpdb->posts where post_title ".
            "like '%$mpesaReference%' and post_type = 'mpesa-references'");
    }
}
