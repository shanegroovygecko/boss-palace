<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sourcing Packages</title>
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
