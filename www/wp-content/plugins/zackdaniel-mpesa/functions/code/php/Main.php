<?php

class Main
{
    public function initialize()
    {
        add_action('rest_api_init', array($this, 'addRoutes'));
    }

    public function addRoutes()
    {
        register_rest_route('mpesa', 'register-mpesa-routes', array(
            // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
            'methods' => WP_REST_Server::READABLE,
            // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
            'callback' => array($this, 'receiveMpesaCallback'),
        ));

        register_rest_route('mobile-money', 'confirmation-url', array(
            // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
            'methods' => WP_REST_Server::ALLMETHODS,
            // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
            'callback' => array($this, 'updateMpesaFromCallback'),
        ));

        register_rest_route('mobile-money', 'test-status', array(
            // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
            'methods' => WP_REST_Server::READABLE,
            // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
            'callback' => array($this, 'testStatus'),
        ));

        register_rest_route('mobile-money', 'stkpush-callback', array(
            // By using this constant we ensure that when the WP_REST_Server changes our readable endpoints will work as intended.
            'methods' => WP_REST_Server::ALLMETHODS,
            // Here we register our callback. The callback is fired when this endpoint is matched by the WP_REST_Server class.
            'callback' => array($this, 'updateMpesaFromCallback3'),
        ));
    }

    public function updateMpesaFromCallback()
    {
        write_zdc_mpesa_log('MPESA CALLBACK HAPPENED - validation-url'. print_r($_GET, true));
        //        die('hello');
        return rest_ensure_response('Hello World, this is the WordPress REST API');
    }

    public function updateMpesaFromCallback3(WP_REST_Request $request)
    {
        $data = $request->get_params();


        /*$data = [
            'Body' => [
                'stkCallback' => [
                    'MerchantRequestID' => '28128-4935280-1',
                    'CheckoutRequestID' => 'ws_CO_040720201951074225',//'ws_CO_050720201325472800',
                    'ResultCode' => 0,
                    'ResultDesc' => 'The balance is insufficient for the transaction',
                ]
            ]
        ];

        [17-Apr-2021 16:04:44 UTC] MPESA CALLBACK HAPPENED - validation-url updateMpesaFromCallback3Array
(
    [Body] => Array
        (
            [stkCallback] => Array
                (
                    [MerchantRequestID] => 15430-17365875-1
                    [CheckoutRequestID] => ws_CO_170420211904421388
                    [ResultCode] => 1
                    [ResultDesc] => The balance is insufficient for the transaction
                )

        )

)

*/

        write_zdc_mpesa_log(
            'MPESA CALLBACK HAPPENED - validation-url updateMpesaFromCallback3'.
            print_r($data, true)
        );


        include_once(plugin_dir_path(__FILE__) . 'mpesa/MpesaMakePayRequest.php');
        $mpesaPayRequest = new MpesaMakePayRequest();
        $mpesaData = null;

        /*$message = "called back from mpesa". print_r($data, true);
        wp_mail('784shane@gmail.com', 'testing mpesa callback', $message);
        write_zdc_mpesa_log($message);*/


        if(!empty($data['Body'])) {
            $mpesaData = $data['Body'];
        }
        $mpesaPayRequest->updateStatusFromConfirmationCallback($mpesaData);

        return rest_ensure_response('Thank you mpesa for the call back');
    }

    public function receiveMpesaCallback()
    {
        include_once(plugin_dir_path(__FILE__) . 'mpesa/MpesaMakePayRequest.php');
        $mpesaPayRequest = new MpesaMakePayRequest();
        $mpesaPayRequest->registerUrl();

        // update the payment status on the post type
        return rest_ensure_response('Hello World, this is the WordPress REST API');
    }

    public function testStatus(WP_REST_Request $request)
    {
        $data = $request->get_params();
        $ref = $data['ref'] ?? "";
        $postId = $data['id'] ?? "";

        global $wpdb;

        $mpesaReference = $ref;//'ws_CO_040720201951074225';

        $all = $wpdb->get_row("select id, post_type, post_title from $wpdb->posts where post_title like '%$mpesaReference%' and post_type = 'mpesa-references'");


        /*update_post_meta(
            $postId,
            'payment_status',
            'pending');*/






        $postMeta = get_post_meta($postId);

        print_r($postMeta);
        //print_r($all);
        die;
    }
}
