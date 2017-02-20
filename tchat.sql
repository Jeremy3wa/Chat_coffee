-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 20 Février 2017 à 11:42
-- Version du serveur: 5.5.53-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tchat`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_author` int(10) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(4095) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_author` (`id_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `id_author`, `date`, `content`) VALUES
(2, 4, '2017-02-17 13:38:47', 'dsqdqsdqs'),
(3, 4, '2017-02-17 13:38:53', 'dsqdsq'),
(4, 4, '2017-02-17 13:39:26', 'ffffffff'),
(5, 4, '2017-02-17 13:39:47', 'dsqdsqd'),
(6, 4, '2017-02-17 13:45:57', 'dsqdsqdsqd'),
(8, 3, '2017-02-17 13:48:10', 'knqkljbhsfkjds oiqsh jpi'),
(13, 4, '2017-02-17 13:53:15', 'fdhbgfh'),
(14, 4, '2017-02-17 13:54:53', 'dsqdqsd'),
(15, 4, '2017-02-17 13:54:56', 'dsqdsqdsqdqsdqsdqs'),
(20, 4, '2017-02-17 13:57:53', 'dsqdsqdqsd'),
(22, 4, '2017-02-17 13:59:15', 'fdsfdsfdsfdffxcdfcxwcwcsd'),
(24, 6, '2017-02-17 14:01:14', 'Hey'),
(25, 6, '2017-02-17 14:01:17', 'fedFGSGS'),
(26, 4, '2017-02-17 14:27:14', 'gdfgdfgdf'),
(27, 6, '2017-02-17 14:32:06', 'Hello guys, this is awesome <3\r\n'),
(28, 3, '2017-02-17 14:34:09', 'hÃ©, Ã§a marche les gars !!!!'),
(29, 3, '2017-02-17 14:34:37', 'YESSSSSSSS Ã‡A MARCHE ENFIN ! WOUHOU HOU HOUH OU'),
(30, 5, '2017-02-17 14:43:52', 'Hello toto :D'),
(31, 5, '2017-02-17 14:46:47', 'Bon Ã§a a l''air de fonctionner !'),
(32, 3, '2017-02-17 14:51:55', 'SALUT '),
(33, 4, '2017-02-17 14:52:03', 'j''ecris le message que pascal ma demanderrrr\r\n'),
(34, 5, '2017-02-17 14:52:27', 'Petit test :)'),
(35, 5, '2017-02-17 14:56:09', 'Coucou ?'),
(36, 5, '2017-02-17 14:56:24', 'Ah voilÃ , c''est mieux quand mÃªme :)'),
(37, 4, '2017-02-17 15:11:51', 'Oui c''est mieux merci beaucoup Parscalounet\r\n'),
(38, 5, '2017-02-17 15:12:01', 'PaRscalounet ?'),
(39, 5, '2017-02-17 15:12:05', 'Really ?'),
(40, 5, '2017-02-17 15:12:18', 'titineo Ã§a craque dans ton coin'),
(41, 4, '2017-02-17 15:12:21', 'oups Pascalounet\r\n'),
(42, 5, '2017-02-17 15:12:33', 'S''mieux, maintenant tu peux passer par la fenÃªtre'),
(43, 4, '2017-02-17 15:12:45', 'lol '),
(44, 4, '2017-02-17 15:13:46', 'Du coup les messages que tu envoie ce stock aussi sur notre base de donnÃ©e ?\r\n'),
(46, 5, '2017-02-17 15:14:25', 'biensur'),
(48, 7, '2017-02-17 15:16:41', 'Hello, it''s me\r\nI was wondering if after all these years you''d like to meet'),
(49, 7, '2017-02-17 15:16:57', 'To go over everything\r\nThey say that time''s supposed to heal ya\r\n'),
(50, 5, '2017-02-17 15:18:35', 'twisty40 il a craquÃ© aussi boudiou'),
(52, 4, '2017-02-17 15:20:54', 'Elle (NATHALIE) a copier des parole de AdÃ¨le !'),
(53, 4, '2017-02-17 15:21:06', 'copiÃ©* paroles*'),
(54, 5, '2017-02-17 15:21:33', 'l''user twisty40, UN user'),
(55, 5, '2017-02-17 15:21:40', 'ranafoutre que ce soit un gars ou une fille !'),
(56, 4, '2017-02-17 15:24:16', 'Usurpation d''identitÃ© !'),
(58, 4, '2017-02-17 15:25:57', 'Pascal, tu peux venir voir chez Nelly, on arrive pas Ã  mettre les avatars.\r\nS''il te plait.\r\nCordialement.\r\nBisous'),
(59, 5, '2017-02-17 15:26:03', '\\o/'),
(60, 5, '2017-02-17 15:28:10', 'Choupirelouuuuuu !'),
(61, 3, '2017-02-17 15:28:53', 'Merci Pascal !\r\nhttp://i.giphy.com/3oz8xIsloV7zOmt81G.gif'),
(62, 5, '2017-02-17 15:29:20', 'np'),
(63, 5, '2017-02-17 15:46:10', 'test ?'),
(64, 4, '2017-02-17 15:46:22', 'Ca marche !!!\r\n'),
(65, 4, '2017-02-17 15:47:00', 'je me retrouve au milieux de deux filles, je n''en peux plus !'),
(70, 3, '2017-02-17 15:48:27', 'pauvre petit.'),
(71, 6, '2017-02-17 15:49:25', 'Hello'),
(72, 6, '2017-02-17 15:49:42', 'I win'),
(74, 3, '2017-02-20 08:15:05', 'salut'),
(75, 4, '2017-02-20 08:17:30', 'Bonjour ! Vous avez passÃ© un bon Weekend ?'),
(76, 5, '2017-02-20 08:18:33', 'Bien bien et toi ?'),
(77, 4, '2017-02-20 08:25:29', 'Super !'),
(78, 9, '2017-02-20 08:41:50', 'ola'),
(79, 12, '2017-02-20 08:44:31', 'Here''s Johny !'),
(80, 5, '2017-02-20 08:46:19', 'oO'),
(83, 9, '2017-02-20 08:51:05', 'trululuuuuu'),
(85, 13, '2017-02-20 08:52:42', 'salut Jeremy!'),
(87, 4, '2017-02-20 08:53:33', 'Coucou julio\r\n'),
(88, 12, '2017-02-20 08:54:34', 'Non.'),
(89, 13, '2017-02-20 08:54:55', 'trÃ¨s sexy la photo hahaha'),
(90, 4, '2017-02-20 08:55:15', 'ahahah ouais c''est clair !'),
(91, 4, '2017-02-20 08:57:14', 'Moi aussi j''aime bien ton petit chat avec sont nÅ“ud de papillon\r\n'),
(93, 9, '2017-02-20 09:00:46', 'blop'),
(94, 12, '2017-02-20 09:04:38', 'Bordel, y a Xena en bas...'),
(96, 12, '2017-02-20 09:10:15', 'Â« In a time of ancient Gods, Warlords and Kings, a land in turmoil cried out for a hero. She was Xena, a mighty princess forged in the heat of battle. The power. The passion. The danger. Her courage will change the world. Â»'),
(97, 4, '2017-02-20 09:10:51', 'please speak FRENCH !!!!!!!!! \r\n'),
(98, 12, '2017-02-20 09:11:29', 'Â« Ã€ l''Ã©poque des Dieux de la mythologie, des Seigneurs de la guerre et des Rois de lÃ©gende, un pays en plein dÃ©sordre demandait un hÃ©ros. Alors survint Xena, une prestigieuse princesse issue du cÅ“ur des batailles. Combat. Passion. Danger. Par son courage, Xena changera la face du monde. Â»'),
(100, 4, '2017-02-20 09:11:49', 'merci bien JULIEN'),
(101, 6, '2017-02-20 09:11:53', 'Oui Gabrielle, je suis lÃ  !'),
(102, 6, '2017-02-20 09:42:43', 'Oui Gabrielle, je suis lÃ  ! '),
(104, 12, '2017-02-20 09:44:15', 'Gabrielle est une chanson Ã©crite par Long Chris et composÃ©e par Tony Cole pour Johnny Hallyday en 1976.'),
(105, 14, '2017-02-20 09:51:32', 'Je suis lÃ  ! :D'),
(106, 4, '2017-02-20 10:09:57', 'dfgdfg\r\n\r\n'),
(107, 14, '2017-02-20 10:10:09', 'Des messages !'),
(108, 3, '2017-02-20 10:10:09', 'wesh\r\n'),
(109, 6, '2017-02-20 10:10:13', 'hey'),
(110, 3, '2017-02-20 10:10:17', 'Ã§a marche ?'),
(111, 6, '2017-02-20 10:11:07', 'ca marche\r\n'),
(112, 6, '2017-02-20 10:11:52', 'ca marche'),
(113, 3, '2017-02-20 10:11:52', 'test'),
(114, 6, '2017-02-20 10:11:59', 'non ?'),
(115, 3, '2017-02-20 10:12:02', 'test coucou'),
(116, 3, '2017-02-20 10:12:31', 'TEST TEST TEST TEST'),
(117, 4, '2017-02-20 10:14:13', 'test'),
(118, 6, '2017-02-20 10:14:27', 'yjsjsjrqhtrsht'),
(119, 3, '2017-02-20 10:16:52', 'SALUT\r\n'),
(122, 14, '2017-02-20 10:21:27', 'https://i.makeagif.com/media/11-17-2014/8gmdTQ.gif'),
(123, 14, '2017-02-20 10:23:00', 'Il fait faim, il est 11:22, pas de pause, on va tous mÃ»rir...'),
(124, 3, '2017-02-20 10:23:15', ',dshiuqksdf'),
(125, 6, '2017-02-20 10:23:16', 'coucouuuuu'),
(126, 6, '2017-02-20 10:23:34', 'c''est quand la pause ?'),
(127, 4, '2017-02-20 10:24:08', 'Cela fonctionne, mon message fonctionne t-il ?\r\n'),
(128, 6, '2017-02-20 10:24:19', 'yo yo yo yo yo '),
(129, 3, '2017-02-20 10:24:21', 'aaah'),
(130, 4, '2017-02-20 10:24:38', 'j''envoie'),
(131, 3, '2017-02-20 10:25:53', 'il est nul ton stylo jerem'),
(132, 6, '2017-02-20 10:26:22', 'JEREMY'),
(133, 4, '2017-02-20 10:26:24', 'lol\r\n'),
(134, 4, '2017-02-20 10:26:52', 'J''adaurre m''ont stillo ! laul\r\n'),
(135, 4, '2017-02-20 10:28:37', 'Bons Muntennent sa fonctione ! Ons doight fÃ¨rre qoua ?\r\nPÃ¨rseaux jer faim ! maime pa de pose ! Il et 11h30 ons v''a bi1 manguÃ© !'),
(136, 14, '2017-02-20 10:31:20', 'Instant tannÃ©...'),
(137, 14, '2017-02-20 10:37:39', 'To eat?');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(31) NOT NULL,
  `password` varchar(63) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(63) NOT NULL,
  `avatar` varchar(511) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `date`, `email`, `avatar`, `admin`, `last`) VALUES
