<?php

namespace App\Paypal;

/**
 * Class Paypal
 * @package App\Paypal
 */
class Paypal
{
    /**
     *
     */
    public function init()
    {
        add_shortcode('st48pay_print_paypal_buttons', [$this, 'st48pay_printPaypalButtons'], 10, 2);
    }

    /**
     *
     */
    public function st48pay_printPaypalButtons()
    {
        return $this->renderButtons();
    }

    /**
     *
     */
    public function renderButtons()
    {
       include_once(plugin_dir_path(__FILE__) . 'Html/checkoutButtons.php');
    }
}