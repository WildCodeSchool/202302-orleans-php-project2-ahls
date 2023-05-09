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
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
CREATE TABLE `actuality` (
    `id` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `date` datetime NOT NULL,
    `title` varchar(255) NOT NULL,
    `content` text,
    `url` text
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--

-- Contenu de la table `item`
--

INSERT INTO `item` (`id`, `title`)
VALUES (1, 'Stuff'),
    (2, 'Doodads');
INSERT INTO `actuality` (`date`, `title`, `content`, `url`)
VALUES (
        '2023-04-18 06:00',
        'Des diplômés de licence et de master célébrés à l’université',
        'Cent quatre-vingts lauréats, de la licence au doctorat, ont reçu leur diplôme à la faculté de droit économie gestion de l’université d’Orléans. Sandra Rimbert, enseignant...',
        'https://www.larep.fr/orleans-45000/actualites/des-diplomes-de-licence-et-de-master-celebres-a-luniversite_14296054/'
    ),
    (
        '2023-04-17 06:00',
        'Une élue européenne en visite',
        'Salima Yenbou est allée à la rencontre des élèves du lycée Voltaire pour faire mieux connaître le Parlement européen et le rôle de l’Europe. - Salima Yenbou, députée européenne (...',
        'https://www.larep.fr/orleans-45000/actualites/une-elue-europeenne-en-visite_14295526/'
    ),
    (
        '2023-04-17 06:00',
        'Des écoliers préparent une pièce sur Jeanne d’Arc',
        'Les élèves de CM1 et CM2 de l’école privée du cours Henri-Guillaumet (membre du réseau Espérance banlieue) répètent une pièce de théâtre sur Jeanne d’Arc, qui sera présent...',
        'https://www.larep.fr/orleans-45000/actualites/des-ecoliers-preparent-une-piece-sur-jeanne-darc_14295527/'
    );
--

-- Index pour les tables exportées
--

--

-- Index pour la table `item`
--

ALTER TABLE `item`
ADD PRIMARY KEY (`id`);
--

-- AUTO_INCREMENT pour les tables exportées
--

--

-- AUTO_INCREMENT pour la table `item`
--

ALTER TABLE `item`
MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*******Table Board Member*********/
CREATE TABLE board_member (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    job VARCHAR(255) NOT NULL,
    image VARCHAR(255)
);
INSERT INTO board_member (firstname, lastname, job)
VALUES (
        'Christiane',
        'Dumas',
        'Présidente et Secrétaire'
    ),
    (
        'Jean-Louis ',
        'Delfau',
        'Vice-Président'
    ),
    (
        'Françoise',
        'Pi',
        'Trésorière'
    ),
    (
        'Jean-Claude',
        'Pilaudeau',
        'Trésorier Adjoint'
    ),
    (
        'Claire',
        'Beduchaud',
        'Membre'
    ),
    ('Bernard', 'Robert', 'Membre'),
    (
        'Abderrahim',
        'Ghbabra',
        'Membre'
    ),
    (
        'Jean-Louis',
        'Delfau',
        'Membre du groupe Indien'
    ),
    (
        'Nelly',
        'Le Pennec',
        'Membre du groupe Indien'
    ),
    (
        'Bernard',
        'Robert',
        'Membre du groupe Indien'
    ),
    (
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
CREATE TABLE newspaper (
    `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `number` INT NOT NULL,
    `date` DATE NOT NULL,
    `cover` VARCHAR(255),
    `link` VARCHAR(255)
);
INSERT INTO newspaper (number, date)
VALUES (137, '2023-03-01'),
    (136, '2022-11-01'),
    (135, '2022-06-01'),
    (134, '2022-03-01'),
    (133, '2021-10-01'),
    (132, '2021-05-01'),
    (131, '2021-01-01'),
    (130, '2020-07-01'),
    (128, '0001-01-01'),
    (129, '0001-01-01'),
    (127, '0001-01-01'),
    (126, '0001-01-01'),
    (125, '0001-01-01'),
    (124, '0001-01-01'),
    (123, '0001-01-01'),
    (122, '0001-01-01'),
    (121, '0001-01-01'),
    (120, '0001-01-01'),
    (119, '0001-01-01'),
    (118, '0001-01-01'),
    (117, '0001-01-01'),
    (116, '0001-01-01'),
    (115, '0001-01-01'),
    (114, '0001-01-01'),
    (113, '0001-01-01'),
    (112, '0001-01-01'),
    (111, '0001-01-01'),
    (110, '0001-01-01'),
    (109, '0001-01-01'),
    (108, '0001-01-01'),
    (107, '0001-01-01'),
    (106, '0001-01-01'),
    (105, '0001-01-01'),
    (104, '0001-01-01'),
    (103, '0001-01-01'),
    (102, '0001-01-01'),
    (101, '0001-01-01'),
    (100, '0001-01-01'),
    (099, '0001-01-01'),
    (098, '0001-01-01'),
    (097, '0001-01-01'),
    (096, '0001-01-01'),
    (095, '0001-01-01'),
    (094, '0001-01-01'),
    (093, '0001-01-01'),
    (092, '0001-01-01'),
    (091, '0001-01-01'),
    (090, '0001-01-01'),
    (089, '0001-01-01'),
    (088, '0001-01-01'),
    (087, '0001-01-01'),
    (086, '0001-01-01'),
    (085, '0001-01-01'),
    (084, '0001-01-01'),
    (083, '0001-01-01'),
    (082, '0001-01-01'),
    (081, '0001-01-01'),
    (080, '0001-01-01'),
    (079, '0001-01-01'),
    (078, '0001-01-01'),
    (077, '0001-01-01'),
    (076, '0001-01-01'),
    (075, '0001-01-01'),
    (074, '0001-01-01'),
    (073, '0001-01-01'),
    (072, '0001-01-01'),
    (071, '0001-01-01'),
    (070, '0001-01-01'),
    (069, '0001-01-01'),
    (068, '0001-01-01'),
    (067, '0001-01-01'),
    (066, '0001-01-01'),
    (065, '0001-01-01'),
    (064, '0001-01-01'),
    (063, '0001-01-01'),
    (062, '0001-01-01'),
    (061, '0001-01-01'),
    (060, '0001-01-01'),
    (059, '0001-01-01'),
    (058, '0001-01-01'),
    (057, '0001-01-01'),
    (056, '0001-01-01'),
    (055, '0001-01-01'),
    (054, '0001-01-01'),
    (053, '0001-01-01'),
    (052, '0001-01-01'),
    (051, '0001-01-01'),
    (050, '0001-01-01'),
    (049, '0001-01-01'),
    (048, '0001-01-01'),
    (047, '0001-01-01'),
    (046, '0001-01-01'),
    (045, '0001-01-01'),
    (044, '0001-01-01'),
    (043, '0001-01-01'),
    (042, '0001-01-01'),
    (041, '0001-01-01'),
    (040, '0001-01-01'),
    (039, '0001-01-01'),
    (038, '0001-01-01'),
    (037, '0001-01-01'),
    (036, '0001-01-01'),
    (035, '0001-01-01'),
    (034, '0001-01-01'),
    (033, '0001-01-01'),
    (032, '0001-01-01'),
    (031, '0001-01-01'),
    (030, '0001-01-01'),
    (029, '0001-01-01'),
    (028, '0001-01-01'),
    (027, '0001-01-01'),
    (026, '0001-01-01'),
    (025, '0001-01-01'),
    (024, '0001-01-01'),
    (023, '0001-01-01'),
    (022, '0001-01-01'),
    (021, '0001-01-01'),
    (020, '0001-01-01'),
    (019, '0001-01-01'),
    (018, '0001-01-01'),
    (017, '0001-01-01'),
    (016, '0001-01-01'),
    (015, '0001-01-01'),
    (014, '0001-01-01'),
    (013, '0001-01-01'),
    (012, '0001-01-01'),
    (011, '0001-01-01'),
    (010, '0001-01-01'),
    (009, '0001-01-01'),
    (008, '0001-01-01'),
    (007, '0001-01-01'),
    (006, '0001-01-01'),
    (005, '0001-01-01'),
    (004, '0001-01-01'),
    (003, '0001-01-01'),
    (002, '0001-01-01'),
    (001, '0001-01-01');
UPDATE newspaper
SET cover = 'cover137_placeholder.png',
    link = 'https://ahls-indien.fr/Indien/Indien_137-Mars_2023.pdf'
WHERE number = 137;
UPDATE newspaper
SET cover = 'cover136_placeholder.png',
    link = 'https://ahls-indien.fr/Indien/Indien_136-Novembre_2022.pdf'
WHERE number = 136;
CREATE TABLE partner (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL
);
INSERT INTO partner (name, address, url, image)
VALUES (
        'Antonio Meira',
        '447 Rue Marcel Belot - 45160 Olivet',
        'http://www.am-motorbike.fr/',
        'meira.jpg'
    ),
    (
        'La Racinerie',
        'Rue Haute - Saint-Cyr-En-Val',
        'https://www.bienvenue-a-la-ferme.com/centre/loiret/st-cyr-en-val/ferme/la-racinerie/233194',
        'racinerie.jpg'
    ),
    (
        'U Express',
        '24 Avenue de la Bolière - 45100 Orléans',
        'https://www.magasins-u.com/magasin/uexpress-orleanslasource',
        'uexpress.jpg'
    ),
    (
        'Boulangerie de la Bolière',
        '24 Avenue de la Bolière - 45100 Orléans',
        'https://www.myboulange.fr/45/orleans/boulangerie-de-la-boliere-64299',
        'boulangerie.jpg'
    ),
    (
        'Cordonnerie Chauss Clefs',
        '10 Avenue du Président John Kennedy - 45100 Orléans',
        'https://www.pagesjaunes.fr/pros/51562297',
        'cordonnerie.jpg'
    ),
    (
        'ACM Formation',
        '2bis Rue Alain - 45100 Orléans',
        'https://acmformation.com/',
        'ACM.jpg'
    );