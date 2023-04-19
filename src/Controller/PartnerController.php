<?php

namespace App\Controller;

use App\Model\PartnerManager;

class PartnerController extends AbstractController{
     //Lister partenaires
    public function index(): string
    {
        $partnerManager = new PartnerManager();
        $partners = $partnerManager->selectAll('name');

        return $this->twig->render('Partner/index.html.twig', ['partners' => $partners]);
    }

   //Voir les infos d'un partenaire
    public function show(int $id): string
    {
        $partnerManager = new PartnerManager();
        $partner = $partnerManager->selectOneById($id);

        return $this->twig->render('Partner/show.html.twig', ['partner' => $partner]);
    }

    //Editer un partenaire
    public function edit(int $id): ?string
    {
        $partnerManager = new PartnerManager();
        $partner = $partnerManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $partner = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, update and redirection
            $partnerManager->update($partner);

            header('Location: /partners/show?id=' . $id);

            // we are redirecting so we don't want any content rendered
            return null;
        }

        return $this->twig->render('Partner/edit.html.twig', [
            'partner' => $partner,
        ]);
    }

   //Ajouter un partenaire
    public function add(): ?string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $partner = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, insert and redirection
            $partnerManager = new PartnerManager();
            $id = $partnerManager->insert($partner);

            header('Location:/partner/show?id=' . $id);
            return null;
        }

        return $this->twig->render('Partner/add.html.twig');
    }

    //Supprimer un partenaire
    public function delete(): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = trim($_POST['id']);
            $partnerManager = new PartnerManager();
            $partnerManager->delete((int)$id);

            header('Location:/items');
        }
    }
}
