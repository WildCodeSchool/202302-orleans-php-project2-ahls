-- phpMyAdmin SQL Dump

-- version 4.5.4.1deb2ubuntu2

-- http://www.phpmyadmin.net

--

-- Client :  localhost

-- Généré le :  Jeu 26 Octobre 2017 à 13:53

-- Version du serveur :  5.7.19-0ubuntu0.16.04.1

-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Base de données :  `simple-mvc`

--

-- --------------------------------------------------------

--

-- Structure de la table `item`

--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `actuality` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--

-- Contenu de la table `item`

--

INSERT INTO `item` (`id`, `title`) VALUES
(1, 'Stuff'),
(2, 'Doodads');

INSERT INTO `actuality` (`date`, `title`, `content`) VALUES
('2023-04-18 06:00', 'Des diplômés de licence et de master célébrés à l’université', 'Cent quatre-vingts lauréats, de la licence au doctorat, ont reçu leur diplôme à la faculté de droit économie gestion de l’université d’Orléans. Sandra Rimbert, enseignant...'),
('2023-04-17 06:00', 'Une élue européenne en visite', 'Salima Yenbou est allée à la rencontre des élèves du lycée Voltaire pour faire mieux connaître le Parlement européen et le rôle de l’Europe. - Salima Yenbou, députée européenne (...'),
('2023-04-17 06:00', 'Des écoliers préparent une pièce sur Jeanne d’Arc', 'Les élèves de CM1 et CM2 de l’école privée du cours Henri-Guillaumet (membre du réseau Espérance banlieue) répètent une pièce de théâtre sur Jeanne d’Arc, qui sera présent...');

--

-- Index pour les tables exportées

--

--

-- Index pour la table `item`

--

ALTER TABLE `item` ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT pour les tables exportées

--

--

-- AUTO_INCREMENT pour la table `item`

--

ALTER TABLE
    `item` MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/*******Table Board Member*********/

CREATE TABLE
    board_member (
        id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        firstname VARCHAR(255) NOT NULL,
        lastname VARCHAR(255) NOT NULL,
        job VARCHAR(255) NOT NULL,
        image VARCHAR(255)
    );

INSERT INTO
    board_member (firstname, lastname, job)
