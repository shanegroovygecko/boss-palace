<?php

namespace App\Admin\SavePosts;

require_once BL_THEME_DIR . 'assets/php/Admin/SavePosts/PackagesSavePost.php';


/**
 * Class InitSavePost
 * @package App\Admin\SavePosts
 */
class InitSavePost
{
    const ALLOWED_POST_TYPES = [
        'packages'
    ];

    public function init()
    {
        $this->toggleSavePostAction();
    }

    /**
     * @param string $state
     */
    public function toggleSavePostAction($state = 'add')
    {
        switch ($state) {
            case 'add':
                add_action('save_post', array($this, 'savePostsMeta'));
                break;
            default:
                //Remove this because we dont want this to loop forever.
                remove_action('save_post', array($this, 'savePostsMeta'));

        }
    }

    public function savePostsMeta($post_id)
    {
        // If this is just a revision, don't send the email.
        if (wp_is_post_revision($post_id)) {
            return;
        }


        if (!empty($_POST['post_type'])) {
            if (!in_array($_POST['post_type'], self::ALLOWED_POST_TYPES)) {
                return;
            }

            $this->toggleSavePostAction('remove');

            (new PackagesSavePost())->save($post_id);
        }
    }
}