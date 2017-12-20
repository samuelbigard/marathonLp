<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 20/12/17
 * Time: 10:34
 */

namespace App\Controller;


use App\Entity\Recipe;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
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
     * @Route(path="/{id}", name="recipe_view")
     */
    public function viewRecipe(Recipe $recipe){
        return $this->render("recipe/view.html.twig", ["recipe" => $recipe]);
    }
}