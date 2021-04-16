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
}
