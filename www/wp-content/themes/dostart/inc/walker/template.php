<?php //phpcs:ginore
/**
 * Template content
 */

// Exit if accessed directly
if ( ! defined('ABSPATH') ) {
    exit;
}

// Get ID
$get_id = $item->mega_template;

// Check if page is Elementor page
$elementor  = get_post_meta($get_id, '_elementor_edit_mode', true);

// Get template content
if ( ! empty($get_id) ) {
    $template_id = get_post($get_id);
    if ( $template_id && ! is_wp_error($template_id) ) {
        $content = $template_id->post_content;
    }
}
    
// If Elementor
if ( DOSTART_ELEMENTOR_ACTIVE && $elementor ) {
    echo Elementor\Plugin::instance()->frontend->get_builder_content_for_display($get_id); //phpcs:ignore.
}


// Else
else {
    // Display template content
    echo dostart_shortcode($content); //phpcs:ignore.
}
