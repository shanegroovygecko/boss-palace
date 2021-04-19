<?php

if (!function_exists('dump')) {
    function dump($object = "", $echo = true)
    {
        $output = "<pre style='background-color: #0c0c0c; color: #0bbd0b; padding:20px 0;'>" . print_r($object, true) . "</pre>";
        if ($echo) {
            echo $output;
            return;
        }
        return $output;
    }
}

if (!function_exists('dd')) {
    function dd($object = "")
    {
        dump($object);
        die;
    }
}

define('BL_THEME_URI', trailingslashit(esc_url(get_template_directory_uri())));
define('BL_THEME_DIR', trailingslashit(get_stylesheet_directory()));


require_once BL_THEME_DIR . 'assets/php/Site/SiteHelper.php';
require_once BL_THEME_DIR . 'assets/php/Site/Main.php';
require_once BL_THEME_DIR. 'assets/php/Front/FrontHelper.php';

/**
 * GET THE EXCHANGE RATES
 * @TODO - GET THIS VIA CRON JOB
 */
include_once BL_THEME_DIR . 'assets/php/Site/CurrencyScraper.php';
$scrapper = new CurrencyScraper();
$scrapper->scrape();
$kesInverseRate = $scrapper->getSingleExchangeRateToUSD('KES', 'inverseRate');
$kesInverseRate = $kesInverseRate > 0 ? $kesInverseRate : 1;


use App\Site\SiteHelper;
use App\Site\Main;
use App\Front\FrontHelper;

$assetVersion = '1.0.0';
$frontHelper = new FrontHelper();
$mainFunctions = new Main();
$mainFunctions->init();

function convertToUSD($fromCurrency, $amount, $kesInverseRate)
{
    return SiteHelper::convertToUsd($fromCurrency, $amount, $kesInverseRate);
}


add_action('wp_enqueue_scripts', 'enqueue_scripts');

function enqueue_scripts()
{
    add_styles();
    add_scripts();
}

function add_styles()
{
    global $assetVersion;
    $templateDirBaseUrI = get_stylesheet_directory_uri();

    wp_enqueue_style('main_css_font_awesome',
        $templateDirBaseUrI . "/templatemo_552_video_catalog/fontawesome/css/all.min.css?v=".$assetVersion
    );

    wp_enqueue_style('main_css_bootstrap',
        $templateDirBaseUrI . "/templatemo_552_video_catalog/css/bootstrap.min.css?v=".$assetVersion
    );

    wp_enqueue_style('main_css_video_catalog',
        $templateDirBaseUrI . "/templatemo_552_video_catalog/css/templatemo-video-catalog.css?v=".$assetVersion
    );

    wp_enqueue_style('site_css',
        $templateDirBaseUrI . "/assets/css/main.css?v=".$assetVersion
    );
}

function add_scripts()
{

}