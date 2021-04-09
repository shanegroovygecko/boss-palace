<?php
/*
 * Template Name: Products

*/

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly.
}

get_header(); ?>

<div class="dostart-breadcrumb-bg">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-inner">
                    <div class="breadcrumb-inner-content">
                        <h1><?php the_title();  ?></h1>
                        <?php if (function_exists('bcn_display')) {
                            bcn_display();
                        } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    #avatar {
        /* float: left; */
        width: 100%;
        height: 300px;
        /* border: 1px solid black; */
    }

    #avatar img {
        height: 100%;
        max-width: 100%;
        display: block;
        margin: auto;
    }
</style>
<div class="dostart-page-content dostart-internal-area dostart-v-composer-disabled">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <?php
                    $args = array(
                        'post_type' => 'post',
                        'orderby'    => 'ID',
                        'post_status' => 'publish',
                        'order'    => 'DESC',
                        'posts_per_page' => -1 // this will retrive all the post that is published 
                    );
                    $result = new WP_Query($args);
                    if ($result->have_posts()) : ?>
                        <?php while ($result->have_posts()) : $result->the_post(); ?>
                            <div class="col-md-3">
                                <div id="avatar">
                                    <?php
                                    $meta_img_id = get_post_meta(get_the_ID(), 'image', true);
                                    $meta_img_src = wp_get_attachment_image_src($meta_img_id, 'products');
                                    echo "<img src='" . esc_url($meta_img_src[0]) . "' style='width:100%'>";
                                    ?>
                                </div>
                                <center>
                                    <h5><?php the_title(); ?></h5>
                                    <p style="color:maroon">$<?php echo esc_html(get_post_meta(get_the_ID(), 'price', true)); ?></p>
                                    <a href="<?php the_permalink(); ?>"><button class="btn btn-warning btn-sm">Add to cart</button></a>
                                </center>
                            </div>
                        <?php endwhile; ?>
                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
get_footer();
