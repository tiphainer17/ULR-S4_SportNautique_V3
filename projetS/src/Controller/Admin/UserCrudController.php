<?php

namespace App\Controller\Admin;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TelephoneField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class UserCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return User::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('Email'),
            TextField::new('Password'),
            TextField::new('Nom'),
            TextField::new('Prenom'),
            NumberField::new('code_postal'),
            TextField::new('Ville'),
            TextField::new('Pays'),
            TelephoneField::new('Telephone')
        ];
    }

}
