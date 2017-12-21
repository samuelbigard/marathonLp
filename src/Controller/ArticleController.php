<?php

namespace App\Controller;

use App\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
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
    public function allArticles(Request $request){
        $paginator  = $this->get('knp_paginator');
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository(Article::class)->findAll();
        $articles_page = $paginator->paginate(
            $articles, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            2/*limit per page*/
        );
        return $this->render("article/all.html.twig", ["articles" => $articles_page]);
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