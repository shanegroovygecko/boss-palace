<?php

namespace App\Admin;

require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/Init.php';
require_once BL_THEME_DIR . 'assets/php/Admin/SavePosts/InitSavePost.php';

use App\Admin\PostTypes\Init;

/**
 * Class Main
 * @package App\Site
 */
class Admin
{
    private Init $init;

    public function __construct()
    {
        $this->init = new Init();
    }

    public function init()
    {
        $this->addPostTypes();
    }

    private function addPostTypes()
    {
        add_action('init', array($this, 'setPostTypes'));
    }


    public function setPostTypes()
    {
        $this->init->init();
    }
}
