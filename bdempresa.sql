-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2019 a las 01:38:41
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdempresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_dpto` int(10) NOT NULL,
  `cod_dpto` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `jefe_dpto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `razon_social` varchar(200) NOT NULL,
  `nit` varchar(10) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `razon_legaj` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE `funcionario` (
  `carnet` varchar(10) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nom_completo` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `estado` char(20) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hojasecuencia`
--

CREATE TABLE `hojasecuencia` (
  `id_secuencia` int(10) NOT NULL,
  `id_hoja` int(30) NOT NULL,
  `usuario_origen` varchar(30) NOT NULL,
  `usuario_destino` varchar(30) NOT NULL,
  `fecha_instruccion` varchar(30) NOT NULL,
  `nro_fojas` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hojasruta`
--

CREATE TABLE `hojasruta` (
  `id_hoja` int(10) NOT NULL,
  `tipo_origen` varchar(10) NOT NULL,
  `fecha_creaccion` date NOT NULL,
  `hora_creacion` int(10) NOT NULL,
  `usuario_origen` varchar(30) NOT NULL,
  `nro_fojas` int(10) NOT NULL,
  `referencia` varchar(20) NOT NULL,
  `origen` varchar(20) NOT NULL,
  `nro_hojas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
