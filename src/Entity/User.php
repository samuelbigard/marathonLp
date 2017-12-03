<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="users")
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 */
class User
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @var string
     * @ORM\Column(type="string", length=45)
     */
    private $first_name;
    /**
     * @var string
     * @ORM\Column(type="string", length=45)
     */
    private $last_name;
    /**
     * @var string
     */
    private $email;
    /**
     * @var string
     * @ORM\Column(columnDefinition="TEXT")
     */
    private $password;
    /**
     * @var string
     */
    private $remember_token;
    /**
     * @var bool
     * @ORM\Column(columnDefinition="TINYINT(1)")
     */
    private $admin;
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
