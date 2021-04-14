<?php

namespace App\Admin\PostTypes;

require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/Packages.php';


class Init
{
    public function init()
    {
        (new Packages())->setPostTypes();
    }
}