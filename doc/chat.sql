-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 29 Juillet 2019 à 08:54
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.19-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='La table qui va contenir tous les messages voyons !';

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `author`, `content`, `created_at`) VALUES
(14, 'Tiara Wiza', 'Est odio animi et voluptatem voluptas et et nobis beatae laborum tempora quia aliquid cum aut aperiam exercitationem.', '2017-07-24 16:03:27'),
(15, 'Tiara Wiza', 'Praesentium molestiae ut repudiandae et nihil ut at consectetur aut itaque sit.', '2017-07-24 09:38:48'),
(16, 'Wilford Quitzon', 'Culpa perferendis tenetur corporis deserunt fugit rem nihil aut sunt id fugit ut.', '2017-07-24 08:13:35'),
(17, 'Wilford Quitzon', 'Aspernatur molestiae impedit consequatur aut quia debitis molestiae ratione veniam dolorem molestiae optio debitis neque aut maiores aut quasi atque.', '2017-07-24 10:05:02'),
(18, 'Amelie Ullrich', 'Iusto dolor sunt vel excepturi molestiae et aut voluptatem sint eos quasi.', '2017-07-24 21:00:36'),
(19, 'Amelie Ullrich', 'Provident eos iure accusamus aut deserunt molestiae officiis eligendi quo laboriosam odio non unde rerum neque et ipsum non.', '2017-07-24 06:29:11'),
(20, 'Prof. Einar Beer', 'Rerum nihil expedita sed corrupti consequuntur soluta quisquam qui accusamus animi quasi natus error expedita ratione odit voluptatem iure consequuntur quia non.', '2017-07-24 19:11:28'),
(21, 'Prof. Einar Beer', 'Quasi consectetur nisi sequi cupiditate et amet quia sed et adipisci et non voluptatibus iusto voluptate et sit quo consequuntur dignissimos.', '2017-07-24 06:40:54'),
(22, 'Cielo Feest', 'Impedit quas fugit est suscipit harum velit facere itaque placeat maiores nesciunt et ad ipsa atque.', '2017-07-24 19:09:23'),
(23, 'Cielo Feest', 'Minus minus odit autem dolorem nihil sit aut provident corporis earum libero nihil placeat.', '2017-07-24 04:17:50'),
(24, 'Cielo Feest', 'Rem similique eum nobis qui velit expedita omnis natus rem excepturi ex quisquam nobis nobis.', '2017-07-24 17:21:48'),
(25, 'Ms. Ora Rohan Sr.', 'Ratione occaecati dolores ducimus nesciunt quae quae fugit nemo explicabo.', '2017-07-24 17:41:03'),
(26, 'Ms. Ora Rohan Sr.', 'Earum nihil blanditiis quia nihil ut vel dolor dicta qui vel quidem sapiente consectetur explicabo est numquam doloremque quis.', '2017-07-23 23:44:11'),
(27, 'Ms. Ora Rohan Sr.', 'Dicta ea quos tempore vel repellat officia voluptas eos rerum aut cumque dolore.', '2017-07-24 02:17:06'),
(28, 'Ms. Ora Rohan Sr.', 'Voluptas quisquam cumque ipsum consectetur eius eius possimus pariatur delectus ducimus accusantium error ut quia.', '2017-07-24 06:52:03'),
(29, 'Randall Schamberger V', 'Aliquid laudantium sint officiis corporis minus ut aut rerum voluptatem voluptatem nihil est quisquam.', '2017-07-24 20:46:52'),
(30, 'Randall Schamberger V', 'At quaerat at tenetur voluptatum enim voluptates totam voluptas aut cupiditate.', '2017-07-24 00:08:39'),
(31, 'Randall Schamberger V', 'Cum sapiente non et laboriosam laudantium quod ea temporibus saepe omnis incidunt aut ut cum velit dolorem non in iste.', '2017-07-24 14:49:47'),
(32, 'Dr. Vicenta Sawayn', 'Aliquid commodi temporibus illum et quibusdam molestiae voluptatem deserunt suscipit.', '2017-07-24 21:45:58'),
(33, 'Dr. Vicenta Sawayn', 'Qui eos vel debitis unde porro quaerat exercitationem harum dolores est laborum temporibus.', '2017-07-24 16:45:25'),
(34, 'Dr. Vicenta Sawayn', 'Et assumenda aut delectus laboriosam fuga veniam aut iure repudiandae quo suscipit.', '2017-07-24 03:29:29'),
(35, 'Dr. Vicenta Sawayn', 'Non quidem maiores earum voluptatem ipsam esse rerum repudiandae et maxime.', '2017-07-24 10:42:56'),
(36, 'Fermin Anderson DVM', 'Molestiae id pariatur nemo minima harum minus voluptatem repudiandae atque nihil veritatis.', '2017-07-24 21:59:42'),
(37, 'Fermin Anderson DVM', 'Sit est saepe dolorem sed culpa cum doloribus voluptatem dignissimos voluptates maiores voluptas deserunt aut iusto non autem.', '2017-07-24 22:10:17'),
(38, 'Fermin Anderson DVM', 'Vero iste quod voluptas non ratione expedita unde dolorem est eveniet ut voluptatem impedit et eum dolor rem quia.', '2017-07-24 12:49:28'),
(39, 'Destini Ortiz', 'Consequatur et dolorem ab quidem quam maiores voluptas corporis assumenda unde voluptas sint dolores eos sapiente suscipit commodi accusantium exercitationem.', '2017-07-23 23:28:31'),
(40, 'Destini Ortiz', 'Itaque vel molestiae aut aut ut esse necessitatibus voluptatum assumenda vel eaque ad neque quisquam ipsam.', '2017-07-24 04:59:15'),
(41, 'Destini Ortiz', 'Aut velit libero sequi qui dignissimos sit omnis beatae omnis temporibus ut aut similique officia est autem suscipit consectetur.', '2017-07-24 13:20:52'),
(42, 'Isidro Hilpert', 'Et sed sed aut amet molestias repellendus inventore ipsa ut earum incidunt beatae voluptas voluptate magnam.', '2017-07-24 01:20:52'),
(43, 'Isidro Hilpert', 'Voluptas voluptas eos ullam similique quis architecto laboriosam mollitia laboriosam nostrum a voluptatibus molestiae.', '2017-07-24 04:29:34'),
(44, 'Isidro Hilpert', 'Odio porro ex molestias et sed velit qui ducimus maiores totam non atque nihil iure pariatur voluptas eligendi nisi.', '2017-07-24 15:48:05'),
(45, 'Mr. Chandler Reinger', 'Voluptatem quisquam dolor impedit nihil possimus iure eum qui suscipit.', '2017-07-24 01:24:46'),
(46, 'Mr. Chandler Reinger', 'Sint quis autem aut voluptas temporibus eos velit fuga facere porro est dolorum quam quos quo enim.', '2017-07-24 21:13:49'),
(47, 'Mr. Chandler Reinger', 'Officiis porro labore consectetur ratione et qui amet asperiores voluptatem dolorem.', '2017-07-24 12:48:06'),
(50, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:23:55'),
(72, 'Loki', 'Salut Maxime et merci pour ton accueil !', '2019-07-29 08:53:05'),
(51, 'Jeanne', 'Salut les amis !', '2017-07-25 01:24:54'),
(71, 'Maxime', 'J\'espère que vous allez bien et que vous appréciez votre visite sur ma page Github !!!', '2019-07-29 08:41:14'),
(57, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:42:47'),
(58, 'Jeanne', 'Bien salut mon Joseph !', '2017-07-25 01:44:00'),
(70, 'Maxime', 'Bonjour les gens !', '2019-07-29 08:40:29'),
(69, 'Loki', 'Je ne sais pas...', '2019-07-11 08:42:24'),
(61, 'Maxime', 'Loki c\'est le plus beau', '2019-07-04 17:14:12'),
(65, 'Maxime', 'Coucou, comment ça va ?', '2019-07-04 18:16:54'),
(66, 'Maxime', 'Je t\'aime Caroline !', '2019-07-04 18:19:17'),
(67, 'Caroline', 'Je t\'aime moi aussi Maxime !', '2019-07-04 18:40:15'),
(68, 'Maxime', 'Est-ce que tu l\'as vu ?', '2019-07-04 18:40:26');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
