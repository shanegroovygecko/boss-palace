<?php get_header(); ?>

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
            <div class="col-md-7">
                <?php
                $meta_img_id = get_post_meta(get_queried_object_id(), 'image', true);
                $meta_img_src = wp_get_attachment_image_src($meta_img_id, 'products');
                echo "<img src='" . esc_url($meta_img_src[0]) . "' style='width:100%'>";
                ?>
            </div>
            <div class="col-md-3">
                <?php echo get_post_meta(get_queried_object_id(), 'description', true); ?>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
