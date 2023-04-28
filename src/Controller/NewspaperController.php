<?php

namespace App\Controller;

use App\Model\NewspaperManager;

class NewspaperController extends AbstractController
{
    public function index(): string
    {
        $newspaperManager = new NewspaperManager();
        $newspapers = $newspaperManager->selectAll();

        return $this->twig->render('Newspaper/index.html.twig', [
            'newspapers' => $newspapers,
        ]);
    }
}
