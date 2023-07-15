-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2023 a las 07:57:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdencuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadia`
--

CREATE TABLE `estadia` (
  `id` bigint(20) NOT NULL,
  `noche_hotel` int(11) NOT NULL,
  `noche_vivienda_alquiler` int(11) NOT NULL,
  `noche_vivienda_familiar` int(11) NOT NULL,
  `noche_vivienda_propia` int(11) NOT NULL,
  `otro_tipo_vivienda` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estadia`
--

INSERT INTO `estadia` (`id`, `noche_hotel`, `noche_vivienda_alquiler`, `noche_vivienda_familiar`, `noche_vivienda_propia`, `otro_tipo_vivienda`, `pais`) VALUES
(1, 1, 1, 1, 1, '1', 'Argentina'),
(2, 0, 0, 0, 0, '0', '0'),
(3, 7, 7, 7, 7, '9', 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadía`
--

CREATE TABLE `estadía` (
  `id` int(11) NOT NULL,
  `pais` varchar(400) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nocheViviendaPropia` int(11) NOT NULL,
  `nocheHotel` int(11) NOT NULL,
  `nocheViviendaFamiliar` int(11) NOT NULL,
  `nocheViviendaAlquiler` int(11) NOT NULL,
  `OtrotipoVivienda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(15) NOT NULL,
  `nombrePunto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `moneda` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `monedaNoTerceros` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `monedaSiTerceros` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cuantasPersonas` int(11) DEFAULT NULL,
  `huboGastos` char(2) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valorPagadoUsted` int(11) DEFAULT NULL,
  `valorTercerosNoHacen` int(11) DEFAULT NULL,
  `valorTercerosSiHacen` int(11) DEFAULT NULL,
  `cuantas_personas` int(11) NOT NULL,
  `hubo_gastos` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `moneda_no_terceros` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `moneda_si_terceros` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `nombre_punto` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `valor_pagado_usted` int(11) NOT NULL,
  `valor_terceros_no_hacen` int(11) NOT NULL,
  `valor_terceros_si_hacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `nombrePunto`, `moneda`, `monedaNoTerceros`, `monedaSiTerceros`, `cuantasPersonas`, `huboGastos`, `valorPagadoUsted`, `valorTercerosNoHacen`, `valorTercerosSiHacen`, `cuantas_personas`, `hubo_gastos`, `moneda_no_terceros`, `moneda_si_terceros`, `nombre_punto`, `valor_pagado_usted`, `valor_terceros_no_hacen`, `valor_terceros_si_hacen`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Si', '', '', '', 1, 1, 1),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Si', '', '', '', 1, 1, 1),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, 0, 0, 0),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `id` int(11) NOT NULL,
  `Residencia` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Nacionalidad` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Sexo` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Acompanamiento` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cantidad_personas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`id`, `Residencia`, `Nacionalidad`, `Sexo`, `Edad`, `Acompanamiento`, `cantidad_personas`) VALUES
(1, 'Colombia', 'Colo', 'Hombre', 18, 'Solo', 0),
(2, 'Venezuela', 'Chile', 'NoBinario', 35, 'Familia', 8),
(3, 'Colombia', 'Chile', 'NoBinario', 45, 'Solo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `id` int(11) NOT NULL,
  `nombreMoneda` char(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_moneda` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivoviaje`
--

CREATE TABLE `motivoviaje` (
  `id` int(15) NOT NULL,
  `motivo` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `organizacionViaje` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `paquete` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivo_viaje`
--

CREATE TABLE `motivo_viaje` (
  `id` int(11) NOT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `organizacion_viaje` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `paquete` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `motivo_viaje`
--

INSERT INTO `motivo_viaje` (`id`, `motivo`, `organizacion_viaje`, `paquete`) VALUES
(1, 'visita_Familiares_amigos', 'paquete-viajes-Colombia', 'Tranporte-Internacional'),
(2, 'visita_Familiares_amigos', 'paquete-viajes-Colombia', 'Alojamiento'),
(3, 'visita_Familiares_amigos', 'paquete-viajes-pai-turista', ''),
(4, 'visita_Familiares_amigos', 'paquete-viajes-pai-turista', 'Servicios-culturales-entretenimiento'),
(5, 'visita_Familiares_amigos', 'paquete-viajes-pai-turista', 'Servicios-culturales-entretenimiento'),
(6, 'visita_Familiares_amigos', 'paquete-viajes-pai-turista', 'Servicios-culturales-entretenimiento'),
(7, 'visita_Familiares_amigos', 'paquete-viajes-Colombia', 'Alojamiento'),
(8, 'Vacaciones', 'paquete-viajes-Colombia', 'Tranporte-Internacional'),
(9, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(10, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(11, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(12, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(13, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(14, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(15, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(16, 'Turismo Cultural', 'paquete-viajes-pai-turista', ''),
(17, 'Compras', 'paquete-viajes-pai-turista', 'Tranporte-Internacional'),
(18, 'Vacaciones', 'paquete-viajes-pai-turista', 'Tranporte-Internacional'),
(19, 'Vacaciones', 'paquete-viajes-pai-turista', 'Tranporte-Internacional'),
(20, 'Vacaciones', 'paquete-viajes-pai-turista', 'Tranporte-Internacional'),
(21, 'Turismo Cultural', 'paquete-viajes-Colombia', ''),
(22, 'Tratamientos', 'paquete-viajes-terceros', 'Servicios-culturales-entretenimiento'),
(23, 'Tratamientos', 'Propio', 'Tours'),
(24, 'Tratamientos', 'Propio', 'Tours'),
(25, 'Compras', 'paquete-viajes-pai-turista', ''),
(26, 'Compras', 'paquete-viajes-pai-turista', ''),
(27, 'Evento', 'paquete-viajes-pai-turista', 'Tranporte-Internacional'),
(28, 'Estudios', 'paquete-viajes-terceros', ''),
(29, 'Estudios', 'paquete-viajes-terceros', ''),
(30, 'Turismo Cultural', 'paquete-viajes-terceros', 'Tranporte-Internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(15) NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasena`) VALUES
(1, 'juanes', 'juanes'),
(12, 'Juanes1', 'Juanes1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estadia`
--
ALTER TABLE `estadia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadía`
--
ALTER TABLE `estadía`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivoviaje`
--
ALTER TABLE `motivoviaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivo_viaje`
--
ALTER TABLE `motivo_viaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadia`
--
ALTER TABLE `estadia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadía`
--
ALTER TABLE `estadía`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `informacion`
--
ALTER TABLE `informacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `motivoviaje`
--
ALTER TABLE `motivoviaje`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `motivo_viaje`
--
ALTER TABLE `motivo_viaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
