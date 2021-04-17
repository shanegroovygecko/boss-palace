<?php

class SettingsPage
{
    public function init()
    {
        add_action('admin_init', array($this, 'mpesa_settings_init'));
    }

    public function mpesa_settings_init()
    {

        // register a new setting for "reading" page
        register_setting('reading', 'wporg_setting_name');

        register_setting('reading', 'sandbox_mpesa_baseurl');
        register_setting('reading', 'sandbox_mpesa_consumerkey');
        register_setting('reading', 'sandbox_mpesa_consumersecret');
        register_setting('reading', 'sandbox_mpesa_lipa_na_passkey');
        register_setting('reading', 'sandbox_mpesa_lipa_na_shortcode');

        register_setting('reading', 'live_mpesa_baseurl');
        register_setting('reading', 'live_mpesa_consumerkey');
        register_setting('reading', 'live_mpesa_consumersecret');
        register_setting('reading', 'live_mpesa_lipa_na_passkey');
        register_setting('reading', 'live_mpesa_lipa_na_shortcode');

        // register a new section in the "reading" page
        add_settings_section(
            'mpesa_settings_section',
            'Mpesa Options',
            array($this, 'mpesa_settings_section_cb'),
            'reading'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'sandbox_mpesa_baseurl_field',
            'sandbox mpesa baseurl',
            array($this, 'sandbox_mpesa_baseurl_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'sandbox_mpesa_consumerkey_field',
            'sandbox mpesa consumer key',
            array($this, 'sandbox_mpesa_consumerkey_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'sandbox_mpesa_consumersecret_field',
            'sandbox mpesa consumer secret',
            array($this, 'sandbox_mpesa_consumersecret_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'sandbox_mpesa_lipa_na_passkey_field',
            'sandbox mpesa lipa na passkey',
            array($this, 'sandbox_mpesa_lipa_na_passkey_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'sandbox_mpesa_lipa_na_shortcode_field',
            'sandbox mpesa lipa na shortcode',
            array($this, 'sandbox_mpesa_lipa_na_shortcode_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'live_mpesa_baseurl_field',
            'live mpesa baseurl',
            array($this, 'live_mpesa_baseurl_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'live_mpesa_consumerkey_field',
            'live mpesa consumer key',
            array($this, 'live_mpesa_consumerkey_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'live_mpesa_consumersecret_field',
            'live mpesa consumer secret',
            array($this, 'live_mpesa_consumersecret_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'live_mpesa_lipa_na_passkey_field',
            'live mpesa lipa na passkey',
            array($this, 'live_mpesa_lipa_na_passkey_field_cb'),
            'reading',
            'mpesa_settings_section'
        );

        // register a new field in the "wporg_settings_section" section, inside the "reading" page
        add_settings_field(
            'live_mpesa_lipa_na_shortcode_field',
            'live mpesa lipa na shortcode',
            array($this, 'live_mpesa_lipa_na_shortcode_field_cb'),
            'reading',
            'mpesa_settings_section'
        );
    }

    /**
     * callback functions
     */

    // section content cb
    public function mpesa_settings_section_cb()
    {
        echo '<p>Settings for Mpesa Options.</p>';
    }

    public function sandbox_mpesa_baseurl_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('sandbox_mpesa_baseurl');
        // output the field
        ?>
        <input type="text" name="sandbox_mpesa_baseurl"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function sandbox_mpesa_consumerkey_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('sandbox_mpesa_consumerkey');
        // output the field
        ?>
        <input type="text" name="sandbox_mpesa_consumerkey"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function sandbox_mpesa_consumersecret_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('sandbox_mpesa_consumersecret');
        // output the field
        ?>
        <input type="text" name="sandbox_mpesa_consumersecret"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }


    public function sandbox_mpesa_lipa_na_passkey_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('sandbox_mpesa_lipa_na_passkey');
        // output the field
        ?>
        <input type="text" name="sandbox_mpesa_lipa_na_passkey"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function sandbox_mpesa_lipa_na_shortcode_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('sandbox_mpesa_lipa_na_shortcode');
        // output the field
        ?>
        <input type="text" name="sandbox_mpesa_lipa_na_shortcode"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function live_mpesa_baseurl_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('live_mpesa_baseurl');
        // output the field
        ?>
        <input type="text" name="live_mpesa_baseurl" value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function live_mpesa_consumerkey_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('live_mpesa_consumerkey');
        // output the field
        ?>
        <input type="text" name="live_mpesa_consumerkey"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function live_mpesa_consumersecret_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('live_mpesa_consumersecret');
        // output the field
        ?>
        <input type="text" name="live_mpesa_consumersecret"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function live_mpesa_lipa_na_passkey_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('live_mpesa_lipa_na_passkey');
        // output the field
        ?>
        <input type="text" name="live_mpesa_lipa_na_passkey"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }

    public function live_mpesa_lipa_na_shortcode_field_cb()
    {
        // get the value of the setting we've registered with register_setting()
        $setting = get_option('live_mpesa_lipa_na_shortcode');
        // output the field
        ?>
        <input type="text" name="live_mpesa_lipa_na_shortcode"
               value="<?php echo isset($setting) ? esc_attr($setting) : ''; ?>">
        <?php
    }
}
