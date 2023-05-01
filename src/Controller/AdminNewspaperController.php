<?php

namespace App\Controller;

use App\Model\NewspaperManager;

class AdminNewspaperController extends AbstractController
{
    public function index(): string
    {
        $newspaperManager = new NewspaperManager();
        $newspapers = $newspaperManager->selectAll();

        return $this->twig->render('Admin/Newspaper/index.html.twig', [
            'newspapers' => $newspapers,
        ]);
    }

    public function add(): string
    {
        $errors = $newspaper = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $newspaper = array_map('trim', $_POST);

            if (!is_numeric($newspaper['number']) || $newspaper['number'] < 0) {
                $errors[] = "Le champ numéro doit etre un nombre positif";
            }

            if (empty($newspaper['date'])) {
                $errors[] = "Le champ date est obligatoire";
            }

            if (empty($newspaper['link'])) {
                $errors[] = "Le champ lien est obligatoire";
            }

            if (empty($errors)) {

                $newspaperManager = new NewspaperManager();
                $newspaperManager->insert($newspaper);

                header('Location: /admin/journaux');
            }
        }
        return $this->twig->render('Admin/Newspaper/add.html.twig', [
            'errors' => $errors,
            'newspaper' => $newspaper,
        ]);
    }
}
