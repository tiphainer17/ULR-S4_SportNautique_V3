<?php

namespace App\Controller\Admin;

use App\Entity\Categorie;
use App\Entity\Sport;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        /*if(app.admin){*/
            //return parent::index();
            $routeBuilder = $this->get(AdminUrlGenerator::class);
            return $this->redirect($routeBuilder->setController(SportCrudController::class)->generateUrl());
        /*} else {
            return $this->render('default/login.html.twig', [

            ]);
        }*/
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Espace admin');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Categorie', 'fas fa-list', Categorie::class);
        yield MenuItem::linkToCrud('Sports', 'fas fa-list', Sport::class);
        yield MenuItem::linkToCrud('Utilisateur', 'fas fa-list', User::class);
    }
}
