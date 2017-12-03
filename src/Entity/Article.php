<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="articles")
 * @ORM\Entity(repositoryClass="App\Repository\ArticleRepository")
 */
class Article
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
     * @var Media
     * @ORM\ManyToOne(targetEntity="App\Entity\Media")
     */
    private $media;
    /**
     * @var string
     * @ORM\Column(type="string",length=150)
     */
    private $title;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $summary;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $content;
    /**
     * @var int
     * @ORM\Column(type="integer")
     */
    private $hitcount;
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
