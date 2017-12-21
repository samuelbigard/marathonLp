<?php
/**
 * Created by PhpStorm.
 * User: hadrien.chatelet
 * Date: 21/12/17
 * Time: 03:33
 */

namespace App\Form;


use App\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('summary', TextareaType::class, ["attr"=>["class"=>"markdown"]])
            ->add('content', TextareaType::class, ["attr"=>["class"=>"markdown"]])
            ->add('media', FileType::class, array('mapped'=>false))
            ->add('submit', SubmitType::class,['label' => "Ajouter l'article"])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}