<?php

namespace App\Front;

/**
 * Class FrontHelper
 * @package App\Front
 */
class FrontHelper
{
    public static function fieldGroupValues($valuesArray)
    {
        $return = [];
        foreach ($valuesArray as $value) {
            if(!empty($value['name'])){
                $return[$value['name']] = $value['value'];
            }
        }
        return $return;
    }
}