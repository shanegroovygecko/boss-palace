<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sourcing Packages</title>
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo esc_url(BL_THEME_URI . 'assets/img/favicon_io/apple-touch-icon.png'); ?>">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo esc_url(BL_THEME_URI . 'assets/img/favicon_io/favicon-32x32.png'); ?>">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo esc_url(BL_THEME_URI . 'assets/img/favicon_io/favicon-16x16.png'); ?>">
    <link rel="manifest" href="<?php echo esc_url(BL_THEME_URI . 'assets/img/favicon_io/site.webmanifest'); ?>">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div class="tm-page-wrap mx-auto">
    <?php if ( is_front_page() ) : ?>
        <?php get_template_part( 'template-parts/sections/headers/headers', 'front' );  ?>
    <?php else: ?>
        <?php get_template_part( 'template-parts/sections/headers/headers', 'page' );  ?>
    <?php endif; ?>
    <div class="container-fluid">
        <div id="content" class="mx-auto tm-content-container">
