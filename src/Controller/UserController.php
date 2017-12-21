<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 21/12/17
 * Time: 10:55
 */

namespace App\Controller;


use App\Entity\Recipe;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class UserController
 * @Route(path="/user")
 */
class UserController extends Controller
{
    /**
     * @Route(path="/mon-compte", name="user_account")
     */
    public function account(){
        $em = $this->getDoctrine()->getManager();
        $repo = $em->getRepository(Recipe::class);
        $recipes = $repo->findAll();
        $recipes_user = [];
        foreach ($recipes as $recipe) {
            foreach ($recipe->getVotes() as $vote) {
                if ($vote->getUser()->getId() == $this->getUser()->getId()) {
                    $recipes_user[] = $recipe;
                }
            }
        }
        return $this->render("recipe/all.html.twig", ["recipes" => $recipes_user]);
    }
}