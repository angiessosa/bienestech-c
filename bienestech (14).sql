-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2024 a las 06:22:37
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
-- Base de datos: `bienestech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinacion`
--

CREATE TABLE `coordinacion` (
  `idCoordinacion` int(11) NOT NULL,
  `nombreCoordinacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coordinacion`
--

INSERT INTO `coordinacion` (`idCoordinacion`, `nombreCoordinacion`) VALUES
(1, 'logística'),
(2, 'mercadeo'),
(3, 'teleinformática e industrias creativas ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `idFicha` int(11) NOT NULL,
  `numFicha` varchar(11) DEFAULT NULL,
  `jornada` varchar(10) NOT NULL,
  `idPrograma` int(11) DEFAULT NULL,
  `nombreCoordinacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`idFicha`, `numFicha`, `jornada`, `idPrograma`, `nombreCoordinacion`) VALUES
(1, '9876543', '', 3, 'logística'),
(2, '2902274', '', 1, 'teleinformática e industrias creativas '),
(3, '2998741', '', 3, 'teleinformática e industrias creativas '),
(4, '2895573', '', 3, 'teleinformática e industrias creativas '),
(5, '2878641', '', 4, 'teleinformática e industrias creativas '),
(6, '2877645', '', 5, 'teleinformática e industrias creativas '),
(7, '2895558', '', 6, 'teleinformática e industrias creativas '),
(8, '2908914', '', 7, 'teleinformática e industrias creativas '),
(9, '2909917', '', 8, 'teleinformática e industrias creativas '),
(10, '2618627_A', '', 9, 'teleinformática e industrias creativas '),
(11, '2618912', '', 2, 'teleinformática e industrias creativas '),
(12, '2895546', '', 10, 'teleinformática e industrias creativas '),
(13, '2877607', '', 11, 'teleinformática e industrias creativas '),
(14, '2924743', '', 21, 'teleinformática e industrias creativas '),
(15, '2924744', '', 21, 'teleinformática e industrias creativas '),
(16, '2902081', '', 1, 'teleinformática e industrias creativas '),
(17, '2826151', '', 26, 'mercadeo'),
(18, '2878945', '', 26, 'mercadeo'),
(19, '2925042', '', 26, 'mercadeo'),
(20, '2826505', '', 1, 'teleinformática e industrias creativas '),
(21, '2826502', '', 1, 'teleinformática e industrias creativas '),
(22, '2095550', '', 3, 'teleinformática e industrias creativas '),
(23, '2617928', '', 12, 'teleinformática e industrias creativas '),
(24, '2826431', '', 5, 'teleinformática e industrias creativas '),
(25, '2902093', '', 1, 'teleinformática e industrias creativas '),
(26, '2902082', '', 1, 'teleinformática e industrias creativas '),
(27, '2877652', '', 4, 'teleinformática e industrias creativas '),
(28, '2877650', '', 14, 'teleinformática e industrias creativas '),
(29, '2877611', '', 15, 'teleinformática e industrias creativas '),
(30, '2880381', '', 15, 'teleinformática e industrias creativas '),
(31, '2924758', '', 13, 'teleinformática e industrias creativas '),
(32, '2924763', '', 12, 'teleinformática e industrias creativas '),
(33, '2924775', '', 12, 'teleinformática e industrias creativas '),
(34, '2924759', '', 4, 'teleinformática e industrias creativas '),
(35, '2924760', '', 4, 'teleinformática e industrias creativas '),
(74, '2618627', '', 9, 'teleinformática e industrias creativas '),
(75, '2674732', '', 9, 'teleinformática e industrias creativas '),
(76, '2674730', '', 2, 'teleinformática e industrias creativas '),
(77, '2826453', '', 9, 'teleinformática e industrias creativas '),
(78, '2826485', '', 2, 'teleinformática e industrias creativas '),
(79, '2925043', '', 16, 'mercadeo'),
(80, '2095539', '', 16, 'mercadeo'),
(81, '2095540', '', 16, 'mercadeo'),
(82, '2095541', '', 16, 'mercadeo'),
(83, '2095553', '', 16, 'mercadeo'),
(84, '2925057', '', 17, 'mercadeo'),
(85, '2904914', '', 18, 'mercadeo'),
(86, '2904931', '', 18, 'mercadeo'),
(87, '2929665', '', 18, 'mercadeo'),
(88, '2925010', '', 17, 'mercadeo'),
(89, '2925058', '', 17, 'mercadeo'),
(90, '2670602', '', 19, 'logística'),
(91, '2895560', '', 19, 'logística'),
(92, '2978824', '', 19, 'logística'),
(93, '2936177', '', 19, 'logística'),
(94, '2938150', '', 19, 'logística'),
(95, '2924757', '', 19, 'logística'),
(96, '2877554', '', 20, 'logística'),
(97, '2895566', '', 22, 'teleinformática e industrias creativas '),
(98, '2877656', '', 21, 'teleinformática e industrias creativas '),
(99, '2878152', '', 21, 'teleinformática e industrias creativas '),
(100, '2871722', '', 25, 'mercadeo'),
(101, '2826163', '', 25, 'mercadeo'),
(102, '2878953', '', 26, 'mercadeo'),
(103, '2070191', '', 18, 'mercadeo'),
(104, '2970193', '', 18, 'mercadeo'),
(105, '2904928', '', 23, 'mercadeo'),
(106, '2904930', '', 17, 'mercadeo'),
(107, '2929668', '', 18, 'mercadeo'),
(108, '2929670', '', 18, 'mercadeo'),
(109, '2970192', '', 18, 'mercadeo'),
(110, '2970194', '', 18, 'mercadeo'),
(111, '2898754', '', 1, 'teleinformática e industrias creativas '),
(112, '1234567', '', 1, 'Logística');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarioficha`
--

CREATE TABLE `horarioficha` (
  `idHorarioFicha` int(11) NOT NULL,
  `trimestre` int(11) DEFAULT NULL,
  `numAmbiente` varchar(11) DEFAULT NULL,
  `dia` varchar(10) DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL,
  `sede` varchar(30) DEFAULT NULL,
  `idFicha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarioficha`
--

INSERT INTO `horarioficha` (`idHorarioFicha`, `trimestre`, `numAmbiente`, `dia`, `horaInicio`, `horaFin`, `sede`, `idFicha`) VALUES
(30, 1, '413', 'lunes', '07:00:00', '12:20:00', 'Calle 52', 111),
(31, 1, '412', 'martes', '07:00:00', '12:20:00', 'Calle 52', 111),
(32, 1, '413', 'miercoles', '12:40:00', '18:00:00', 'Calle 52', 111),
(33, 1, '509', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 111),
(34, 1, '412', 'viernes', '12:40:00', '18:00:00', 'Calle 52', 111),
(35, 2, '205', 'martes', '12:40:00', '18:00:00', 'Calle 52', 1),
(36, 2, '409', 'miercoles', '12:40:00', '18:00:00', 'Calle 52', 1),
(37, 2, '412', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 1),
(38, 2, '413', 'viernes', '12:40:00', '18:00:00', 'Calle 52', 1),
(39, 3, '205', 'lunes', '07:00:00', '12:20:00', 'Calle 52', 2),
(40, 3, '210', 'martes', '07:00:00', '12:20:00', 'Calle 52', 2),
(41, 3, '501', 'miercoles', '07:00:00', '12:20:00', 'Calle 52', 2),
(42, 3, '205', 'jueves', '07:00:00', '12:20:00', 'Calle 52', 2),
(43, 3, '205', 'viernes', '07:00:00', '12:20:00', 'Calle 52', 2),
(44, 3, '205', 'martes', '12:40:00', '18:00:00', 'Calle 52', 3),
(45, 3, '409', 'miercoles', '12:40:00', '18:00:00', 'Calle 52', 3),
(46, 3, '412', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 3),
(47, 3, '413', 'viernes', '12:40:00', '18:00:00', 'Calle 52', 3),
(48, 1, '500', 'lunes', '12:40:00', '18:00:00', 'Calle 52', 4),
(49, 1, '500', 'martes', '12:40:00', '18:00:00', 'Calle 52', 4),
(50, 1, '500', 'miercoles', '12:40:00', '18:00:00', 'Calle 52', 4),
(51, 1, '500', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 4),
(52, 1, '500', 'viernes', '12:40:00', '18:00:00', 'Calle 52', 4),
(53, 2, '108', 'martes', '12:40:00', '16:00:00', 'Calle 52', 5),
(54, 2, '107', 'miercoles', '12:40:00', '16:00:00', 'Calle 52', 5),
(55, 2, '414', 'miercoles', '07:00:00', '12:20:00', 'Calle 52', 5),
(56, 2, '205', 'jueves', '12:40:00', '16:00:00', 'Calle 52', 5),
(57, 2, '101', 'viernes', '12:40:00', '16:00:00', 'Calle 52', 5),
(58, 3, '511', 'lunes', '18:10:00', '22:00:00', 'Calle 52', 6),
(59, 3, '511', 'martes', '18:10:00', '22:00:00', 'Calle 52', 6),
(60, 3, '511', 'miercoles', '18:10:00', '22:00:00', 'Calle 52', 6),
(61, 3, '511', 'jueves', '18:10:00', '22:00:00', 'Calle 52', 6),
(62, 3, '511', 'viernes', '16:10:00', '20:00:00', 'Calle 52', 6),
(63, 3, '211', 'sábado', '07:00:00', '10:00:00', 'Calle 52', 6),
(64, 3, '511', 'sábado', '10:30:00', '14:20:00', 'Calle 52', 6),
(65, 4, '414', 'lunes', '12:40:00', '18:00:00', 'Calle 52\'', 7),
(66, 4, '108', 'lunes', '07:00:00', '12:20:00', 'Calle 52\'', 7),
(67, 4, '108', 'martes', '07:00:00', '12:20:00', 'Calle 52\'', 7),
(68, 4, '415', 'miercoles', '07:00:00', '12:20:00', 'Calle 52\'', 7),
(69, 4, '107', 'jueves', '07:00:00', '12:20:00', 'Calle 52\'', 7),
(70, 4, '414', 'viernes', '07:00:00', '12:20:00', 'Calle 52\'', 7),
(71, 1, '415', 'lunes', '18:10:00', '22:00:00', 'Calle 52', 8),
(72, 1, '414', 'martes', '18:10:00', '22:00:00', 'Calle 52', 8),
(73, 1, '108', 'miercoles', '18:10:00', '22:00:00', 'Calle 52', 8),
(74, 1, '108', 'jueves', '18:10:00', '22:00:00', 'Calle 52', 8),
(75, 1, '414', 'viernes', '18:10:00', '22:00:00', 'Calle 52', 8),
(76, 1, '108', 'lunes', '18:10:00', '22:00:00', 'Calle 52', 9),
(77, 1, '205', 'martes', '18:10:00', '22:00:00', 'Calle 52', 9),
(78, 1, '205', 'miercoles', '18:10:00', '22:00:00', 'Calle 52', 9),
(79, 1, '414', 'jueves', '18:10:00', '22:00:00', 'Calle 52', 9),
(80, 1, '108', 'viernes', '18:10:00', '22:00:00', 'Calle 52', 9),
(81, 1, '415', 'sabado', '07:00:00', '10:00:00', 'Calle 52', 9),
(82, 1, '412', 'sabado', '10:30:00', '14:00:00', 'Calle 52', 9),
(83, 4, '501', 'martes', '12:40:00', '18:00:00', 'Calle 52', 10),
(84, 4, '501', 'miercoles', '12:40:00', '18:00:00', 'Calle 52', 10),
(85, 4, '501', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 10),
(86, 4, '501', 'viernes', '12:40:00', '18:00:00', 'Calle 52', 10),
(87, 4, '413', 'lunes', '18:10:00', '22:00:00', 'Calle 52', 11),
(88, 4, '412', 'martes', '18:10:00', '22:00:00', 'Calle 52', 11),
(89, 4, '413', 'miercoles', '18:10:00', '22:00:00', 'Calle 52', 11),
(90, 4, 'GYM', 'jueves', '18:10:00', '22:00:00', 'Calle 52', 11),
(91, 4, '412', 'viernes', '18:10:00', '22:00:00', 'Calle 52', 11),
(92, 4, '413', 'sabado', '07:00:00', '10:00:00', 'Calle 52', 11),
(93, 4, '109', 'lunes', '08:40:00', '12:20:00', 'Calle 52', 12),
(94, 4, '412', 'lunes', '12:40:00', '18:00:00', 'Calle 52', 12),
(95, 4, '205', 'martes', '14:20:00', '18:00:00', 'Calle 52', 12),
(96, 4, '210', 'jueves', '12:40:00', '18:00:00', 'Calle 52', 12),
(97, 4, '205', 'viernes', '14:20:00', '18:00:00', 'Calle 52', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `idHorario` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idTaller` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`idHorario`, `idUsuario`, `idTaller`, `fecha`, `horaInicio`, `horaFin`) VALUES
(1, 23, 12, '2024-10-21', '08:00:00', '08:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `idPrograma` int(11) NOT NULL,
  `nombrePrograma` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`idPrograma`, `nombrePrograma`) VALUES
(1, 'Analisis y Desarrollo de Software'),
(2, 'Animación 3D'),
(3, 'Implementación de infraestructura de tecnologias de la informaciónn y las comunicaciones'),
(4, 'Técnico Programación de software'),
(5, 'Mantenimiento de equipos de computo'),
(6, 'Gestión de redes de datos'),
(7, 'Sistemas teleinformáticas'),
(8, 'Analítica de datos'),
(9, 'Producción de medios audiovisuales'),
(10, 'Producción de multimedia'),
(11, 'Producción de sonidos para medios audiovisuales'),
(12, 'Desarrollo de videojuegos y entornos interactivos'),
(13, 'T sistemas teleinformáticas'),
(14, 'Sistemas'),
(15, 'Control de seguridad digital'),
(16, 'Tecnólogo desarrollo de procesos de mercadeo'),
(17, 'Técnico en asesoría comercial'),
(18, 'Técnico en operaciones comerciales'),
(19, 'Tecnólogo en coordinación de procesos logísticos'),
(20, 'Técnico en operaciones de comercio exterior'),
(21, 'Elaboración de audiovisuales'),
(22, 'Producción multimedia'),
(23, 'Técnico en asesoría comercial Homecenter'),
(25, 'Tecnólogo comunicación comercial'),
(26, 'Tecnólogo desarrollo de procesos de mercados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `tipoRol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `tipoRol`) VALUES
(1, 'administrador'),
(2, 'coordinador'),
(3, 'profesional'),
(4, 'instructor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `idTaller` int(11) NOT NULL,
  `centroFormacion` varchar(100) DEFAULT NULL,
  `jornada` varchar(50) DEFAULT NULL,
  `coordinacion` varchar(100) DEFAULT NULL,
  `numFicha` varchar(11) DEFAULT NULL,
  `tema` varchar(50) DEFAULT NULL,
  `fechaYHora` datetime DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `taller`
--

INSERT INTO `taller` (`idTaller`, `centroFormacion`, `jornada`, `coordinacion`, `numFicha`, `tema`, `fechaYHora`, `observaciones`) VALUES
(1, NULL, NULL, NULL, '2095539', 'autocuidado', '2024-09-05 12:30:00', NULL),
(2, NULL, NULL, NULL, '2095539', 'derechos sexuales y reproductivos ', '2024-09-11 12:00:00', NULL),
(3, NULL, NULL, NULL, '2095540', 'habilidades blandas', '2024-09-11 15:00:00', NULL),
(4, NULL, NULL, NULL, '2095540', 'talleres de cultura', '2024-09-12 07:30:00', 'musica'),
(5, NULL, NULL, NULL, '2095550', 'talleres de cultura', '2024-09-14 13:00:00', 'teatro'),
(6, NULL, NULL, NULL, '2618627', 'talleres de cultura', '2024-09-17 08:30:00', 'danza'),
(7, NULL, NULL, NULL, '2618627_A', 'talleres de deporte', '2024-09-20 16:00:00', NULL),
(8, NULL, NULL, NULL, '2674732', 'talleres de deporte', '2024-09-23 09:00:00', NULL),
(12, 'Centro Principal', 'mañana', 'Informática', '2898754', 'autocuidado', '2024-10-29 09:00:00', 'Taller introductorio'),
(21, 'CGMLTI', 'manana', 'teleinformatica', '2095539', 'derechos sexuales y reproductivos ', '2024-10-29 14:00:00', NULL),
(36, 'calle52', 'manana', '1', '9876543', 'autocuidado', '2024-11-04 19:30:00', ''),
(37, 'calle52', 'manana', '1', '9876543', 'autocuidado', '2024-11-05 02:30:00', ''),
(38, 'calle52', 'manana', '1', '9876543', 'autocuidado', '2024-11-05 02:30:00', ''),
(39, 'calle52', 'manana', 'teleinformática e industrias creativas ', '9876543', 'autocuidado', '2024-11-05 23:00:00', ''),
(40, 'calle52', 'manana', 'logística', '2898754', 'talleres de cultura', '2024-11-05 20:30:00', ''),
(42, 'calle52', 'manana', 'logística', '2618912', 'autocuidado', '2024-11-04 23:00:00', ''),
(50, 'calle52', 'manana', 'mercadeo', '2898754', 'autocuidado', '2024-11-06 13:00:00', 'ninguna'),
(51, 'calle52', 'manana', 'logística', '2908914', 'talleres de cultura', '2024-11-06 15:00:00', 'ingresa con yudi lele'),
(52, 'calle52', 'manana', 'mercadeo', '2908914', 'derechos sexuales y reproductivos ', '2024-11-24 17:00:00', ''),
(53, 'calle52', 'manana', 'mercadeo', '2908914', 'derechos sexuales y reproductivos ', '2024-11-24 17:00:00', ''),
(54, 'calle52', 'mixta', 'logística', '2877607', 'derechos sexuales y reproductivos ', '2024-11-24 17:00:00', ''),
(55, 'calle52', 'manana', 'logística', '2998741', 'derechos sexuales y reproductivos ', '2024-11-24 17:30:00', ''),
(57, 'calle52', 'manana', 'mercadeo', '2618912', 'autocuidado', '2024-11-05 21:00:00', 'algunas observaciones'),
(59, 'calle52', 'noche', 'teleinformática e industrias creativas ', '2898754', 'talleres de deporte', '2024-11-24 16:00:00', ''),
(60, 'calle52', 'manana', 'mercadeo', '2618912', 'autocuidado', '2024-11-05 21:00:00', 'algunas observaciones'),
(63, 'fontibon', 'diurna', 'teleinformática e industrias creativas ', '2895546', 'derechos sexuales y reproductivos ', '2024-11-25 17:00:00', ''),
(65, 'calle64', 'mixta', 'logística', '2895546', 'derechos sexuales y reproductivos ', '2024-11-25 13:30:00', ''),
(66, 'fontibon', 'diurna', 'logística', '2924743', 'autocuidado', '2024-11-25 15:30:00', ''),
(67, 'calle52', 'manana', 'mercadeo', '2618912', 'autocuidado', '2024-11-05 21:00:00', 'algunas observaciones'),
(68, 'fontibon', 'diurna', 'logística', '2924743', 'autocuidado', '2024-11-25 15:30:00', ''),
(69, 'calle64', 'mixta', 'logística', '2924743', 'autocuidado', '2024-11-25 15:30:00', ''),
(70, 'fontibon', 'noche', 'teleinformática e industrias creativas ', '1234567', 'talleres de deporte', '2024-11-25 15:00:00', ''),
(71, 'calle52', 'manana', 'mercadeo', '2618912', 'autocuidado', '2024-11-05 21:00:00', 'algunas observaciones'),
(72, 'calle52', 'mixta', 'logística', '9876543', 'habilidades blandas', '2024-11-25 05:00:00', ''),
(73, 'calle52', 'manana', 'mercadeo', '2618912', 'autocuidado', '2024-11-05 21:00:00', 'algunas observaciones'),
(74, 'calle52', 'mixta', 'mercadeo', '2895546', 'autocuidado', '2024-11-26 00:30:00', ''),
(85, 'calle64', 'diurna', 'mercadeo', '2998741', 'derechos sexuales y reproductivos ', '2024-11-25 23:30:00', ''),
(87, 'calle52', 'mixta', 'mercadeo', '2924743', 'autocuidado', '2024-11-26 20:30:00', ''),
(88, 'calle52', 'diurna', 'teleinformática e industrias creativas ', '2898754', 'autocuidado', '2024-11-25 15:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tematicas`
--

CREATE TABLE `tematicas` (
  `idTematicas` int(11) NOT NULL,
  `tema` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tematicas`
--

INSERT INTO `tematicas` (`idTematicas`, `tema`) VALUES
(2, 'autocuidado'),
(1, 'derechos sexuales y reproductivos '),
(3, 'habilidades blandas'),
(5, 'talleres de cultura'),
(4, 'talleres de deporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `tipoDocumento` varchar(50) DEFAULT NULL,
  `numeroDocumento` varchar(15) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correoUsuario` varchar(250) DEFAULT NULL,
  `claveUsuario` varchar(60) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL,
  `estado` enum('pendiente','aprobado','denegado') DEFAULT 'pendiente',
  `areaEncargada` enum('psicologia','deporte','arte') DEFAULT NULL,
  `coordinacionInstru` enum('logistica','mercadeo','teleinformática e industrias creativas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `correoUsuario`, `claveUsuario`, `idRol`, `estado`, `areaEncargada`, `coordinacionInstru`) VALUES
(17, 'C.C', '11222221', 'Yudi', 'Moreno', 'yudimoreno@sena.edu.co', '$2a$12$yHsH0gsic4nwIMtK6fYVg.69q5XZGTsuM2MCOo2zUotwVpTSxGvCq', 1, 'aprobado', NULL, NULL),
(18, 'C.C', '22333344', 'Gustavo', 'Beltran', 'gustavob@sena.edu.co', '$2a$12$erTmjL01ooy9.FjkQR/nDuAbubnOhF0Na1YMXG/Hua9TBH6LWKVpq', 2, 'aprobado', NULL, NULL),
(23, 'C.C', '55544477', 'Sebastian', 'Ramirez', 'sebas@sena.edu.co', '$2a$12$6QmRoow.2Ey4ZHCUGRKiTOBvqhCzGv8ufTn8zXzP9DRfyApDf6ecK', 3, 'aprobado', 'arte', NULL),
(24, 'C.C', '88883999', 'Maria', 'Suarez', 'mariassuar@sena.edu.co', '$2a$12$4WkLdm74xCdVbPCh6aLd2uRzKFcXxwXjtJbIy27wdYBZ8/GzA5t5W', 4, 'aprobado', NULL, 'teleinformática e industrias creativas'),
(25, 'C.C', '1233344455', 'Juliana', 'Salgar', 'a@gmail.com', '$2a$12$WcLVdqqrK9x0IYBUqspPw.bG.3rspOC7vpcaLiQbOH2WvKP6.mWT2', 1, 'aprobado', NULL, NULL),
(30, 'C.C', '120022', 'Angie', 'Sosa', 'assosa2@soy.sena.edu.co', '$2a$12$VKTaH5.ATwIwfOg4jK7XW.69SOQwutPfqTZQU9iFBrCQdFOp.nkMC', 2, 'pendiente', NULL, NULL),
(35, 'C.C', '222222222', 'Valentina', 'Prueba', 'vale@soy.sena.edu.co', '$2b$12$P61lKhgz9CyjlHPA7RiNOOBOdfPJlqO/JOEMtbv4muNd9tgd8T50i', 1, 'denegado', NULL, NULL),
(36, 'C.C', '222222224', 'Valentina', 'Prueba', 'vale@soy.sena.edu.co', '$2b$12$87PkRCq3rYaBxvJ.E2Ns0OrVnEN297M.tpZkDFa4hDTkcPM5TZ1uS', 1, 'denegado', NULL, NULL),
(37, 'C.C', '222222223', 'Valentina', 'Prueba3', 'vale3@soy.sena.edu.co', '$2b$12$Ca25APZvtsgffDakjS7uJ.vMzv8.EJcJnLQRYUZoHEtNDHd3QnLmC', 2, 'denegado', NULL, NULL),
(38, 'C.C', '345677', 'Maria', 'Morneo', 'mariamm@gmail.com', '$2a$12$RQJaVSANdIetq5vjwcZx4Ogng9WKu4xfb2GhE9IRXYzY/M/4gbsNq', 1, 'denegado', NULL, NULL),
(39, 'C.C', '120929', 'Camila', 'PrueC', 'cami12@gmail.com', '$2b$12$Cy66rSHhXRA4nAhjOux4zeqzmFl6L47Mcc8x/VEm1h9lMwi1OwhiC', 2, 'pendiente', NULL, NULL),
(40, 'C.C', 'd', '2', '223', 'assosa2@gm', '$2b$12$dDke8e3KJkmlShE2xhK2F.K9pLBti0fAEsdCPdHsYiBpFG/pXF0J6', 1, 'denegado', NULL, NULL),
(41, 'C.C', '10127762', 'angie', 'sosaprueba', 'a@gmail.com', '$2b$12$d8TSw4qPSz4OW5T9.XTb/eqb9MmpfvijWQgij1Ne5eAfwinwmVUyK', 1, 'denegado', NULL, NULL),
(42, 'C.C', '1111', 'Angie', 'pruebsa2', 'angiesod@gmail', '$2b$12$v5iWDE69yOL.VYVkyImopeY2GxNwRollseqh4O/Hm4JKGn5wxuZJW', 1, 'denegado', NULL, NULL),
(43, 'C.C', 'rwrw', 'rwrwr', 'rwrwr', 'rwrw@j', '$2b$12$vkxuj/szJ13wJfxURrEVlueSGZILTGwuYC2tmy5FCcQlhSWfPMLp2', 1, 'denegado', NULL, NULL),
(46, 'C.C', '192003837', 'AngieE', 'Sosa', 'assosa2@soy.sena.edu.co', '$2b$12$gxk48DHLz5aJ6hv8aKc2WeOVWttNW82EsvLJjIN5V8dq9rjb/cN7S', 1, 'denegado', NULL, NULL),
(48, 'C.C', '342421111', 'angie', 'Sosa', 'assosa2@soy.sena.edu.co', '$2b$12$RLMJrWV7svm2IBD3r7X5wuR.mc0GP4DHkKb3uExCbFb7VYAYjvu5a', 2, 'denegado', NULL, NULL),
(49, 'C.C', '10209383', 'Mia', 'PrueC', 'assosa2@sena.edu.co', '$2b$12$7fkdTly3FyYwzAy7Mp2.n.H8qDwnlsGO/6MosadxYdpaJVvxGOJbe', 1, 'denegado', NULL, NULL),
(50, 'C.E', '10937472', 'Maria', 'Morneo', 'maria43@gmail.com', '$2b$12$1ShbPW4VFefR/aZhTh9i2e9OSA4sTphTq37sBsWNTZfX1gCnYaKwC', 1, 'denegado', NULL, NULL),
(51, 'C.C', '2938209801', 'Mario Fernando', 'Rojas Jeje', 'mario@gmail.com', '$2b$12$aYEQkazbf5jbur466yV1Qu.iM0Ri9FvtN8iZfugSzazmzI6deuIHK', 1, 'denegado', NULL, NULL),
(52, 'C.C', '31312313', 'vsfdsfs', 'ffdsfsf', 'dsfsf@soy.sena.edu.co', '$2b$12$3qq9rwc0c8KnYPrDOr75OeP2WLIpkCuPk.pE10oYutaCjg2ZGQBLO', 2, 'denegado', NULL, NULL),
(53, 'C.C', '1029837288', 'Angie', 'Maria', 'assosa2@soy.sena.edu.co', '$2b$12$hm0HJKKKXbWt4PiFQinn.uZJUy7wjvdnJuBVFVBCwjdTOe2UWAD9W', 1, 'pendiente', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_taller`
--

CREATE TABLE `usuario_taller` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idTaller` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_taller`
--

INSERT INTO `usuario_taller` (`id`, `idUsuario`, `idTaller`) VALUES
(1, 23, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  ADD PRIMARY KEY (`idCoordinacion`),
  ADD UNIQUE KEY `nombreCoodinacion` (`nombreCoordinacion`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`idFicha`),
  ADD UNIQUE KEY `numFicha` (`numFicha`),
  ADD KEY `nombreCoodinacion` (`nombreCoordinacion`),
  ADD KEY `fk_programa` (`idPrograma`);

--
-- Indices de la tabla `horarioficha`
--
ALTER TABLE `horarioficha`
  ADD PRIMARY KEY (`idHorarioFicha`),
  ADD KEY `idFicha` (`idFicha`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTaller` (`idTaller`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`idPrograma`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`idTaller`),
  ADD KEY `tema` (`tema`),
  ADD KEY `numFicha` (`numFicha`);

--
-- Indices de la tabla `tematicas`
--
ALTER TABLE `tematicas`
  ADD PRIMARY KEY (`idTematicas`),
  ADD UNIQUE KEY `tema` (`tema`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idRol` (`idRol`);

--
-- Indices de la tabla `usuario_taller`
--
ALTER TABLE `usuario_taller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTaller` (`idTaller`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  MODIFY `idCoordinacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `idFicha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `horarioficha`
--
ALTER TABLE `horarioficha`
  MODIFY `idHorarioFicha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `idPrograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `taller`
--
ALTER TABLE `taller`
  MODIFY `idTaller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `tematicas`
--
ALTER TABLE `tematicas`
  MODIFY `idTematicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `usuario_taller`
--
ALTER TABLE `usuario_taller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`nombreCoordinacion`) REFERENCES `coordinacion` (`nombreCoordinacion`),
  ADD CONSTRAINT `fk_programa` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`);

--
-- Filtros para la tabla `horarioficha`
--
ALTER TABLE `horarioficha`
  ADD CONSTRAINT `horarioficha_ibfk_1` FOREIGN KEY (`idFicha`) REFERENCES `ficha` (`idFicha`);

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`idTaller`) REFERENCES `taller` (`idTaller`);

--
-- Filtros para la tabla `taller`
--
ALTER TABLE `taller`
  ADD CONSTRAINT `taller_ibfk_1` FOREIGN KEY (`tema`) REFERENCES `tematicas` (`tema`),
  ADD CONSTRAINT `taller_ibfk_2` FOREIGN KEY (`numFicha`) REFERENCES `ficha` (`numFicha`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`);

--
-- Filtros para la tabla `usuario_taller`
--
ALTER TABLE `usuario_taller`
  ADD CONSTRAINT `usuario_taller_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `usuario_taller_ibfk_2` FOREIGN KEY (`idTaller`) REFERENCES `taller` (`idTaller`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
