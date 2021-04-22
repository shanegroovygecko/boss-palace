<?php

/**
 * Class WhatsappConfig
 */
class WhatsappConfig
{
    /**
     * @string
     */
    const CONTACT_NUMBER_PREFIX = "+254";

    /**
     * @string
     */
    const CONTACT_NUMBER = "726463660";

    /**
     * @string
     */
    const MAIN_MESSAGE_STARTER = "Hi, I would to enquire about your packages, please get in touch";

    /**
     * @string
     */
    const MAIN_PRODUCT_MESSAGE_STARTER = "Hi, I would to know more about your ";

    /**
     * @return string
     */
    public static function getContactNumber(): string
    {
        return self::CONTACT_NUMBER_PREFIX . self::CONTACT_NUMBER;
    }

    /**
     * @return string
     */
    public static function getHrefPrefix(): string
    {
        if (BL_THEME_IS_MOBILE) {
            return "whatsapp://";
        }
        return "https://web.whatsapp.com/";
    }

    /**
     * @return string
     */
    public static function getMainMessage(): string
    {
        return self::MAIN_MESSAGE_STARTER;
    }

    /**
     * @return string
     */
    public static function getProductMessage(): string
    {
        return self::MAIN_PRODUCT_MESSAGE_STARTER;
    }
}
