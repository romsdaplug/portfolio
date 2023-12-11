-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 05:04 PM
-- Server version: 5.5.10
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bibliotheque2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Date_naissance` date DEFAULT NULL,
  `Date_adhesion` date DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Num_tel` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adherents`
--

INSERT INTO `adherents` (`Id_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(1, 'John', 'Duker', '2000-04-04', '2021-01-01', '3 Rue de la Paix', '0612787623', 'john@gmail.com'),
(2, 'Eter', 'Rémy', '1995-05-05', '2021-06-01', '29 Avenue Montaigne', '0689872312', 'remy@gmail.com'),
(3, 'Kang', 'LeeIn', '1990-06-06', '2021-11-01', '3 Avenue de la Grande Armee', '0789124356', 'kang@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(50) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('Auteur1', 'Lucas', 'Dupont', '1970-01-01'),
('Auteur2', 'Modiano', 'Patrick', '1980-02-02'),
('Auteur3', 'Yanis', 'Locar', '1990-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `Id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL,
  `Id_Adherent` int(11) DEFAULT NULL,
  `Reference_livre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_emprunt`),
  KEY `Id_Adherent` (`Id_Adherent`),
  KEY `Reference_livre` (`Reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `emprunts`
--

INSERT INTO `emprunts` (`Id_emprunt`, `Date_emprunt`, `Duree`, `Id_Adherent`, `Reference_livre`) VALUES
(1, '2023-01-10', 14, 1, 'Livre1'),
(2, '2023-02-15', 30, 2, 'Livre2'),
(3, '2023-03-20', 7, 3, 'Livre3');

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(50) NOT NULL,
  `Nbre_pages` int(11) DEFAULT NULL,
  `ID_Auteur` varchar(50) DEFAULT NULL,
  `Date_publication` date DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Disponibilite` tinyint(1) DEFAULT NULL,
  `Nbre_emprunts` int(11) DEFAULT NULL,
  `Etat` varchar(50) DEFAULT NULL,
  `Nbre_exemplaire` int(11) DEFAULT NULL,
  `titre_livre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `ID_Auteur` (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilite`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`, `titre_livre`) VALUES
('Livre1', 300, 'Auteur1', '2000-01-01', 'Policier', 1, 5, 'Neuf', 10, 'Réseau informatique'),
('Livre2', 150, 'Auteur2', '1988-05-05', 'Horreur', 0, 2, 'Occasion', 5, NULL),
('Livre3', 450, 'Auteur3', '2010-10-10', 'Action', 1, 8, 'Bon état', 3, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`Id_Adherent`) REFERENCES `adherents` (`Id_Adherent`),
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`Reference_livre`) REFERENCES `livres` (`Reference_livre`);

--
-- Constraints for table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`ID_Auteur`) REFERENCES `auteurs` (`ID_Auteur`);
