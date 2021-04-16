<?php

namespace App\Admin\PostTypes;

require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/Packages.php';

/**
 * Class Init
 * @package App\Admin\PostTypes
 */
class Init
{
    public function init()
    {
        (new Packages())->setPostTypes();
    }
}