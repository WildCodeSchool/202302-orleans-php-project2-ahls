<?php

namespace App\Model;

use PDO;

class NewspaperManager extends AbstractManager
{
    public const TABLE = 'newspaper';

    public function showLastByNumber(): array
    {
        $query = "SELECT * FROM " . static::TABLE . " ORDER BY number DESC LIMIT 2";
        return $this->pdo->query($query)->fetchAll();
    }

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

    public function update(array $newspaper): void
    {
        $statement = $this->pdo->prepare(
            "UPDATE " . self::TABLE . " SET `number`=:number, `date`=:date, `link`=:link WHERE id=:id"
        );

        $statement->bindValue('number', $newspaper['number'], PDO::PARAM_INT);
        $statement->bindValue('date', $newspaper['date'], PDO::PARAM_STR);
        $statement->bindValue('link', $newspaper['link'], PDO::PARAM_STR);
        $statement->bindValue('id', $newspaper['id'], PDO::PARAM_STR);

        $statement->execute();
    }
}
