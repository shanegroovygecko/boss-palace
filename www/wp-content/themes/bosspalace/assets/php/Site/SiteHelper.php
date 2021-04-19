<?php

namespace App\Site;

/**
 * Class SiteHelper
 * @package App\Site
 */
class SiteHelper
{
    /**
     * @param $fromCurrency
     * @param $amount
     * @param $exchangeRate
     * @return float
     */
    public static function convertToUsd($fromCurrency, $amount, $exchangeRate)
    {
        if (!empty($fromCurrency) && !empty($amount)) {
            $exchanged = ($amount / $exchangeRate);
            return (float)number_format($exchanged, 2, '.', '');
        }
        return (float)(0.00);
    }
}