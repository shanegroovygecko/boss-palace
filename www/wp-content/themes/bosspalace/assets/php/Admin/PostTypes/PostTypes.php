<?php

namespace App\Admin\PostTypes;

/**
 * Class PostTypes
 * @package App\Admin\PostTypes
 */
abstract class PostTypes
{
    public abstract function initPostTypes();

    public function setPostTypes()
    {
        $this->initPostTypes();
    }
}