(3, 'nelly', '$2y$12$8X2MFtnkKtM6uLPJnb3VY.EkjKIQJVc69ygVq65CwJDqQ86Vy.ZBm', '2017-02-14', 'nel@nel.fr', 'http://i.giphy.com/nMpt4BRNBL4Lm.gif', 0, '0000-00-00 00:00:00'),
(4, 'Jeremy', '$2y$12$mYuDEsAQ5XDw4F.jnZv10O1yg54V.tgAD0BYgYEPA5FIjbVfwbi/u', '2017-02-23', 'Jeremy@hotmail.fr', 'http://i.giphy.com/d3Fym9OQ08o6agYE.gif', 0, '0000-00-00 00:00:00'),
(5, 'totototo', '$2y$12$L4JBlCCk47UeyZbotmmYh.LjqXkMB7nKxISPuYLiz3MhZ8XA3fy7i', '2017-02-17', 'toto@toto.toto', 'http://4.bp.blogspot.com/-Ivo0VEqfz7I/TxypkmaotTI/AAAAAAAAADM/IQxRC3MY5n4/s320/toto2.png', 0, '0000-00-00 00:00:00'),
(6, 'nathalie', '$2y$12$kK.ZI/yelpdixO8YZ.6mOeLF3f6aiNLe4EQOkgW6Xuj2hrJBKEXR6', '0000-00-00', 'setara@live.fr', 'http://i.giphy.com/11Feog5PTumNnq.gif', 0, '0000-00-00 00:00:00'),
(7, 'twisty40', '$2y$12$n3.//USCbzjS4iI/dClx2OF0729DKTHzNRoC7H6UJDMlJAkGLWynK', '2017-02-19', 'setara@live.fr', 'http://i.giphy.com/11Feog5PTumNnq.gif', 0, '0000-00-00 00:00:00'),
(9, 'zovzov', '$2y$12$cLBsXfZWjg7V9EPiCxHb2.3jHtSvtQh4OpKeyP0VwNJGigpEID.Ry', '2017-02-26', 'zovzov@zovzov.fr', 'https://www.google.fr/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png', 0, '0000-00-00 00:00:00'),
(12, 'Johny', '$2y$12$jaK/3/fFkxmSANPjigeJZO2uZo57Gw/qMip97KA.Zjf2.U61vYOZK', '1910-01-31', 'bob@jesuisbob.com', 'https://media.giphy.com/media/l41YuwS5IipGquPmM/giphy.gif', 0, '0000-00-00 00:00:00'),
(13, 'juliojulio', '$2y$12$X9vqc6Js8gsIqz98n97Tk.rG09Flu1.s6Ml15K6nje2YBkEjA.BnS', '2017-02-20', 'julio@julio.com', 'http://imworld.aufeminin.com/story/20151204/noeud-papillon-pour-chat-824223_w1020h450c1cx369cy303.jpg', 0, '0000-00-00 00:00:00'),
(14, 'Gabrielle', '$2y$12$LeWWXWOW9Lp/0C2UGrtz7ukgrBnC7VN1zGl2z9Z6v7ACTQ4e/TeX6', '1801-01-02', 'gaby@lol.com', 'https://media.giphy.com/media/LfkySBMSWXAg8/giphy.gif', 0, '0000-00-00 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
