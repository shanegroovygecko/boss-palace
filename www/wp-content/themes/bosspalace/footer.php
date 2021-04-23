

<!-- Subscribe form and footer links -->
<div class="row mt-5 pt-3">
    <div class="col-xl-6 col-lg-12 mb-4">
        <div class="tm-bg-gray p-5 h-100 email-list-block">
            <h3 class="tm-text-primary mb-3">Do you want to get our latest updates?</h3>
            <p class="mb-5">Please subscribe our newsletter for upcoming new videos and latest information about our
                work. Thank you.</p>
            <div class="email-list-submit-success">
                <h4>Thank you! We will be in touch</h4>
            </div>
            <form action="" method="GET" class="tm-subscribe-form email-list-form">
                    <input type="text" id="emailListElement" name="email" class="" placeholder="Your Email..." required>
                <button type="submit" id="emailListSubmitElement" class="btn rounded-0 btn-primary tm-btn-small">Subscribe</button>
                <div class="errored">&nbsp;&nbsp;Please enter a valid email</div>
            </form>
            <div class="email-list-submit-failure">
                <small>Oops! Something went wrong. Please try again later.</small>
            </div>
            <style>
                form .errored{
                    display: none;
                }

                form .has-error,
                form.errored .errored{
                    color: red;
                    border-color: red;
                }

                form.errored .errored{
                    display: inline-block;
                }

                .email-list-block .email-list-submit-success,
                .email-list-block .email-list-submit-failure{
                    display: none;
                }

                .email-list-block .email-list-submit-success{
                    color: green;
                }

                .email-list-block .email-list-submit-failure{
                    color: red;
                }
            </style>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-12 mb-4">
        <div class="p-5 tm-bg-gray">
            <h3 class="tm-text-primary mb-4">Quick Links</h3>
            <ul class="list-unstyled tm-footer-links">
                <li><a href="<?php
                    echo BlConfig::getSetting('Whatsapp', 'getHrefPrefix');
                    ?>send?phone=<?php
                    echo BlConfig::getSetting('Whatsapp', 'getContactNumber');
                    ?>&text=<?php
                    echo BlConfig::getSetting('Whatsapp', 'getMainMessage');
                    ?>"><i class="fab fa-whatsapp" aria-hidden="true"></i> Chat on WhatsApp here</a></li>
            </ul>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-12 mb-4">
        <div class="p-5 tm-bg-gray h-100">
            <h3 class="tm-text-primary mb-4">Our Pages</h3>
            <ul class="list-unstyled tm-footer-links">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact us</a></li>
            </ul>
        </div>
    </div>
</div> <!-- row -->

<footer class="row pt-5">
    <div class="col-12">
        <p class="text-right">Copyright 2020 The Video Catalog Company

            - Designed by <a href="https://templatemo.com" rel="nofollow" target="_parent">TemplateMo</a></p>
    </div>
</footer>
</div> <!-- tm-content-container -->
</div>

</div> <!-- .tm-page-wrap -->

<?php wp_footer(); ?>
<script src="<?php echo esc_url(BL_THEME_URI . 'templatemo_552_video_catalog/js/jquery-3.4.1.min.js'); ?>"></script>
<script src="<?php echo esc_url(BL_THEME_URI . 'templatemo_552_video_catalog/js/bootstrap.min.js'); ?>"></script>
<script>
    function setVideoSize() {
        const vidWidth = 1920;
        const vidHeight = 1080;
        let windowWidth = window.innerWidth;
        let newVidWidth = windowWidth;
        let newVidHeight = windowWidth * vidHeight / vidWidth;
        let marginLeft = 0;
        let marginTop = 0;

        if (newVidHeight < 500) {
            newVidHeight = 500;
            newVidWidth = newVidHeight * vidWidth / vidHeight;
        }

        if(newVidWidth > windowWidth) {
            marginLeft = -((newVidWidth - windowWidth) / 2);
        }

        if(newVidHeight > 720) {
            marginTop = -((newVidHeight - $('#tm-video-container').height()) / 2);
        }

        const tmVideo = $('#tm-video');

        tmVideo.css('width', newVidWidth);
        tmVideo.css('height', newVidHeight);
        tmVideo.css('margin-left', marginLeft);
        tmVideo.css('margin-top', marginTop);
    }

    $(document).ready(function () {
        /************** Video background *********/

        setVideoSize();

        // Set video background size based on window size
        let timeout;
        window.onresize = function () {
            clearTimeout(timeout);
            timeout = setTimeout(setVideoSize, 100);
        };

        // Play/Pause button for video background
        const btn = $("#tm-video-control-button");

        btn.on("click", function (e) {
            const video = document.getElementById("tm-video");
            $(this).removeClass();

            if (video.paused) {
                video.play();
                $(this).addClass("fas fa-pause");
            } else {
                video.pause();
                $(this).addClass("fas fa-play");
            }
        });
    })
</script>
</body>

</html>