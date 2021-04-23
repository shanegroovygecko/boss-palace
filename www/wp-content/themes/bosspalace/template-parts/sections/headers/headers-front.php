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
    <div class="tm-welcome-container text-center text-white">
        <div class="tm-welcome-container-inner">
            <p class="tm-welcome-text mb-1 text-white">Video Catalog is brought to you by TemplateMo.</p>
            <p class="tm-welcome-text mb-5 text-white">This is a full-width video banner.</p>
            <a href="#content" class="btn tm-btn-animate tm-btn-cta tm-icon-down">
                <span>Discover</span>
            </a>
        </div>
    </div>

    <div id="tm-video-container">
        <video autoplay muted loop id="tm-video">
            <!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
            <source src="<?php echo esc_url(BL_THEME_URI . 'templatemo_552_video_catalog/video/wheat-field.mp4'); ?>" type="video/mp4">
        </video>
    </div>

    <i id="tm-video-control-button" class="fas fa-pause"></i>
</div>