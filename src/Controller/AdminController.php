<?php

namespace App\Controller;

use App\AppEvent;
use App\Entity\Recipe;
use App\Event\RecipeEvent;
use App\Form\RecipeType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * @Route("/admin")
 */
class AdminController extends Controller
{
    /**
     * @Route(path="/create-recipe", name="admin_create_recipe")
     */
    public function createRecipe(Request $request){
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $recipeEvent = $this->get(RecipeEvent::class);
            $recipeEvent->setRecipe($recipe);
            $dispatcher = $this->get('event_dispatcher');
            $dispatcher->dispatch(AppEvent::RECIPE_ADD, $recipeEvent);
            return $this->redirectToRoute("recipe_view", ["id" => $recipe->getId()]);
        }
        return $this->render("recipe/new.html.twig", array("form"=>$form->createView()));
    }
}
