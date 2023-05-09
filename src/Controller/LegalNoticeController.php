<?php

namespace App\Controller;

class LegalNoticeController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render('LegalNotice/index.html.twig');
    }
}
