<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 21/12/17
 * Time: 10:12
 */

namespace App\Controller;


use App\AppEvent;
use App\Entity\Comment;
use App\Event\CommentEvent;
use App\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class CommentController
 * @Route(path="/comment")
 */
class CommentController extends Controller
{

    /**
     * @Route(path="/del/{id}", name="comment_delete")
     */
    public function deleteComment(Comment $comment){
        $event = $this->get(CommentEvent::class);
        $event->setComment($comment);
        $dispatcher = $this->get("event_dispatcher");
        $dispatcher->dispatch(AppEvent::COMMENT_DEL, $event);
        return $this->redirectToRoute("recipe_view", ["id"=>$comment->getRecipe()->getId()]);
    }

    /**
     * @Route(path="/edit/{id}", name="comment_edit")
     *
     */
    public function editRecipe(Request $request, Comment $comment)
    {
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $commentEvent = $this->get(CommentEvent::class);
            $commentEvent->setComment($comment);
            $dispatcher = $this->get('event_dispatcher');
            $dispatcher->dispatch(AppEvent::COMMENT_EDIT, $commentEvent);

            return $this->redirectToRoute("recipe_view", ["id" => $comment->getRecipe()->getId()]);
        }

        return $this->render("recipe/new.html.twig", ["form" => $form->createView()]);
    }
}