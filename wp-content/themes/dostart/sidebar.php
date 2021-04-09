<?php

/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package dostart
 */

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly.
}

if (!is_active_sidebar('sidebar-1')) {
    return;
}
?>
<div class="col-md-4 blog-sidebar">
    <h3><?php the_title(); ?></h3>
    <p style="color:maroon">$<?php echo esc_html(get_post_meta(get_the_ID(), 'price', true)); ?></p>
    <a href="<?php echo site_url() . "/cart/?" . "tp=" . get_the_ID(); ?>"><button class="btn btn-warning btn-sm" style="width:100%" id="">Add to cart</button></a>
    <br><br>
    <button class="btn btn-primary btn-sm" style="width:100%">Buy it Now</button>
    <br><br>
    <?php dynamic_sidebar('sidebar-1'); ?>
</div>
<?php
// $id = YOUR_POST_ID;
// $post = get_post($id);
?>