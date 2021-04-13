<?php

if (!function_exists('dump')) {
    function dump($object = "", $echo = true)
    {
        $output = "<pre>" . print_r($object, true) . "</pre>";
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

function enqueue_scripts(){
    add_scripts();
    add_styles();
}

function add_scripts(){

}

function add_styles(){
    $templateDirBaseUrI = get_stylesheet_directory_uri();
    wp_enqueue_style('main_site_style',
        $templateDirBaseUrI . "/assets/template/assets/css/main.css"
    );
}
add_action('wp_enqueue_scripts', 'enqueue_scripts');