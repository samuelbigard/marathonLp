<?php

namespace App\Form;

use App\Entity\Recipe;
use App\Form\MediaType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
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
            ->add('steps', TextareaType::class, ["attr"=>["class"=>"markdown"]])
            ->add('ingredients', TextareaType::class, ["attr"=>["class"=>"markdown"] ])
            ->add('difficulty', ChoiceType::class, [
                "choices" =>
                    ["0" => 0,
                    "1" => 1,
                    "2" => 2,
                    "3" => 3,
                    "4" => 4,
                    "5" => 5]
            ,
                "multiple" => false, "expanded" => false])
            ->add('materials', TextareaType::class, ["attr"=>["class"=>"markdown"]])
            ->add('preparationTime', TimeType::class)
            ->add('cookingTime', TimeType::class)
            ->add('astuce')
            ->add('media', MediaType::class, array('compound'=>true))
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