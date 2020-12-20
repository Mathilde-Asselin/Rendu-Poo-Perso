-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 20 déc. 2020 à 15:50
-- Version du serveur :  10.5.5-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetFilRouge`
--
CREATE DATABASE IF NOT EXISTS `projetFilRouge` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projetFilRouge`;

-- --------------------------------------------------------

--
-- Structure de la table `friendslist`
--

CREATE TABLE `friendslist` (
  `friendsList_id` int(11) NOT NULL,
  `friendsList_userID1` int(11) NOT NULL,
  `friendsList_userID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `friendslist`
--

INSERT INTO `friendslist` (`friendsList_id`, `friendsList_userID1`, `friendsList_userID2`) VALUES
(41, 31, 29),
(42, 30, 29),
(43, 30, 31);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `message_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `sondage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`message_id`, `message_content`, `message_date`, `user_id`, `sondage_id`) VALUES
(45, 'Vladimir il est trop fort !!', '2020-12-20 16:10:35', 29, 48),
(46, 'Je regarde pas KohLanta :o', '2020-12-20 16:11:46', 29, 49),
(47, 'Charline a clairement plus de talent !', '2020-12-20 16:22:36', 31, 48),
(48, 'Miss Provence elle s\'exprime trop bien !', '2020-12-20 16:23:21', 31, 47),
(54, 'Ah ouais tu trouves...', '2020-12-20 16:25:21', 29, 47),
(55, 'Miss Normandie elle est trop belle !', '2020-12-20 16:26:22', 30, 47),
(56, 'Tu regardes pas KohLanta !!', '2020-12-20 16:26:44', 30, 49),
(57, 'C\'était trop bien', '2020-12-20 16:26:53', 30, 49);

-- --------------------------------------------------------

--
-- Structure de la table `sondage`
--

CREATE TABLE `sondage` (
  `sondage_id` int(11) NOT NULL,
  `sondage_question` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sondage_finish` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sondage`
--

INSERT INTO `sondage` (`sondage_id`, `sondage_question`, `user_id`, `sondage_finish`) VALUES
(47, 'Qui va gagner miss France 2021?', 29, '2021-12-17 16:02:16'),
(48, 'Qui va gagner Top Chef ?', 30, '2021-11-19 16:06:36'),
(49, 'Vous avez vu la fin de KohLanta ?', 31, '2021-03-11 15:58:55');

-- --------------------------------------------------------

--
-- Structure de la table `sondagereponse`
--

CREATE TABLE `sondagereponse` (
  `sondageReponse_id` int(11) NOT NULL,
  `sondage_id` int(11) NOT NULL,
  `sondageReponse_reponse` varchar(255) NOT NULL,
  `sondageReponse_reponseScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sondagereponse`
--

INSERT INTO `sondagereponse` (`sondageReponse_id`, `sondage_id`, `sondageReponse_reponse`, `sondageReponse_reponseScore`) VALUES
(55, 47, 'Miss Normandie', 1),
(56, 47, 'Miss Provence ', 1),
(57, 48, 'Vladimir ', 1),
(58, 48, 'Charline ', 3),
(59, 49, 'Ouiii', 2),
(60, 49, 'Absolument pas', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sondagereponseuser`
--

CREATE TABLE `sondagereponseuser` (
  `sondageReponseUser_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sondage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_pseudo` varchar(30) NOT NULL,
  `user_firstName` varchar(30) NOT NULL,
  `user_lastName` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `user_pseudo`, `user_firstName`, `user_lastName`, `user_email`, `user_password`, `user_online`) VALUES
(26, 'Alexandre.G', 'Alexandre', 'Gaillot', 'alexandre@mail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 0),
(29, 'Mathilde', 'Mathilde', 'Asselin', 'mathilde@gmail.com', '8984a5ebacc3e080c9507fe0bd6113587f19fd6cbec2c3b00d841b0921adcab6', 0),
(30, 'LouisPs', 'Louis', 'Pseudo', 'Louis@gmail.com', 'b264c18ee851eefc00a808018cd52edf12d93ae28e29044c3de537c68e9e5227', 0),
(31, 'PaulPs', 'Paul', 'Pseudo', 'Paul@edu.devinci.fr', '52d129aa085fb640696f8c1f8d21428de47b90d03ec41c3d836fc6902974e159', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `friendslist`
--
ALTER TABLE `friendslist`
  ADD PRIMARY KEY (`friendsList_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `sondage`
--
ALTER TABLE `sondage`
  ADD PRIMARY KEY (`sondage_id`);

--
-- Index pour la table `sondagereponse`
--
ALTER TABLE `sondagereponse`
  ADD PRIMARY KEY (`sondageReponse_id`);

--
-- Index pour la table `sondagereponseuser`
--
ALTER TABLE `sondagereponseuser`
  ADD PRIMARY KEY (`sondageReponseUser_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `friendslist`
--
ALTER TABLE `friendslist`
  MODIFY `friendsList_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `sondage`
--
ALTER TABLE `sondage`
  MODIFY `sondage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `sondagereponse`
--
ALTER TABLE `sondagereponse`
  MODIFY `sondageReponse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `sondagereponseuser`
--
ALTER TABLE `sondagereponseuser`
  MODIFY `sondageReponseUser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
