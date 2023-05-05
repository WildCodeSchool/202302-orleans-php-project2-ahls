<?php

namespace App\Controller;

use App\Model\NewspaperManager;

class AdminNewspaperController extends AbstractController
{
    public function index(): string
    {
        $newspaperManager = new NewspaperManager();
        $newspapers = $newspaperManager->selectAll('number', 'DESC');

        return $this->twig->render('Admin/Newspaper/index.html.twig', [
            'newspapers' => $newspapers,
        ]);
    }
}
