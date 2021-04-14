<?php

namespace App\Site;

use App\Admin\Admin;
use App\Front\Front;

/**
 * Class Main
 * @package App\Site
 */
class Main
{
    private $adminFunctions;
    private $frontEndFunctions;

    public function init()
    {
        if (is_admin()) {
            require_once BL_THEME_DIR . 'assets/php/Admin/Admin.php';
            $this->adminFunctions = new Admin();
            $this->adminFunctions->init();
        } else {
            require_once BL_THEME_DIR . 'assets/php/Front/Front.php';
            $this->frontEndFunctions = new Front();
            $this->frontEndFunctions->init();
        }
    }
}
