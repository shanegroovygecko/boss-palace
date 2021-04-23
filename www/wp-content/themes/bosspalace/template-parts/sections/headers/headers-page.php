<div class="position-relative">
    <div class="position-absolute tm-site-header">
        <div class="container-fluid position-relative">
            <div class="row">
                <div class="col-7 col-md-4">
                    <?php get_template_part('template-parts/sections/headers/header', 'logo'); ?>
                </div>
                <?php get_template_part('template-parts/sections/headers/nav/nav', 'top'); ?>
            </div>
        </div>
    </div>

    <div id="tm-video-container">
        <img src="<?php echo esc_url(BL_THEME_URI . 'assets/img/banners/bannerz.jpg'); ?>" width="100%" />
    </div>
</div>
<style>
    #tm-video-container img{

    }
</style>