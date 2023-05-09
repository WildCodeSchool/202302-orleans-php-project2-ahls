<?php

namespace App\Model;

use PDO;

class ActualityManager extends AbstractManager
{
    public const TABLE = 'actuality';

    public function __construct()
    {
        parent::__construct();
    }

    public function selectThreeArticles(): array
    {
        $query = "SELECT * FROM " . self::TABLE . " ORDER BY `date` DESC LIMIT 3";

        return $this->pdo->query($query)->fetchAll();
    }

    public function insert(array $article): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " (`title`, `content`, `date`, `url`) 
        VALUES (:title, :content, :date, :url)");
        $statement->bindValue('title', $article['title'], PDO::PARAM_STR);
        $statement->bindValue('content', $article['content'], PDO::PARAM_STR);
        $statement->bindValue('date', $article['date'], PDO::PARAM_STR);
        $statement->bindValue('url', $article['url'], PDO::PARAM_STR);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }
}
