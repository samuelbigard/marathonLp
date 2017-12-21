<?php

namespace App\Controller;

use App\AppEvent;
use App\Entity\Article;
use App\Entity\Media;
use App\Entity\Recipe;
use App\Event\ArticleEvent;
use App\Event\RecipeEvent;
use App\Form\ArticleType;
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

    /**
     * @Route(path="/edit-recipe/{id}", name="admin_edit_recipe")
     *
     */
    public function editRecipe(Request $request, Recipe $recipe)
    {
        $form = $this->createForm(RecipeType::class, $recipe);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){

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
            $dispatcher->dispatch(AppEvent::RECIPE_EDIT, $recipeEvent);

            return $this->redirectToRoute("recipe_view", ["id" => $recipe->getId()]);
        }

        return $this->render("recipe/new.html.twig", ["form" => $form->createView()]);
    }

    /**
     * @Route(path="/{id}/delete", name="admin_delete_recipe")
     *
     */
    public function deleteRecipe(Recipe $recipe)
    {
        $event = $this->get(RecipeEvent::class);
        $event->setRecipe($recipe);
        $dispatcher = $this->get("event_dispatcher");
        $dispatcher->dispatch(AppEvent::RECIPE_DEL, $event);

        return $this->redirectToRoute("recipe_all");

    }


    /**
     * @Route(path="/create-article", name="admin_create_article")
     */
    public function createArticle(Request $request){
        $article = new Article();
        $article->setUser($this->getUser());
        $form = $this->createForm(ArticleType::class, $article);
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

            $article->setMedia($media);
            $articleEvent = $this->get(ArticleEvent::class);
            $articleEvent->setArticle($article);
            $dispatcher = $this->get('event_dispatcher');
            $dispatcher->dispatch(AppEvent::ARTICLE_ADD, $articleEvent);
            //return $this->redirectToRoute("article_view", ["id" => $article->getId()]);
            return $this->redirectToRoute("article_view", ["id"=>$article->getId()]);
        }
        return $this->render("article/new.html.twig", array("form"=>$form->createView()));
    }

    /**
     * @Route(path="/edit-article/{id}", name="admin_edit_article")
     *
     */
    public function editArticle(Request $request, Article $article)
    {
        $form = $this->createForm(ArticleType::class, $article);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){

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

            $article->setMedia($media);
            $articleEvent = $this->get(ArticleEvent::class);
            $articleEvent->setArticle($article);
            $dispatcher = $this->get('event_dispatcher');
            $dispatcher->dispatch(AppEvent::ARTICLE_EDIT, $articleEvent);

            return $this->redirectToRoute("article_view", ["id" => $article->getId()]);
        }

        return $this->render("article/new.html.twig", ["form" => $form->createView()]);
    }

    /**
     * @Route(path="/{id}/delete", name="admin_delete_article")
     *
     */
    public function deleteArticle(Article $article)
    {
        $event = $this->get(ArticleEvent::class);
        $event->setArticle($article);
        $dispatcher = $this->get("event_dispatcher");
        $dispatcher->dispatch(AppEvent::ARTICLE_DEL, $event);

        return $this->redirectToRoute("article_all");

    }
}
