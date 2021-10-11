-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2021 a las 00:40:50
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bsd_eco_muebles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bienes`
--

CREATE TABLE `bienes` (
  `id_bienes` varchar(10) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `documento_usuarios` int(100) NOT NULL,
  `id_tipobien` varchar(10) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bienes`
--

INSERT INTO `bienes` (`id_bienes`, `descripcion`, `documento_usuarios`, `id_tipobien`, `estado`) VALUES
('b1', 'Sala en l ', 19323534, 'T6', 'Se encuentra rota un 30%'),
('b2', 'Sala Modular ', 1023871520, 'T6', 'Deterioro del mueble un 50%'),
('b3', 'Comedor 4 Puestos ', 57896354, 'T1', 'Desgaste de pintura un 80%'),
('b4', 'Comedor 8 Puestos ', 156723, 'T1', 'Sin pintura el 70%'),
('b5', 'Mesitas de Noche ', 1023871564, 'T4', 'Rota un 50%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_comuna` int(10) NOT NULL,
  `nom_comuna` varchar(100) NOT NULL,
  `id_municipios` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_comuna`, `nom_comuna`, `id_municipios`) VALUES
(2, 'LEON 13', 1),
(3, 'despensa', 1),
(4, 'olivos 1 sector', 1),
(5, 'olivos 2 sector', 1),
(6, 'olivos 3 sector', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id_empresas` int(10) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `costo` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_depart` int(11) NOT NULL,
  `nom_departamento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_depart`, `nom_departamento`) VALUES
(1, 'CUNDINAMARCA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresas` int(10) NOT NULL,
  `cedula_propietario` varchar(100) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresas`, `cedula_propietario`, `nombre_empresa`, `pass`) VALUES
(1, '1012396933', 'Vargas muebles', '999999'),
(2, '1012396933', 'muebles y mas', '8888888'),
(3, '1012396933', 'restauracion  y mas', '7777777'),
(4, '1012396933', 'carpinteria la  mejor', '6666666'),
(5, '1012396933', 'carpinteria adsi', '5555555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envios` int(10) NOT NULL,
  `n_factura` int(10) NOT NULL,
  `id_transportadores` varchar(10) NOT NULL,
  `num_guia_ida` varchar(10) NOT NULL,
  `fecha_ida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_trasnportadora_vuelta` varchar(10) NOT NULL,
  `num_guia_vuelta` varchar(10) NOT NULL,
  `fecha_vuelta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envios`, `n_factura`, `id_transportadores`, `num_guia_ida`, `fecha_ida`, `id_trasnportadora_vuelta`, `num_guia_vuelta`, `fecha_vuelta`) VALUES
