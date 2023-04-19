<?php

namespace App\Model;

use PDO;

class PartnerManager extends AbstractManager
{
    public const TABLE = 'partners';

    // Insert new partner in database//

    public function insert(array $partner): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " (`name`, `address`, `url`) VALUES (:name, :address, :url)");
        $statement->bindValue('name', $partner['name'], PDO::PARAM_STR);
        $statement->bindValue('address', $partner['address'], PDO::PARAM_STR);
        $statement->bindValue('url', $partner['url'], PDO::PARAM_STR);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }

    //Update partner in database

    public function update(array $partner): bool
    {
        $statement = $this->pdo->prepare("UPDATE " . self::TABLE . " SET `name` = :name WHERE id=:id");
        $statement->bindValue('id', $partner['id'], PDO::PARAM_INT);
        $statement->bindValue('name', $partner['name'], PDO::PARAM_STR);

        return $statement->execute();
    }
}
