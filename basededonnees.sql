-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 10 avr. 2018 à 18:35
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `micro_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `date` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `date`, `vote`) VALUES
(28, 'coucou\r\né', 1511361113, 0),
(31, 'Je test', 1511361435, 0),
(34, 'fgfiuyjvgjgf', 1515485935, 0),
(35, 'kbohuuhoouh', 1515485940, 0),
(37, 'sdchjds', 1516103836, 0),
(39, 'd', 1516105358, 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `pseudo`, `email`, `password`, `sid`) VALUES
(2, 'je', 'je@je.fr', '79563e90630af3525dff01b6638b0886', NULL),
(3, 'ffff', 'dsq@hotmail.fr', '1223326c40fa82e5d6a1cd6ca05b887f', NULL),
(4, 'coucou', 'sdsqj@hfdsd.fr', '9d34e0dde4a54b10d6e61915961633ba', NULL),
(5, 'dsl', 'dfhsu@hdifhds.fr', 'f60bba57a5f4318e995a61932939ad9b', NULL),
(6, 'Gerard', 'gerard@hotmail.fr', '7978ff993e9dfaded08f7f0fd198c1f7', NULL),
(7, 'gournay', '233@dff.fr', '0ce4cf80e721f004fd3566183dbf762e', NULL),
(8, 'hhsqdqs', 'dsdsqdqs@hotmail.fr', '06a271493593d45842b909851312ed0a', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;