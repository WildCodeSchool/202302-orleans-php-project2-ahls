<?php

namespace App\Controller;

use App\Model\BoardMemberManager;

class AdminAssociationController extends AbstractController
{
    public function index(): string
    {
        $boardMemberManager = new BoardMemberManager();
        $boardMembers = $boardMemberManager->selectAll();

        return $this->twig->render('Admin/Association/index.html.twig', [
            'boardMembers' => $boardMembers,
        ]);
    }

    private function validate(array $boardMember): array
    {
        $errors = [];

        if (empty($boardMember['lastname'])) {
            $errors[] = 'Le champ nom est obligatoire';
        }
        $maxLength = 255;
        if (mb_strlen($boardMember['lastname']) > $maxLength) {
            $errors[] = 'Le champ nom doit faire moins de ' . $maxLength . ' caractères';
        }
        if (empty($boardMember['firstname'])) {
            $errors[] = 'Le champ prénom est obligatoire';
        }
        if (mb_strlen($boardMember['firstname']) > $maxLength) {
            $errors[] = 'Le champ prénom doit faire moins de ' . $maxLength . ' caractères';
        }
        if (empty($boardMember['job'])) {
            $errors[] = 'Le champ statut est obligatoire';
        }
        if (mb_strlen($boardMember['job']) > $maxLength) {
            $errors[] = 'Le champ statut doit faire moins de ' . $maxLength . ' caractères';
        }

        return $errors;
    }


    public function update(int $id): string
    {
        $boardMemberManager = new BoardMemberManager();
        $boardMember = $boardMemberManager->selectOneById($id);

        $errors = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $boardMember = array_map('trim', $_POST);

            $errors = $this->validate($boardMember);

            if (empty($errors)) {
                $boardMemberManager = new BoardMemberManager();
                $boardMember['id'] = $id;
                $boardMemberManager->update($boardMember);

                header('Location: /admin/association');
            }
        }

        return $this->twig->render('Admin/Association/update.html.twig', [
            'boardMember' => $boardMember,
        ]);
    }

    public function create(): string
    {
        $errors = $boardMember = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $boardMember = array_map('trim', $_POST);

            $errors = $this->validate($boardMember);

            if (empty($errors)) {
                $boardMemberManager = new BoardMemberManager();
                $boardMemberManager->insert($boardMember);

                header('Location: /admin/association');
            }
        }
        return $this->twig->render('Admin/Association/create.html.twig', [
            'errors' => $errors, 'boardMember' => $boardMember,
        ]);
    }


    public function delete(int $id): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $boardMemberManager = new BoardMemberManager();
            $boardMemberManager->delete($id);

            header('Location: /admin/association');
        }
    }
}
