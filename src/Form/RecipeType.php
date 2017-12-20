<?php
/**
 * Created by PhpStorm.
 * User: samuel.bigard
 * Date: 20/12/17
 * Time: 12:24
 */

namespace App\Form;


use App\Entity\Recipe;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RecipeType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('description', TextareaType::class)
            ->add('steps')
            ->add('ingredients')
            ->add('difficulty')
            ->add('materials')
            ->add('preparationTime', TimeType::class)
            ->add('cookingTime', TimeType::class)
            ->add('astuce')
            ->add('submit', SubmitType::class,['label' => 'Ajouter la recette'])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}