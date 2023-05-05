<?php

// list of accessible routes of your application, add every new route here
// key : route to match
// values : 1. controller name
//          2. method name
//          3. (optional) array of query string keys to send as parameter to the method
// e.g route '/item/edit?id=1' will execute $itemController->edit(1)
return [
    '' => ['HomeController', 'index',],
    'items' => ['ItemController', 'index',],
    'items/edit' => ['ItemController', 'edit', ['id']],
    'items/show' => ['ItemController', 'show', ['id']],
    'items/add' => ['ItemController', 'add',],
    'items/delete' => ['ItemController', 'delete',],
    'association' => ['AssociationController', 'index',],
    'admin/association' => ['AdminAssociationController', 'index',],
    'admin/association/ajouter' => ['AdminAssociationController', 'create',],
    'admin/association/modifier' => ['AdminAssociationController', 'update', ['id']],
    'admin/association/supprimer' => ['AdminAssociationController', 'delete', ['id']],
    'journaux' => ['NewspaperController', 'index'],
    'admin/partenaires/ajouter' => ['AdminPartnerController', 'add'],
    'contact' => ['ContactController', 'index'],
    'admin/journaux' => ['AdminNewspaperController', 'index'],
    'admin/journaux/ajouter' => ['AdminNewspaperController', 'add'],
    'admin/journaux/modifier' => ['AdminNewspaperController', 'edit', ['id']],
];
