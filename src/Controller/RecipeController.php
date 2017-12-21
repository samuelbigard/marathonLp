<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 20/12/17
 * Time: 10:34
 */

namespace App\Controller;


use App\AppEvent;
use App\Entity\Comment;
use App\Entity\Recipe;
use App\Event\CommentEvent;
use App\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class RecipeController
 * @Route(path="/recipe")
 */
class RecipeController extends Controller
{
    /**
     * @Route(path="/all", name="recipe_all")
     */
    public function allRecipes(){
        $em = $this->getDoctrine()->getManager();
        $recipes = $em->getRepository(Recipe::class)->findBy([],["name"=> "asc"]);
        return $this->render("recipe/all.html.twig", ["recipes" => $recipes]);
    }

    /**
     * @Route(path="/express", name="recipe_express")
     */
    public function expressRecipe(){
        $em = $this->getDoctrine()->getManager();
        $recipes = $em->getRepository(Recipe::class)->findFiveFastest();
        return $this->render("recipe/express.html.twig", ["recipes" => $recipes]);
    }

    /**
     * @Route(path="/{id}", name="recipe_view")
     */
    public function viewRecipe(Request $request, Recipe $recipe){
        $comment = new Comment();
        $comment->setUser($this->getUser());
        $comment->setRecipe($recipe);
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            $event = $this->get(CommentEvent::class);
            $event->setComment($comment);
            $dispatcher = $this->get("event_dispatcher");
            $dispatcher->dispatch(AppEvent::COMMENT_ADD, $event);
            return $this->render("recipe/vieww.html.twig", ["recipe" => $recipe, "id" => $recipe->getId(),
                "form" => $form->createView()]);
        }
        return $this->render("recipe/vieww.html.twig", ["recipe" => $recipe, "form" => $form->createView()]);
    }
}