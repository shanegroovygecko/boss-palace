<?php

namespace App\Admin;

require_once BL_THEME_DIR . 'assets/php/GlobalFunctions.php';
require_once BL_THEME_DIR . 'assets/php/Admin/SavePosts/InitSavePost.php';

use App\GlobalFunctions;

/**
 * Class Main
 * @package App\Site
 */
class Admin extends GlobalFunctions
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