VALUES (
        'Christiane',
        'Dumas',
        'Présidente et Secrétaire'
    ), (
        'Jean-Louis ',
        'Delfau',
        'Vice-Président'
    ), (
        'Françoise',
        'Pi',
        'Trésorière'
    ), (
        'Jean-Claude',
        'Pilaudeau',
        'Trésorier Adjoint'
    ), (
        'Claire',
        'Beduchaud',
        'Membre'
    ), ('Bernard', 'Robert', 'Membre'), (
        'Abderrahim',
        'Ghbabra',
        'Membre'
    ), (
        'Jean-Louis',
        'Delfau',
        'Membre du groupe Indien'
    ), (
        'Nelly',
        'Le Pennec',
        'Membre du groupe Indien'
    ), (
        'Bernard',
        'Robert',
        'Membre du groupe Indien'
    ), (
        'Alain',
        'Gay Garnaud',
        'Membre du groupe Indien'
    );

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/***** Table Magazine*****/
<<<<<<< HEAD
CREATE TABLE newspaper (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `number` INT NOT NULL,
  `date` VARCHAR(255) NOT NULL,
  `cover` VARCHAR(255),
  `link` VARCHAR(255)
);
INSERT INTO newspaper (number, date)
VALUES (137, 'Mars 2023'),
  (136, 'Novembre 2022'),
  (135, 'Juin 2022'),
  (134, 'Mars 2022'),
  (133, 'Octobre 2021'),
  (132, 'Mai 2021'),
  (131, 'Janvier 2021'),
  (130, 'Juillet 2020'),
  (128, 'Mois Année'),
  (129, 'Mois Année'),
  (127, 'Mois Année'),
  (126, 'Mois Année'),
  (125, 'Mois Année'),
  (124, 'Mois Année'),
  (123, 'Mois Année'),
  (122, 'Mois Année'),
  (121, 'Mois Année'),
  (120, 'Mois Année'),
  (119, 'Mois Année'),
  (118, 'Mois Année'),
  (117, 'Mois Année'),
  (116, 'Mois Année'),
  (115, 'Mois Année'),
  (114, 'Mois Année'),
  (113, 'Mois Année'),
  (112, 'Mois Année'),
  (111, 'Mois Année'),
  (110, 'Mois Année'),
  (109, 'Mois Année'),
  (108, 'Mois Année'),
  (107, 'Mois Année'),
  (106, 'Mois Année'),
  (105, 'Mois Année'),
  (104, 'Mois Année'),
  (103, 'Mois Année'),
  (102, 'Mois Année'),
  (101, 'Mois Année'),
  (100, 'Mois Année'),
  (099, 'Mois Année'),
  (098, 'Mois Année'),
  (097, 'Mois Année'),
  (096, 'Mois Année'),
  (095, 'Mois Année'),
  (094, 'Mois Année'),
  (093, 'Mois Année'),
  (092, 'Mois Année'),
  (091, 'Mois Année'),
  (090, 'Mois Année'),
  (089, 'Mois Année'),
  (088, 'Mois Année'),
  (087, 'Mois Année'),
  (086, 'Mois Année'),
  (085, 'Mois Année'),
  (084, 'Mois Année'),
  (083, 'Mois Année'),
  (082, 'Mois Année'),
  (081, 'Mois Année'),
  (080, 'Mois Année'),
  (079, 'Mois Année'),
  (078, 'Mois Année'),
  (077, 'Mois Année'),
  (076, 'Mois Année'),
  (075, 'Mois Année'),
  (074, 'Mois Année'),
  (073, 'Mois Année'),
  (072, 'Mois Année'),
  (071, 'Mois Année'),
  (070, 'Mois Année'),
  (069, 'Mois Année'),
  (068, 'Mois Année'),
  (067, 'Mois Année'),
  (066, 'Mois Année'),
  (065, 'Mois Année'),
  (064, 'Mois Année'),
  (063, 'Mois Année'),
  (062, 'Mois Année'),
  (061, 'Mois Année'),
  (060, 'Mois Année'),
  (059, 'Mois Année'),
  (058, 'Mois Année'),
  (057, 'Mois Année'),
  (056, 'Mois Année'),
  (055, 'Mois Année'),
  (054, 'Mois Année'),
  (053, 'Mois Année'),
  (052, 'Mois Année'),
  (051, 'Mois Année'),
  (050, 'Mois Année'),
  (049, 'Mois Année'),
  (048, 'Mois Année'),
  (047, 'Mois Année'),
  (046, 'Mois Année'),
  (045, 'Mois Année'),
  (044, 'Mois Année'),
  (043, 'Mois Année'),
  (042, 'Mois Année'),
  (041, 'Mois Année'),
  (040, 'Mois Année'),
  (039, 'Mois Année'),
  (038, 'Mois Année'),
  (037, 'Mois Année'),
  (036, 'Mois Année'),
  (035, 'Mois Année'),
  (034, 'Mois Année'),
  (033, 'Mois Année'),
  (032, 'Mois Année'),
  (031, 'Mois Année'),
  (030, 'Mois Année'),
  (029, 'Mois Année'),
  (028, 'Mois Année'),
  (027, 'Mois Année'),
  (026, 'Mois Année'),
  (025, 'Mois Année'),
  (024, 'Mois Année'),
  (023, 'Mois Année'),
  (022, 'Mois Année'),
  (021, 'Mois Année'),
  (020, 'Mois Année'),
  (019, 'Mois Année'),
  (018, 'Mois Année'),
  (017, 'Mois Année'),
  (016, 'Mois Année'),
  (015, 'Mois Année'),
  (014, 'Mois Année'),
  (013, 'Mois Année'),
  (012, 'Mois Année'),
  (011, 'Mois Année'),
  (010, 'Mois Année'),
  (009, 'Mois Année'),
  (008, 'Mois Année'),
  (007, 'Mois Année'),
  (006, 'Mois Année'),
  (005, 'Mois Année'),
  (004, 'Mois Année'),
  (003, 'Mois Année'),
  (002, 'Mois Année'),
  (001, 'Mois Année');

  CREATE TABLE `partner` (
   `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   `name` VARCHAR(255) NOT NULL,
   `address` VARCHAR(255) NOT NULL,
   `url` VARCHAR(255) NOT NULL,
   `image` VARCHAR(255) NULL
   );

INSERT INTO partner (name, address, url, image) VALUES
  ('Antonio Meira', '447 Rue Marcel Belot - 45160 Olivet', 'http://www.am-motorbike.fr/', 'meira.jpg'),
  ('La Racinerie', 'Rue Haute - Saint-Cyr-En-Val', 'https://www.bienvenue-a-la-ferme.com/centre/loiret/st-cyr-en-val/ferme/la-racinerie/233194', 'racinerie.jpg'),
  ('U Express', '24 Avenue de la Bolière - 45100 Orléans', 'https://www.magasins-u.com/magasin/uexpress-orleanslasource', 'uexpress.jpg'), 
  ('Boulangerie de la Bolière', '24 Avenue de la Bolière - 45100 Orléans', 'https://www.myboulange.fr/45/orleans/boulangerie-de-la-boliere-64299', 'boulangerie.jpg'), 
  ('Cordonnerie Chauss Clefs', '10 Avenue du Président John Kennedy - 45100 Orléans', 'https://www.pagesjaunes.fr/pros/51562297', 'cordonnerie.jpg'), 
  ('ACM Formation', '2bis Rue Alain - 45100 Orléans', 'https://acmformation.com/', 'ACM.jpg');
=======

CREATE TABLE
    newspaper (
        `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        `number` INT NOT NULL,
        `date` VARCHAR(255) NOT NULL,
        `cover` VARCHAR(255),
        `link` VARCHAR(255)
    );

