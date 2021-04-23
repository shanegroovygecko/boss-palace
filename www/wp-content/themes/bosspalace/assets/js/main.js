(($) => {

    const validator = function () {
        this.validate = (type, emailElement) => {
            switch (type) {
                case "email": {
                    return this.isEmailValid(emailElement);
                }
                default: {

                }
            }
            return false;
        };

        this.validNotBlank = (element) => {
            if (element.val() === "") {
                return false;
            }
            return true;
        };

        this.isEmailValid = function (element) {
            if (!this.validNotBlank(element)) {
                return false;
            }
            const email = element.val();
            const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            // evaluate an email here.
            return re.test(email);
        };
    };

    const emailList = function () {

        const self = this;

        this.validate = new validator();

        this.init = () => {
            this.setEvents();
        };

        this.setEvents = () => {
            $('#emailListSubmitElement').click((evt) => {
                evt.preventDefault();
                const emailElement = $('#emailListElement');
                self.showError(false, emailElement);
                const validateResults = self.validate.validate('email', emailElement);
                if(!validateResults){
                    self.showError(true, emailElement);
                }else{
                    this.submitForEmailList(emailElement.val());
                }
            });

            $('#emailListElement').blur((evt) => {
                const item = $(evt.currentTarget);
                self.showError(false, item);
                const validateResults = self.validate.validate('email', item);
                if(!validateResults){
                    self.showError(true, item);
                }
            });
        };

        this.showError = (errored, element) => {
            if(errored){
                element.addClass('has-error');
                element.parent().addClass('errored');
            }else{
                element.removeClass('has-error');
                element.parent().removeClass('errored');
            }
        };

        this.submitForEmailList = (email) => {

            var data = {
                email: email,
                action: "add_to_cart"
            };

            $.ajax({
                type: "post",
                dataType: "json",
                url: mainVars.ajaxurl,
                data: data,
                success: function (response) {
                    console.log('response', response);
                    self.displayResults(true);
                },
                error: function (response) {
                    self.displayResults(false);
                }
            });
        };

        this.displayResults = (success) => {
            if(success){
                $('.email-list-block > .email-list-submit-success').show();
                $('.email-list-block > form').hide();
            }else{
                $('.email-list-block > .email-list-submit-failure').show();
            }
        };

    };

    const mpesaControl = function () {
        //site-mpesa-button-pocket
    };

    $(document).ready(function () {
        (new emailList()).init();
    });
})(jQuery);


function mpesaButtonSubmitting(result){
    if(result){
        $('.site-mpesa-button-pocket .mpesa-submitting-holder').show();
        $('.site-mpesa-button-pocket .mpesa-button-holder').hide();
    }
}