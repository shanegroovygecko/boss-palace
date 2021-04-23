<?php
/**
 * Plugin Name: Zack Daniel Mpesa
 */

if (!function_exists('write_zdc_mpesa_log')) {
    function write_zdc_mpesa_log($log) {
        if (true === WP_DEBUG) {
            if (is_array($log) || is_object($log)) {
                error_log(print_r($log, true));
            } else {
                error_log($log);
            }
        }
    }
}


if (is_admin()) {
    include_once(plugin_dir_path(__FILE__) . 'functions/code/php/init.php');
    $init = new Init();
    $init->initialize();
}

include_once(plugin_dir_path(__FILE__) . 'functions/code/php/Main.php');
$main = new Main();
$main->initialize();


add_shortcode('place-checkout-button', 'place_checkout_button');

function place_checkout_button($atts)
{
    include_once(plugin_dir_path(__FILE__) . 'functions/code/html/checkout-button.php');
    $buttonText = !empty($atts['text']) ? $atts['text'] : "Checkout";
    $totalPrice = !empty($atts['total_price']) ? $atts['total_price'] : 0;
    $validationCheckFunction = !empty($atts['validation_check']) ? $atts['validation_check'] : null;
    $onClickReportFunction = !empty($atts['on_click_report']) ? $atts['on_click_report'] : null;
    return getCheckoutButton($buttonText, $totalPrice, $validationCheckFunction, $onClickReportFunction);
}

add_action('wp_enqueue_scripts', 'front_end_script');

function front_end_script()
{
    wp_enqueue_script('zdc_front-js', plugins_url('/assets/js/front.js', __FILE__), array('wp-util'), false, true);
    $variables = array(
        'ajaxurl' => admin_url('admin-ajax.php')
    );
    wp_localize_script('zdc_front-js', "test", $variables);
}

add_shortcode('verify-mpesa-outcome', 'verify_mpesa_outcome');

function verify_mpesa_outcome($atts)
{
    include_once(plugin_dir_path(__FILE__) . 'functions/code/php/mpesa/MpesaMakePayRequest.php');
    $mpesaPayRequest = new MpesaMakePayRequest();
    $mpesaPayRequest->confirmMpesaPurchase();
}

add_action('wp_ajax_nopriv_make_mpesa_request', 'make_mpesa_request_handler');
add_action('wp_ajax_make_mpesa_request', 'make_mpesa_request_handler');

function make_mpesa_request_handler()
{
    include_once(plugin_dir_path(__FILE__) . 'functions/code/php/mpesa/MpesaMakePayRequest.php');
    $mpesaPayRequest = new MpesaMakePayRequest();
    $result = $mpesaPayRequest->processRequest();
    wp_send_json_success($result);
}

add_action('wp_ajax_nopriv_check_mpesa_status', 'check_mpesa_status_handler');
add_action('wp_ajax_check_mpesa_status', 'check_mpesa_status_handler');

function check_mpesa_status_handler()
{
    include_once(plugin_dir_path(__FILE__) . 'functions/code/php/mpesa/MpesaMakePayRequest.php');
    $mpesaPayRequest = new MpesaMakePayRequest();
    $result = $mpesaPayRequest->isMpesaRequestCompleted();
    wp_send_json_success(['isMpesaRequestCompleted' => $result]);
}

/*function my_enqueue() {
    // wp_enqueue_script( 'ajax-script', get_template_directory_uri() . '/js/my-ajax-script.js', array('jquery') );
    wp_localize_script( 'ajax-script', 'my_ajax_object', array( 'ajax_url' => admin_url( 'admin-ajax.php' ) ) );
}
add_action( 'wp_enqueue_scripts', 'my_enqueue' );

add_action( 'wp_ajax_nopriv_get_data', 'my_ajax_handler' );
add_action( 'wp_ajax_get_data', 'my_ajax_handler' );

function my_ajax_handler() {
    wp_send_json_success( 'It works' );
    wp_send_json_success( 'It works' );
}*/

