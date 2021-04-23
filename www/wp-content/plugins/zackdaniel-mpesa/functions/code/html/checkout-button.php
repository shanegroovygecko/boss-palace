<?php

function getCheckoutButton($buttonText, $totalPrice, $validationCheckFunction = null, $onClickReportFunction = null)
{
    ?>

    <form class="mpesa-number-form" method="post" action="">
        <div class="mpesa-number-area" style="display: none;">
            <div class="row">
                <div class="col-md-2 mb-2">
                    <label>&nbsp;</label>
                    <input type="text" class="form-control area-code-text" placeholder="( 254 )" required
                           value="" disabled="">
                </div>
                <div class="col-md-10 mb-10">
                    <label class="number-label">Enter your mobile number *</label>
                    <input type="text" class="form-control mpesa-mobile-input" required value=""/>
                    <div class="invalid-feedback"> Please provide a valid state. </div>
                </div>
            </div>
        </div>


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
                                data-on-click-report-function="<?php echo $onClickReportFunction; ?>"
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

        .mpesa-number-form {
            margin-top: 36px;
        }

        .checkout-with-mpesa-container {
            width: 100%;
        }

        .button-invalid-error,
        .checkout-with-mpesa {
            float: right;
        }

        .button-invalid-error {
            text-align: right;
        }

        .mpesa-number-form .mpesa-number-area {
            margin-bottom: 16px;
        }

        .mpesa-number-form .mpesa-number-area .area-code-text {
            margin-top: 3px;
            padding: 20px 1px;
            width: 52px;
        }

        .mpesa-number-form .mpesa-number-area .mpesa-mobile-input {
            float: right;
            width: 93%;
        }

        .mpesa-number-form .mpesa-number-area label.number-label {
            font-size: 16px;
        }

        .checkout-with-mpesa img {
            width: 41px;
            margin-right: 12px;
        }
    </style>
    <?php
}
