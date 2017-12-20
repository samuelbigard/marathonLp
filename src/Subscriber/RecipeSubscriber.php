<?php

namespace App\Subscriber;

use App\AppEvent;
use App\Event\RecipeEvent;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;


class RecipeSubscriber implements EventSubscriberInterface
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
        return array(AppEvent::RECIPE_ADD => 'add');
    }

    public function add(RecipeEvent $recipeEvent){
        $this->em->persist($recipeEvent->getRecipe());
        $this->em->flush();
    }
}