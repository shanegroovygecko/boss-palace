<?php

/**
 * Class CurrencyScraper
 */
class CurrencyScraper
{
    /**
     * @String
     */
    const POST_TYPE = 'x-chg-rates-scrape';

    /**
     * @String
     */
    const POST_TITLE = 'todays-exchange-rates';

    /**
     * @var int
     */
    const SCRAPE_FREQUENCY = 86400;

    /**
     * @var int
     */
    const USD = "USD";

    /**
     * @var int
     */
    const BASE_URL = "http://www.floatrates.com/daily/";

    /**
     * @var stdClass | null
     */
    private $post = null;

    /**
     * @var string | null
     */
    private $postId = null;

    /**
     * @var array
     */
    private $postMeta = [];

    /**
     * @return bool
     */
    private function init()
    {
        // assert 'tracking' post is available for use
        $this->retrieveThePost();
    }

    /**
     * @return bool
     * @throws Exception
     */
    private function shouldScrape()
    {
        // get the last scrape date.
        if (empty($this->postMeta['last_updated_time'])) {
            return true;
        }

        $lastUpdateTime = $this->postMeta['last_updated_time'][0];

        $nextFetchDateTimeObject = new DateTime(date('Y-m-d H:i:s', $lastUpdateTime));
        $nextFetchDateTimeObject->modify('+' . self::SCRAPE_FREQUENCY . ' seconds');

        // get the datetime object for now.
        $todaysDateTime = new DateTime();
        if ($todaysDateTime > $nextFetchDateTimeObject) {
            return true;
        }

        return false;
    }

    public function scrape()
    {
        $this->init();
        if ($this->postId) {
            $scT = $this->shouldScrape();
            if ($scT) {
                // Scrape now
                $scrapedRates = array_merge(
                    [],
                    $this->getScrapedRates('KES'),
                    $this->getScrapedRates('GBP')
                );
                if (!empty($scrapedRates)) {
                    // save the scraped rates.
                    $this->saveScrapedRates($scrapedRates);
                    $this->updateLastScrapeTime();
                }
            }
        }
    }

    public function updateLastScrapeTime()
    {
        // last_updated_time
        update_post_meta($this->postId,
            "last_updated_time", (new DateTime())->getTimestamp());
    }

    public function saveScrapedRates(array $rates)
    {
        $updateRateMeta = function ($key, $rate) {
            update_post_meta($this->postId,
                $key, $rate);
        };

        foreach ($rates as $rateAcronym => $rate) {
            if (!empty($rate['inverseRate'])) {
                $updateRateMeta($rateAcronym . '_inverseRate', $rate['inverseRate']);
            }
            if (!empty($rate['exchangeRate'])) {
                $updateRateMeta($rateAcronym . '_exchangeRate', $rate['exchangeRate']);
            }
        }
    }

    private function retrieveThePost()
    {
        $post = $this->getXCRatesPost();
        if ($post) {
            $this->postId = $post->id;
            $this->post = $post;
            $this->postMeta = get_post_meta($this->postId);
        }
        return $post;
    }

    /**
     * @return array|object|void|null
     */
    private function getXCRatesPost()
    {
        global $wpdb;
        return $wpdb->get_row("select id, post_type, post_title from $wpdb->posts where post_title " .
            "= '" . self::POST_TITLE . "' and post_type = '" . self::POST_TYPE . "'");
    }

    /**
     * @return array|object|void|null
     */
    private function getScrapedRates($acronym)
    {
        $url = self::BASE_URL . $acronym . ".xml";
        $response = wp_remote_get($url);
        $responseBody = wp_remote_retrieve_body($response);

        $ratesArray = [];
        if ($responseBody) {
            $xml = simplexml_load_string($responseBody);
            if (!empty($xml->item)) {
                foreach ($xml->item as $value) {
                    if (!empty($value->targetCurrency) &&
                        $value->targetCurrency[0]->__toString() === self::USD) {
                        // we got the item. Let's stop here.
                        $ratesArray = [
                            "exchangeRate" => !empty($value->exchangeRate) ?
                                $value->exchangeRate[0]->__toString() : "",
                            "inverseRate" => !empty($value->inverseRate) ?
                                $value->inverseRate[0]->__toString() : "",
                        ];
                        break;
                    }
                }
            }
        }

        return [
            $acronym => $ratesArray
        ];
    }

    public function getSavedRates($ratesArray)
    {
        $rates = [];
        $post = $this->retrieveThePost();
        if (!empty($post->id)) {
            $meta = get_post_meta($post->id);
            if (!empty($meta)) {
                foreach ($ratesArray as $item) {
                    if (!empty($meta[$item . '_inverseRate'])) {
                        $rates[$item] = $meta[$item . '_inverseRate'][0] ?? "";
                    }
                }
            }
        }
        return $rates;
    }

    /**
     * @param string $from
     * @param string $direction
     * @return float
     */
    public function getSingleExchangeRateToUSD(string $from, string $direction)
    {
        $post = $this->retrieveThePost();
        if (!empty($post->id)) {
            $meta = get_post_meta($post->id);
            $metaKey = strtoupper($from).'_'.$direction;
            if (!empty($meta[$metaKey])) {
                return (float)$meta[$metaKey][0];
            }
        }
        return 0.00;
    }
}
