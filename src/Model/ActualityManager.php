<?php

namespace App\Model;

use App\Model\AbstractManager;
use PDO;

class ActualityManager extends AbstractManager
{
    public const TABLE = 'actuality';

    public function __construct()
    {
        parent::__construct();
    }
}
