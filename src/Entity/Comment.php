<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="comments")
 * @ORM\Entity(repositoryClass="App\Repository\CommentRepository")
 */
class Comment
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @var User
     * @ORM\ManyToOne(targetEntity="App\Entity\User")
     */
    private $user;
    /**
     * @var Recipe
     * @ORM\ManyToOne(targetEntity="App\Entity\Recipe", inversedBy="comments")
     */
    private $recipe;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $content;
    /**
     * @var date
     * @ORM\Column(type="datetime")
     */
    private $created_at;
    /**
     * @var date
     * @ORM\Column(type="datetime")
     */
    private $updated_at;

    /**
     * Comment constructor.
     */
    public function __construct()
    {
        $this->created_at = $this->updated_at = new \DateTime();
    }


    /**
     * @return mixed
     */
    public function getId() {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id) {
        $this->id = $id;
    }

    /**
     * @return User
     */
    public function getUser(){
        return $this->user;
    }

    /**
     * @param User $user
     */
    public function setUser($user) {
        $this->user = $user;
    }

    /**
     * @return Recipe
     */
    public function getRecipe() {
        return $this->recipe;
    }

    /**
     * @param Recipe $recipe
     */
    public function setRecipe($recipe) {
        $this->recipe = $recipe;
    }

    /**
     * @return string
     */
    public function getContent() {
        return $this->content;
    }

    /**
     * @param string $content
     */
    public function setContent($content) {
        $this->content = $content;
    }

    /**
     * @return date
     */
    public function getCreatedAt() {
        return $this->created_at;
    }

    /**
     * @param date $created_at
     */
    public function setCreatedAt($created_at) {
        $this->created_at = $created_at;
    }

    /**
     * @return date
     */
    public function getUpdatedAt() {
        return $this->updated_at;
    }

    /**
     * @param date $updated_at
     */
    public function setUpdatedAt($updated_at) {
        $this->updated_at = $updated_at;
    }
}
