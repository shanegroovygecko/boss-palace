<?php
global $frontHelper;
?>
<div class="row tm-catalog-item-list">
    <?php
    $args = 'post_type=packages&order=DESC';
    $q = new WP_Query($args);
    if ($q->have_posts()):
        while ($q->have_posts()):
            $q->the_post();
            ?>
            <?php $fields = get_fields(get_the_ID()); ?>
            <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                <div class="position-relative tm-thumbnail-container">
                    <?php if (!empty($fields['youtube_video_id'])): ?>
                        <img src="https://img.youtube.com/vi/<?php echo $fields['youtube_video_id']; ?>/0.jpg"
                             alt="Image" class="img-fluid tm-catalog-item-img">
                    <?php elseif (!empty($fields['youtube_video_id'])): ?>
                        <img src="<?php echo esc_url(BL_THEME_URI . 'templatemo_552_video_catalog/img/tn-01.jpg'); ?>"
                             alt="Image" class="img-fluid tm-catalog-item-img">
                    <?php endif; ?>
                    <a href="<?php echo the_permalink(); ?>" class="position-absolute tm-img-overlay">
                        <?php if (!empty($fields['youtube_video_id'])): ?>
                            <i class="fas fa-play tm-overlay-icon"></i>
                        <?php endif; ?>
                    </a>
                </div>
                <div class="p-4 tm-bg-gray tm-catalog-item-description">
                    <h3 class="tm-text-primary mb-3 tm-catalog-item-title">
                        <a href="<?php echo the_permalink(); ?>">
                            <?php the_title(); ?>
                        </a>
                    </h3>
                    <?php echo $fields['short_description'] ?? "" ?>
                </div>
            </div>
        <?php
        endwhile;
        wp_reset_postdata();
    endif;
    ?>
</div>

<!-- Catalog Paging Buttons
<div>
    <ul class="nav tm-paging-links">
        <li class="nav-item active"><a href="#" class="nav-link tm-paging-link">1</a></li>
        <li class="nav-item"><a href="#" class="nav-link tm-paging-link">2</a></li>
        <li class="nav-item"><a href="#" class="nav-link tm-paging-link">3</a></li>
        <li class="nav-item"><a href="#" class="nav-link tm-paging-link">4</a></li>
        <li class="nav-item"><a href="#" class="nav-link tm-paging-link">></a></li>
    </ul>
</div>
-->