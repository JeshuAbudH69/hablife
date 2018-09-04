-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-09-2018 a las 02:26:20
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fansi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_comments`
--

DROP TABLE IF EXISTS `articles_comments`;
CREATE TABLE IF NOT EXISTS `articles_comments` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `userid` int(7) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_news`
--

DROP TABLE IF EXISTS `articles_news`;
CREATE TABLE IF NOT EXISTS `articles_news` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(125) NOT NULL,
  `userid` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articles_news`
--

INSERT INTO `articles_news` (`id`, `title`, `content`, `time`, `userid`) VALUES
(1, '[ES] Celebramos el dia del orgullo', 'Durante el dia de ayer os informabamos de un nuevo juego inaugurado en el hotel anglosajon en el cual se podia obtener una placa muy colorida, al igual que la decoracion del propio juego, que presenta la mayoria de los colores del arcoiris, los mismo que tiene la bandera del orgullo.\r\n\r\n\r\n\r\nHoy hemos amanecido con el mismo juego en la esta sala de Sefos, por lo que ahora tambien todos los usuarios del hotel hispano podreis acceder a este juego y conseguir la placa para festejar este dia. Para completar el laberinto, deberemos colocarnos en los rollers, eligiendo uno de los colores que mas nos gusten o donde haya menos gente y ser transportados. Una vez estes alli deberas moverte rapidamente por las sillas y activar las palancas para que las puertas se giren y puedas pasar por ellas. Solo se llevara la placa el primero que llegue al final.\r\n\r\n\r\n\r\nSi lograis superar el tiempo y a los adversarios os hareis con una fabulosa y colorida placa, la misma que te mostramos a continuacion con su nombre y descripcion ya en castellano.\r\n\r\n\r\nJuego Arcoiris\r\n¡Juguemos por la tolerancia!', '1403884979', 1),
(2, '[ES] Elige al mejor jugador', 'Si has estado siguiendo desde sus comienzo la celebracion que tiene a mas de uno como loco, seguramente no te perdiste el partido que se disputo hace poco, si, hablamos del partido Portugal contra Gana. Un partido en el que el conjunto luso se impuso a los de Gana con un resultado de 2-1 muy ajustado.\r\n\r\nTras el partido, en el dia de hoy, Habbo nuevamente quiere saber tu opinion acerca del mejor jugador del partido, ¿se la brindas? Pues nada, dirigete a esta sala y espera a que os salga la encuesta para poder responderla.\r\n\r\n\r\n\r\n¿A quien has nominado como el mejor jugador de este partido? ¿Que tal si compartes tu respuesta con nosotros a traves de los comentarios? Pues Habtium ha elegido a Cristiano Ronaldo, ¿y tu? Te dejamos para que pienses y vuelvas a retomar los mejores momento de este partido, para de esta manera, poder elegir al mejor jugador. No olvides mantenerte al margen de Habtium, donde encontraras la informacion al instante.', '1403885040', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_site`
--

DROP TABLE IF EXISTS `config_site`;
CREATE TABLE IF NOT EXISTS `config_site` (
  `title` varchar(350) NOT NULL,
  `www` varchar(350) NOT NULL,
  `slogan` varchar(125) NOT NULL,
  `facebook` text NOT NULL,
  `developed` varchar(350) NOT NULL,
  `planb` varchar(350) NOT NULL,
  `room` varchar(350) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `config_site`
--

INSERT INTO `config_site` (`title`, `www`, `slogan`, `facebook`, `developed`, `planb`, `room`) VALUES
('HabbNet', 'http://localhost', '~', '', 'RicardoMarin', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_news`
--

DROP TABLE IF EXISTS `users_news`;
CREATE TABLE IF NOT EXISTS `users_news` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(350) NOT NULL,
  `email` varchar(350) NOT NULL,
  `habbo` varchar(45) NOT NULL,
  `ip` varchar(350) NOT NULL,
  `day_reg` varchar(350) NOT NULL,
  `rank` int(7) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_news`
--

INSERT INTO `users_news` (`id`, `name`, `user`, `pass`, `email`, `habbo`, `ip`, `day_reg`, `rank`) VALUES
(1, 'Administrador HabboStorm', 'Administrador', 'H,3DP9C9A.#4R-S9B.#8T,C4X-F,V-SDV-#4X8V8U,3@V-&)B9&-C-```\n`\n', 'administrador@gmail.com', 'ricardo541', '::1', '1407079639', 5),
(2, 'Maria Abud', 'JeshuAbud', 'H.&(Q93-D83!E86)F.6,S,C<W-#AD9C0Y-S-A,&(V9C)D,F-A-S(V8@``\n`\n', 'mariiaabudh@gmail.com', 'Borbujada', '::1', '1535312557', 5),
(3, 'Maria', 'Grissip', 'H.&(Q93-D83!E86)F.6,S,C<W-#AD9C0Y-S-A,&(V9C)D,F-A-S(V8@``\n`\n', 'jesuabud@gmail.com', 'majojexhu', '::1', '1535820625', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_rank`
--

DROP TABLE IF EXISTS `users_rank`;
CREATE TABLE IF NOT EXISTS `users_rank` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `rank` int(7) NOT NULL,
  `name` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_rank`
--

INSERT INTO `users_rank` (`id`, `rank`, `name`) VALUES
(1, 1, 'Usuario custom'),
(2, 2, 'Usuario VIP'),
(3, 3, 'Reportero'),
(4, 4, 'Moderador'),
(5, 5, 'Administrador');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