INSERT INTO
    newspaper (number, date)
VALUES (137, 'Mars 2023'), (136, 'Novembre 2022'), (135, 'Juin 2022'), (134, 'Mars 2022'), (133, 'Octobre 2021'), (132, 'Mai 2021'), (131, 'Janvier 2021'), (130, 'Juillet 2020'), (128, 'Mois Année'), (129, 'Mois Année'), (127, 'Mois Année'), (126, 'Mois Année'), (125, 'Mois Année'), (124, 'Mois Année'), (123, 'Mois Année'), (122, 'Mois Année'), (121, 'Mois Année'), (120, 'Mois Année'), (119, 'Mois Année'), (118, 'Mois Année'), (117, 'Mois Année'), (116, 'Mois Année'), (115, 'Mois Année'), (114, 'Mois Année'), (113, 'Mois Année'), (112, 'Mois Année'), (111, 'Mois Année'), (110, 'Mois Année'), (109, 'Mois Année'), (108, 'Mois Année'), (107, 'Mois Année'), (106, 'Mois Année'), (105, 'Mois Année'), (104, 'Mois Année'), (103, 'Mois Année'), (102, 'Mois Année'), (101, 'Mois Année'), (100, 'Mois Année'), (099, 'Mois Année'), (098, 'Mois Année'), (097, 'Mois Année'), (096, 'Mois Année'), (095, 'Mois Année'), (094, 'Mois Année'), (093, 'Mois Année'), (092, 'Mois Année'), (091, 'Mois Année'), (090, 'Mois Année'), (089, 'Mois Année'), (088, 'Mois Année'), (087, 'Mois Année'), (086, 'Mois Année'), (085, 'Mois Année'), (084, 'Mois Année'), (083, 'Mois Année'), (082, 'Mois Année'), (081, 'Mois Année'), (080, 'Mois Année'), (079, 'Mois Année'), (078, 'Mois Année'), (077, 'Mois Année'), (076, 'Mois Année'), (075, 'Mois Année'), (074, 'Mois Année'), (073, 'Mois Année'), (072, 'Mois Année'), (071, 'Mois Année'), (070, 'Mois Année'), (069, 'Mois Année'), (068, 'Mois Année'), (067, 'Mois Année'), (066, 'Mois Année'), (065, 'Mois Année'), (064, 'Mois Année'), (063, 'Mois Année'), (062, 'Mois Année'), (061, 'Mois Année'), (060, 'Mois Année'), (059, 'Mois Année'), (058, 'Mois Année'), (057, 'Mois Année'), (056, 'Mois Année'), (055, 'Mois Année'), (054, 'Mois Année'), (053, 'Mois Année'), (052, 'Mois Année'), (051, 'Mois Année'), (050, 'Mois Année'), (049, 'Mois Année'), (048, 'Mois Année'), (047, 'Mois Année'), (046, 'Mois Année'), (045, 'Mois Année'), (044, 'Mois Année'), (043, 'Mois Année'), (042, 'Mois Année'), (041, 'Mois Année'), (040, 'Mois Année'), (039, 'Mois Année'), (038, 'Mois Année'), (037, 'Mois Année'), (036, 'Mois Année'), (035, 'Mois Année'), (034, 'Mois Année'), (033, 'Mois Année'), (032, 'Mois Année'), (031, 'Mois Année'), (030, 'Mois Année'), (029, 'Mois Année'), (028, 'Mois Année'), (027, 'Mois Année'), (026, 'Mois Année'), (025, 'Mois Année'), (024, 'Mois Année'), (023, 'Mois Année'), (022, 'Mois Année'), (021, 'Mois Année'), (020, 'Mois Année'), (019, 'Mois Année'), (018, 'Mois Année'), (017, 'Mois Année'), (016, 'Mois Année'), (015, 'Mois Année'), (014, 'Mois Année'), (013, 'Mois Année'), (012, 'Mois Année'), (011, 'Mois Année'), (010, 'Mois Année'), (009, 'Mois Année'), (008, 'Mois Année'), (007, 'Mois Année'), (006, 'Mois Année'), (005, 'Mois Année'), (004, 'Mois Année'), (003, 'Mois Année'), (002, 'Mois Année'), (001, 'Mois Année');

