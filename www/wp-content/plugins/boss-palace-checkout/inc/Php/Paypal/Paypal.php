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
     * @param array $attribute
     */
    public function st48pay_printPaypalButtons(array $attributes)
    {
        return $this->renderButtons($attributes);
    }

    /**
     *
     */
    public function renderButtons($attributes)
    {
        $title = !empty($attributes['title']) ? $attributes['title'] : "";
        $price = !empty($attributes['price']) ? $attributes['price'] : null;
       include_once(plugin_dir_path(__FILE__) . 'Html/checkoutButtons.php');
    }
}