<?php

namespace App\Model;

use PDO;

class NewspaperManager extends AbstractManager
{
    public const TABLE = 'newspaper';

    public function insert(array $newspaper): void
    {
        $statement = $this->pdo->prepare(
            "INSERT INTO " . self::TABLE . " (`number`, `date`, `link`)
             VALUES (:number, :date, :link)"
        );

        $statement->bindValue('number', $newspaper['number'], PDO::PARAM_INT);
        $statement->bindValue('date', $newspaper['date'], PDO::PARAM_STR);
        $statement->bindValue('link', $newspaper['link'], PDO::PARAM_STR);

        $statement->execute();
    }
}
