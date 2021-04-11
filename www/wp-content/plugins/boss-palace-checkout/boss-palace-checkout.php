<?php

/**
 * Plugin Name:       Boss Palace Checkout
 * Description:       Handles Checkout Activities.
 * Version:           1.0.0
 * Requires at least: 5.7
 * Requires PHP:      7.4
 * Author:            Shane Daniel
 * Text Domain:       boss_palace
 * Domain Path:       /languages
 */

add_action('init', 'boss_palace_init');
add_action('wp_enqueue_scripts', 'boss_palace_scripts');

include_once(plugin_dir_path(__FILE__) . 'inc/Php/Paypal/Paypal.php');
include_once(plugin_dir_path(__FILE__) . 'inc/Php/Mpesa/Mpesa.php');

use App\Paypal\Paypal;
use App\Mpesa\Mpesa;

$payPal = new Paypal();
$mpesa = new Mpesa();

if (!function_exists('boss_palace_init')) {
    function boss_palace_init()
    {
        global $payPal, $mpesa;
        $payPal->init();
        $mpesa->init();
    }
}

if (!function_exists('boss_palace_scripts')) {
    function boss_palace_scripts()
    {
        wp_enqueue_script('plugin_paypal_checkout_js', 'https://www.paypalobjects.com/api/checkout.js');
        wp_enqueue_script('plugin_front-js', plugins_url('/inc/assets/js/front/main.js', __FILE__),
            array('wp-util', 'jquery'), false, true);
        boss_palace_styles();
    }
}

if (!function_exists('boss_palace_styles')) {
    function boss_palace_styles()
    {
        wp_enqueue_style('template_style', plugins_url('/inc/assets/css/front/main.css', __FILE__) );
    }
}



