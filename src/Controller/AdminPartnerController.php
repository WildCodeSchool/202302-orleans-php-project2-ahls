<?php

namespace App\Controller;

use App\Model\PartnerManager;

class AdminPartnerController extends AbstractController
{
    public function delete(int $id): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $partnerManager = new PartnerManager();
            $partnerManager->delete($id);
            header('Location: /Admin/Partenaires');
        }
    }
}