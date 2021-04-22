<?php

include_once "WhatsappConfig.php";

/**
 * Class ZdConfig
 */
class BlConfig
{
    /**
     * @param $type
     * @param $settingFunction
     * @return mixed
     */
    public static function getSetting($type, $settingFunction)
    {
        $class = $type."Config";
        return $class::$settingFunction();
    }
}
