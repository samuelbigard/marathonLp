<?php

namespace App\Controller;

use App\AppEvent;
use App\Entity\Media;
use App\Entity\Recipe;
use App\Event\RecipeEvent;
use App\Form\RecipeType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\File\UploadedFile;

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
            /** @var UploadedFile $file */
            $file = $form['media']->getData();
            $fileName = md5(uniqid()).'.'.$file->guessExtension();
            $media = new Media();
            $media->setPath($fileName);
            $media->setType($file->getType());
            $media->setTitle($file->getFilename());
            $file->move(
                $this->getParameter('media_directory'),
                $fileName
            );

            $recipe->setMedia($media);
            $recipeEvent = $this->get(RecipeEvent::class);
            $recipeEvent->setRecipe($recipe);
            $dispatcher = $this->get('event_dispatcher');
            $dispatcher->dispatch(AppEvent::RECIPE_ADD, $recipeEvent);
            return $this->redirectToRoute("recipe_view", ["id" => $recipe->getId()]);
        }
        return $this->render("recipe/new.html.twig", array("form"=>$form->createView()));
    }
}
