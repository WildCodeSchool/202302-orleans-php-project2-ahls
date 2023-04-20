<?php

namespace App\Controller;

use App\Model\NewspaperManager;

class NewspaperController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        $newspaper = new NewspaperManager();
        $newspapers = $newspaper->selectAll();

        return $this->twig->render(
            'Newspaper/index.html.twig',
            ['newspapers' => $newspapers,]
        );
    }
}
