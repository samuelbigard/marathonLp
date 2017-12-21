<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 20/12/17
 * Time: 12:18
 */

namespace App;


class AppEvent
{
    const RECIPE_ADD = 'app.recipe.add';
    const RECIPE_EDIT = 'app.recipe.edit';
    const RECIPE_DEL = 'app.recipe.delete';

    const ARTICLE_ADD = 'app.article.add';
    const ARTICLE_EDIT = 'app.article.edit';
    const ARTICLE_DEL = 'app.article.delete';

    const COMMENT_ADD = 'app.comment.add';
    const COMMENT_EDIT = 'app.comment.edit';
    const COMMENT_DEL = 'app.comment.delete';
}