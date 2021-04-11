<?php

namespace App\Mpesa;

/**
 * Class Mpesa
 * @package App\Mpesa
 */
class Mpesa
{
    /**
     *
     */
    public function init()
    {
        add_shortcode('st48pay_print_mpesa_buttons', [$this, 'st48pay_printMpesaButtons'], 10, 2);
    }

    /**
     *
     */
    public function st48pay_printMpesaButtons()
    {
        return $this->renderButtons();
    }

    /**
     *
     */
    public function renderButtons()
    {
        include_once(plugin_dir_path(__FILE__) . 'Html/checkoutButton.php');
    }
}