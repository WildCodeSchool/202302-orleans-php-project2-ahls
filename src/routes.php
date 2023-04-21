<?php

return [

    '' => ['HomeController', 'index',],
    'partners' => ['PartnerController', 'index',],
    'partners/edit' => ['PartnerController', 'edit', ['id']],
    'partners/show' => ['PartnerController', 'show', ['id']],
    'partners/add' => ['PartnerController', 'add',],
    'partners/delete' => ['PartnerController', 'delete',],
];
