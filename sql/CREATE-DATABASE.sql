-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 25 Mars 2017 à 10:56
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `candidaturemavoix`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidature`
--

CREATE TABLE `candidature` (
  `id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_amended` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `state` varchar(10) NOT NULL DEFAULT 'offline',
  `civility` varchar(5) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ad1` varchar(255) NOT NULL,
  `ad2` varchar(255) NOT NULL,
  `ad3` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `presentation` text NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `path_pic` varchar(255) NOT NULL,
  `path_certificate` varchar(255) NOT NULL,
  `path_idcard` varchar(255) NOT NULL,
  `path_idcard_verso` varchar(255) NOT NULL,
  `path_criminal_record` varchar(255) NOT NULL,
  `is_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `is_idcard` tinyint(1) NOT NULL DEFAULT '0',
  `is_criminal_record` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `key_edit` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `tire_au_sort` BOOL NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_amended` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `ref` varchar(200) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `candidature`
--
ALTER TABLE `candidature`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `candidature`
--
ALTER TABLE `candidature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
