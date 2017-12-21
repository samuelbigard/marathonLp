<?php

namespace App\Repository;

use App\Entity\Recipe;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

class RecipeRepository extends EntityRepository
{
    public function findFiveFastest()
    {
        return $this->createQueryBuilder('recipe')->orderBy("recipe.preparation_time+recipe.cooking_time" , "asc")
            ->getQuery()
            ->getResult()
            ;
    }

}
