<?php
/*
 * Template Name: Cart

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
                <button class="btn" style="background-color: black; color:white; margin-left:90%;"> CHECKOUT</button>
            </div>
            <div class="col-md-12">
                <?php
                if (isset($_GET['tp'])) {
                    $items['item'][$_GET['tp']] = get_post($_GET['tp']);
                    $_SESSION['cart_items'] = $items;
                }
                if (isset($_SESSION['cart_items'])) {
                    echo "<pre>" . json_encode($_SESSION['cart_items'], JSON_PRETTY_PRINT) . "</pre>";
                } else {
                    echo "No Cart";
                }
                ?>
            </div>
            </div>
        </div>
    </div>

    <?php
    get_footer();
