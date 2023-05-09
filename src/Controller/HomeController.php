<?php

namespace App\Controller;

use App\Model\NewspaperManager;
use App\Model\ActualityManager;
use App\Model\PartnerManager;

class HomeController extends AbstractController
{
    public function index(): string
    {
        $newspaperManager = new NewspaperManager();
        $newspapers = $newspaperManager->showLastByNumber();
        $actualityManager = new ActualityManager();
        $articles = $actualityManager->selectThreeArticles('date', 'DESC');
        $partnerManager = new PartnerManager();
        $partners = $partnerManager->selectAll();
        return $this->twig->render('Home/index.html.twig', [
            'partners' => $partners,
            'articles' => $articles,
            'newspapers' => $newspapers,
        ]);
    }
}
