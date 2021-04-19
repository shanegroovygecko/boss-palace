<div id="paypal-button"></div>

<script>
    paypal.Button.render({
        // Configure environment
        env: 'sandbox',
        client: {
            sandbox: 'AU41bu3Ib8yVIkJShH-nJjukUUz2ZzxXQuapU3cgiV-E858bs9nxMKxxsB7KR42n8hfIU6olZNeI-nUO',
            production: 'demo_production_client_id'
        },
        // Customize button (optional)
        locale: 'en_US',
        style: {
            size: 'responsive',
            // size: 'small',
            color: 'gold',
            shape: 'rect',
        },

        // Enable Pay Now checkout flow (optional)
        commit: false,

        // Set up a payment
        payment: function(data, actions) {

            return actions.payment.create({
                transactions: [{
                    amount: {
                        total: '<?php echo $price; ?>',
                        currency: 'USD'
                    },
                    description: '<?php echo $title; ?>'//,
                    //custom: 'My order number is PORD-23499392',
                }]
            });
        },
        // Execute the payment
        onAuthorize: function(data, actions) {
            return actions.payment.execute().then(function(resultingData) {
                // Show a confirmation message to the buyer
                console.log(resultingData, "resultingData");
                window.alert('Thank you for your purchase!');
            });
        }
    }, '#paypal-button');
</script>