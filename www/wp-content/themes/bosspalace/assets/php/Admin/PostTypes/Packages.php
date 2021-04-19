<?php

namespace App\Admin\PostTypes;

require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/PostTypes.php';
require_once BL_THEME_DIR . 'assets/php/Admin/PostTypes/PostTypesInterface.php';

/**
 * Class PackagesSavePost
 * @package App\Admin\PostTypes
 */
class Packages extends PostTypes implements PostTypesInterface
{
    public function initPostTypes()
    {
        add_theme_support('post-thumbnails', array('post', 'page', 'packages'));


        register_post_type('packages',
            array(
                'labels' => array(
                    'name' => __('Packages'),
                    'singular_name' => __('Package'),
                    'view_item' => __('View Package'),
                    'edit' => __('Edit Package'),
                    'edit_item' => __('Edit Package'),
                    'add_new' => __('Add Package'),
                    'add_new_item' => __('Add Package')
                ),
                'taxonomies' => array('category'),
                'public' => true,
                //'has_archive' => true,
                'rewrite' => array('slug' => 'packages'),
                //'show_in_rest' => true,
                'show_ui' => true,
                'publicly_queryable' => true,
                'exclude_from_search' => false,
                //'rewrite' => array('slug' => 'news'),
                'query_var' => true,
                'menu_position' => 4,
                //'has_archive' => true,
                'capability_type' => 'page',
                'supports' => array('title', 'editor', 'featured_image')

            )
        );

        register_post_type('x-chg-rates-scrape',
            array(
                'labels' => array(
                    'name' => __('Exchange Rates Scrape'),
                    'singular_name' => __('Exchange Rates Scrape'),
                    'view_item' => __('View Exchange Rates Scrape'),
                    'edit' => __('Edit Exchange Rates Scrape'),
                    'edit_item' => __('Edit Exchange Rates Scrape'),
                    'add_new' => __('Add Exchange Rates Scrape'),
                    'add_new_item' => __('Add Exchange Rates Scrape')
                ),
                'public' => true,
                //'has_archive' => true,
                //'rewrite' => array('slug' => 'exchange-ratess'),
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