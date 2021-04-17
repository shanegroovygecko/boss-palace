<?php

function getCheckoutButton($buttonText, $totalPrice, $validationCheckFunction = null)
{
    ?>

    <form class="mpesa-number-form" method="post" action="">
        <span class="mpesa-number-area" style="display: none;">
            <div class="row">
                            <div class="col-md-2 mb-2">
                                <label>&nbsp;</label>
                                <input type="text" class="form-control" placeholder="( 254 )" required value="" disabled="">
                            </div>
                            <div class="col-md-10 mb-10">
                                <label for="state">Enter your mobile number *</label>
                                <input type="text" class="form-control mpesa-mobile-input" required value=""/>
                                <div class="invalid-feedback"> Please provide a valid state. </div>
                            </div>
                        </div>
        </span>



        <div class="row">
            <div class="col-md-12 mb-12">

                <div class="field-block">
                    <div class="button-group filter-button-group checkout-with-mpesa-container">
                        <button
                                class="active checkout-with-mpesa"
                                name="doesnhavename"
                                data-filter="*"
                                data-price="<?php echo $totalPrice; ?>"
                                data-validation-check-function="<?php echo $validationCheckFunction; ?>"
                        >
                            <img src="<?php echo plugin_dir_url(__FILE__) . '../../../assets/imgs/mpesa/mpesa-logo-png-1.png'; ?>"/>
                            <span class="text-span"><?php echo $buttonText; ?></span>
                        </button>
                        <div class="invalid-feedback button-invalid-error"> Please enter your shipping address
                            correctly.
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </form>

    <form id="mpesa-result-form" method="post" action="/checkout-result/">
        <input type="hidden" id="mpesa-payment-result" name="mpesa-payment-result" value="">
    </form>
    <style>

        .mpesa-number-form{
            margin-top: 36px;
        }

        .checkout-with-mpesa-container{
            width: 100%;
        }

        .button-invalid-error,
        .checkout-with-mpesa {
            float: right;
        }

        .button-invalid-error{
            text-align: right;
        }

        .checkout-with-mpesa img {
            width: 41px;
            margin-right: 12px;
        }
    </style>
    <?php
}
