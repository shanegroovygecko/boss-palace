<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being dodstart-style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package dostart
 */

if ( ! defined('ABSPATH') ) {
    exit; // Exit if accessed directly.
}
get_header(); ?>
<?php
if ( have_posts() ) :
        ?>
        <?php get_template_part( 'template-parts/sections/categories', 'group' );  ?>
    <?php
else :
    ?>
<?php dump($_REQUEST); ?>
    <h1>THe else index</h1>
<?php
endif; ?>

<?php
get_footer();