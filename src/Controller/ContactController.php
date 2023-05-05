<?php

namespace App\Controller;

use function Amp\Iterator\concat;

class ContactController extends AbstractController
{
    public function index(): string
    {
        $errors = $contact = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $contact = array_map('trim', $_POST);

            $errors = $this->validate($contact);

            if (empty($errors)) {
                header('Location: /');
                exit;
            }
        }
        return $this->twig->render('Contact/index.html.twig', ['errors' => $errors, 'contact' => $contact]);
    }

    private function validate(array $contact): array
    {
        $errors = [];

        if (empty($contact['firstname'])) {
            $errors[] = 'Le champ Prénom est obligatoire';
        }

        if (empty($contact['lastname'])) {
            $errors[] = 'Le champ Nom est obligatoire';
        }

        if (empty($contact['email'])) {
            $errors[] = 'Le champ Adresse email est obligatoire';
        }

        if (!filter_var($contact['email'], FILTER_VALIDATE_EMAIL)) {
            $errors[] = 'Votre adresse email n\'est pas valide';
        }

        if (empty($contact['comment'])) {
            $errors[] = 'Le champ Commentaire est obligatoire';
        }
        return $errors;
    }
}
