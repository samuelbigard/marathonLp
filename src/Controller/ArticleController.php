<?php

namespace App\Controller;

use App\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class ArticleController
 * @Route(path="/article")
 */
class ArticleController extends Controller
{
    /**
     * @Route(path="/all", name="article_all")
     */
    public function allArticles(){
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository(Article::class)->findAll();
        return $this->render("article/all.html.twig", ["articles" => $articles]);
    }

    /**
     * @Route(path="/{id}", name="article_view")
     */
    public function viewArticle(Article $article){
        $article->setHitcount($article->getHitcount()+1);
        $em = $this->getDoctrine()->getManager();
        $em->persist($article);
        $em->flush();
        return $this->render("article/view.html.twig", ["article" => $article]);
    }
}