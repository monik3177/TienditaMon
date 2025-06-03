-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2025 a las 13:52:31
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `RFC` varchar(50) NOT NULL,
  `F_Nac` date NOT NULL,
  `Municipio` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `Calle` varchar(50) NOT NULL,
  `Codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`DNI`, `Nombre`, `Telefono`, `RFC`, `F_Nac`, `Municipio`, `Estado`, `Colonia`, `Calle`, `Codigo`) VALUES
(6, 'efrfr', 444433, 'vfvv', '2024-12-19', 'Cuautitlán', 'México', 'Romita', 'dfree', 54800),
(8, 'fsdfs', 32132, 'sasdf', '2024-12-12', 'Cuautitlán', 'México', 'Dos Ríos Primera Sección', 'freshj', 54850),
(9, 'FEF', 23432, 'ADASD', '2024-12-10', 'Cuautitlán', 'México', 'San Mateo Ixtacalco Fracción Tlaxculpas', 'ASDASD', 54860),
(10, 'sdasd', 34234, 'asdasd', '2024-12-04', 'Cuautitlán', 'México', 'San Mateo Ixtacalco Fracción Tlaxculpas', 'rree', 54860),
(11, 'sdasdasd', 3243423433422, 'asdfa34', '2024-12-02', 'Cuautitlán', 'México', 'Villas Xaltipa II', 'wqeqwe', 54850);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Clave` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Clave2` varchar(50) NOT NULL,
  `Precio` decimal(4,2) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Clave` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `Municipio` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `Calle` varchar(50) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `RFC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Clave`),
  ADD KEY `Clave2` (`Clave2`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `DNI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Clave2`) REFERENCES `proveedor` (`Clave`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
