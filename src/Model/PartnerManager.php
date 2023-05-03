<?php

namespace App\Model;

use PDO;

class PartnerManager extends AbstractManager
{
    public const TABLE = 'partner';

    public function insert(array $partner): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " (`name`) VALUES (:name),
         (`address`) VALUES (:address), (`url`) VALUES (:url), (`image`) VALUES (:image)");
        $statement->bindValue('name', $partner['name'], PDO::PARAM_STR);
        $statement->bindValue('address', $partner['address'], PDO::PARAM_STR);
        $statement->bindValue('url', $partner['url'], PDO::PARAM_STR);
        $statement->bindValue('image', $partner['image'], PDO::PARAM_STR);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }
}
