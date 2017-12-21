<?php
/**
 * Created by PhpStorm.
 * User: hadrien.chatelet
 * Date: 21/12/17
 * Time: 00:35
 */

namespace App\Form;


use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;

class MediaType extends FileType
{
    public function getParent()
    {
        return FileType::class;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('media', FileType::class)
        ;
    }

}