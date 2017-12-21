<?php
/**
 * Created by PhpStorm.
 * User: hadrien.chatelet
 * Date: 21/12/17
 * Time: 03:50
 */

namespace App\Subscriber;


use App\AppEvent;
use App\Event\ArticleEvent;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class ArticleSubscriber implements EventSubscriberInterface
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
            AppEvent::ARTICLE_ADD => 'add',
            AppEvent::ARTICLE_EDIT => 'edit',
            AppEvent::ARTICLE_DEL => 'delete',);
    }

    public function add(ArticleEvent $articleEvent)
    {
        $this->em->persist($articleEvent->getArticle());
        $this->em->flush();
    }

    public function edit(ArticleEvent $articleEvent)
    {
        $this->em->persist($articleEvent->getArticle());
        $this->em->flush();
    }

    public function delete(ArticleEvent $articleEvent)
    {
        $this->em->remove($articleEvent->getArticle());
        $this->em->flush();
    }
}