<?php

namespace App\Front;

/**
 * Class EmailList
 * @package App\Front
 */
class EmailList
{
    const POST_TYPE = 'email_list';

    public function saveEmailForMailListing($email)
    {
        return $this->saveEmailToList($email);
    }

    private function saveEmailToList($email)
    {
        try {
            // @todo - prevent multiple emails of the same name to get in here
            // - $email
            // add an email to the list.
            $my_post = array(
                'post_title' => $email,
                'post_type' => self::POST_TYPE,
                //'post_content'  => $_POST['post_content'],
                'post_status' => 'private',
                'post_author' => 1,
                //'post_category' => array( 8,39 )
            );
            // Insert the post into the database
            $postId = wp_insert_post($my_post);
            if ($postId) {
                return $postId;
            }
        } catch (\Exception $exception) {

        }
        return null;
    }
}