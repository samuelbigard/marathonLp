<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="recipes")
 * @ORM\Entity(repositoryClass="App\Repository\RecipeRepository")
 */
class Recipe
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @var Media
     * @ORM\ManyToOne(targetEntity="App\Entity\Media")
     */
    private $media;
    /**
     * @var string
     * @ORM\Column(type="string", length=120)
     */
    private $name;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $steps;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $ingredients;
    /**
     * @var int
     * @ORM\Column(columnDefinition="TINYINT(4)")
     */
    private $difficulty;
    /**
     * @var time
     * @ORM\Column(type="time")
     */
    private $preparation_time;
    /**
     * @var time
     * @ORM\Column(type="time")
     */
    private $cooking_time;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $materials;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $astuce;
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
}
