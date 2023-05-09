<?php

namespace App\Controller;

use App\Controller\AbstractController;
use App\Model\ActualityManager;
use Datetime;

class AdminActualityController extends AbstractController
{
    public function index(): string
    {
        $actualityManager = new ActualityManager();
        $article = $actualityManager->selectAll();
        return $this->twig->render('Actuality/admin_actuality.html.twig', [
            'article' => $article,
        ]);
    }

    private function validate(array $article): array
    {
        $errors = [];

        if (empty($article['title'])) {
            $errors[] = 'Veuillez spécifier un titre.';
        }
        $maxLength = 150;
        if (mb_strlen($article['title']) > $maxLength) {
            $errors[] = 'Le titre doit faire moins de ' . $maxLength . ' caractères.';
        }

        if (empty($article['date'])) {
            $errors[] = 'Veuillez spécifier une date valide.';
        }

        $date = new Datetime($article['date']);
        if (!empty($date->getLastErrors())) {
            $errors[] = 'Le format de date est incorrect.';
        }

        if (empty($article['content'])) {
            $errors[] = "Veuillez ajouter une description à l'article.";
        }

        return $errors;
    }

    public function create(): string
    {
        $errors = $article = [];

        $actualityManager = new ActualityManager();
        $article = $actualityManager->selectAll('date');

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // nettoyage
            $article = array_map('trim', $_POST);
            // validation
            $dataErrors = $this->validate($article);

            $errors = array_merge($dataErrors);

            if (empty($errors)) {
                $actualityManager = new ActualityManager();
                $actualityManager->insert($article);

                // redirection
                header('Location: /admin/actualites');
            }
        }

        return $this->twig->render('Actuality/add_article.html.twig', [
            'errors' => $errors,
            'article' => $article,
        ]);
    }
}