CREATE TABLE
    `partner` (
        `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `address` VARCHAR(255) NOT NULL,
        `url` VARCHAR(255) NOT NULL,
        `image` VARCHAR(255) NOT NULL
    );

INSERT INTO
    partner (name, address, url, image)
VALUES (
        'Antonio Meira',
        '447 Rue Marcel Belot - 45160 Olivet',
        'http://www.am-motorbike.fr/',
        'meira.jpg'
    ), (
        'La Racinerie',
        'Rue Haute - Saint-Cyr-En-Val',
        'https://www.bienvenue-a-la-ferme.com/centre/loiret/st-cyr-en-val/ferme/la-racinerie/233194',
        'racinerie.jpg'
    ), (
        'U Express',
        '24 Avenue de la Bolière - 45100 Orléans',
        'https://www.magasins-u.com/magasin/uexpress-orleanslasource',
        'uexpress.jpg'
    ), (
        'Boulangerie de la Bolière',
        '24 Avenue de la Bolière - 45100 Orléans',
        'https://www.myboulange.fr/45/orleans/boulangerie-de-la-boliere-64299',
        'boulangerie.jpg'
    ), (
        'Cordonnerie Chauss Clefs',
        '10 Avenue du Président John Kennedy - 45100 Orléans',
        'https://www.pagesjaunes.fr/pros/51562297',
        'cordonnerie.jpg'
    ), (
        'ACM Formation',
        '2bis Rue Alain - 45100 Orléans',
        'https://acmformation.com/',
        'ACM.jpg'
    );
>>>>>>> 9cce2d04df96708e22ad0258432c5389df915612
