<?php

namespace App\Controller\Admin;

use App\Entity\Sport;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\Field;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class SportCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Sport::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('Nom'),
            TextareaField::new('Description'),
            AssociationField::new('id_categorie'),
            DateField::new('Date'),
            NumberField::new('Prix'),
            TextField::new('Img')
        ];
    }

}
