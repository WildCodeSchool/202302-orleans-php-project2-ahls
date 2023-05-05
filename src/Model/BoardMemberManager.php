<?php

namespace App\Model;

use PDO;
use App\Model\AbstractManager;

class BoardMemberManager extends AbstractManager
{
    public const TABLE = 'board_member';


    public function insert(array $boardMember): void
    {
        $statement = $this->pdo->prepare(
            "INSERT INTO " . self::TABLE . " (`firstname`, `lastname`, `job`) 
            VALUES (:firstname, :lastname, :job)"
        );
        $statement->bindValue('firstname', $boardMember['firstname'], PDO::PARAM_STR);
        $statement->bindValue('lastname', $boardMember['lastname'], PDO::PARAM_STR);
        $statement->bindValue('job', $boardMember['job'], PDO::PARAM_STR);

        $statement->execute();
    }

    public function update(array $boardMember): void
    {
        $statement = $this->pdo->prepare(
            "UPDATE " . self::TABLE . " SET `firstname`=:firstname, `lastname`=:lastname, `job`=:job
            WHERE id=:id"
        );
        $statement->bindValue('firstname', $boardMember['firstname'], PDO::PARAM_STR);
        $statement->bindValue('lastname', $boardMember['lastname'], PDO::PARAM_STR);
        $statement->bindValue('job', $boardMember['job'], PDO::PARAM_STR);
        $statement->bindValue('id', $boardMember['id'], PDO::PARAM_STR);

        $statement->execute();
    }
}
