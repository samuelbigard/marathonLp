<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="medias")
 * @ORM\Entity(repositoryClass="App\Repository\MediaRepository")
 */
class Media
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @var string
     * @ORM\Column(type="string", length=120)
     */
    private $title;
    /**
     * @var string
     * @ORM\Column(type="string", length=300)
     */
    private $path;
    /**
     * @var string
     * @ORM\Column(type="string", length=10)
     */
    private $type;

    // add your own fields
}
