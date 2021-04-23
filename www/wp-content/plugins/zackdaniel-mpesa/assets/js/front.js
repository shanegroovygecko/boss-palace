const mpesa = function () {

    const self = this;

    this.STK_POLL_COUNT = 0;

    this.STK_POLL_MAX_AMOUNT = 3;

    this.STK_POLL_INTERVAL_SECONDS = 10000;

    this.init = function () {
        this.setEvents();
    };

    this.updateButtonText = function () {
        $('.checkout-with-mpesa > .text-span').text('Pay now');
    };

    this.toggleMpesaForm = function (state) {
        if (state) {
            $('.mpesa-number-area').show();
            return;
        }
        $('.mpesa-number-area').hide();
        return;
    };

    this.clearMpesaNumber = function () {
        $('.mpesa-mobile-input').val('');
    };

    this.numberValid = function (number) {
        number = this.getRawPhoneNumber(number);
        return number.length > 8 && number.length < 11;
    };

    this.getRawPhoneNumber = function (number) {
        return number.replace(/ /g, '');
    };

    this.validateMepsaForm = function (evt) {
        if ($('.mpesa-number-area').is(":hidden")) {
            this.toggleMpesaForm(true);
            this.clearMpesaNumber();
        }
        this.updateButtonText();
        return this.numberValid($('.mpesa-mobile-input').val());
    };

    this.handleMpesaButtonClick = function (evt) {
        const onClickReportFunction =
            $(evt.currentTarget).data('onClickReportFunction');
        const validated = this.validateMepsaForm();
        const totalPrice = $(evt.currentTarget).data('price');
        if (validated) {
            self.sendValidationReport(onClickReportFunction, true);
            const data = {
                phoneNumber: this.getRawPhoneNumber($('.mpesa-mobile-input').val()),
                amount: totalPrice,
                action: 'make_mpesa_request',
            };

            $.ajax({
                type: "post",
                dataType: "json",
                url: test.ajaxurl,
                data: data,
                success: function (response) {
                    console.log('response ' + test.ajaxurl, response);
                    /*if (response.success && response.data) {
                        self.pollToSubmitStkForm(response.data);
                    } else {
                        // show error to the user.
                        self.sendUserToPaymentResultScreen(false);
                    }*/
                },
                error: function (response) {
                    //self.sendUserToPaymentResultScreen(false);
                }
            });

        } else {
            // show error message on the phone number
            self.sendValidationReport(onClickReportFunction, false);
        }
    };

    this.sendValidationReport = function (theFunction, valid) {
        if (typeof theFunction == 'string') {
            eval(theFunction)(valid);
        }
    };

    this.pollToSubmitStkForm = function (data) {

        const outcomeDataObject = {};
        outcomeDataObject.paymentResult = 'failure';
        if (data.ResponseCode != undefined && data.ResponseCode !== null) {
            outcomeDataObject.paymentResult = 'success';
            outcomeDataObject.ResponseCode = data.ResponseCode;
            outcomeDataObject.CheckoutRequestID = data.CheckoutRequestID;
            outcomeDataObject.MerchantRequestID = data.MerchantRequestID;
            outcomeDataObject.postId = data.postId;


            setTimeout(function () {
                self.pollToConfirmStkPayment(outcomeDataObject).done(function (result) {
                    self.sendUserToPaymentResultScreen(true, result);
                });
            }, self.STK_POLL_INTERVAL_SECONDS);

        } else {
            this.sendUserToPaymentResultScreen(false);
        }
    };

    this.pollToConfirmStkPayment = function (resultData, defer) {
        var self = this;
        if (defer === undefined) {
            defer = $.Deferred();
        }
        this.isMpesaPaymentReady(resultData).done(function (data) {
            self.STK_POLL_COUNT++;
            // {"success":true,"data":{"isMpesaRequestCompleted":{"completed":"false","status":"pending"}}}
            if (
                typeof data.isMpesaRequestCompleted != undefined &&
                typeof data.isMpesaRequestCompleted.completed != undefined &&
                typeof data.isMpesaRequestCompleted.status != undefined &&
                data.isMpesaRequestCompleted.completed == 'true'
            ) {
                defer.resolve(
                    data.isMpesaRequestCompleted.status
                );
                return;
            }
            if (self.STK_POLL_COUNT < self.STK_POLL_MAX_AMOUNT) {
                setTimeout(function () {
                    self.pollToConfirmStkPayment(resultData, defer);
                }, self.STK_POLL_INTERVAL_SECONDS);
            } else {
                defer.resolve('pending');
            }
        });
        return defer.promise();
    };

    this.isMpesaPaymentReady = function (resultData) {
        var defer = $.Deferred();
        const postData = {};
        postData.MerchantRequestID = resultData.MerchantRequestID;
        postData.CheckoutRequestID = resultData.CheckoutRequestID;
        postData.ResponseCode = resultData.ResponseCode;
        postData.postId = resultData.postId;

        wp.ajax.post("check_mpesa_status", postData)
            .done(function (response) {
                defer.resolve(response);
            });
        return defer.promise();
    };

    this.sendUserToPaymentResultScreen = function (success, result) {
        $('#mpesa-payment-result').val(result || '');
        $('#mpesa-result-form').submit();
    };

    this.stripUnwanted = function (evt) {
        let value = $(evt.currentTarget).val();
        // remove spaces
        value = value.replace(/ /g, '');
        // remove non-digits
        value = value.replace(/\D.+/, '');
        value = value.replace(/^0/, '');
        // limit the length of the digits
        value = value.substr(0, 10);
        let match = value.match(/^(\d{3})(\d{3})((\d{3})|(\d{4}))$/);
        if (match) {
            value = match[1] + ' ' + match[2] + ' ' + match[3];
        }
        $(evt.currentTarget).val(value);
    };

    this.toggleErrorOnMpesaButton = function (button, state) {
        if (state) {
            $(button).closest('.field-block').addClass('error');
        } else {
            $(button).closest('.field-block').removeClass('error');
        }
    };

    this.setEvents = function () {
        $('.checkout-with-mpesa').on('click', function (evt) {
            evt.preventDefault();
            const validationCheckFunction =
                $(evt.currentTarget).data('validationCheckFunction');
            const valid = eval(validationCheckFunction);
            if (valid) {
                self.toggleErrorOnMpesaButton(this, false);
                self.handleMpesaButtonClick(evt);
            } else {
                self.toggleErrorOnMpesaButton(this, true);
            }
        });

        $('.mpesa-mobile-input').keyup(function (evt) {
            self.stripUnwanted(evt);
        });
    };
};


(($) => {
    $(document).ready(function () {
        const m = new mpesa();
        m.init();
    });
})(jQuery);

