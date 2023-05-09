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

    private function validate(array $newspaper): array
    {
        $errors = [];

        if (!is_numeric($newspaper['number']) || $newspaper['number'] < 0) {
            $errors[] = "Le champ numéro doit etre un nombre positif";
        }

        if (empty($newspaper['date'])) {
            $errors[] = "Le champ date est obligatoire";
        }

        if (empty($newspaper['link'])) {
            $errors[] = "Le champ lien est obligatoire";
        }

        return $errors;
    }

    public function add(): string
    {
        $errors = $newspaper = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $newspaper = array_map('trim', $_POST);

            $errors = $this->validate($newspaper);

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

    public function edit(int $id): string
    {
        $newspaperManager = new NewspaperManager();
        $newspaper = $newspaperManager->selectOneById($id);

        $errors = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $newspaper = array_map('trim', $_POST);

            $errors = $this->validate($newspaper);

            if (empty($errors)) {
                $newspaperManager = new NewspaperManager();
                $newspaper['id'] = $id;
                $newspaperManager->update($newspaper);

                header('Location: /admin/journaux');
            }
        }
        return $this->twig->render('Admin/Newspaper/edit.html.twig', [
            'errors' => $errors,
            'newspaper' => $newspaper,
        ]);
    }

    public function delete(int $id): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $newspaperManager = new NewspaperManager();
            $newspaperManager->delete($id);

            header('Location: /admin/journaux');
        }
    }
}
