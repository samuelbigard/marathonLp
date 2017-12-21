<?php
/**
 * Created by PhpStorm.
 * User: hadrienchatelet
 * Date: 21/12/2017
 * Time: 08:57
 */

namespace App\Subscriber;


use App\AppEvent;
use App\Event\CommentEvent;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class CommentSubscriber implements EventSubscriberInterface
{
    private $em;

    /**
     * RecipeSubscriber constructor.
     * @param $em
     */
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }


    public static function getSubscribedEvents()
    {
        return array(
            AppEvent::COMMENT_ADD => 'add',
            AppEvent::COMMENT_EDIT => 'edit',
            AppEvent::COMMENT_DEL => 'delete',);
    }

    public function add(CommentEvent $commentEvent)
    {
        $this->em->persist($commentEvent->getComment());
        $this->em->flush();
    }

    public function edit(CommentEvent $commentEvent)
    {
        $this->em->persist($commentEvent->getComment());
        $this->em->flush();
    }

    public function delete(CommentEvent $commentEvent)
    {
        $this->em->remove($commentEvent->getComment());
        $this->em->flush();
    }
}