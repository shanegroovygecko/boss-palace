<main>
    <?php global $kesInverseRate; ?>
    <?php get_template_part('template-parts/sections/headers/nav/nav', 'one'); ?>

    <?php $fields = get_fields(get_the_ID()); ?>
    <div class="row mb-5 pb-4">
        <div class="col-12">
            <?php  if (!empty($fields['youtube_video_id'])): ?>
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/<?php echo $fields['youtube_video_id']; ?>"
                            frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen>

                    </iframe>
                </div>
            <style>
                .video-container {
                    overflow: hidden;
                    position: relative;
                    width:100%;
                }

                .video-container::after {
                    padding-top: 56.25%;
                    display: block;
                    content: '';
                }

                .video-container iframe {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                }
            </style>
            <?php elseif (!empty($fields['main_image'])): ?>
            <div class="package-image-pocket">
                <img src="<?php echo $fields['main_image']['sizes']['large']; ?>"
                     alt="Image" class="img-fluid tm-catalog-item-img" width="100%">
            </div>
            <?php endif; ?>
        </div>
    </div>
    <?php $usPrice = convertToUSD('KES', (!empty($fields['price']) ? $fields['price'] : 0), $kesInverseRate); ?>
    <div class="row mb-5 pb-5">
        <div class="col-xl-8 col-lg-7">
            <!-- Video description -->
            <div class="tm-video-description-box">
                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">
                    Ksh <?php echo $fields['price'] ?? "" ?>
                    <span class="price-equivalent">
                        (<?php echo $usPrice; ?> USD)
                    </span>
                </h3>
                <h2 class="mb-5 tm-video-title"><?php the_title(); ?></h2>
                <?php the_content(); ?>
            </div>
        </div>
        <div class="col-xl-4 col-lg-5">
            <!-- Share box -->

            <div class="tm-bg-gray tm-share-box item-purchase-box">
                <p class="mb-4">Purchase this item.</p>
                <h5 class="tm-text-primary mb-3 tm-catalog-item-title">
                    Ksh <?php echo $fields['price'] ?? "" ?>
                    <span class="price-equivalent">
                        (<?php echo $usPrice; ?> USD)
                    </span>
                </h5>
                <div>
                    <?php echo do_shortcode('[st48pay_print_paypal_buttons 
                    price="' . $usPrice . '" 
                    title="' . get_the_title() . '"
                    ]'); ?>
                </div>
                <div class="site-mpesa-button-pocket">
                    <?php echo do_shortcode(
                        '[place-checkout-button text="Checkout via Mpesa" total_price="100" validation_check="true"]'); ?>
                </div>
            </div>


            <div class="tm-bg-gray tm-share-box">
                <h6 class="tm-share-box-title mb-4">Share this video</h6>
                <div class="mb-5 d-flex">
                    <a href="" class="tm-bg-white tm-share-button"><i class="fab fa-facebook"></i></a>
                    <a href="" class="tm-bg-white tm-share-button"><i class="fab fa-twitter"></i></a>
                    <a href="" class="tm-bg-white tm-share-button"><i class="fab fa-pinterest"></i></a>
                    <a href="" class="tm-bg-white tm-share-button"><i class="far fa-envelope"></i></a>
                </div>
            </div>

            <style>
                .item-purchase-box{
                    margin-bottom: 30px;
                }

                .site-mpesa-button-pocket button{
                    width:100%;
                }

                .package-image-pocket{
                    max-height: 720px;
                    overflow: hidden;
                }
            </style>
        </div>
    </div>

    <?php /*
    <div class="row pt-4 pb-5">
        <div class="col-12">
            <h2 class="mb-5 tm-text-primary">Other packages</h2>
            <div class="row tm-catalog-item-list">
                <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                    <div class="position-relative tm-thumbnail-container">
                        <img src="<?php echo esc_url(BL_THEME_URI . 'templatemo_552_video_catalog/img/tn-01.jpg'); ?>"
                             alt="Image" class="img-fluid tm-catalog-item-img">
                        <a href="video-page.html" class="position-absolute tm-img-overlay">
                            <i class="fas fa-play tm-overlay-icon"></i>
                        </a>
                    </div>
                    <div class="p-3 tm-catalog-item-description">
                        <h3 class="tm-text-gray text-center tm-catalog-item-title">Nam tincidunt consectetur</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    */ ?>

</main>
