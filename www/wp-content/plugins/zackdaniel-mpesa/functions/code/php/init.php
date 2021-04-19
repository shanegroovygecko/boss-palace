<?php

include_once 'SettingsPage.php';

class Init
{
    public function initialize()
    {
        add_action('init', array($this, 'handleInit'));
        $this->addFieldsToSettingsPage();
    }

    public function addFieldsToSettingsPage()
    {
        if (is_admin()) {
            $settingsPage = new SettingsPage();
            $settingsPage->init();
        }
    }

    public function handleInit()
    {
        $this->setPostTypes();
    }

    public function setPostTypes()
    {
        register_post_type('mpesa-references',
            array(
                'labels' => array(
                    'name' => __('Mpesa References'),
                    'singular_name' => __('Mpesa Reference'),
                    'view_item' => __('View Mpesa Reference'),
                    'edit' => __('Edit Mpesa Reference'),
                    'edit_item' => __('Edit Mpesa Reference'),
                    'add_new' => __('Add Mpesa Reference'),
                    'add_new_item' => __('Add Mpesa Reference')
                ),
                'public' => true,
                //'has_archive' => true,
                //'rewrite' => array('slug' => 'mpesa-references'),
                //'show_in_rest' => true,
                'show_ui' => true,
                'publicly_queryable' => true,
                'exclude_from_search' => true,
                //'rewrite' => array('slug' => 'news'),
                'query_var' => true,
                'menu_position' => 4,
                //'has_archive' => true,
                'capability_type' => 'page',
                'supports' => array('title')
                //'supports' => array('title', 'editor', 'thumbnail')

            )
        );
    }
}
