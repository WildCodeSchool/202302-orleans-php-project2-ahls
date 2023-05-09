<?php

namespace App\Controller;

class AdminHomePageController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render('Admin/HomePage/index.html.twig');
    }
}
