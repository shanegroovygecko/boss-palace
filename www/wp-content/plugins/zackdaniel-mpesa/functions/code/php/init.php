<?php

include_once 'SettingsPage.php';

class Init
{
    public function initialize()
    {
        $this->addFieldsToSettingsPage();
    }

    public function addFieldsToSettingsPage()
    {
        if (is_admin()) {
            $settingsPage = new SettingsPage();
            $settingsPage->init();
        }
    }
}
