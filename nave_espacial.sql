-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2026 a las 11:14:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nave_espacial`
--
CREATE DATABASE IF NOT EXISTS `nave_espacial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nave_espacial`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `N-Inscripcion` tinyint(2) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Edad` tinyint(2) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `AnoNacimiento` smallint(4) NOT NULL,
  `Profesion` varchar(40) NOT NULL,
  `Est-Fisico` tinyint(2) NOT NULL,
  `Convivencia` tinyint(2) NOT NULL,
  `Experiencia` tinyint(2) NOT NULL,
  `Seleccionado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`N-Inscripcion`, `Nombre`, `Edad`, `DNI`, `AnoNacimiento`, `Profesion`, `Est-Fisico`, `Convivencia`, `Experiencia`, `Seleccionado`) VALUES
(1, 'Alex', 32, '65785327R', 1994, 'Médico', 8, 7, 8, NULL),
(6, 'Sara', 29, '79659698M', 1997, 'Ingeniera aeroespacial', 9, 5, 5, NULL),
(7, 'Leo', 24, '89692975T', 2002, 'Creador de contenido', 10, 9, 4, NULL),
(8, 'Marta', 46, '96956198P', 1980, 'Ingeniera agrónoma', 6, 9, 21, NULL),
(9, 'Dani', 35, '76136983U', 1991, 'Cocinero', 8, 10, 14, NULL),
(10, 'Eva', 38, '19889754O', 1988, 'Piloto profesional', 8, 7, 15, NULL),
(11, 'Hugo', 27, '86953663T', 1999, 'Informático', 7, 6, 6, NULL),
(12, 'Lucía', 31, '96915812Q', 1995, 'Bióloga', 8, 8, 7, NULL),
(13, 'Pablo', 41, '65692823G', 1985, 'Mecánico industrial', 7, 4, 19, NULL),
(14, 'Noa', 26, '68563942I', 2000, 'Técnica de emergencias', 9, 8, 5, NULL),
(32, 'Jose Luis', 46, '68951967U', 1980, 'Guardia Civil', 10, 6, 20, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `idHabilidad` tinyint(2) NOT NULL,
  `idCandidato` tinyint(2) NOT NULL,
  `Habilidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`idHabilidad`, `idCandidato`, `Habilidad`) VALUES
(1, 1, 'Cirugía'),
(2, 1, 'Medicina de urgencias'),
(3, 6, 'Sistemas electrónicos'),
(4, 6, 'Programación'),
(5, 7, 'Comunicaciones'),
(6, 8, 'Botánica'),
(7, 9, 'Nutrición'),
(8, 10, 'Primeros auxilios'),
(9, 11, 'Programación'),
(10, 11, 'Ciberseguridad'),
(11, 12, 'Microbiología'),
(12, 12, 'Cultivos'),
(13, 13, 'Mecánica'),
(14, 13, 'Electricidad'),
(15, 14, 'Gestión de crisis');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`N-Inscripcion`),
  ADD UNIQUE KEY `DNI` (`DNI`) USING BTREE;

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`idHabilidad`),
  ADD KEY `idCandidato` (`idCandidato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `N-Inscripcion` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `idHabilidad` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD CONSTRAINT `fk_habilidades_candidatos` FOREIGN KEY (`idCandidato`) REFERENCES `candidatos` (`N-Inscripcion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
