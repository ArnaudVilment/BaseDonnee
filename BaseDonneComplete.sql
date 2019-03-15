-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.3.11-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour jee
DROP DATABASE IF EXISTS `jee`;
CREATE DATABASE IF NOT EXISTS `jee` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jee`;

-- Export de la structure de la table jee. ville
DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table jee.ville : ~5 rows (environ)
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
INSERT INTO `ville` (`nom`) VALUES
	('Paris'),
	('Marseille'),
	('Lille'),
	('Lyon'),
	('Roubaix'),
	('lens');
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;


-- Export de la structure de la base pour pizzeria
DROP DATABASE IF EXISTS `pizzeria`;
CREATE DATABASE IF NOT EXISTS `pizzeria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pizzeria`;

-- Export de la structure de la table pizzeria. client
DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUM_client` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `PRENOM` varchar(255) NOT NULL,
  `ADRESSE` varchar(255) NOT NULL,
  `TEL_FIXE` varchar(15) DEFAULT NULL,
  `TEL_PORTABLE` varchar(15) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Export de données de la table pizzeria.client : ~36 rows (environ)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`ID`, `NUM_client`, `nom`, `PRENOM`, `ADRESSE`, `TEL_FIXE`, `TEL_PORTABLE`, `DATE_NAISSANCE`, `EMAIL`) VALUES
	(1, 123, 'ARMANI', 'Sophie2', 'Lille', '03215469', '0645879632', '1950-01-01', 'sophie.gmail.com'),
	(2, 354, 'BERURIER', 'Laurent', 'Lesquin', '03269854', '0698452136', '1960-01-01', 'BERURIER@yahoo.fr'),
	(3, 245, 'DENIS', 'Sylvain', 'Paris', '0321487526', '0698745213', '1970-01-01', 'DENIS@hotmail.com'),
	(4, 598, 'FERNIOT', 'Michelle', 'Lorient', '0123456987', '0695488754', '1980-01-01', 'FERNIOT@gmail.com'),
	(5, 12, 'LOPERT', 'Nikos', 'Paris', '0125634789', '0636251478', '1990-01-01', 'LOPERT@live.com'),
	(6, 78, 'MILLOT', 'Perrine', 'Brest', '0212458796', '0636985698', '2000-01-01', 'MILLOT@yahoo.fr'),
	(7, 985, 'RESTRI', 'M‚lanie', 'Strasbourg', '0236547895', '0698452136', '2001-01-01', 'RESTRI@gmail.com'),
	(8, 1452, 'AMISSE', 'Fran‡ois', 'Marseille', '015426987', '0698363636', '1995-01-01', 'AMISSE@outlook.com'),
	(9, 1985, 'MERBEAU', 'Nicolas', 'Toulouse', '0365478998', '0695959595', '1966-01-01', 'MERBEAU@gmail.com'),
	(10, 13256, 'CHEVALIER', 'Lionel', 'Paris', '0312457812', '0645124578', '1954-01-01', 'CHEVALIER@yahoo.com'),
	(11, 12589, 'TOTO', 'Titi', 'Lille', '0312124578', '0695032145', '1965-01-01', 'TOTO@gmail.com'),
	(12, 1256, 'DUBRAY', 'Judicael', 'Lyon', '0319824578', '061212364578', '1987-01-01', 'DUBRAY@yahoo.fr'),
	(13, 123, 'ARMANI', 'Sophie', 'Lille', '03215469', '0645879632', '1950-01-01', 'sophie.gmail.com'),
	(14, 354, 'BERURIER', 'Laurent', 'Lesquin', '03269854', '0698452136', '1960-01-01', 'BERURIER@yahoo.fr'),
	(15, 245, 'DENIS', 'Sylvain', 'Paris', '0321487526', '0698745213', '1970-01-01', 'DENIS@hotmail.com'),
	(16, 598, 'FERNIOT', 'Michelle', 'Lorient', '0123456987', '0695488754', '1980-01-01', 'FERNIOT@gmail.com'),
	(17, 12, 'LOPERT', 'Nikos', 'Paris', '0125634789', '0636251478', '1990-01-01', 'LOPERT@live.com'),
	(18, 78, 'MILLOT', 'Perrine', 'Brest', '0212458796', '0636985698', '2000-01-01', 'MILLOT@yahoo.fr'),
	(19, 985, 'RESTRI', 'M‚lanie', 'Strasbourg', '0236547895', '0698452136', '2001-01-01', 'RESTRI@gmail.com'),
	(20, 1452, 'AMISSE', 'Fran‡ois', 'Marseille', '015426987', '0698363636', '1995-01-01', 'AMISSE@outlook.com'),
	(21, 1985, 'MERBEAU', 'Nicolas', 'Toulouse', '0365478998', '0695959595', '1966-01-01', 'MERBEAU@gmail.com'),
	(22, 13256, 'CHEVALIER', 'Lionel', 'Paris', '0312457812', '0645124578', '1954-01-01', 'CHEVALIER@yahoo.com'),
	(23, 12589, 'TOTO', 'Titi', 'Lille', '0312124578', '0695032145', '1965-01-01', 'TOTO@gmail.com'),
	(24, 1256, 'DUBRAY', 'Judicael', 'Lyon', '0319824578', '061212364578', '1987-01-01', 'DUBRAY@yahoo.fr'),
	(25, 123, 'ARMANI', 'Sophie', 'Lille', '03215469', '0645879632', '1950-01-01', 'sophie.gmail.com'),
	(26, 354, 'BERURIER', 'Laurent', 'Lesquin', '03269854', '0698452136', '1960-01-01', 'BERURIER@yahoo.fr'),
	(27, 245, 'DENIS', 'Sylvain', 'Paris', '0321487526', '0698745213', '1970-01-01', 'DENIS@hotmail.com'),
	(28, 598, 'FERNIOT', 'Michelle', 'Lorient', '0123456987', '0695488754', '1980-01-01', 'FERNIOT@gmail.com'),
	(29, 12, 'LOPERT', 'Nikos', 'Paris', '0125634789', '0636251478', '1990-01-01', 'LOPERT@live.com'),
	(30, 78, 'MILLOT', 'Perrine', 'Brest', '0212458796', '0636985698', '2000-01-01', 'MILLOT@yahoo.fr'),
	(31, 985, 'RESTRI', 'M‚lanie', 'Strasbourg', '0236547895', '0698452136', '2001-01-01', 'RESTRI@gmail.com'),
	(32, 1452, 'AMISSE', 'Fran‡ois', 'Marseille', '015426987', '0698363636', '1995-01-01', 'AMISSE@outlook.com'),
	(33, 1985, 'MERBEAU', 'Nicolas', 'Toulouse', '0365478998', '0695959595', '1966-01-01', 'MERBEAU@gmail.com'),
	(34, 13256, 'CHEVALIER', 'Lionel', 'Paris', '0312457812', '0645124578', '1954-01-01', 'CHEVALIER@yahoo.com'),
	(35, 12589, 'TOTO', 'Titi', 'Lille', '0312124578', '0695032145', '1965-01-01', 'TOTO@gmail.com'),
	(36, 1256, 'DUBRAY', 'Judicael', 'Lyon', '0319824578', '061212364578', '1987-01-01', 'DUBRAY@yahoo.fr');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Export de la structure de la table pizzeria. film
DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `numero_film` int(11) NOT NULL,
  PRIMARY KEY (`numero_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table pizzeria.film : ~0 rows (environ)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Export de la structure de la table pizzeria. pizza
DROP TABLE IF EXISTS `pizza`;
CREATE TABLE IF NOT EXISTS `pizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `reference` varchar(10) NOT NULL,
  `prix` int(3) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COMMENT='update pizza set numero=12';

-- Export de données de la table pizzeria.pizza : ~24 rows (environ)
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` (`id`, `libelle`, `reference`, `prix`, `url_image`, `description`, `numero`) VALUES
	(1, 'Reine', 'PREI', 112, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(2, 'Regina2', 'PREG', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(3, 'Napolitaine', 'PNAP', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(4, '4 fromages', 'P4FR', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(5, 'Chorizo', 'PCHO', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(6, '4 saisons', 'P4SA', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(8, 'Bolognese', 'PBOL', 10, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(10, 'Reine', 'PREI', 1, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(11, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(12, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(13, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(14, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(15, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(16, 'Thon', 'THON', 60, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(17, 'Mozza', 'MOZZ', 16, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(18, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(19, 'Thon', 'THON', 60, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(20, 'Thon', 'MOZZ', 6, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(21, 'Fruits de mer', 'FRME', 2, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(22, 'Fruits de mer', 'FRME', 200, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(23, 'Mozza-Champ', 'MOCH', 12, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(24, 'Thon-mayo', 'THMO', 13, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Sauce tomate, Mozza', 12),
	(28, 'Mozza', 'MOZZA13', 15, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'tomate, mozza', 12),
	(29, 'Thon', 'Thon12', 12, 'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg', 'Thon', 12);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;

-- Export de la structure de la table pizzeria. test_date
DROP TABLE IF EXISTS `test_date`;
CREATE TABLE IF NOT EXISTS `test_date` (
  `d` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table pizzeria.test_date : ~9 rows (environ)
/*!40000 ALTER TABLE `test_date` DISABLE KEYS */;
INSERT INTO `test_date` (`d`) VALUES
	('2015-01-01'),
	('2018-01-16'),
	('2018-11-25'),
	('1999-12-12'),
	('2001-09-09'),
	('1990-01-01'),
	('2030-01-01'),
	('2030-11-11'),
	('1990-12-12');
/*!40000 ALTER TABLE `test_date` ENABLE KEYS */;


-- Export de la structure de la base pour universite
DROP DATABASE IF EXISTS `universite`;
CREATE DATABASE IF NOT EXISTS `universite` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `universite`;

-- Export de la structure de la table universite. t_enseignant
DROP TABLE IF EXISTS `t_enseignant`;
CREATE TABLE IF NOT EXISTS `t_enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_enseignant` int(5) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date NOT NULL,
  `sexe` varchar(3) DEFAULT NULL,
  `grade` varchar(3) DEFAULT NULL,
  `date_embauche` date NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_enseignant` (`numero_enseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;

-- Export de données de la table universite.t_enseignant : ~102 rows (environ)
/*!40000 ALTER TABLE `t_enseignant` DISABLE KEYS */;
INSERT INTO `t_enseignant` (`id`, `numero_enseignant`, `nom`, `prenom`, `date_naissance`, `sexe`, `grade`, `date_embauche`, `photo`) VALUES
	(201, 25, 'Thornton2222', 'Grady8', '1953-12-11', NULL, 'ASS', '2010-11-07', '/images/ens.jpg'),
	(202, 1577, 'Sloan', 'Rana', '1943-11-10', 'Mme', 'ASS', '1976-07-23', '/images/ens.jpg'),
	(203, 8905, 'Cochran', 'Carson', '1949-07-29', 'Mme', 'ASS', '2001-03-14', '/images/ens.jpg'),
	(204, 1262, 'Robles', 'Cullen', '1987-10-03', 'Mme', 'MCF', '1998-11-02', '/images/ens.jpg'),
	(205, 3300, 'Fitzpatrick', 'Uta', '1977-08-20', 'Mr', 'ASS', '2003-11-25', '/images/ens.jpg'),
	(206, 7057, 'Hutchinson', 'Mikayla', '1991-04-28', 'Mme', 'ASS', '1971-05-14', '/images/ens.jpg'),
	(207, 7667, 'Roth', 'Camille', '1993-09-30', 'Mme', 'MCF', '2008-10-02', '/images/ens.jpg'),
	(208, 7014, 'Walton', 'MacKensie', '1943-04-18', 'Mr', 'PR', '2007-01-05', '/images/ens.jpg'),
	(209, 2653, 'Medina', 'Brenna', '1974-02-05', 'Mr', 'MCF', '1996-04-01', '/images/ens.jpg'),
	(210, 8843, 'Duke', 'Stewart', '1975-12-14', 'Mr', 'ASS', '2014-05-06', '/images/ens.jpg'),
	(211, 3931, 'Sanders', 'Callum', '1958-11-04', 'Mr', 'ASS', '1962-11-11', '/images/ens.jpg'),
	(212, 4676, 'Mullins', 'Ivy', '1984-05-28', 'Mr', 'ASS', '2017-04-24', '/images/ens.jpg'),
	(213, 2008, 'Smith', 'Alexander', '1950-07-30', 'Mr', 'PR', '2005-07-01', '/images/ens.jpg'),
	(214, 4035, 'Harvey', 'Jolie', '1993-11-04', 'Mme', 'PR', '1991-11-11', '/images/ens.jpg'),
	(215, 5171, 'Britt', 'Akeem', '1969-11-20', 'Mme', 'MCF', '1992-05-27', '/images/ens.jpg'),
	(216, 9224, 'Moody', 'Gay', '1983-04-11', 'Mme', 'PR', '1963-11-06', '/images/ens.jpg'),
	(217, 6017, 'Rogers', 'Mira', '1965-01-27', 'Mr', 'ASS', '1997-02-05', '/images/ens.jpg'),
	(218, 3272, 'Frye', 'Kellie', '1955-07-30', 'Mr', 'MCF', '1978-01-06', '/images/ens.jpg'),
	(219, 2131, 'Jarvis', 'Octavius', '1969-09-14', 'Mme', 'PR', '2017-02-08', '/images/ens.jpg'),
	(220, 907, 'Harris', 'Vivien', '1977-05-14', 'Mme', 'ASS', '2004-04-28', '/images/ens.jpg'),
	(221, 9786, 'Giles', 'Brian', '1949-01-23', 'Mme', 'MCF', '1994-02-27', '/images/ens.jpg'),
	(222, 8221, 'Neal', 'Scarlett', '1978-11-05', 'Mr', 'ASS', '2002-01-07', '/images/ens.jpg'),
	(223, 5406, 'Alexander', 'Charde', '1953-04-16', 'Mr', 'PR', '2005-11-26', '/images/ens.jpg'),
	(224, 7020, 'Gardner', 'Reagan', '1947-10-23', 'Mme', 'MCF', '1993-10-12', '/images/ens.jpg'),
	(225, 3325, 'Malone', 'Ira', '1958-07-17', 'Mr', 'PR', '1966-07-03', '/images/ens.jpg'),
	(226, 7228, 'Hunter', 'Steel', '1948-10-21', 'Mme', 'ASS', '1994-10-04', '/images/ens.jpg'),
	(227, 1046, 'Ayers', 'Celeste', '1944-04-19', 'Mme', 'MCF', '2007-08-26', '/images/ens.jpg'),
	(228, 1041, 'Mcdonald', 'Gillian', '1964-07-14', 'Mr', 'PR', '2007-03-16', '/images/ens.jpg'),
	(229, 8335, 'Fowler', 'Eagan', '1976-07-02', 'Mme', 'MCF', '2017-05-28', '/images/ens.jpg'),
	(230, 3032, 'Donovan', 'Roth', '1983-01-29', 'Mr', 'MCF', '1967-06-29', '/images/ens.jpg'),
	(231, 8500, 'Barry', 'Rylee', '1950-02-10', 'Mr', 'ASS', '1991-12-05', '/images/ens.jpg'),
	(232, 8742, 'Wood', 'Nigel', '1986-05-12', 'Mme', 'ASS', '2012-02-21', '/images/ens.jpg'),
	(233, 9484, 'Tucker', 'Garth', '1956-06-24', 'Mr', 'ASS', '2009-07-16', '/images/ens.jpg'),
	(234, 5705, 'Cline', 'Idona', '1954-05-31', 'Mme', 'PR', '1967-04-30', '/images/ens.jpg'),
	(235, 335, 'Valencia', 'Kato', '1958-04-06', 'Mr', 'MCF', '1995-11-18', '/images/ens.jpg'),
	(236, 5438, 'Dalton', 'Tad', '1977-02-23', 'Mme', 'ASS', '2009-05-17', '/images/ens.jpg'),
	(237, 3218, 'Combs', 'Juliet', '1988-05-11', 'Mr', 'PR', '2015-03-19', '/images/ens.jpg'),
	(238, 3638, 'Fisher', 'Thane', '1986-06-12', 'Mme', 'PR', '1996-05-05', '/images/ens.jpg'),
	(239, 30, 'Doyle', 'Boris', '1981-07-26', 'Mme', 'MCF', '1961-03-14', '/images/ens.jpg'),
	(240, 3403, 'Flores', 'Donna', '1970-01-04', 'Mr', 'MCF', '1972-11-14', '/images/ens.jpg'),
	(241, 1881, 'Melendez', 'Sylvester', '1986-06-23', 'Mme', 'ASS', '1962-09-06', '/images/ens.jpg'),
	(242, 6071, 'Shelton', 'Jillian', '1947-05-03', 'Mme', 'PR', '1961-12-05', '/images/ens.jpg'),
	(243, 423, 'Ortega', 'Chancellor', '1992-10-16', 'Mme', 'ASS', '1995-09-01', '/images/ens.jpg'),
	(244, 5548, 'Jennings', 'Ora', '1976-01-24', 'Mr', 'PR', '1997-07-04', '/images/ens.jpg'),
	(245, 6305, 'Huber', 'Katelyn', '1946-01-17', 'Mme', 'MCF', '2016-07-05', '/images/ens.jpg'),
	(246, 9367, 'Ellis', 'Kessie', '1948-09-27', 'Mme', 'MCF', '2005-02-18', '/images/ens.jpg'),
	(247, 9254, 'Osborne', 'Veronica', '1979-11-08', 'Mme', 'MCF', '1961-07-29', '/images/ens.jpg'),
	(248, 860, 'Holder', 'William', '1970-06-08', 'Mr', 'MCF', '1983-06-18', '/images/ens.jpg'),
	(249, 6172, 'Goodman', 'Kiona', '1977-10-22', 'Mr', 'ASS', '1983-10-05', '/images/ens.jpg'),
	(250, 2196, 'Newman', 'Hope', '1962-01-20', 'Mme', 'PR', '2007-01-29', '/images/ens.jpg'),
	(251, 6302, 'Bean', 'Cora', '1992-01-10', 'Mr', 'ASS', '2018-07-01', '/images/ens.jpg'),
	(252, 1605, 'Ochoa', 'Sawyer', '1955-04-22', 'Mme', 'ASS', '2019-05-14', '/images/ens.jpg'),
	(253, 2562, 'Lynn', 'Sloane', '1957-01-20', 'Mr', 'MCF', '1973-04-09', '/images/ens.jpg'),
	(254, 8321, 'Smith', 'Jacob', '1981-09-27', 'Mr', 'MCF', '2003-06-28', '/images/ens.jpg'),
	(255, 9387, 'Myers', 'Lee', '1993-06-14', 'Mme', 'ASS', '2009-11-10', '/images/ens.jpg'),
	(256, 7834, 'Cameron', 'Isaiah', '1951-12-20', 'Mr', 'ASS', '1993-05-04', '/images/ens.jpg'),
	(257, 621, 'Webster', 'Destiny', '1957-11-08', 'Mme', 'ASS', '1969-09-27', '/images/ens.jpg'),
	(258, 9544, 'Mccullough', 'Seth', '1981-07-31', 'Mr', 'ASS', '1975-10-26', '/images/ens.jpg'),
	(259, 6473, 'Rodriguez', 'Jack', '1976-04-27', 'Mme', 'MCF', '2002-05-20', '/images/ens.jpg'),
	(260, 5235, 'Williams', 'Len', '1975-08-20', 'Mr', 'MCF', '1986-05-02', '/images/ens.jpg'),
	(261, 9495, 'Mayer', 'Sheila', '1950-12-02', 'Mme', 'ASS', '2001-11-18', '/images/ens.jpg'),
	(262, 1820, 'Juarez', 'Joseph', '1992-08-10', 'Mr', 'PR', '1962-12-04', '/images/ens.jpg'),
	(263, 5751, 'King', 'Paul', '1960-04-15', 'Mr', 'ASS', '1983-05-11', '/images/ens.jpg'),
	(264, 4692, 'Justice', 'Len', '1983-03-01', 'Mme', 'ASS', '1961-10-31', '/images/ens.jpg'),
	(265, 786, 'Castaneda', 'Paloma', '1941-06-23', 'Mr', 'ASS', '1982-05-27', '/images/ens.jpg'),
	(266, 9878, 'Conley', 'Harriet', '1962-05-01', 'Mme', 'PR', '1971-08-22', '/images/ens.jpg'),
	(267, 4809, 'Russell', 'Amanda', '1995-05-22', 'Mme', 'ASS', '1963-10-17', '/images/ens.jpg'),
	(268, 2491, 'Casey', 'Forrest', '1941-02-06', 'Mme', 'ASS', '2000-11-14', '/images/ens.jpg'),
	(269, 7665, 'Hebert', 'Kato', '1968-05-05', 'Mr', 'PR', '2010-06-12', '/images/ens.jpg'),
	(270, 8371, 'Diaz', 'Damian', '1944-04-10', 'Mr', 'MCF', '2000-05-21', '/images/ens.jpg'),
	(271, 9475, 'Savage', 'Tiger', '1948-03-30', 'Mme', 'MCF', '1981-12-08', '/images/ens.jpg'),
	(272, 6439, 'Hawkins', 'Teagan', '1948-03-28', 'Mr', 'PR', '1995-05-04', '/images/ens.jpg'),
	(273, 6184, 'Koch', 'Iona', '1942-09-09', 'Mme', 'PR', '1966-03-30', '/images/ens.jpg'),
	(274, 7437, 'England', 'Patricia', '1941-04-23', 'Mr', 'MCF', '2005-05-06', '/images/ens.jpg'),
	(275, 7507, 'Stokes', 'Quinlan', '1954-06-19', 'Mme', 'ASS', '1974-04-18', '/images/ens.jpg'),
	(276, 3604, 'Swanson', 'Medge', '1951-06-28', 'Mr', 'MCF', '2015-01-30', '/images/ens.jpg'),
	(277, 9262, 'Castro', 'Uma', '1949-03-30', 'Mme', 'MCF', '1977-08-03', '/images/ens.jpg'),
	(278, 2676, 'Kim', 'Jeanette', '1988-06-02', 'Mr', 'MCF', '1981-04-11', '/images/ens.jpg'),
	(279, 6433, 'Yates', 'Thaddeus', '1956-03-24', 'Mme', 'ASS', '2017-02-14', '/images/ens.jpg'),
	(280, 9575, 'Jackson', 'Merritt', '1964-12-04', 'Mr', 'PR', '1973-10-12', '/images/ens.jpg'),
	(281, 3161, 'Kane', 'Risa', '1988-01-10', 'Mr', 'PR', '2011-01-25', '/images/ens.jpg'),
	(282, 7603, 'Kramer', 'Brody', '1969-11-08', 'Mme', 'PR', '1975-05-25', '/images/ens.jpg'),
	(283, 9647, 'Schwartz', 'Damian', '1970-03-09', 'Mme', 'ASS', '1980-01-22', '/images/ens.jpg'),
	(284, 2416, 'Kirby', 'Martina', '1982-10-13', 'Mr', 'MCF', '1986-06-29', '/images/ens.jpg'),
	(285, 1569, 'Le', 'Aline', '1979-08-10', 'Mr', 'PR', '1990-09-14', '/images/ens.jpg'),
	(286, 1694, 'Wolf', 'Hiram', '1953-09-05', 'Mr', 'PR', '1965-10-14', '/images/ens.jpg'),
	(287, 4561, 'Clarke', 'Bell', '1958-10-19', 'Mr', 'MCF', '2008-04-24', '/images/ens.jpg'),
	(288, 9531, 'Knowles', 'Dante', '1972-06-03', 'Mme', 'PR', '1976-09-02', '/images/ens.jpg'),
	(289, 8005, 'Noble', 'Kyle', '1949-08-23', 'Mme', 'PR', '1973-05-27', '/images/ens.jpg'),
	(290, 1224, 'Martinez', 'Britanney', '1987-10-17', 'Mr', 'ASS', '2016-11-25', '/images/ens.jpg'),
	(291, 6811, 'Osborne', 'Audra', '1951-04-19', 'Mr', 'PR', '1988-03-14', '/images/ens.jpg'),
	(292, 6749, 'Snow', 'Pamela', '1955-05-25', 'Mme', 'MCF', '1977-04-17', '/images/ens.jpg'),
	(293, 5214, 'Underwood', 'Jamal', '1967-01-19', 'Mr', 'MCF', '2008-03-31', '/images/ens.jpg'),
	(294, 6486, 'Briggs', 'Troy', '1971-03-12', 'Mme', 'ASS', '1994-06-24', '/images/ens.jpg'),
	(295, 6320, 'Davis', 'Vivian', '1978-06-26', 'Mr', 'ASS', '1996-09-09', '/images/ens.jpg'),
	(296, 4150, 'Stokes', 'Angela', '1948-03-21', 'Mr', 'PR', '1970-12-22', '/images/ens.jpg'),
	(297, 478, 'Haley', 'Fulton', '1966-06-22', 'Mme', 'PR', '2014-03-19', '/images/ens.jpg'),
	(298, 3248, 'Ruiz', 'Joy', '1993-09-08', 'Mme', 'MCF', '1996-01-26', '/images/ens.jpg'),
	(299, 7016, 'Charles', 'Sydney', '1950-08-07', 'Mr', 'PR', '1963-05-19', '/images/ens.jpg'),
	(301, 623, 'vilment', 'arnaud', '2019-03-15', 'Mr', 'eft', '2019-03-09', '/images/ens.jpg'),
	(303, 62369, 'Vilment', 'Arnaus', '2019-03-05', 'Mr', 'ASS', '2019-03-14', '/images/ens.jpg'),
	(304, 62341, 'nom(-y(-', 'arnaud', '2019-03-08', 'Mr', 'ASS', '2019-03-08', '/images/ens.jpg');
/*!40000 ALTER TABLE `t_enseignant` ENABLE KEYS */;

-- Export de la structure de la table universite. t_etudiant
DROP TABLE IF EXISTS `t_etudiant`;
CREATE TABLE IF NOT EXISTS `t_etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_etudiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe` varchar(3) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_utudiant` (`numero_etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Export de données de la table universite.t_etudiant : ~11 rows (environ)
/*!40000 ALTER TABLE `t_etudiant` DISABLE KEYS */;
INSERT INTO `t_etudiant` (`id`, `numero_etudiant`, `nom`, `prenom`, `date_naissance`, `sexe`, `photo`) VALUES
	(1, 8701, 'akharroub', 'mohamed', '2009-10-17', 'Mr', '/images/uti.png'),
	(2, 8702, 'maachi', 'siham', '1999-12-20', 'Mme', '/images/uti.png'),
	(3, 8703, 'amri', 'mehdi', '1995-11-01', 'Mr', '/images/uti.png'),
	(4, 8704, 'ajdig', 'nora', '2010-10-11', 'Mme', '/images/uti.png'),
	(5, 8705, 'bahmani', 'najat', '1987-07-30', 'Mme', '/images/uti.png'),
	(6, 8706, 'moradi', 'mustapha', '1990-01-17', 'Mr', '/images/uti.png'),
	(7, 8707, 'messi', 'majid', '1992-02-10', 'Mr', '/images/uti.png'),
	(8, 8708, 'boubochi', 'mona', '1980-01-01', 'Mme', '/images/uti.png'),
	(9, 8709, 'cora', 'solin', '1982-06-19', 'Mme', '/images/uti.png'),
	(10, 8711, 'boba', 'ali', '1994-10-10', 'Mr', '/images/uti.png'),
	(12, 8756, 'vilment57', 'arnaud', '2019-03-13', 'Mr', '/images/uti.png');
/*!40000 ALTER TABLE `t_etudiant` ENABLE KEYS */;

-- Export de la structure de la table universite. t_matiere
DROP TABLE IF EXISTS `t_matiere`;
CREATE TABLE IF NOT EXISTS `t_matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_matiere` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `coef` tinyint(4) NOT NULL,
  `id_enseignant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_matiere` (`numero_matiere`),
  KEY `fk_matiere` (`id_enseignant`),
  CONSTRAINT `fk_matiere` FOREIGN KEY (`id_enseignant`) REFERENCES `t_enseignant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Export de données de la table universite.t_matiere : ~14 rows (environ)
/*!40000 ALTER TABLE `t_matiere` DISABLE KEYS */;
INSERT INTO `t_matiere` (`id`, `numero_matiere`, `nom`, `coef`, `id_enseignant`) VALUES
	(1, 101, 'Mathématique', 12, 227),
	(2, 102, 'Philosophie', 6, 285),
	(3, 103, 'Arabe', 5, 231),
	(4, 104, 'Histoire', 3, 201),
	(5, 105, 'Francias', 2, 251),
	(6, 106, 'Anglais', 5, 227),
	(8, 107, 'Espagnol', 6, 297),
	(9, 108, 'Physique', 6, 215),
	(10, 109, 'Electronique', 6, 202),
	(11, 110, 'Informatique', 6, 203),
	(12, 111, 'Science', 6, 204),
	(13, 112, 'Allemand', 6, 256),
	(14, 113, 'Economie', 6, 234),
	(15, 114, 'Svt', 1, 270);
/*!40000 ALTER TABLE `t_matiere` ENABLE KEYS */;

-- Export de la structure de la table universite. t_note
DROP TABLE IF EXISTS `t_note`;
CREATE TABLE IF NOT EXISTS `t_note` (
  `id_etudiant` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id_matiere`,`id_etudiant`),
  KEY `fk_note_etudiant` (`id_etudiant`),
  CONSTRAINT `fk_note_etudiant` FOREIGN KEY (`id_etudiant`) REFERENCES `t_etudiant` (`id`),
  CONSTRAINT `fk_note_matiere` FOREIGN KEY (`id_matiere`) REFERENCES `t_matiere` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table universite.t_note : ~10 rows (environ)
/*!40000 ALTER TABLE `t_note` DISABLE KEYS */;
INSERT INTO `t_note` (`id_etudiant`, `id_matiere`, `note`) VALUES
	(4, 1, 20),
	(5, 1, 20),
	(12, 1, 12),
	(3, 2, 10),
	(6, 2, 9),
	(2, 3, 5),
	(7, 3, 19),
	(9, 3, 16),
	(10, 3, 12),
	(1, 4, 12),
	(8, 4, 20),
	(9, 4, 16),
	(1, 6, 18),
	(12, 8, 18),
	(12, 10, 20),
	(1, 14, 15);
/*!40000 ALTER TABLE `t_note` ENABLE KEYS */;


-- Export de la structure de la base pour users
DROP DATABASE IF EXISTS `users`;
CREATE DATABASE IF NOT EXISTS `users` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `users`;

-- Export de la structure de la table users. utilisateurs
DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `age` int(10) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Export de données de la table users.utilisateurs : ~34 rows (environ)
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `age`, `numero`, `phone`, `email`, `adresse`, `photo`) VALUES
	(1, 'Allistair', 'Singleton', 35, 328589, '06 17 24 06 90', 'ornare.Fusce@odioAliquamvulputate.com', '657-371 Lorem Ave', 'images/uti.png'),
	(2, 'Raphael', 'Larsontgrtgg', 35, 883005, '05 95 57 84 42', 'enim.non@eudoloregestas.org', '3582 Et, St.', 'images/uti.png'),
	(3, 'Deborah', 'Delacruz', 35, 818548, '01 60 35 24 21', 'rutrum.magna.Cras@Quisque.net', 'Ap #450-5706 Proin Av.', 'images/uti.png'),
	(4, 'Heidi', 'Levine', 35, 894909, '09 49 58 34 26', 'aliquam.eros@ametdapibus.edu', '240-3804 Tristique Avenue', 'images/uti.png'),
	(5, 'Libertytghtr', 'Anthony', 35, 240145, '03 90 51 47 67', 'sit.amet@idanteNunc.com', 'P.O. Box 274, 496 Risus. Rd.', 'images/uti.png'),
	(7, 'Slade', 'Chaney', 35, 191204, '09 44 37 19 42', 'mattis@consequatenim.co.uk', 'Ap #403-4139 Turpis. St.', 'images/uti.png'),
	(8, 'Risa', 'Ballard', 35, 456887, '01 00 13 72 84', 'quis.arcu@Aliquamgravidamauris.net', '722-9259 Rutrum Ave', 'images/uti.png'),
	(9, 'Nora', 'Cunningham', 35, 864402, '02 57 51 26 68', 'euismod.in.dolor@Nunc.org', 'Ap #723-8673 Nulla Ave', 'images/uti.png'),
	(10, 'Chanda', 'Lara', 35, 171501, '09 66 06 78 38', 'penatibus@at.com', '3772 Odio Av.', 'images/uti.png'),
	(11, 'Venus', 'Snider', 35, 636856, '08 98 04 73 42', 'ligula.Nullam@velitAliquamnisl.co.uk', '9168 Elit Street', 'images/uti.png'),
	(13, 'Rafael', 'Flowers', 35, 181569, '01 45 74 60 39', 'diam.nunc@ametrisusDonec.net', '9291 Integer Rd.', 'images/uti.png'),
	(14, 'Eagan', 'Mcdonald', 35, 502761, '04 39 53 73 70', 'Donec.felis.orci@atlibero.org', 'Ap #480-8666 Pellentesque Av.', 'images/uti.png'),
	(15, 'Evan', 'Ferrell', 35, 75022, '08 34 12 76 80', 'dignissim@cubiliaCuraePhasellus.net', 'Ap #703-2019 Vitae St.', 'images/uti.png'),
	(16, 'Jescie', 'Wolfe', 35, 64774, '05 07 55 08 52', 'dolor.Nulla@Donecporttitor.net', 'Ap #327-7859 Posuere Rd.', 'images/uti.png'),
	(17, 'Kasper', 'Barrera', 35, 313659, '07 68 30 10 13', 'adipiscing@NulladignissimMaecenas.org', 'Ap #170-5303 Ut Rd.', 'images/uti.png'),
	(18, 'Tana', 'Turner', 35, 725368, '02 68 33 29 48', 'Aliquam@sagittisaugue.co.uk', '8793 Sed Av.', 'images/uti.png'),
	(19, 'Kevyn', 'Whitfield', 35, 520398, '06 48 93 81 32', 'turpis@accumsan.net', '313-1041 Non,\n Av.', 'images/uti.png'),
	(20, 'Velma', 'Blake', 35, 212223, '02 91 56 26 57', 'dis.parturient@vitaerisusDuis.org', '604-3073 Porttitor Ave', 'images/uti.png'),
	(21, 'Glenna', 'Richard', 35, 773487, '01 96 60 75 19', 'fringilla.est@faucibusutnulla.org', '3721 Nascetur St.', 'images/uti.png'),
	(22, 'Amal', 'Fowler', 35, 739596, '01 47 26 10 95', 'Mauris@eratEtiam.com', 'Ap #968-2799 Massa St.', 'images/uti.png'),
	(23, 'Bryar', 'Carrillo', 35, 630061, '04 88 91 11 53', 'odio@temporaugueac.co.uk', '675-7721 Non St.', 'images/uti.png'),
	(24, 'Bree', 'Moody', 35, 661807, '03 77 02 38 41', 'Cum@necorciDonec.net', '911 Tincidunt Avenue', 'images/uti.png'),
	(25, 'Aidan', 'Marks', 35, 685451, '07 58 08 91 54', 'dui.Cum@fringillapurusmauris.com', '6703 Rhoncus St.', 'images/uti.png'),
	(26, 'Denise', 'Bullock', 35, 460479, '06 72 68 29 03', 'et.arcu@ultricies.edu', '3491 Sit Ave', 'images/uti.png'),
	(27, 'Hannah', 'Marks', 35, 117676, '02 68 53 63 44', 'Aliquam@Maurismagna.edu', 'P.O. Box 534,\n 3709 Auctor St.', 'images/uti.png'),
	(28, 'Cadman', 'Greene', 35, 245391, '09 97 74 26 17', 'dapibus.id@aliquetvel.net', 'Ap #704-1686 Faucibus Ave', 'images/uti.png'),
	(30, 'Devin', 'Nichols', 35, 393654, '04 88 82 61 42', 'condimentum.Donec.at@Phasellusat.org', 'P.O. Box 682,\n 4634 Scelerisque,\n Av.', 'images/uti.png'),
	(31, 'Cadman', 'Kim', 35, 61551, '01 21 10 59 06', 'vulputate@consequat.edu', '3462 Vulputate Av.', 'images/uti.png'),
	(32, 'Garrett', 'Scott', 35, 855671, '04 08 62 52 36', 'Fusce.aliquet@sociosqu.ca', 'Ap #867-8539 Aliquam Street', 'images/uti.png'),
	(33, 'Addison', 'Rivers', 35, 169987, '08 56 49 23 95', 'pede.ac@Crasconvallis.co.uk', '4006 Eget Street', 'images/uti.png'),
	(34, 'Dorothy', 'Morse', 35, 458762, '05 27 86 88 52', 'luctus.Curabitur@semper.edu', '536 Nulla St.', 'images/uti.png'),
	(35, 'Adena', 'Drake', 35, 269082, '05 67 26 01 40', 'egestas.a@arcu.com', '130-2051 Pede. Av.', 'images/uti.png'),
	(49, 'Vilment', 'Arnaud', 12, 1428, '0651130736', 'a@gmail.com', '111 rue de boug', 'images/uti.png'),
	(51, 'Blanc', 'Delphine', 15, 14569, '215858/5', 'z@gamill.com', '111 rue de boug', 'images/uti.png');
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
