<?php

include_once 'Environment.php';

/**
 * Class Mpesa
 * @package App\Services\Mpesa
 */
class Mpesa
{
    /**
     * @var string
     */
    private $environment = '';

    /**
     * Mpesa constructor.
     */
    public function __construct()
    {
        // $this->environment = 'production';
        $this->environment = 'sandbox';

    }

    protected function callMepsa($path, $method, $headerOptions = [], $body = null)
    {
        $response = null;
        try {
            $mpesaBaseUrl = $this->getMpesaBaseUrl();

            $headers = [
                'Content-Type' => 'application/json',
            ];

            $headers = $this->setBasicAuth($headerOptions, $headers);
            $headers = $this->setBearerAuth($mpesaBaseUrl, $headerOptions, $headers);

            $payload = ['headers' => $headers];
            if ($body) {
                $payload = array_merge($payload, ['body' => $body]);
            }

            $response = wp_remote_post($mpesaBaseUrl . $path, $payload);

        } catch (\Exception $e) {
            wp_send_json_error(['result' => $e->getMessage()]);
            return;
        }

        if ($response && wp_remote_retrieve_response_code($response) == 200) {
            return wp_remote_retrieve_body($response);
        }
        wp_send_json_error(['result' => $response]);
        return;
    }

    /**
     * @param $headerOptions
     * @param $headers
     * @return array
     */
    private function setBasicAuth($headerOptions, $headers)
    {
        if (!empty($headerOptions['setBasicAuth'])) {
            $headers = array_merge($headers,
                [
                    'Authorization' =>
                        'Basic ' .
                        base64_encode(
                            $this->getMpesaConsumerKey() . ":" .
                            $this->getMpesaConsumerSecret()
                        )
                ]
            );
        }
        return $headers;
    }

    /**
     * @param $mpesaBaseUrl
     * @param $headerOptions
     * @param $headers
     * @return array
     */
    private function setBearerAuth($mpesaBaseUrl, $headerOptions, $headers)
    {
        if (!empty($headerOptions['setBearerAuth'])) {
            $accessToken = $this->getAccessToken();
            $body = [
                'Host' => $this->getMpesaBaseUrl(true),
                'Authorization' =>
                    'Bearer ' . $accessToken
            ];
            $headers = array_merge($headers, $body);
        }
        return $headers;
    }

    private function getAccessToken()
    {
        $url = $this->getMpesaBaseUrl() . '/oauth/v1/generate?grant_type=client_credentials';

        $bearerAuth = 'Basic ' .
            base64_encode(
                $this->getMpesaConsumerKey() . ":" .
                $this->getMpesaConsumerSecret()
            );

        $headers = array(
            'Authorization' => $bearerAuth,
            'Host' => $this->getMpesaBaseUrl(true),
            'Content-type' => 'application/json',
        );

        $payLoad = array(
            'method' => 'GET',
            'timeout' => 30,
            'redirection' => 5,
            // 'httpversion' => '1.0',
            'blocking' => true,
            'headers' => $headers,
            //'body' => $body,
            'cookies' => array()
        );

        $response = wp_remote_get($url, $payLoad);

        $responseBody = wp_remote_retrieve_body($response);
        $result = json_decode($responseBody);


        if (!empty($result->access_token)) {
            return $result->access_token;
        }
        return null;
    }

    /**
     * @return mixed|string
     */
    protected function getShortKey(): string
    {
        if ($this->environment == Environment::PRODUCTION) {
            return get_option('live_mpesa_lipa_na_shortcode');
        }
        if ($this->environment == Environment::TEST) {
            return get_option('sandbox_mpesa_lipa_na_shortcode');
        }
        return get_option('sandbox_mpesa_lipa_na_shortcode');
    }

    /**
     * @return mixed|string
     */
    protected function getPartyBKey(): string
    {
        if ($this->environment == Environment::PRODUCTION) {
            return get_option('live_mpesa_lipa_na_partyb');
        }
        if ($this->environment == Environment::TEST) {
            return get_option('sandbox_mpesa_lipa_na_partyb');
        }
        return get_option('sandbox_mpesa_lipa_na_partyb');
    }

    /**
     * @return mixed|string
     */
    protected function getBusinessPassKey(): string
    {
        if ($this->environment == Environment::PRODUCTION) {
            return get_option('live_mpesa_lipa_na_passkey');
        }
        if ($this->environment == Environment::TEST) {
            return get_option('sandbox_mpesa_lipa_na_passkey');
        }
        return get_option('sandbox_mpesa_lipa_na_passkey');
    }

    /**
     * @return mixed|string
     */
    private function getMpesaBaseUrl($noHttp = false): string
    {
        $url = "";
        if ($this->environment == Environment::PRODUCTION ||
            $this->environment == Environment::TEST) {
            if ($this->environment == Environment::PRODUCTION) {
                $url = get_option('live_mpesa_baseurl');
            }
            if ($this->environment == Environment::TEST) {
                $url = get_option('sandbox_mpesa_baseurl');
            }
        } else {
            $url = get_option('sandbox_mpesa_baseurl');
        }
        if ($noHttp) {
            // Remove the http.
            $url = preg_replace('/http(s?):\/\//', '', $url);
        }
        return $url;
    }

    private function getMpesaConsumerKey()
    {
        if ($this->environment == Environment::PRODUCTION) {
            return get_option('live_mpesa_consumerkey');
        }
        if ($this->environment == Environment::TEST) {
            return get_option('sandbox_mpesa_consumerkey');
        }
        return get_option('sandbox_mpesa_consumerkey');
    }

    private function getMpesaConsumerSecret()
    {
        if ($this->environment == Environment::PRODUCTION) {
            return get_option('live_mpesa_consumersecret');
        }
        if ($this->environment == Environment::TEST) {
            return get_option('sandbox_mpesa_consumersecret');
        }
        return get_option('sandbox_mpesa_consumersecret');
    }
}
