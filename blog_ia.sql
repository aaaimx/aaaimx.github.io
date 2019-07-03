-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2019 a las 06:54:17
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_ia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alu_tes`
--

CREATE TABLE `alu_tes` (
  `id_alum` int(4) NOT NULL,
  `id_inv` int(4) NOT NULL,
  `tesis` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `programa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `situacion` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `CodAm` int(11) NOT NULL,
  `usua_enviador` int(11) DEFAULT NULL,
  `usua_receptor` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `solicitud` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`CodAm`, `usua_enviador`, `usua_receptor`, `status`, `solicitud`) VALUES
(1, 3, 4, b'1', b'1'),
(2, 5, 3, b'1', b'1'),
(3, 3, 6, b'1', b'1'),
(4, 7, 6, b'1', b'1'),
(5, 5, 6, b'0', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `CodCom` int(11) NOT NULL,
  `comentario` text,
  `CodPost` int(11) DEFAULT NULL,
  `CodUsua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`CodCom`, `comentario`, `CodPost`, `CodUsua`) VALUES
(1, 'Hola', 1, 3),
(2, 'como estas', 1, 5),
(3, 'que pedo', 3, 6),
(4, 'comentario de prueba', 4, 7),
(5, 'comentario de prueba 2', 4, 7),
(6, 'xd', 4, 6),
(7, 'holi', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigador`
--

CREATE TABLE `investigador` (
  `id_inv` int(4) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `licenciatura` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maestria` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctorado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mg`
--

CREATE TABLE `mg` (
  `CodLike` int(11) NOT NULL,
  `CodPost` int(11) DEFAULT NULL,
  `CodUsua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mg`
--

INSERT INTO `mg` (`CodLike`, `CodPost`, `CodUsua`) VALUES
(1, 1, 3),
(2, 1, 5),
(3, 1, 5),
(4, 4, 7),
(5, 4, 7),
(6, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `CodNot` int(11) NOT NULL,
  `accion` bit(1) DEFAULT NULL,
  `visto` bit(1) DEFAULT NULL,
  `CodPost` int(11) DEFAULT NULL,
  `CodUsua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`CodNot`, `accion`, `visto`, `CodPost`, `CodUsua`) VALUES
(2, b'1', b'1', 1, 3),
(3, b'0', b'1', 1, 5),
(4, b'0', b'1', 1, 5),
(5, b'1', b'1', 1, 5),
(6, b'1', b'1', 3, 6),
(7, b'1', b'1', 4, 7),
(8, b'0', b'1', 4, 7),
(9, b'1', b'1', 4, 7),
(10, b'0', b'1', 4, 7),
(11, b'1', b'1', 4, 6),
(12, b'0', b'0', 4, 3),
(13, b'1', b'0', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `CodPost` int(11) NOT NULL,
  `contenido` text,
  `img` varchar(200) DEFAULT NULL,
  `CodUsua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`CodPost`, `contenido`, `img`, `CodUsua`) VALUES
(1, 'Imagen de prueba', 'subidos/fondo.jpg', 3),
(2, 'Me encanta comer', 'subidos/homer-simpson.jpg', 3),
(3, 'Esto es otra prueba xd', 'subidos/20150216000204.jpg', 3),
(4, 'Prueba x11', 'subidos/color_shot-wallpaper-10218486.jpg', 6),
(5, 'asasas', 'subidos/tux.png', 6),
(6, 'lorem', 'subidos/programacion.png', 6),
(7, 'que pedo', 'subidos/unnamed.jpg', 6),
(9, '<h3>XD</h3>', 'subidos/tumblr_n8clmkcuKo1tfosm2o1_400.gif', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proy_inv`
--

CREATE TABLE `proy_inv` (
  `id_proy` int(4) NOT NULL,
  `id_inv` int(4) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `instituto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_ini` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_fin` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `participantes` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_rev`
--

CREATE TABLE `pub_rev` (
  `id_pub` int(4) NOT NULL,
  `id_inv` int(4) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `revista` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `año` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `autores` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lugar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `inicio` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CodUsua` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `foto_perfil` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CodUsua`, `nombre`, `usuario`, `pass`, `pais`, `profesion`, `edad`, `foto_perfil`) VALUES
(3, 'Usuario Uno', 'user01', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'Estados Unidos', 'Abogado', 21, 'subidos/programacion.png'),
(4, 'Usuario Dos', 'user02', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'Estados Unidos', 'Profesor', 25, 'subidos/games_folder_20344.png'),
(5, 'Usuario 03', 'user03', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'Estados Unidos', 'Doctor', 29, 'subidos/juegos pc.png'),
(6, 'sergio', 'sergio', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'MÃ©xico', 'pavo', 24, 'subidos/ajin.png'),
(7, 'xd', 'xd123', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'MÃ©xico', 'Dr', 23, 'subidos/20150106121505.jpg'),
(8, 'Administrador', 'admin', 'b26631f4d7e7c4c95cfed395a2bb64b0141adb1f8a38f2823241fce9ef81a4d61bd445640a25cd548995c4b1bed08bfd74a5d83cb5ef946b5beacf727e81c8f6', 'MÃ©xico', 'Administrador del sitio', 24, 'subidos/d.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alu_tes`
--
ALTER TABLE `alu_tes`
  ADD PRIMARY KEY (`id_alum`),
  ADD KEY `id_inv_tes` (`id_inv`);

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`CodAm`),
  ADD KEY `usua_enviador` (`usua_enviador`),
  ADD KEY `usua_receptor` (`usua_receptor`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`CodCom`),
  ADD KEY `CodUsua` (`CodUsua`),
  ADD KEY `CodPost` (`CodPost`);

--
-- Indices de la tabla `investigador`
--
ALTER TABLE `investigador`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indices de la tabla `mg`
--
ALTER TABLE `mg`
  ADD PRIMARY KEY (`CodLike`),
  ADD KEY `CodUsua` (`CodUsua`),
  ADD KEY `CodPost` (`CodPost`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`CodNot`),
  ADD KEY `CodUsua` (`CodUsua`),
  ADD KEY `fk_post` (`CodPost`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`CodPost`),
  ADD KEY `CodUsua` (`CodUsua`);

--
-- Indices de la tabla `proy_inv`
--
ALTER TABLE `proy_inv`
  ADD PRIMARY KEY (`id_proy`),
  ADD KEY `id_inv_proy` (`id_inv`);

--
-- Indices de la tabla `pub_rev`
--
ALTER TABLE `pub_rev`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `id_inv_rev` (`id_inv`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CodUsua`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alu_tes`
--
ALTER TABLE `alu_tes`
  MODIFY `id_alum` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `amigos`
--
ALTER TABLE `amigos`
  MODIFY `CodAm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `CodCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `investigador`
--
ALTER TABLE `investigador`
  MODIFY `id_inv` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mg`
--
ALTER TABLE `mg`
  MODIFY `CodLike` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `CodNot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `CodPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `proy_inv`
--
ALTER TABLE `proy_inv`
  MODIFY `id_proy` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pub_rev`
--
ALTER TABLE `pub_rev`
  MODIFY `id_pub` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `CodUsua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alu_tes`
--
ALTER TABLE `alu_tes`
  ADD CONSTRAINT `id_inv_tes` FOREIGN KEY (`id_inv`) REFERENCES `investigador` (`id_inv`);

--
-- Filtros para la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD CONSTRAINT `amigos_ibfk_1` FOREIGN KEY (`usua_enviador`) REFERENCES `usuarios` (`CodUsua`),
  ADD CONSTRAINT `amigos_ibfk_2` FOREIGN KEY (`usua_receptor`) REFERENCES `usuarios` (`CodUsua`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`CodUsua`) REFERENCES `usuarios` (`CodUsua`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`CodPost`) REFERENCES `post` (`CodPost`);

--
-- Filtros para la tabla `mg`
--
ALTER TABLE `mg`
  ADD CONSTRAINT `mg_ibfk_1` FOREIGN KEY (`CodUsua`) REFERENCES `usuarios` (`CodUsua`),
  ADD CONSTRAINT `mg_ibfk_2` FOREIGN KEY (`CodPost`) REFERENCES `post` (`CodPost`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `fk_post` FOREIGN KEY (`CodPost`) REFERENCES `post` (`CodPost`),
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`CodUsua`) REFERENCES `usuarios` (`CodUsua`);

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`CodUsua`) REFERENCES `usuarios` (`CodUsua`);

--
-- Filtros para la tabla `proy_inv`
--
ALTER TABLE `proy_inv`
  ADD CONSTRAINT `id_inv_proy` FOREIGN KEY (`id_inv`) REFERENCES `investigador` (`id_inv`);

--
-- Filtros para la tabla `pub_rev`
--
ALTER TABLE `pub_rev`
  ADD CONSTRAINT `id_inv_rev` FOREIGN KEY (`id_inv`) REFERENCES `investigador` (`id_inv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
