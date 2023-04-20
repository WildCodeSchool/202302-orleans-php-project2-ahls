<?php

namespace App\Controller;

use App\Model\PartnerManager;

class HomeController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        $partnerManager = new PartnerManager();
        $partners = $partnerManager->selectAll('name');

        return $this->twig->render('Home/index.html.twig', ['partners' => $partners]);
    }
}
