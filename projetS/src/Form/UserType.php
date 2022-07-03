<?php

namespace App\Form;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Field\HiddenField;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            //->add('roles')
            ->add('email')
            ->add('password')
            ->add('nom')
            ->add('prenom')
            ->add('adresse')
            ->add('code_postal')
            ->add('ville')
            ->add('pays')
            ->add('telephone')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
