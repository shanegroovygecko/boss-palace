<?php

namespace App;

require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/Init.php';

use App\Admin\PostTypes\Init;

class GlobalFunctions
{
    private $init;

    public function __construct()
    {
        $this->init = new Init();
    }

    public function setPostTypes()
    {
        $this->init->init();
    }
}