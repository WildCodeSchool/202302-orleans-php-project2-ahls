<?php

namespace App\Controller;

use App\Model\PartnerManager;

class AdminPartnerController extends AbstractController
{
    public function index(): string
    {
        $partnerManager = new PartnerManager();
        $partners = $partnerManager->selectAll();

        return $this->twig->render('Admin/Partner/index.html.twig', [
            'partners' => $partners,
        ]);
    }

    public function delete(int $id): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $partnerManager = new PartnerManager();
            $partnerManager->delete($id);
            header('Location: /Admin/Partenaires');
        }
    }

    public function add(): string
    {

        $errors = $partner = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $partner = array_map('trim', $_POST);

            if (empty($partner['name'])) {
                $errors[] = "Veuillez entrer un nom";
            }
            if (empty($partner['address'])) {
                $errors[] = "Veuillez entrer une adresse";
            }

            $uploadDir = __DIR__ . '/../../public/uploads/';
            $uploadFile = $uploadDir . basename($_FILES['imageUpload']['name']);
            $extension = pathinfo($_FILES['imageUpload']['name'], PATHINFO_EXTENSION);
            $authorizedExtensions = ['jpg', 'jpeg', 'png', 'webp'];
            $maxFileSize = 2000000;

            if ((!in_array($extension, $authorizedExtensions))) {
                $errors[] = 'Veuillez sélectionner une image de type Jpg, Jpeg, Webp ou Png !';
            }
            if (
                file_exists($_FILES['imageUpload']['tmp_name'])
                && filesize($_FILES['imageUpload']['tmp_name']) > $maxFileSize
            ) {
                $errors[] = "Votre fichier doit faire moins de " . $maxFileSize / 1000000 . "Mo.";
            }

            if (empty($errors)) {
                move_uploaded_file($_FILES['imageUpload']['tmp_name'], $uploadFile);

                // if validation is ok, insert and redirection
                $partnerManager = new PartnerManager();
                $partnerManager->insert($partner);

                header('Location:admin/partners/ajouter');
                return '';
            }
        }
        return $this->twig->render('Admin/Partner/add.html.twig', ['errors' => $errors, 'partner' => $partner]);
    }

    public function update(int $id): string
    {

        $partnerManager = new PartnerManager();
        $partner = $partnerManager->selectOneById($id);

        $errors = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $partner = array_map('trim', $_POST);

            if (empty($partner['name'])) {
                $errors[] = "Veuillez entrer un nom";
            }
            if (empty($partner['address'])) {
                $errors[] = "Veuillez entrer une adresse";
            }

            $uploadDir = __DIR__ . '/../../public/uploads/';
            $uploadFile = $uploadDir . basename($_FILES['imageUpload']['name']);
            $extension = pathinfo($_FILES['imageUpload']['name'], PATHINFO_EXTENSION);
            $authorizedExtensions = ['jpg', 'jpeg', 'png', 'webp'];
            $maxFileSize = 2000000;

            if ((!in_array($extension, $authorizedExtensions))) {
                $errors[] = 'Veuillez sélectionner une image de type Jpg, Jpeg, Webp ou Png !';
            }
            if (
                file_exists($_FILES['imageUpload']['tmp_name'])
                && filesize($_FILES['imageUpload']['tmp_name']) > $maxFileSize
            ) {
                $errors[] = "Votre fichier doit faire moins de " . $maxFileSize / 1000000 . "Mo.";
            }

            if (empty($errors)) {
                move_uploaded_file($_FILES['imageUpload']['tmp_name'], $uploadFile);

                // if validation is ok, insert and redirection
                $partnerManager = new PartnerManager();
                $partner['id'] = $id;
                $partnerManager->update($partner);

                header('Location:admin/partners/ajouter');
                return '';
            }
        }

        return $this->twig->render('Admin/Partner/update.html.twig', ['partner' => $partner]);
    }
}