(1, 1, '1', 'G001', '2021-06-10 05:00:00', '1', 'GE01', '2021-06-18'),
(2, 2, '2', 'G002', '2021-06-12 05:00:00', '2', 'GE02', '2021-06-20'),
(3, 3, '3', 'G003', '2021-06-13 05:00:00', '3', 'GE03', '2021-06-21'),
(4, 4, '4', 'G004', '2021-06-13 05:00:00', '4', 'GE04', '2021-06-21'),
(5, 5, '5', 'G005', '2021-06-20 05:00:00', '5', 'GE05', '2021-06-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_bienes`
--

CREATE TABLE `evaluacion_bienes` (
  `id_evaluacion` int(10) NOT NULL,
  `id_empresas` int(10) NOT NULL,
  `id_bienes` varchar(10) NOT NULL,
  `detalle_del_servicio` varchar(100) NOT NULL,
  `cotizacion` decimal(20,2) NOT NULL,
  `calificacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `n_factura` int(10) NOT NULL,
  `id_empresas` int(10) NOT NULL,
  `id_usuarios` int(10) NOT NULL,
  `id_evaluacion` int(10) NOT NULL,
  `fec_emision` timestamp NOT NULL DEFAULT current_timestamp(),
  `fec_venc` date NOT NULL,
  `estado` enum('Abierta','Cerrada') NOT NULL DEFAULT 'Abierta',
  `valor_total` decimal(20,2) NOT NULL,
  `codigo_pago` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`n_factura`, `id_empresas`, `id_usuarios`, `id_evaluacion`, `fec_emision`, `fec_venc`, `estado`, `valor_total`, `codigo_pago`) VALUES
(1, 5, 8, 1, '2021-06-10 05:00:00', '2021-06-18', 'Cerrada', '300000.00', 1),
(2, 1, 5, 2, '2021-06-12 05:00:00', '2021-06-20', 'Cerrada', '452000.00', 2),
(3, 3, 3, 3, '2021-06-13 05:00:00', '2021-06-21', 'Cerrada', '158000.00', 3),
(4, 4, 4, 4, '2021-06-13 05:00:00', '2021-06-21', 'Cerrada', '67800.00', 4),
(5, 2, 7, 5, '2021-06-20 05:00:00', '2021-06-28', 'Abierta', '156000.00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id_imagen` int(10) NOT NULL,
  `imagen` varchar(10) NOT NULL,
  `id_bienes` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id_imagen`, `imagen`, `id_bienes`) VALUES
(1, 'IM.1', 'b1'),
(2, 'IM.2', 'b1'),
(3, 'IM.3', 'b3'),
(4, 'IM.4', 'b4'),
(5, 'IM.5', 'b5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos_de_pago`
--

CREATE TABLE `metodos_de_pago` (
  `codigo_pago` int(10) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metodos_de_pago`
--

INSERT INTO `metodos_de_pago` (`codigo_pago`, `tipo`, `descripcion`) VALUES
(1, 'Tarjeta Debito', 'Pago con cargo a un deposito bancario 	\r\n'),
(2, 'Daviplata', 'pago con un cargo  a un deposito dispuesto por la entidad davivienda'),
(3, 'Nequi', 'pago con cargo a un deposito dispuesto  por la entidad bancolombia	\r\n'),
(4, 'Nequi', 'pago con garco dispuesto por la entidad	\r\n'),
(5, 'Nequi', 'pago con garco dispuesto por la entidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_municipios` int(10) NOT NULL,
  `nom_municipio` varchar(100) NOT NULL,
  `id_depart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipios`, `nom_municipio`, `id_depart`) VALUES
(1, 'SOACHA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `cedula_propietario` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `barrio` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` int(100) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`cedula_propietario`, `nombre`, `apellido`, `barrio`, `direccion`, `correo`, `telefono`, `pass`) VALUES
('1012396933', 'paula ', 'vargas', 'leon 13', 'calla 49 n 9 n-99', 'tata@gmail.com', 7791511, '999999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(10) NOT NULL,
  `nom_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nom_rol`) VALUES
(1, 'Cliente'),
(2, 'Administrador del sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `n_factura` int(10) NOT NULL,
  `calificacion_envio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`n_factura`, `calificacion_envio`) VALUES
(1, 5),
(2, 2),
(3, 6),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_id`
--

CREATE TABLE `tipos_id` (
  `id_tipos` int(10) NOT NULL,
  `nom_tipo` varchar(10) NOT NULL,
  `descrip_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_id`
--

INSERT INTO `tipos_id` (`id_tipos`, `nom_tipo`, `descrip_tipo`) VALUES
(1, 'CC', 'cedula de ciudadania'),
(2, 'CE', 'cedula de extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_bienes`
--

CREATE TABLE `tipo_de_bienes` (
  `id_tipobien` varchar(10) NOT NULL,
  `tipo_bien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_de_bienes`
--

INSERT INTO `tipo_de_bienes` (`id_tipobien`, `tipo_bien`) VALUES
('T1', 'Comedores'),
('T2', 'Alcoba'),
('T3', 'Potrona'),
('T4', 'Mesita de Noche'),
('T5', 'Camas'),
('T6', 'Salas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transportadores`
--

CREATE TABLE `transportadores` (
  `id_transportadores` varchar(10) NOT NULL,
  `nom_transportadores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transportadores`
--

INSERT INTO `transportadores` (`id_transportadores`, `nom_transportadores`) VALUES
('1', 'Envia'),
('2', 'Colvanes'),
('3', 'TCC'),
('4', 'Servientrega'),
('5', 'Coltransportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(10) NOT NULL,
  `id_tipos` int(10) NOT NULL,
  `documento_usuarios` int(100) NOT NULL,
  `nombres_usuarios` varchar(100) NOT NULL,
  `apellidos_usuario` varchar(100) NOT NULL,
  `correo_usuario` varchar(100) NOT NULL,
  `telefono` int(100) NOT NULL,
  `pass_usuarios` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_municipios` int(10) NOT NULL,
  `id_rol` int(10) NOT NULL,
  `nom_comuna` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `id_tipos`, `documento_usuarios`, `nombres_usuarios`, `apellidos_usuario`, `correo_usuario`, `telefono`, `pass_usuarios`, `direccion`, `id_municipios`, `id_rol`, `nom_comuna`) VALUES
(3, 1, 19323534, 'Juan pablo', 'Doncel Loaiza', 'jpablo@gmail.com', 4002211, '67890', 'calle145 n 56b 13 sur', 1, 1, 'D2'),
(4, 1, 1023871520, 'Joseph Alejandro', 'Barrios pumarejo', 'joseph@gmail.com', 8765436, '98765', 'calle 89 n 98-76', 1, 1, 'D3'),
(5, 1, 57896354, 'Laura Daniela', 'Quiroga Mora', 'laura@gmail.com', 88009653, '19283', 'diag 9 n 9-99', 1, 1, 'D5'),
(6, 2, 213056, 'Cristian Camilo', 'Vargas Murillo', 'cristian@gmail.com', 5578890, '67588', 'calle 55 n 103-99', 1, 1, 'D4'),
(7, 2, 156723, 'Nohemy Lorena', 'Beltran Patiño', 'nohemy@gmail.com', 8132413, '12398', 'calle114 n 87-99', 1, 1, 'D2'),
(8, 1, 1023871564, 'Raquel', 'Lozano Lopez', 'raquel@gmail.com', 5631758, '89762', 'carrera 13 n 99-87', 1, 1, 'D3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD PRIMARY KEY (`id_bienes`),
  ADD KEY `documento_usuarios` (`documento_usuarios`),
  ADD KEY `id_tipobien` (`id_tipobien`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `id_municipios` (`id_municipios`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`id_empresas`,`correo`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `nombre_empresa` (`nombre_empresa`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_depart`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresas`),
  ADD UNIQUE KEY `nombre_empresa` (`nombre_empresa`),
  ADD KEY `cedula_propietario` (`cedula_propietario`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envios`),
  ADD KEY `id_transportadores` (`id_transportadores`),
  ADD KEY `n_factura` (`n_factura`);

--
-- Indices de la tabla `evaluacion_bienes`
--
ALTER TABLE `evaluacion_bienes`
  ADD PRIMARY KEY (`id_evaluacion`),
  ADD KEY `id_bienes` (`id_bienes`),
  ADD KEY `id_empresas` (`id_empresas`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`n_factura`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_evaluacion` (`id_evaluacion`),
  ADD KEY `codigo_pago` (`codigo_pago`),
  ADD KEY `id_empresas` (`id_empresas`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_bienes` (`id_bienes`);

--
-- Indices de la tabla `metodos_de_pago`
--
ALTER TABLE `metodos_de_pago`
  ADD PRIMARY KEY (`codigo_pago`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_municipios`),
  ADD KEY `id_depart` (`id_depart`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`cedula_propietario`),
  ADD UNIQUE KEY `pass` (`pass`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD KEY `n_factura` (`n_factura`);

--
-- Indices de la tabla `tipos_id`
--
ALTER TABLE `tipos_id`
  ADD PRIMARY KEY (`id_tipos`);

--
-- Indices de la tabla `tipo_de_bienes`
--
ALTER TABLE `tipo_de_bienes`
  ADD PRIMARY KEY (`id_tipobien`);

--
-- Indices de la tabla `transportadores`
--
ALTER TABLE `transportadores`
  ADD PRIMARY KEY (`id_transportadores`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`,`documento_usuarios`,`telefono`,`pass_usuarios`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `pass_usuarios` (`pass_usuarios`),
  ADD UNIQUE KEY `documento_usuarios` (`documento_usuarios`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_depart` (`nom_comuna`),
  ADD KEY `id_tipos` (`id_tipos`),
  ADD KEY `id_municipios` (`id_municipios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_comuna` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_depart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `evaluacion_bienes`
--
ALTER TABLE `evaluacion_bienes`
  MODIFY `id_evaluacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `n_factura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_imagen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `metodos_de_pago`
--
ALTER TABLE `metodos_de_pago`
  MODIFY `codigo_pago` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_municipios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bienes`
--
ALTER TABLE `bienes`
  ADD CONSTRAINT `bienes_ibfk_1` FOREIGN KEY (`documento_usuarios`) REFERENCES `usuarios` (`documento_usuarios`),
  ADD CONSTRAINT `bienes_ibfk_2` FOREIGN KEY (`id_tipobien`) REFERENCES `tipo_de_bienes` (`id_tipobien`);

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id_municipios`) REFERENCES `municipios` (`id_municipios`);

--
-- Filtros para la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD CONSTRAINT `cotizaciones_ibfk_1` FOREIGN KEY (`nombre_empresa`) REFERENCES `empresas` (`nombre_empresa`);

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`cedula_propietario`) REFERENCES `propietarios` (`cedula_propietario`);

--
-- Filtros para la tabla `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `envios_ibfk_2` FOREIGN KEY (`id_transportadores`) REFERENCES `transportadores` (`id_transportadores`),
  ADD CONSTRAINT `envios_ibfk_3` FOREIGN KEY (`n_factura`) REFERENCES `factura` (`n_factura`);

--
-- Filtros para la tabla `evaluacion_bienes`
--
ALTER TABLE `evaluacion_bienes`
  ADD CONSTRAINT `evaluacion_bienes_ibfk_2` FOREIGN KEY (`id_bienes`) REFERENCES `bienes` (`id_bienes`),
  ADD CONSTRAINT `evaluacion_bienes_ibfk_3` FOREIGN KEY (`id_evaluacion`) REFERENCES `factura` (`id_evaluacion`),
  ADD CONSTRAINT `evaluacion_bienes_ibfk_4` FOREIGN KEY (`id_empresas`) REFERENCES `empresas` (`id_empresas`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`codigo_pago`) REFERENCES `metodos_de_pago` (`codigo_pago`),
  ADD CONSTRAINT `factura_ibfk_5` FOREIGN KEY (`id_empresas`) REFERENCES `empresas` (`id_empresas`);

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`id_bienes`) REFERENCES `bienes` (`id_bienes`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_depart`) REFERENCES `departamentos` (`id_depart`);

--
-- Filtros para la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD CONSTRAINT `sugerencias_ibfk_1` FOREIGN KEY (`n_factura`) REFERENCES `factura` (`n_factura`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`id_tipos`) REFERENCES `tipos_id` (`id_tipos`),
  ADD CONSTRAINT `usuarios_ibfk_5` FOREIGN KEY (`id_municipios`) REFERENCES `municipios` (`id_municipios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
