<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package dostart
 */

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly.
}

get_header(); ?>

<?php

if (have_posts()) {

// Load posts loop.
    ?>
    <?php the_post(); ?>

    <!-- Main -->
    <section id="main">
        <div class="container">
            <div class="row">

                <!-- Content -->
                <div id="content" class="col-8 col-12-medium">


                    <?php the_content(); ?>
                    <h1>HERE IS THE PAGE</h1>

                    <!-- Post -->
                    <article class="box post">
                        <header>
                            <h2><a href="#">I don’t want to say <strong>it’s the aliens</strong> ...<br/>
                                    but it’s the aliens.</a></h2>
                        </header>
                        <a href="#" class="image featured">

                            <img src="https://via.placeholder.com/350x150" >


                        </a>
                        <h3>I mean isn't it possible?</h3>
                        <p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
                            ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
                            sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
                            in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
                            magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
                            consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
                            justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
                            mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
                            Curabitur leo nibh, rutrum eu malesuada in tristique.</p>
                        <ul class="actions">
                            <li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
                        </ul>
                    </article>

                    <!-- Post -->
                    <article class="box post">
                        <header>
                            <h2><a href="#">By the way, many thanks to <strong>regularjane</strong>
                                    for these awesome demo photos</a></h2>
                        </header>
                        <a href="#" class="image featured"><img src="images/pic05.jpg" alt=""/></a>
                        <h3>You should probably check out her work</h3>
                        <p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
                            ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
                            sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
                            in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
                            consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
                            in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
                            magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
                            consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
                            justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
                            mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
                            Curabitur leo nibh, rutrum malesuada.</p>
                        <p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat
                            Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit ligula
                            vel quam viverra sit amet mollis tortor congue. Sed quis mauris sit amet
                            magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada in,
                            tristique at erat. Curabitur leo nibh, rutrum eu malesuada in, tristique
                            at erat lorem ipsum dolor sit amet lorem ipsum sed consequat magna
                            tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros consequat
                            magna tempus.</p>
                        <ul class="actions">
                            <li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
                        </ul>
                    </article>

                </div>

                <!-- Sidebar -->
                <div id="sidebar" class="col-4 col-12-medium">

                    <!-- Excerpts -->
                    <section>
                        <ul class="divided">
                            <li>

                                <!-- Excerpt -->
                                <article class="box excerpt">
                                    <header>
                                        <span class="date">July 30</span>
                                        <h3><a href="#">Just another post</a></h3>
                                    </header>
                                    <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                        suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem
                                        dolore.</p>
                                </article>

                            </li>
                            <li>

                                <!-- Excerpt -->
                                <article class="box excerpt">
                                    <header>
                                        <span class="date">July 28</span>
                                        <h3><a href="#">And another post</a></h3>
                                    </header>
                                    <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                        suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem
                                        dolore.</p>
                                </article>

                            </li>
                            <li>

                                <!-- Excerpt -->
                                <article class="box excerpt">
                                    <header>
                                        <span class="date">July 24</span>
                                        <h3><a href="#">One more post</a></h3>
                                    </header>
                                    <p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
                                        suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem
                                        dolore.</p>
                                </article>

                            </li>
                        </ul>
                    </section>

                    <!-- Highlights -->
                    <section>
                        <ul class="divided">
                            <li>

                                <!-- Highlight -->
                                <article class="box highlight">
                                    <header>
                                        <h3><a href="#">Something of note</a></h3>
                                    </header>
                                    <a href="#" class="image left"><img src="images/pic06.jpg" alt=""/></a>
                                    <p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel
                                        quam
                                        viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio
                                        facilisis
                                        convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum
                                        tempus
                                        facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button icon solid fa-file">Learn More</a></li>
                                    </ul>
                                </article>

                            </li>
                            <li>

                                <!-- Highlight -->
                                <article class="box highlight">
                                    <header>
                                        <h3><a href="#">Something of less note</a></h3>
                                    </header>
                                    <a href="#" class="image left"><img src="images/pic07.jpg" alt=""/></a>
                                    <p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel
                                        quam
                                        viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio
                                        facilisis
                                        convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum
                                        tempus
                                        facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
                                    <ul class="actions">
                                        <li><a href="#" class="button icon solid fa-file">Learn More</a></li>
                                    </ul>
                                </article>

                            </li>
                        </ul>
                    </section>

                </div>

            </div>
        </div>
    </section>


    <?php

// Previous/next page navigation.
//twenty_twenty_one_the_posts_navigation();

} else {

// If no content, include the "No posts found" template.
//get_template_part( 'template-parts/content/content-none' );
    echo '<h1>No postss</h1>';

}


?>

<?php get_footer(); ?>
