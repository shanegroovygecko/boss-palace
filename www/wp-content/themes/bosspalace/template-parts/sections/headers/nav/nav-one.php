<?php
$order = ['name', 'term_id', 'ASC', 'DESC'];
shuffle($order);
$args = array(
    'number' => 4,
    'order' => $order[0],
    'parent' => 4 // will be 4 on live
);
$categories = get_categories($args);
?>
<?php if (!empty($categories)): ?>
    <div class="row">
        <div class="col-12">
            <div class="tm-categories-container mb-5">
                <h3 class="tm-text-primary tm-categories-text">Categories:</h3>
                <ul class="nav tm-category-list">
                    <?php foreach ($categories as $category): ?>
                        <li class="nav-item tm-category-item">
                            <a href="<?php echo esc_url(get_category_link($category->term_id)); ?>"
                               class="nav-link tm-category-link">
                                <?php echo $category->name; ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                    <li class="nav-item tm-category-item">
                        <a href="/packages"
                           class="nav-link tm-category-link">
                            more...
                        </a>
                    </li>
                    <!--
                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link active">All</a></li>
                    -->
                </ul>
            </div>
        </div>
    </div>
<?php endif; ?>