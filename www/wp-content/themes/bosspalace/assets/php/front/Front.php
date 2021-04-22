<?php

namespace App\Front;

require_once BL_THEME_DIR . 'assets/php/GlobalFunctions.php';

use App\GlobalFunctions;


/**
 * Class Main
 * @package App\Site
 */
class Front extends GlobalFunctions
{
    public function init()
    {
        $this->addPostTypes();
    }

    private function addPostTypes()
    {
        add_action('init', array($this, 'setPostTypes'));
    }

    private function addAjaxHandlers()
    {
        add_action('wp_ajax_nopriv_add_to_cart', array($this, 'add_to_cart_ajax_hadler'));
        add_action('wp_ajax_add_to_cart', array($this, 'add_to_cart_ajax_hadler'));
    }

    public function add_to_cart_ajax_hadler($args)
    {
        // Get the number of items in the cart.
        wp_send_json_success(json_encode(['amountInShoppingCart' => "the response"]));
    }
}
