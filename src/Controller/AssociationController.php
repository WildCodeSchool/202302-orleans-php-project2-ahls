<?php

namespace App\Controller;

use App\Model\BoardMemberManager;

class AssociationController extends AbstractController
{
    public function index(): string
    {
        $boardMemberManager = new BoardMemberManager();
        $boardMembers = $boardMemberManager->selectAll();
        return $this->twig->render('Association/index.html.twig', [
            'boardMembers' => $boardMembers,
        ]);
    }
}
