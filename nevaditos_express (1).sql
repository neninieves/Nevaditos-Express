-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2024 a las 08:13:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nevaditos express`
--
CREATE DATABASE IF NOT EXISTS `nevaditos express` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nevaditos express`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `ID` int(11) NOT NULL,
  `Red_social` varchar(100) NOT NULL,
  `Url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`ID`, `Red_social`, `Url`) VALUES
(1, 'Instagram', 'https://www.instagram.com/nevaditosexpress?igsh=djE1eTJncmlldTA4'),
(2, 'Facebook', 'https://www.facebook.com/share/NGg5qxDCRVVmCdVm/?mibextid=qi2Omg'),
(3, 'Whatsapp', 'https://wa.me/584121986131');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `Descripcion`, `Precio`) VALUES
(1, 'Pastel Full Chocolate', 'Bizcocho esponjoso de chocolate que se deshace en tu boca', 30.00),
(2, 'Pastel de piña', 'Bizcocho esponjoso y jugoso lleno del sabor tropical y refrescante de la piña', 25.00),
(3, 'Pastel de tres leches', 'Bizcocho esponjoso empapado en una mezcla de tres tipos de leche que lo hacen irresistible y jugoso', 35.00),
(4, 'Pastel de arequipe', 'Capas de bizcocho suave y esponjoso rellenas de la deliciosa crema de arequipe que se derrite en tu boca', 20.00),
(5, 'Cupcake de chocolate', 'Este cupcake de chocolate casero es como un pequeño tesoro dulce que te alegrará el día', 5.00),
(6, 'Cupcake de vainilla', 'Este cupcake de vainilla casero es como un pequeño pedacito de cielo esponjoso en cada bocado', 3.00),
(7, 'Cupcake de ret velvet', 'Este cupcake red velvet casero es como una obra de arte comestible que te conquistará con su belleza y sabor', 5.00),
(8, 'Cupcake marmoleado', 'Este cupcake marmoleado casero es como una obra de arte comestible que combina lo mejor de dos mundos en un solo bocado', 4.00),
(9, 'Cupcake de limon', 'Este cupcake de limón casero es como un rayo de sol en forma de postre que iluminará tu día con su frescura y sabor vibrante', 3.00),
(10, 'Quesillo', 'Quesillo cremoso, suave y con un sabor dulce que te hará querer más con cada bocado', 10.00),
(11, 'Trufas', 'Pequeñas bolitas de chocolate suave, perfectas para ese antojo dulce', 25.00),
(12, 'Donas', 'Donas son esponjosas, con glaseado dulce que se derrite en tu boca', 20.00),
(13, 'Galletas', 'Galletas crujientes por fuera y suaves por dentro, ideales para acompañar tu café', 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Apellido`, `Correo`, `Contraseña`) VALUES
(1, 'Jenileth', 'Nieves', 'yenilethnieves5@gmail.com', '0123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
