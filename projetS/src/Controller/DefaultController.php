<?php

namespace App\Controller;

use App\Entity\Sport;
use App\Entity\User;
use App\Form\UserType;
use Sensio\Bundle\FrameworkExtraBundle\Request\ParamConverter\DateTimeParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{

    public function adminOuPas(){
        $admin=true;
        /*if (app.admin ){
            $admin=true;
        }*/
        return $admin;
    }

    /**
     * @Route("/", name="accueil")
     */
    public function index(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->pageAccueil();
        return $this->render('default/index.html.twig', [
            'sports' => $sports
        ]);
    }

    /**
     * @Route("/categorie/all", name="categorieAll")
     */
    public function categorieAll(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->findAll();
        return $this->render('default/categorie.html.twig', [
            'nomCategorie'=>'Tout les sports nautiques :',
            'sports' => $sports
        ]);

    }

    /**
     * @Route("/categorie/1", name="categorie1")
     */
    public function categorie1(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->sportCat(1);
        return $this->render('default/categorie.html.twig', [
            'nomCategorie'=>'Sport de la catégorie : Subaquatique',
            'sports' => $sports
        ]);
    }

    /**
     * @Route("/categorie/2", name="categorie2")
     */
    public function categorie2(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->sportCat(2);
        return $this->render('default/categorie.html.twig', [
            'nomCategorie'=>'Sport de la catégorie : Sports de glisse',
            'sports' => $sports
        ]);
    }

    /**
     * @Route("/categorie/3", name="categorie3")
     */
    public function categorie3(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->sportCat(3);
        return $this->render('default/categorie.html.twig', [
            'nomCategorie'=>'Sport de la catégorie : Loisirs nautique',
            'sports' => $sports
        ]);
    }

    /**
     * @Route("/categorie/4", name="categorie4")
     */
    public function categorie4(): Response
    {
        $em=$this->getDoctrine()->getManager();
        $sports=$em->getRepository(Sport::class)->sportCat(4);
        return $this->render('default/categorie.html.twig', [
            'nomCategorie'=>'Sport de la catégorie : Navigation',
            'sports' => $sports
        ]);
    }

    /**
     * @Route("/sport/{id}", name="sport")
     */
    public function unSport($id): Response
    {
        $id = $this->getDoctrine()->getRepository(Sport::class)->findOneBy(['id' => $id]);
        if(!$id){
            return $this->render('default/vue_sport.html.twig',[
                'sports'=>'null'
            ]);
        }
        else {
            $em = $this->getDoctrine()->getManager();
            $sports = $em->getRepository(Sport::class)->unSport($id);
            return $this->render('default/vue_sport.html.twig', [

                'sports' => $sports
            ]);
        }
    }

    /**
     * @Route("/panier", name="panier")
     */
    public function panier(): Response
    {
        $vide = null;
        $sports=[];
        //$_SESSION['panier'];
        //$_SESSION['total'];
        if(isset($_POST['send'])) {
            if (isset($_POST['qte_sport']) && isset($_POST['id_sport']) && isset($_POST['nom'])&& isset($_POST['prix']) ) {

                $qte_sport = $_POST['qte_sport'];
                $id_sport = $_POST['id_sport'];
                $nom = $_POST['nom'];
                $prix = $_POST['prix'];

                if (!isset($_SESSION['panier'])) {
                    $_SESSION['panier']=[];
                    $_SESSION['total']=0;
                }

                $sport = array(
                    "id_sport" => $id_sport,
                    "nom" => $nom,
                    "prix" =>$prix,
                    "qte_sport" => $qte_sport

                );

                $trouve = false;
                foreach ($_SESSION['panier'] as $key => $value) {
                    if ($value['id_sport'] == $sport['id_sport']) {
                        $_SESSION['panier'][$key]['qte_sport'] += $sport['qte_sport'];
                        $trouve = true;
                    }
                }
                if ($trouve == false) {
                    array_push($_SESSION['panier'], $sport);
                }

                $_SESSION['total'] += $sport['prix'] * $sport['qte_sport'];

                $vide=false;

                return $this->render('default/panier.html.twig', [
                    'sport' => $sports,
                    'panier' => $_SESSION['panier'],
                    'total' => $_SESSION['total'],
                    'vide' => $vide
                ]);

            }
        }
        else {
            if (!isset($_SESSION['panier'])) {
                $_SESSION['panier']=[];
                $_SESSION['total']=0;

            }
            $vide = false;
            if (empty($_SESSION['panier'])) {
                $vide=true;

            }
            return $this->render('default/panier.html.twig', [
                'sport' => $sports,
                'panier' => $_SESSION['panier'],
                'total' => $_SESSION['total'],
                'vide' => $vide
            ]);
        }



    }

    /**
     * @Route("/panierSuppr/{id}", name="panierSuppr")
     */
    public function panierSuppr($id): Response
    {

        //if(isset($id)){
            $suppr=$id;
            foreach($_SESSION['panier'] as $idS => $value){
                if($value['id_sport'] == $suppr){
                    $aSuppr=$idS;
                    $_SESSION['total'] -= $value['prix']*$value['qte_sport'];
                    unset($_SESSION['panier'][$aSuppr]);
                }
            }

        //}
        return $this->panier();
    }

    /**
     * @Route("/panierValider", name="panierValider")
     */
    public function panierValider(): Response
    {
        date_default_timezone_set('Europe/Paris');
        $date=[];
        $commande=false;
        $total=$_SESSION['total'];
        if(isset($_POST['commande'])){
            if (isset($_POST['total'])) {
                $total = $_POST['total'];
                //$date=date("d-%B-Y H:i:s");
                setlocale(LC_TIME, ['fr', 'fra', 'fr_FR']);
                $date=strftime('%A %d %B %Y %I:%M:%S');
                $commande=true;
                unset($_SESSION['panier']);
                unset($_SESSION['total']);
            }
        }
        return $this->render('default/commande.html.twig', [
            'total' => $total,
            'date' => $date,
            'commande'=>$commande
        ]);
    }



    /**
     * @Route("/compte", name="compte")
     */
    public function compte(): Response
    {
        return $this->render('default/compte.html.twig', [

        ]);

    }

    /**
     * @Route("/creer_compte", name="creer_compte")
     */
    public function creer_compte(Request $request)
    {
        $compte=new User();
        $form=$this->createForm(UserType::class,$compte);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($compte);
            $em->flush();
            return $this->redirectToRoute('login');
        }
        return $this->render('default/creer.html.twig', [
            'form' => $form->createView()
        ]);

    }


}
