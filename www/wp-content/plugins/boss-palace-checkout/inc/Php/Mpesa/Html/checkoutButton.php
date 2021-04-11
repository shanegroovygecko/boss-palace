<a class="st48pay_mpesa_button">
    <div class="button-logo">
        <span style="background-image: url(<?php
              echo plugin_dir_url(__FILE__) . '../../../assets/images/mpesa/mpesa-logo-png-1.png';
              ?>)"
        ></span>
    </div>
    <div class="button-text"><span>Checkout with Mpesa</span></div>
</a>


<style>

    .st48pay_mpesa_button {
        display: block;
        overflow: hidden;
        width: 100%;
        max-width: 468px;
        margin-top: 20px;
        color: white;
    }

    .st48pay_mpesa_button .button-logo {
        width:30%;
        border-top-left-radius: 23px;
        border-bottom-left-radius: 23px;
        border-left: 2px solid #66ad45;
    }

    .st48pay_mpesa_button .button-text {
        width:70%;
        border-top-right-radius: 23px;
        border-bottom-right-radius: 23px;
        border-right: 2px solid #66ad45;
        background-color: #66ad45;
    }

    .st48pay_mpesa_button .button-logo,
    .st48pay_mpesa_button .button-text {
        float: left;
        height: 45px;
        border-top: 2px solid #66ad45;
        border-bottom: 2px solid #66ad45;
    }

    .st48pay_mpesa_button .button-logo span {
        width: 50px;
        height: 40px;
        margin-top: 7px;
        margin-left: 33%;
        background-size: 100%;
        background-repeat: no-repeat;
        display: block;
    }

    .st48pay_mpesa_button .button-text span {
        margin-top: 7px;
        margin-left: 6%;
        display: block;
    }
</style>