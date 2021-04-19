<?php

/**
 * Plugin Name:       Boss Palace Checkout
 * Description:       Handles Checkout Activities.
 * Version:           1.0.0
 * Requires at least: 5.7
 * Requires PHP:      7.1
 * Author:            Shane Daniel
 * Text Domain:       boss_palace
 * Domain Path:       /languages
 */

add_action('init', 'st48pay_init');
add_action('wp_enqueue_scripts', 'st48pay_scripts');

include_once(plugin_dir_path(__FILE__) . 'inc/Php/Paypal/Paypal.php');
include_once(plugin_dir_path(__FILE__) . 'inc/Php/Mpesa/Mpesa.php');

use App\Paypal\Paypal;
use App\Mpesa\Mpesa;

$payPal = new Paypal();
$mpesa = new Mpesa();

if (!function_exists('st48pay_init')) {
    function st48pay_init()
    {
        global $payPal, $mpesa;
        $payPal->init();
        $mpesa->init();
    }
}

if (!function_exists('st48pay_scripts')) {
    function st48pay_scripts()
    {
        wp_enqueue_script('st48pay_paypal_checkout_js', 'https://www.paypalobjects.com/api/checkout.js');
        wp_enqueue_script('st48pay_plugin_front-js', plugins_url('/inc/assets/js/front/main.js', __FILE__),
            array('wp-util', 'jquery'), false, true);
        st48pay_styles();
    }
}

if (!function_exists('st48pay_styles')) {
    function st48pay_styles()
    {
        wp_enqueue_style('template_style', plugins_url('/inc/assets/css/front/main.css', __FILE__) );
    }
}



