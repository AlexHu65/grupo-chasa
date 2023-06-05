-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2020 a las 01:21:43
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_grupochasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` int(11) DEFAULT NULL,
  `contenido` int(11) DEFAULT NULL,
  `bullet` int(11) DEFAULT NULL,
  `img` int(11) DEFAULT NULL,
  `img_mobile` int(11) DEFAULT NULL,
  `fecha` date DEFAULT current_timestamp(),
  `autor` int(11) DEFAULT NULL,
  `slug` int(11) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `programacion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_categoria`
--

CREATE TABLE `articulo_categoria` (
  `id_articulo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bannersinteriores`
--

CREATE TABLE `bannersinteriores` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_mob` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bannersinteriores`
--

INSERT INTO `bannersinteriores` (`id`, `img`, `img_mob`, `link`, `activo`, `created_at`, `updated_at`, `deleted_at`, `orden`, `titulo`, `subtitle`, `texto_link`) VALUES
(1, 'bannersinteriores\\April2020\\GeIec8OOkkbkzcxbLDFI.jpg', NULL, NULL, 1, '2020-04-25 00:58:00', '2020-04-28 00:55:59', NULL, 1, 'SEGURO DE VIDA', 'Cuidar de ti es cuidar de los tuyos', 'Dale tranquilidad a tu familia »'),
(2, 'bannersinteriores\\April2020\\wIMA2Gn1wITyLE7crNu0.jpg', NULL, NULL, 1, '2020-04-25 01:37:00', '2020-04-28 00:55:53', NULL, NULL, 'SEGURO DE AUTO', 'Tu mejor aliado al volante', 'Cuida tu patrimonio de daños »'),
(3, 'bannersinteriores\\April2020\\RGJQGjzfmqh3BQK1VhUI.jpg', NULL, NULL, 1, '2020-04-25 01:38:00', '2020-04-28 00:55:47', NULL, NULL, 'SEGURO DE GASTOS MÉDICOS', 'Tu bienestar es primero', 'Protege tu salud y cuida tu economía »');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `color`, `slug`, `activo`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adicciones', 'Existen varios tipos de adicciones. <br> <strong>Identifica la tuya</strong>', '#a2bd3a', 'adicciones', 1, 'categorias\\March2020\\X4i976Q1Es59Kda7mjdj.png', '2020-03-18 00:30:08', '2020-03-18 00:30:08', NULL),
(2, 'Suicidio', '<p>Esa no es la soluci&oacute;n.&nbsp;</p>\r\n<p><strong>Encuentra la motivaci&oacute;n.</strong></p>', '#c22d7e', 'suicidio', 1, 'categorias\\March2020\\COwTiU9JDa8Bpf51WSGB.png', '2020-03-18 00:33:38', '2020-03-18 00:33:38', NULL),
(3, 'Salud mental', '<p>Te podemos escuchar, <strong>siempre </strong></p>\r\n<p><strong>que lo desees.</strong></p>', '#5997d2', 'salud-mental', 1, 'categorias\\March2020\\Pz8uj0D9s7Bvwut5Jpe8.png', '2020-03-18 00:36:36', '2020-03-18 00:36:36', NULL),
(4, 'Violencia', '<p>Eres el &uacute;nico due&ntilde;o de tu cuerpo,&nbsp;<strong>no te dejes</strong></p>\r\n<p><strong>lastimar.</strong></p>', '#ce6d20', 'violencia', 1, 'categorias\\March2020\\dTwTZQV3fMUidqG0zP1E.png', '2020-03-18 00:41:42', '2020-03-18 00:41:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(112, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 19, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 19, 'apellido', 'text', 'Apellido', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 19, 'resena', 'rich_text_box', 'Reseña', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 19, 'foto', 'image', 'Foto', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"698\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(117, 19, 'miniatura', 'image', 'Miniatura (250 x 350)', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"250\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(118, 19, 'puesto', 'text', 'Puesto', 1, 1, 1, 1, 1, 1, '{}', 7),
(119, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(120, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(121, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(122, 19, 'sorpresa', 'checkbox', 'Sorpresa', 0, 1, 1, 1, 1, 1, '{}', 11),
(133, 19, 'sorpresa_date', 'timestamp', 'Sorpresa Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(134, 19, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 13),
(135, 19, 'placeholder_img', 'image', 'Placeholder Img', 0, 1, 1, 1, 1, 1, '{}', 14),
(136, 19, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 15),
(138, 19, 'espaciado', 'checkbox', 'Espaciado (Para mover la card del ponente 50 pixeles)', 1, 1, 1, 1, 1, 1, '{}', 16),
(160, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 23, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(162, 23, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(163, 23, 'fecha_inicio', 'timestamp', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, '{}', 4),
(164, 23, 'fecha_final', 'timestamp', 'Fecha Final', 0, 1, 1, 1, 1, 1, '{}', 5),
(165, 23, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 6),
(166, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(167, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(168, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(169, 23, 'conferencia_belongstomany_ponente_relationship', 'relationship', 'ponentes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Ponente\",\"table\":\"ponentes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"conferencia_ponente\",\"pivot\":\"1\",\"taggable\":\"0\"}', 10),
(170, 19, 'visible_ponente', 'checkbox', 'Visible Ponente', 0, 1, 1, 1, 1, 1, '{}', 17),
(182, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(183, 26, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(184, 26, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"450\",\"height\":\"450\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(185, 26, 'fogo_2020', 'checkbox', 'Fogo 2020', 0, 1, 1, 1, 1, 1, '{}', 4),
(186, 26, 'fogo_2019', 'checkbox', 'Fogo 2019', 0, 1, 1, 1, 1, 1, '{}', 5),
(187, 26, 'fogo_2018', 'checkbox', 'Fogo 2018', 0, 1, 1, 1, 1, 1, '{}', 6),
(188, 26, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 7),
(189, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(190, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(191, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(192, 26, 'link', 'text', 'Link a la nota', 0, 1, 1, 1, 1, 1, '{}', 11),
(193, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(194, 27, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(195, 27, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"450\",\"height\":\"450\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(196, 27, 'fogo_2020', 'checkbox', 'Fogo 2020', 0, 1, 1, 1, 1, 1, '{}', 4),
(197, 27, 'fogo_2019', 'checkbox', 'Fogo 2019', 0, 1, 1, 1, 1, 1, '{}', 5),
(198, 27, 'fogo_2018', 'checkbox', 'Fogo 2018', 0, 1, 1, 1, 1, 1, '{}', 6),
(199, 27, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 7),
(200, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(201, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(202, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(203, 27, 'link', 'text', 'Link a la nota', 0, 1, 1, 1, 1, 1, '{}', 11),
(204, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(205, 28, 'nombre', 'text', 'Nombre', 0, 1, 1, 0, 0, 0, '{}', 2),
(206, 28, 'empresa', 'text', 'Empresa', 0, 1, 1, 0, 0, 0, '{}', 3),
(207, 28, 'giro_empresa', 'text', 'Giro Empresa', 0, 1, 1, 0, 0, 0, '{}', 4),
(208, 28, 'cargo', 'text', 'Cargo', 0, 1, 1, 0, 0, 0, '{}', 5),
(209, 28, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 0, '{}', 6),
(210, 28, 'telefono', 'text', 'Telefono', 0, 1, 1, 0, 0, 0, '{}', 7),
(211, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(212, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(213, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(214, 28, 'mensaje', 'text', 'Mensaje', 0, 1, 1, 0, 0, 0, '{}', 11),
(215, 26, 'subtitulo', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 12),
(216, 26, 'bullet', 'text', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 13),
(217, 19, 'orden', 'number', 'Orden de aparición', 0, 1, 1, 1, 1, 1, '{}', 18),
(218, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(219, 30, 'img', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(220, 30, 'img_mob', 'image', 'Banner Movil', 0, 1, 1, 1, 1, 1, '{}', 3),
(221, 30, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 4),
(222, 30, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":\"true\"}', 5),
(223, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(224, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(225, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(226, 30, 'orden', 'number', 'Orden de aparición', 0, 1, 1, 1, 1, 1, '{\"step\":1,\"min\":1,\"max\":10}', 9),
(227, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 31, 'nombre', 'text', 'Nombre de la categoría', 0, 1, 1, 1, 1, 1, '{}', 2),
(229, 31, 'descripcion', 'rich_text_box', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(230, 31, 'color', 'color', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(231, 31, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 5),
(232, 31, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 6),
(233, 31, 'img', 'image', 'Ícono', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"114\",\"height\":\"114\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(234, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(235, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(236, 31, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(237, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(238, 35, 'id_categoria', 'text', 'Id Categoria', 0, 1, 1, 1, 1, 1, '{}', 2),
(239, 35, 'titulo', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 3),
(240, 35, 'contenido', 'rich_text_box', 'Contenido', 0, 1, 1, 1, 1, 1, '{}', 4),
(241, 35, 'bullet', 'text', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 5),
(242, 35, 'img', 'image', 'Miniatura', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(243, 35, 'img_mobile', 'image', 'Miniatura móvil', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(244, 35, 'fecha', 'text', 'Fecha de publicación', 0, 0, 0, 0, 0, 0, '{}', 8),
(245, 35, 'autor', 'text', 'Autor', 0, 1, 1, 1, 1, 1, '{}', 9),
(246, 35, 'slug', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 10),
(247, 35, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 11),
(248, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(249, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(250, 35, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(251, 35, 'articulo_hasone_categoria_relationship', 'relationship', 'Categorías', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"id_categoria\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(252, 35, 'programacion', 'timestamp', 'Programar fecha de publicación', 0, 1, 1, 1, 1, 1, '{}', 15),
(253, 35, 'articulo_belongsto_user_relationship', 'relationship', 'Autor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"autor\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(254, 30, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 10),
(255, 30, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 11),
(256, 30, 'texto_link', 'text', 'Texto Link', 0, 1, 1, 1, 1, 1, '{}', 12),
(257, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(258, 38, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(259, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(260, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(261, 38, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(262, 38, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 6),
(263, 38, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":\"true\"}', 7),
(264, 38, 'orden', 'number', 'Orden', 0, 1, 1, 1, 1, 1, '{\"step\":1,\"min\":1,\"max\":10}', 8),
(265, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(266, 39, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(267, 39, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1250\",\"height\":null},\"quality\":\"60%\",\"upsize\":true}', 3),
(268, 39, 'banner_mov', 'image', 'Banner Movil', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"320\",\"height\":null},\"quality\":\"60%\",\"upsize\":true}', 4),
(269, 39, 'bullet', 'rich_text_box', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 5),
(270, 39, 'descripcion', 'rich_text_box', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 6),
(271, 39, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":true}', 7),
(272, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(273, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(274, 39, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(275, 39, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 11),
(276, 39, 'menu', 'text', 'Menu', 0, 1, 1, 1, 1, 1, '{}', 12),
(277, 39, 'orden', 'number', 'Orden', 0, 1, 1, 1, 1, 1, '{}', 13),
(278, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(279, 40, 'id_seccion', 'text', 'Id Seccion', 0, 1, 1, 1, 1, 1, '{}', 2),
(280, 40, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 3),
(281, 40, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1250\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}', 4),
(282, 40, 'banner_mov', 'image', 'Banner Móvil', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"320\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}', 5),
(283, 40, 'bullet', 'rich_text_box', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 6),
(284, 40, 'bullet2', 'rich_text_box', 'Bullet2', 0, 1, 1, 1, 1, 1, '{}', 7),
(285, 40, 'descripcion', 'rich_text_box', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 8),
(286, 40, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 9),
(287, 40, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":true}', 10),
(288, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(289, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(290, 40, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 13),
(291, 40, 'seguro_belongsto_seccione_relationship', 'relationship', 'Sección', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seccione\",\"table\":\"secciones\",\"type\":\"belongsTo\",\"column\":\"id_seccion\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(292, 40, 'menu', 'text', 'Menú', 0, 1, 1, 1, 1, 1, '{}', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(28, 'mensajes', 'mensajes', 'Mensaje', 'Mensajes', NULL, 'App\\Models\\Mensaje', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-14 22:12:15', '2020-02-14 23:05:22'),
(30, 'bannersinteriores', 'bannersinteriores', 'Banner Interior', 'Banners Interiores', 'voyager-window-list', 'App\\Models\\BannersInteriore', NULL, NULL, 'Bread para los banners interiores', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 03:41:09', '2020-04-25 01:24:13'),
(31, 'categorias', 'categorias', 'Categoría', 'Categorías', 'voyager-list', 'App\\Models\\Categoria', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 04:13:25', '2020-03-18 00:31:07'),
(35, 'articulos', 'articulos', 'Artículo', 'Artículos', 'voyager-window-list', 'App\\Models\\Articulo', NULL, NULL, 'Artículos para dinamicamente', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"titulo\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-18 01:21:47', '2020-03-18 02:55:28'),
(38, 'servicios', 'servicios', 'Servicio', 'Servicios', NULL, 'App\\Models\\Servicios', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-28 01:37:33', '2020-04-28 01:59:08'),
(39, 'secciones', 'secciones', 'Seccion', 'Secciones', 'voyager-window-list', 'App\\Models\\Seccione', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-05-24 19:17:45', '2020-05-25 03:07:56'),
(40, 'seguros', 'seguros', 'Seguro', 'Seguros', 'voyager-window-list', 'App\\Models\\Seguro', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-25 00:53:11', '2020-05-25 01:33:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giro_empresa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-19 07:06:43', '2020-01-19 07:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2020-01-19 07:06:43', '2020-03-14 02:54:32', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-01-19 07:06:43', '2020-04-28 01:20:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2020-01-19 07:06:43', '2020-03-14 03:48:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-01-19 07:06:43', '2020-03-14 03:49:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-19 07:06:43', '2020-04-28 01:20:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-01-19 07:06:43', '2020-04-28 01:20:13', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.hooks', NULL),
(32, 1, 'Mensajes', '', '_self', 'voyager-mail', '#000000', NULL, 8, '2020-02-14 22:12:16', '2020-04-28 01:20:13', 'voyager.mensajes.index', 'null'),
(33, 2, 'Ponentes', 'ponentes', '_self', 'voyager-star', '#ff0080', NULL, 1, '2020-02-20 09:18:28', '2020-02-20 09:20:07', NULL, ''),
(34, 2, 'Noticias', 'noticias', '_self', 'voyager-news', '#0000ff', NULL, 3, '2020-02-20 09:19:01', '2020-02-20 09:20:28', NULL, ''),
(35, 2, 'Mensajes', 'mensajes', '_self', NULL, '#800040', NULL, 4, '2020-02-20 09:19:58', '2020-02-20 09:20:28', NULL, ''),
(36, 2, 'Conferencias', 'conferencias', '_self', 'voyager-study', '#000000', NULL, 2, '2020-02-20 09:20:23', '2020-02-20 09:20:28', NULL, ''),
(37, 1, 'Banners Interiores', '', '_self', 'voyager-window-list', '#000000', 38, 1, '2020-03-14 03:41:09', '2020-03-14 03:46:55', 'voyager.bannersinteriores.index', 'null'),
(38, 1, 'Banners', '', '_self', 'voyager-photo', '#000000', NULL, 4, '2020-03-14 03:42:48', '2020-03-14 03:49:11', NULL, ''),
(39, 1, 'Artículos', '', '_self', 'voyager-treasure-open', '#000000', NULL, 6, '2020-03-14 04:09:37', '2020-04-28 01:20:13', NULL, ''),
(40, 1, 'Categorías', '', '_self', 'voyager-list', '#000000', 39, 2, '2020-03-14 04:13:25', '2020-03-18 02:02:22', 'voyager.categorias.index', 'null'),
(41, 1, 'Artículos', '', '_self', 'voyager-window-list', '#000000', 39, 1, '2020-03-18 01:21:48', '2020-03-18 02:03:07', 'voyager.articulos.index', 'null'),
(42, 1, 'Servicios', '', '_self', 'voyager-credit-cards', '#000000', NULL, 5, '2020-04-28 01:17:08', '2020-04-28 01:35:17', NULL, ''),
(44, 1, 'Servicios', '', '_self', NULL, NULL, 42, 1, '2020-04-28 01:37:33', '2020-04-28 01:39:47', 'voyager.servicios.index', NULL),
(45, 1, 'Secciones', '', '_self', 'voyager-window-list', NULL, NULL, 11, '2020-05-24 19:17:46', '2020-05-24 19:17:46', 'voyager.secciones.index', NULL),
(46, 1, 'Seguros', '', '_self', 'voyager-window-list', NULL, NULL, 12, '2020-05-25 00:53:11', '2020-05-25 00:53:11', 'voyager.seguros.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'browse_bread', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(3, 'browse_database', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(4, 'browse_media', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(5, 'browse_compass', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(6, 'browse_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(7, 'read_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(8, 'edit_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(9, 'add_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(10, 'delete_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(11, 'browse_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(12, 'read_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(13, 'edit_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(14, 'add_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(15, 'delete_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(16, 'browse_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(17, 'read_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(18, 'edit_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(19, 'add_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(20, 'delete_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(21, 'browse_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(22, 'read_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(23, 'edit_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(24, 'add_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(25, 'delete_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(26, 'browse_hooks', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(127, 'browse_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(128, 'read_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(129, 'edit_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(130, 'add_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(131, 'delete_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(132, 'browse_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(133, 'read_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(134, 'edit_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(135, 'add_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(136, 'delete_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(137, 'browse_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(138, 'read_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(139, 'edit_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(140, 'add_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(141, 'delete_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(142, 'browse_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(143, 'read_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(144, 'edit_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(145, 'add_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(146, 'delete_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(147, 'browse_servicios', 'servicios', '2020-04-28 01:37:33', '2020-04-28 01:37:33'),
(148, 'read_servicios', 'servicios', '2020-04-28 01:37:33', '2020-04-28 01:37:33'),
(149, 'edit_servicios', 'servicios', '2020-04-28 01:37:33', '2020-04-28 01:37:33'),
(150, 'add_servicios', 'servicios', '2020-04-28 01:37:33', '2020-04-28 01:37:33'),
(151, 'delete_servicios', 'servicios', '2020-04-28 01:37:33', '2020-04-28 01:37:33'),
(152, 'browse_secciones', 'secciones', '2020-05-24 19:17:46', '2020-05-24 19:17:46'),
(153, 'read_secciones', 'secciones', '2020-05-24 19:17:46', '2020-05-24 19:17:46'),
(154, 'edit_secciones', 'secciones', '2020-05-24 19:17:46', '2020-05-24 19:17:46'),
(155, 'add_secciones', 'secciones', '2020-05-24 19:17:46', '2020-05-24 19:17:46'),
(156, 'delete_secciones', 'secciones', '2020-05-24 19:17:46', '2020-05-24 19:17:46'),
(157, 'browse_seguros', 'seguros', '2020-05-25 00:53:11', '2020-05-25 00:53:11'),
(158, 'read_seguros', 'seguros', '2020-05-25 00:53:11', '2020-05-25 00:53:11'),
(159, 'edit_seguros', 'seguros', '2020-05-25 00:53:11', '2020-05-25 00:53:11'),
(160, 'add_seguros', 'seguros', '2020-05-25 00:53:11', '2020-05-25 00:53:11'),
(161, 'delete_seguros', 'seguros', '2020-05-25 00:53:11', '2020-05-25 00:53:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(1, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(122, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4),
(131, 4),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'user', 'Normal User', '2020-01-19 07:06:43', '2020-01-19 07:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_mov` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`, `banner`, `banner_mov`, `bullet`, `descripcion`, `activo`, `created_at`, `updated_at`, `deleted_at`, `slug`, `menu`, `orden`) VALUES
(1, 'SEGUROS PARA PERSONAS', 'secciones\\May2020\\PEr3QJcwpgsmClp33j6c.png', 'secciones\\May2020\\Kc29VFbhop6oUO7eHKih.png', 'La inversión que te da tranquilidad', '<p><strong>Un seguro es un respaldo econ&oacute;mico en caso de alg&uacute;n percance</strong><br />o enfermedad, nos brinda el bienestar que buscamos.</p>', 1, '2020-05-24 19:25:00', '2020-05-24 20:20:05', NULL, 'seguros-para-personas', 'Personas', 1),
(2, 'SEGUROS PARA EMPRESAS', 'secciones\\May2020\\W1oL1M9uyKS0Ixzgz99s.png', 'secciones\\May2020\\mzFoXxBk4rcWZ9ubsV79.png', '<p>Cuidamos tus activos mientras<br />te ocupas de hacer negocios</p>', '<p><strong>Un seguro para tu negocio siempre es costeable,</strong><br />enfrentar un siniestro sin seguro nunca lo ser&aacute;.</p>', 1, '2020-05-24 20:33:00', '2020-05-25 03:11:05', NULL, 'seguros-para-empresas', 'Empresas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE `seguros` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_mov` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullet2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seguros`
--

INSERT INTO `seguros` (`id`, `id_seccion`, `nombre`, `banner`, `banner_mov`, `bullet`, `bullet2`, `descripcion`, `slug`, `activo`, `created_at`, `updated_at`, `deleted_at`, `menu`) VALUES
(1, 1, 'SEGURO DE AHORRO', 'seguros\\May2020\\Z1jtFgC85hy6ffk98UOF.png', 'seguros\\May2020\\qZMVHx4x5p38yl77gN6u.png', '<p>Tu futuro <strong>empieza hoy</strong></p>', '<p>Establece un plan financiero y garantiza tu futuro durante el retiro</p>', '<p>&iquest;Sab&iacute;as que&nbsp; una persona que se jubila con el esquema de Afores s&oacute;lo recibir&aacute; entre 20% y 25%</p>\r\n<p>de su &uacute;ltimo sueldo como pensi&oacute;n? Por ello es importante elaborar una estrategia&nbsp; en nuestras finanzas</p>\r\n<p>personales para tener un <strong>plan de ahorro para el retiro.</strong>&nbsp;</p>', 'seguro-de-ahorro', 1, '2020-05-25 01:36:00', '2020-05-25 04:14:18', NULL, 'Ahorro'),
(2, 1, 'SEGURO RESIDENCIAL', 'seguros\\May2020\\UF4uQyCP2XFfos9QV8Qp.png', 'seguros\\May2020\\Q2S2yTnNnrVIu4OFVptl.png', '<p>Asegura tu casa por menos de lo que pagas en tu seguro de auto</p>', '<p>Tu hogar es el centro de tu paz y seguridad, cu&iacute;dalo</p>', '<p>Tu hogar es m&aacute;s que una estructura, es el lugar donde se desarrolla tu vida y la de tu familia</p>', 'seguro-residencial', 1, '2020-05-25 02:03:01', '2020-05-25 02:03:01', NULL, 'Residencial'),
(3, 1, 'SEGURO PARA LA EDUCACIÓN', 'seguros\\May2020\\iYIvtoVSS8yvuIm8CsEw.png', 'seguros\\May2020\\geWiQ8v6D1QRR517TzU9.png', '<p><strong>Ahorra</strong> hoy y dales la seguridad de un ma&ntilde;ana</p>', '<p>Construye el patrimonio que asegurar&aacute; la educaci&oacute;n de tus hijos</p>', '<p>Generalmente, los j&oacute;venes se enfrentan al dif&iacute;cil escenario de tomar un cr&eacute;dito para seguir con sus estudios por lo que</p>\r\n<p>ya ven comprometida su seguridad econ&oacute;mica. Asegura la educaci&oacute;n superior de tus hijas o hijos con a&ntilde;os de anticipaci&oacute;n.</p>', 'seguro-para-la-educacion', 1, '2020-05-25 02:06:29', '2020-05-25 02:06:29', NULL, 'Educación'),
(4, 1, 'SEGURO DE INVERSIÓN', 'seguros\\May2020\\CjFXvpcoo04WBfdpQpXb.png', 'seguros\\May2020\\f77GT3M88CDRYOMlTNSf.png', '<p><strong>Invierte</strong> en el futuro que siempre has so&ntilde;ado</p>', '<p>La estrategia que va m&aacute;s all&aacute; del ahorro</p>', '<p>Para tu retiro, disfruta de un estilo de vida confortable ahorrando hoy sin sacrificar tu presente.</p>\r\n<p>Asegura tu dinero con la ventaja de darle un rendimiento a trav&eacute;s de los a&ntilde;os.</p>', 'seguro-de-inversion', 1, '2020-05-25 02:09:59', '2020-05-25 02:09:59', NULL, 'Inversión'),
(5, 1, 'SEGURO DE VIDA', 'seguros\\May2020\\OuHwoRd6t57BuYarbJZM.png', 'seguros\\May2020\\LbyfZQDUxXUVsXqNUvkX.png', '<p>Protegiendo sus sue&ntilde;os</p>', '<p>Dale a tu familia la tranquilidad que se merece</p>', '<p>La protecci&oacute;n que brinda el seguro de vida es b&aacute;sica para la tranquilidad de una persona,</p>\r\n<p>ya que te permite hacer planes y compromisos a futuro, sin poner en riesgo la integridad financiera de la familia.</p>', 'seguro-de-vida', 1, '2020-05-25 02:15:22', '2020-05-25 02:15:22', NULL, 'Vida'),
(6, 1, 'SEGURO DE GASTOS MÉDICOS', 'seguros\\May2020\\hY5CFQAxOQqdvf2hKOxf.png', 'seguros\\May2020\\AgGjCSpWxyFQR1pbLS2O.png', '<p><strong>Cuida</strong> de tu salud y de tu econom&iacute;a ante un imprevisto</p>', '<p>Cuenta con un respaldo econ&oacute;mico cuando necesites atenci&oacute;n m&eacute;dica</p>', '<p>El ser humano est&aacute; propenso a accidentes y enfermedades de todo tipo. Atenderse podr&iacute;a poner en riesgo nuestras</p>\r\n<p>finanzas por lo que contar con un programa que cubra estas eventualidades nos ayudar&iacute;a a solventar los fuertes</p>\r\n<p>gastos hospitalarios y m&eacute;dicos que se requieren para recuperar la salud.</p>', 'seguro-de-gastos-medicos', 1, '2020-05-25 02:18:08', '2020-05-25 02:18:08', NULL, 'Gastos Médicos'),
(7, 1, 'SEGURO DE AUTO', 'seguros\\May2020\\PdcAsFKoqMSYyOIdg2ko.png', 'seguros\\May2020\\Cid3fxvJZK7UOXSolXd2.png', '<p>Tu <strong>mejor aliado</strong> al volante <br />Cuida tu patrimonio de da&ntilde;os</p>', '<p>Nuestra amplia experiencia nos permite brindar los mejores paquetes</p>', '<p>de coberturas para todo tipo de veh&iacute;culos, incluyendo Autos y Pickups de Uso Particular</p>\r\n<p>y comercial as&iacute; como servicio p&uacute;blico y de pasajeros.</p>', 'seguro-de-auto', 1, '2020-05-25 02:21:00', '2020-05-25 03:05:18', NULL, 'Auto'),
(8, 2, 'SEGURO DE COMERCIO', 'seguros\\May2020\\zRmlDlrlFQ9XYPXbnLHh.png', 'seguros\\May2020\\6H5XoEp4cJPnK2Qh6q6q.png', '<p>Tu negocio es &uacute;nico, <strong>cuida</strong> las ganancias que genera</p>', '<p>Tu solo oc&uacute;pate de hacer crecer tu negocio</p>', '<p>Las micro y peque&ntilde;as empresas generan el 72% de empleo y el 52% del PIB en M&eacute;xico, sin embargo</p>\r\n<p>solo un 10% de estos negocios se encuentran asegurados. Protege tu negocio de un incendio, una explosi&oacute;n,</p>\r\n<p>da&ntilde;os por agua o robo; evita una p&eacute;rdida irreversible a causa de un siniestro.&nbsp;</p>', 'seguro-de-comercio', 1, '2020-05-25 03:14:29', '2020-05-25 03:14:29', NULL, 'Comercio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `created_at`, `updated_at`, `deleted_at`, `img`, `activo`, `orden`) VALUES
(1, 'SEGURO DE AHORRO', '2020-04-28 01:45:00', '2020-04-28 01:59:24', NULL, 'servicios\\April2020\\Gjv7pM0JkBikBHq5fZVn.jpg', 1, 1),
(2, 'SEGURO DE INVERSION', '2020-04-28 01:45:00', '2020-04-28 01:59:34', NULL, 'servicios\\April2020\\wEfx8iify3QdjNuIgh4s.jpg', 1, 2),
(3, 'SEGUROS PARA PERSONAS', '2020-04-28 01:46:00', '2020-04-28 01:59:46', NULL, 'servicios\\April2020\\mcxGjg7yJH5dIhSGGiVf.jpg', 1, 3),
(4, 'SEGUROS PARA EMPRESAS', '2020-04-28 01:46:00', '2020-04-28 01:59:52', NULL, 'servicios\\April2020\\sgdB5pgxbIFOofIk4jtf.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'PLANTILLA DFX', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2020\\liz9Cbva8lnIiuhOXINb.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2020\\aG0J6h8DEgQTahGhZBxs.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'PLANTILLA DFX', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'http://difraxion.com', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2020\\TeDfQ3I9KdaQqbwOLeDy.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2020\\ViUQ6pWOl76YV3AE1Puq.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.facebook', 'Facebook', NULL, NULL, 'text', 6, 'Site'),
(12, 'site.instagram', 'Instagram', NULL, NULL, 'text', 7, 'Site'),
(14, 'site.twitter', 'Twitter', NULL, NULL, 'text', 8, 'Site'),
(15, 'site.linkedin', 'linkedin', NULL, NULL, 'text', 9, 'Site'),
(16, 'site.youtube', 'YouTube', NULL, NULL, 'text', 10, 'Site'),
(18, 'site.whatsapp', 'Whatsapp', NULL, NULL, 'text', 11, 'Site'),
(19, 'site.facebookid', 'Identificador de Facebook (Chat)', NULL, NULL, 'text', 12, 'Site'),
(20, 'site.recaptcha', 'Recaptcha', NULL, NULL, 'text', 13, 'Site'),
(21, 'site.correo', 'Correo de contacto', 'grupochasa@gmail.com', NULL, 'text', 14, 'Site'),
(22, 'site.telefono', 'Teléfono de contacto', '473521223', NULL, 'text', 15, 'Site'),
(23, 'site.principal', 'Dirección principal', 'Pedregal #136. Jardines del Moral León, Gto. Lunes a Viernes de 8:30 hrs - 18:30 hrs.', NULL, 'text', 16, 'Site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-01-19 07:10:39', '2020-01-19 07:10:39'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-01-19 07:10:39', '2020-01-19 07:10:39'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-01-19 07:10:39', '2020-01-19 07:10:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'DFX Admin', 'alejandro@difraxion.com', 'users\\March2020\\Pj4IuQbJqbtZ5hqolfLH.png', NULL, '$2y$10$mvl4r9eRwm9WUKBxcLPOpuKUeNd/YAzVpE00o65/V9hHKgPg0W3.S', 'KZYiizkPQToaYMlXGMcctk4mjJJL457vMWMWkSATclgPjDvkygpYQsldFCjJ', '{\"locale\":\"es\"}', '2020-01-19 07:10:38', '2020-03-14 02:28:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_themes`
--

CREATE TABLE `voyager_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_theme_options`
--

CREATE TABLE `voyager_theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `voyager_theme_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bannersinteriores`
--
ALTER TABLE `bannersinteriores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguros`
--
ALTER TABLE `seguros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voyager_themes_folder_unique` (`folder`);

--
-- Indices de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyager_theme_options_voyager_theme_id_index` (`voyager_theme_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bannersinteriores`
--
ALTER TABLE `bannersinteriores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguros`
--
ALTER TABLE `seguros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD CONSTRAINT `voyager_theme_options_voyager_theme_id_foreign` FOREIGN KEY (`voyager_theme_id`) REFERENCES `voyager_themes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
