<?php

namespace App\Controller;

use App\Model\ActualityManager;

class ActualityController extends AbstractController
{
    public function index(): string
    {
        $actualityManager = new ActualityManager();
        $articles = $actualityManager->selectThreeArticles();

        return $this->twig->render('Home/index.html.twig', ['articles' => $articles]);
    }
}
