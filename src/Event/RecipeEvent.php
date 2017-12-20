<?php

namespace App\Event;

use Symfony\Component\EventDispatcher\Event;

class RecipeEvent extends Event
{
    protected $recipe;

    /**
     * @return mixed
     */
    public function getRecipe()
    {
        return $this->recipe;
    }

    /**
     * @param mixed $recipe
     */
    public function setRecipe($recipe)
    {
        $this->recipe = $recipe;
    }


}