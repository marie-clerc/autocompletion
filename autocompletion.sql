-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2021 at 10:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Table structure for table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` mediumtext,
  `artiste` tinytext,
  `categorie` tinytext,
  `date` tinytext,
  `courant` tinytext,
  `conservation` tinytext,
  `image` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `nom`, `artiste`, `categorie`, `date`, `courant`, `conservation`, `image`) VALUES
(1, 'Vénus de Milo', 'Alexandros d\'Antioche', 'Sculpture', 'Vers 150-130 av. J.-C.', 'Époque hellénistique', 'Musée du Louvre', 'https://upload.wikimedia.org/wikipedia/commons/f/f3/The_legendary_Venus_de_Milo_in_the_Louvre%2C_9_February_2014_cropped.jpg'),
(2, 'Groupe du Laocoon', 'Agésandros, Athénodore et Polydore', 'Sculpture', 'vers 40 av. J.-C.', 'Époque hellénistique', 'Musée Pio-Clementino', 'https://i1.wp.com/florilegeswebjournal.com/wp-content/uploads/2017/12/image1.jpg?fit=835%2C803&ssl=1'),
(3, 'Apollon du Belvédère', 'Léocharès', 'Sculpture', 'IV e siècle av. J.-C.', 'Époque antonine', 'Musée Pio-Clementino', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Apollo_of_the_Belvedere.jpg'),
(4, 'Athéna Parthénos', 'Phidias', 'Sculpture', 'achevée vers 438 av. J.-C.', 'Chryséléphantine', 'Parthénon', 'https://upload.wikimedia.org/wikipedia/commons/b/bb/NAMA_Ath%C3%A9na_Varvakeion.jpg'),
(5, 'Adam', 'Pierre de Montreuil', 'Sculpture', 'au milieu du 13e siècle', 'Gothique', 'musée de Cluny', 'https://www.musee-moyenage.fr/cache/media/oeuvres/38-adam/adam/s,900-ffb0f8.jpg'),
(6, 'Aumônière brodée au griffon', NULL, 'Broderie', '14e siècle', 'Classique', 'Musée de Cluny', 'https://www.musee-moyenage.fr/cache/media/oeuvres/aumonieres-de-la-comptesse-de-bar/aumoniere-de-la-comtesse-de-bar-1/s,900-db91b9.jpg'),
(7, 'Couronnes votives du trésor de Guarrazar', NULL, 'Orfèvrerie', '7e siècle', 'Classique', 'Musée de Cluny', 'https://www.musee-moyenage.fr/cache/media/oeuvres/12-couronne-votive-guarrazar/cl_2879_3/s,900-fb964b.jpg'),
(8, 'Vitraux de la Sainte-Chapelle', NULL, 'Vitrail', '13 siècle', 'Classique', 'Musée de Cluny', 'https://upload.wikimedia.org/wikipedia/commons/c/c4/SaintChapelle07.jpg'),
(9, 'Tapisseries de la Dame à la licorne', NULL, 'Tapisserie', '15e - 16e siècle', 'Classique', 'Musée de Cluny', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Paris_-_Mus%C3%A9e_de_Cluny_-_La_Dame_%C3%A0_la_licorne_-_La_Vue_-_001.jpg'),
(10, 'Plafond de la chapelle Sixtine', 'Michel-Ange', 'Fresque', '1508 - 1512', 'Renaissance Italienne', 'Chapelle Sixtine, Vatican', 'https://upload.wikimedia.org/wikipedia/commons/0/07/CAPPELLA_SISTINA_Ceiling.jpg'),
(11, 'La Nuit étoilée', 'Vincent Van Gogh', 'Peinture', '1889', 'Impressionnisme', 'MoMA, New York', 'https://www.kazoart.com/blog/wp-content/uploads/2017/03/van-gogh-la-nuit-etoilee-1.jpg'),
(12, 'La Naissance de Vénus', 'Sandro Botticelli', 'Peinture', 'Vers 1484-1485', 'Renaissance', 'Galerie des Offices, Florence', 'https://www.panoramadelart.com/sites/default/files/F090-botticelli-venus-1-f.jpg'),
(13, 'La Grande Vague de Kanagawa', 'Hokusai', 'Gravure sur bois', '1830 ou 1831', 'Ukiyo-e', 'Musée national de Tokyo', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Tsunami_by_hokusai_19th_century.jpg'),
(14, 'Autoportrait', 'Pablo Picasso', 'Peinture', '1901', 'Maniérisme', 'Musée national Picasso', 'https://www.museepicassoparis.fr/sites/default/files/2020-02/16-530611---Autoportrait.jpg'),
(15, 'la Cité radieuse', 'Le Corbusier', 'Architecture', '1947 - 1952', 'Moderne', 'Marseille', 'https://upload.wikimedia.org/wikipedia/commons/0/05/La_cit%C3%A9_radieuse_par_ryan_pellegrini.jpg'),
(16, 'L\'Arrivée d\'un train en gare de La Ciotat', 'Louis Lumière', 'Film', '1896', 'Documentaire', 'La Ciotat', 'https://phototrend.fr/wp-content/uploads/2020/02/larrivee-dun-train-en-gare-de-la-ciotat-4k-60-ips-01-1400x769.jpg'),
(17, 'Les Misérables', 'Victor Hugo', 'Livre', '1862', 'Littérature française', 'Maison natale de Victor Hugo - Besançon', 'https://upload.wikimedia.org/wikipedia/commons/4/40/Cosette-sweeping-les-miserables-emile-bayard-1862.jpg'),
(18, 'Voyage au centre de la Terre', 'Jules Verne', 'Livre', '1864', 'Roman d\'aventures', NULL, 'https://upload.wikimedia.org/wikipedia/commons/b/b2/%27Journey_to_the_Center_of_the_Earth%27_by_%C3%89douard_Riou_38.jpg'),
(19, 'Balloon Dog', 'Jeff Koons', 'Sculpture', '1994 - 2000', 'Néo pop', NULL, 'https://image.jimcdn.com/app/cms/image/transf/none/path/s33f4b296991f4cd1/image/i702a329bf06aae4e/version/1573915211/balloon-dog-orange-de-jeff-koons.jpg'),
(20, 'Suite bergamasque', 'Claude Debussy', 'Musique', '1890 - 1905', 'Baroque', NULL, 'https://upload.wikimedia.org/wikipedia/commons/2/20/Clair_de_lune_Debussy.png'),
(21, 'La Joconde', 'Léonard de Vinci', 'Peinture', '1503 - 1506', 'Haute Renaissance ', 'Musée du Louvre', 'https://www.connaissancedesarts.com/wp-content/uploads/2019/05/cda_actu_2019_focus_oeuvre_joconde_clos_luce_full.jpg'),
(22, 'Bal du moulin de la Galette', 'Renoir', 'Peinture', '1876', 'Impressionnisme', 'Musée d\'Orsay', 'https://upload.wikimedia.org/wikipedia/commons/2/21/Pierre-Auguste_Renoir%2C_Le_Moulin_de_la_Galette.jpg'),
(23, 'La Cène', 'Léonard de Vinci', 'Fresque', '1495 - 1498', 'Haute Renaissance, Renaissance', 'Eglise Santa Maria delle Grazie de Milan, Italie', 'http://m.oeuvres-art.com/images/large/la-cene-leonard-de-vinci.jpg'),
(24, 'La Création d\'Adam', 'Michel-Ange', 'Fresque', '1508 - 1512', 'Haute Renaissance', 'Chapelle Sixtine, Vatican', 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Creaci%C3%B3n_de_Ad%C3%A1n.jpg'),
(25, 'Le Radeau de La Méduse', 'Théodore Géricault', 'Peinture', '1818 - 1819', 'Romantisme', 'Musée du Louvre', 'https://upload.wikimedia.org/wikipedia/commons/1/15/JEAN_LOUIS_TH%C3%89ODORE_G%C3%89RICAULT_-_La_Balsa_de_la_Medusa_%28Museo_del_Louvre%2C_1818-19%29.jpg'),
(26, 'Le Déjeuner sur l\'herbe', 'Edouard Manet', 'Peinture', '1863', 'Impressionnisme, Réalisme', 'Musée d\'Orsay', 'https://upload.wikimedia.org/wikipedia/commons/f/fc/%C3%89douard_Manet_-_Le_D%C3%A9jeuner_sur_l%27herbe.jpg'),
(27, 'Impression, soleil levant', 'Claude Monet', 'Peinture', '1873', 'Impressionnisme ', 'Musée Marmotttan Monet', 'https://upload.wikimedia.org/wikipedia/commons/5/54/Claude_Monet%2C_Impression%2C_soleil_levant.jpg'),
(28, 'Grand Palais', 'Charles Girault', 'Architecture', '1900', 'Eclétisme', 'Paris', 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Grand_Palais%2C_Paris_7_August_2017.jpg'),
(29, 'Homme de Vitruve', 'Léonard de Vinci', 'Dessin', '1490', 'Renaissance Italienne', 'Gallerie dell\'Accademia de Venise, Italie', 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Vitruvian_Man_by_Leonardo_da_Vinci.jpg'),
(30, 'L\'École d\'Athènes', 'Raphaël', 'Fresque', '1508 - 1512', 'Haute Renaissance', 'Palais du Vatican', 'https://upload.wikimedia.org/wikipedia/commons/4/49/%22The_School_of_Athens%22_by_Raffaello_Sanzio_da_Urbino.jpg'),
(31, 'Cathédrale Notre-Dame de Paris', 'Eugène Viollet-le-Duc', 'Architecture', '1163 au milieu du XIVe siècle', 'Gothique', 'Paris', 'https://upload.wikimedia.org/wikipedia/commons/a/af/Notre-Dame_de_Paris_2013-07-24.jpg'),
(32, 'Marina Bay Sands', 'Moshe Safdie', 'Architecture', '2010', 'Contemporaine', 'Singapour', 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Marina-Bay-Sands.jpg'),
(33, 'Pyramide de Khéops', 'Égyptiens de l\'Antiquité', 'Architecture', 'vers 2560 av. J.-C.', 'Antiquité Égyptienne', 'Égypte', 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Great_Pyramid_of_Giza.jpg'),
(34, 'Grande Muraille', 'Peuples de Chine', 'Architecture', 'IIIe siècle av. J.-C. et le XVIIe siècle ', 'Art millitaire', 'Chine', 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Great_Wall_of_China_July_2006.JPG'),
(35, 'Palais Longchamp', 'Henri-Jacques Espérandieu', 'Architecture', '1862', 'Néo-Classique', 'Marseille', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Palais_Longchamp_002.jpg'),
(36, 'We Are The Youth', 'Keith Haring', 'Fresque', '1987', 'Art Urbain', 'Philadelphie', 'https://upload.wikimedia.org/wikipedia/commons/2/25/Keith_Haring_We_Are_The_Youth.jpg'),
(37, 'Autoportrait au collier d’épines et colibri', 'Frida Kahlo', 'Peinture', '1940', 'Réalisme', 'Musée des beaux arts de Boston', 'https://www.kazoart.com/blog/wp-content/uploads/2017/03/frida-kahlo-autoportrait-au-collier-d-epines-et-colibri.jpg'),
(38, 'La Persistance de la mémoire', 'Salvador Dali', 'Peinture', '1931', 'Surréalisme', 'MoMA, New York', 'https://www.kazoart.com/blog/wp-content/uploads/2019/05/Salvador-Dali-persistance-de-la-memoire-1931-1140x866.jpg'),
(39, 'Machu Picchu', 'Civilisation Inca', 'Architecture', 'XVe siècle', 'Époque Inca', 'Pérou', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/MachuPicchu_-_Wayna_Pikchu.jpg'),
(40, 'Pierre du Soleil', 'Peuple Aztèque', 'Sculpture', '1479', 'Empire aztèque', 'Musée national d\'anthropologie de Mexico', 'https://upload.wikimedia.org/wikipedia/commons/1/14/Piedra_del_Sol_en_MNA.jpg'),
(41, 'Pyramide de Kukulcán', 'Peuple Maya Itzas', 'Architecture', '550 - 800 et 1050 - 1300', 'Classique, Postclassique', 'Mexique', 'https://upload.wikimedia.org/wikipedia/commons/8/8d/El_Castillo_Stitch_2008_Edit_1.jpg'),
(42, 'Wat Pho', 'Associé à King Rama I', 'Architecture', '1788', 'Bouddhisme', 'Chao Phraya, Thaïland', 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Bangkok_Wat_Pho_reclining_Buddha.jpg'),
(43, 'Sphinx de Gizeh', 'Khéphren', 'Sculpture monumentale', '2500 av. J.-C', 'Ancien Empire égyptien', 'Gizeh, Égypte', 'https://upload.wikimedia.org/wikipedia/commons/1/18/The_amazing_Sphinx.jpg'),
(44, 'Dame blanche', 'Peuple bochiman', 'Peinture', 'il y a 2000 ans', NULL, 'Namibie', 'https://upload.wikimedia.org/wikipedia/commons/5/56/Wei%C3%9Fe_Dame_Brandberg.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
