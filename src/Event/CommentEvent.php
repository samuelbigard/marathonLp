<?php
/**
 * Created by PhpStorm.
 * User: hadrienchatelet
 * Date: 21/12/2017
 * Time: 08:56
 */

namespace App\Event;


use Symfony\Component\EventDispatcher\Event;

class CommentEvent extends Event
{
    protected $comment;

    /**
     * @return mixed
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * @param mixed $comment
     */
    public function setComment($comment)
    {
        $this->comment = $comment;
    }
}