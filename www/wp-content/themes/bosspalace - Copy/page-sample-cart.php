<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package dostart
 */

if ( ! defined('ABSPATH') ) {
    exit; // Exit if accessed directly.
}

get_header(); ?>

<?php echo do_shortcode('[st48pay_print_paypal_buttons]'); ?>
<?php echo do_shortcode('[st48pay_print_mpesa_buttons]'); ?>

<?php
get_footer();
