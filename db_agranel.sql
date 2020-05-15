-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2020 a las 18:40:50
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_agranel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `carrito_id` int(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `product_id` int(50) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `contador` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`carrito_id`, `user_id`, `product_id`, `cantidad`, `contador`) VALUES
(38, 2, 17, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `Precio` double DEFAULT NULL,
  `Cantidad` int(10) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(60) NOT NULL,
  `Contador` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `user_id`, `Titulo`, `Precio`, `Cantidad`, `Descripcion`, `Imagen`, `Contador`) VALUES
(30, 2, 'Tomates', 1.25, 250, 'Muy buenos y de temporada', 'media/img/tomates.jpg', 4),
(32, 4, 'Zanahorias', 0.86, 300, 'ReciÃ©n cosechadas', 'media/img/zanahorias.jpg', 1),
(33, 3, 'Fresas', 1.35, 50, 'Dulces y deliciosas', 'media/img/fresas.jpg', 1),
(34, 3, 'Brocoli', 1.56, 47, 'Muy bueno', 'media/img/brocoli.jpg', 2),
(35, 3, 'Patatas', 0.57, 520, 'Perfectas para freÃ­r', 'media/img/Patatas.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Direccion` text,
  `CodigoPostal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `Email`, `Password`, `Nombre`, `Apellidos`, `Telefono`, `Provincia`, `Localidad`, `Direccion`, `CodigoPostal`) VALUES
(2, 'admin@gmail.com', '1234', 'Juragis', 'Garcia Perez', 642587452, 'Santa Cruz de Tenerife', 'Arona', 'Calle El Fisco', 38627),
(3, 'user@gmail.com', '1234', 'Fulanito', 'De Tal', 922555555, NULL, NULL, NULL, NULL),
(4, 'menganito@gmail.com', '1234', 'Menganito', 'Torres', 644222222, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`carrito_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `carrito_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
