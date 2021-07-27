-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-07-2021 a las 13:54:26
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tsieteco_ltg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int(250) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`) VALUES
(1, 'Español'),
(2, 'Ciencias Naturales'),
(3, 'Historia'),
(4, 'Geografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `id` int(250) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `descripcion_b` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`id`, `nombre`, `descripcion_b`) VALUES
(1, 'Bloque 1', 'Bloque 1'),
(2, 'Bloque 2', 'Bloque 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id` int(250) NOT NULL,
  `nombre_full` varchar(250) NOT NULL,
  `nombre_simp` varchar(250) NOT NULL,
  `img_horizontal` varchar(250) NOT NULL,
  `colortext` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id`, `nombre_full`, `nombre_simp`, `img_horizontal`, `colortext`, `icon`) VALUES
(1, 'Primer', '1er', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/libros_de_texto.png', 'deep-orange-text', 'edit'),
(2, 'Segundo', '2do', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/materiales_audiovisuales.png', 'pink-text', 'edit'),
(3, 'Tercer', '3er', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/ICON_periodos_lect.png', 'blue-text', 'edit'),
(4, 'Cuarto', '4to', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/tablero_didactico.png', 'green-text', 'edit'),
(5, 'Quinto', '5to', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/apuntes.png', 'red-text', 'edit'),
(6, 'Sexto', '6to', 'https://telesecundaria.sep.gob.mx/images/Docente/ilustraciones_colores/mapa_periodo_lectivo.png', 'purple-text', 'edit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(250) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(250) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nombre`) VALUES
(1, 'Preescolar'),
(2, 'Primaria'),
(3, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id` int(250) NOT NULL,
  `id_f_nivel` int(11) NOT NULL,
  `id_f_grado` int(11) NOT NULL,
  `id_f_asignatura` int(11) NOT NULL,
  `id_f_tipo` int(250) NOT NULL,
  `id_f_bloque` int(250) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `imagen_pre` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `descarga` varchar(500) NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id`, `id_f_nivel`, `id_f_grado`, `id_f_asignatura`, `id_f_tipo`, `id_f_bloque`, `nombre`, `imagen_pre`, `url`, `descarga`, `descripcion`, `orden`) VALUES
(2, 2, 4, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Ciencias/TS-LPA-CIENCIA-FIS-2-V1-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(5, 2, 6, 3, 2, 1, 'Tú Me Acostumbraste featuring Omara Portuondo (En Manos de Los Macorinos)', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B1/3.jpg', 'ud5mc__idFY', '', 'Natalia Lafourcade - Tú Me Acostumbraste', 1),
(13, 2, 6, 3, 2, 1, 'azuWords of Wonder', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B1/4.jpg', 'fCh0DO7_x14', '', 'asd', 2),
(14, 2, 4, 1, 2, 1, '1. La experiencia de ser adolescentes en la actualidad', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/1.jpg', 'ryjyaoFlFL0', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(15, 2, 6, 1, 2, 1, 'Guantanamera | Playing For Change | Song Around The World', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 'blUSVALW_Z4', '', 'We invite you to watch and enjoy another Song Around The World from our PFC 3 album, \"Guantanamera\". We started the song with Carlos Varela in Havana ', 2),
(16, 2, 4, 4, 2, 1, '1. Los mapas mentales', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/1.jpg', '7uOyvenj8mI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(17, 2, 6, 4, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_6to_primaria_1.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_6to_primaria_1.pdf', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(18, 2, 5, 3, 2, 1, '1.   Las diferentes versiones de la historia', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B1/1.jpg', 'A8w22oLpydE ', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/2/Historia/01_Las_diferentes_versiones_de_la_historia_1.mp4.zip', ' This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders ', 1),
(19, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Espanol/3_1.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(20, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Espanol/3_1_b2.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(21, 2, 4, 4, 1, 1, 'Ciencias Naturales, Biología ', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Espanol/TS-LPA-LMESP-2-VI-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/GEOGRAFIA/BLOQUE2/index.html', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 1),
(22, 2, 6, 3, 2, 1, 'Song Around The World', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B2/15.jpg', 'biGm7nUgisA', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(23, 2, 6, 3, 2, 1, 'Playing For Change', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B2/16.jpg', 'biGm7nUgisA', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(24, 2, 6, 3, 2, 1, 'Keith Richards', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B2/17.jpg', 'biGm7nUgisA', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(25, 2, 6, 3, 2, 1, 'Historia en el mundo', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G2/T2/A5/B2/18.jpg', 'biGm7nUgisA', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(26, 2, 4, 2, 1, 1, 'Ciencias Naturales, Biología ', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Historia/TS-LPA-HIST-2-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/GEOGRAFIA/BLOQUE2/index.html', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 1),
(28, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Matematicas/3_2_b2.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(29, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Maestro/Imagenes/3/Matematicas/TS-LPM-MATE-3.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(30, 2, 3, 3, 2, 1, '1. Dos siglos de historia a vuelo de pájaro', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/1.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(31, 2, 3, 3, 2, 1, '2. Una familia colonial', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/2.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(32, 2, 3, 3, 2, 1, '3. Valores de ayer y hoy', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/3.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(33, 2, 3, 3, 2, 1, '4. Un paisaje diferente', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/4.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(34, 2, 3, 3, 2, 1, '5. Una medida intolerable', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/6.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(35, 2, 3, 3, 2, 1, '7. Hay de burgueses a burgueses', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/7.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(36, 2, 3, 3, 3, 1, 'Entre burgueses y revolucionarios', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Historia/in-his1.png', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Historia/1_h01_b1_sp_burgueses/index.html', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(37, 2, 4, 4, 2, 1, '2. Mi libro de Geografía', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/2.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(38, 2, 4, 4, 2, 1, 'https://www.youtube.com/embed/MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/3.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(39, 2, 4, 4, 3, 1, 'México: zonas de sismicidad y vulcanismo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Geografia/zona.PNG', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Geografia/1_g03_b1_s06_sismicidad/index.html', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(40, 2, 4, 1, 2, 1, '2. Los subgéneros narrativos II: el cuento policiaco', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/2.jpg', 'KGlUFRoy5fo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(41, 2, 4, 1, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_3ro_primaria_1.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_3ro_primaria_1.pdf', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(42, 2, 4, 1, 4, 1, 'Cierra los ojos', 'http://librosdelrincon.sep.gob.mx/assets/img/cierra.png', 'http://librosdelrincon.sep.gob.mx/capsulas-radiofonicas/cierra-los-ojos/', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(43, 2, 5, 3, 4, 1, 'Frijoles saltarines', 'http://librosdelrincon.sep.gob.mx/assets/img/frijol_audio.png', 'http://librosdelrincon.sep.gob.mx/capsulas-radiofonicas/frijoles-y-saltarines/', '', ' This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders ', 1),
(44, 2, 5, 2, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_3ro_primaria_2.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_4to_primaria_1.pdf', '', ' This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders ', 1),
(45, 2, 5, 3, 2, 1, '1. Dos siglos de historia a vuelo de pájaro', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/1.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(46, 2, 5, 3, 2, 1, '2. Una familia colonial', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/2.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(47, 2, 5, 2, 2, 1, '3. Valores de ayer y hoy', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/3.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(48, 2, 5, 3, 2, 1, '4. Un paisaje diferente', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/4.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(49, 2, 6, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Ciencias/TS-LPA-CIENCIA-FIS-2-V1-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(50, 2, 6, 1, 2, 1, '1. La experiencia de ser adolescentes en la actualidad', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/1.jpg', 'ryjyaoFlFL0', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(51, 2, 6, 1, 2, 1, '1. Los mapas mentales', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/1.jpg', '7uOyvenj8mI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(52, 2, 6, 1, 1, 1, 'Ciencias Naturales, Biología ', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Espanol/TS-LPA-LMESP-2-VI-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/GEOGRAFIA/BLOQUE2/index.html', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 1),
(53, 2, 6, 1, 1, 1, 'Ciencias Naturales, Biología ', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/2/Historia/TS-LPA-HIST-2-BAJA.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/GEOGRAFIA/BLOQUE2/index.html', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg', 1),
(54, 2, 6, 1, 2, 1, '2. Mi libro de Geografía', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/2.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(55, 2, 6, 1, 2, 1, 'Mi libro de Geografía', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/3.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(56, 2, 6, 1, 3, 1, 'México: zonas de sismicidad y vulcanismo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Geografia/zona.PNG', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Geografia/1_g03_b1_s06_sismicidad/index.html', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(57, 2, 6, 1, 2, 1, '2. Los subgéneros narrativos II: el cuento policiaco', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/2.jpg', 'KGlUFRoy5fo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(58, 2, 6, 1, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_3ro_primaria_1.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_3ro_primaria_1.pdf', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(59, 2, 6, 1, 4, 1, 'Cierra los ojos', 'http://librosdelrincon.sep.gob.mx/assets/img/cierra.png', 'http://librosdelrincon.sep.gob.mx/capsulas-radiofonicas/cierra-los-ojos/', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(66, 2, 6, 2, 2, 1, '1. Dos siglos de historia a vuelo de pájaro', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/1.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(67, 2, 6, 2, 2, 1, '2. Una familia colonial', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/2.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(68, 2, 6, 2, 2, 1, '3. Valores de ayer y hoy', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/3.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(69, 2, 6, 2, 2, 1, '4. Un paisaje diferente', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/4.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(70, 2, 6, 2, 2, 1, '5. Una medida intolerable', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/6.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(71, 2, 6, 2, 2, 1, '7. Hay de burgueses a burgueses', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/7.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(72, 2, 6, 2, 3, 1, 'Entre burgueses y revolucionarios', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Historia/in-his1.png', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Historia/1_h01_b1_sp_burgueses/index.html', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(73, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Espanol/3_1.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(74, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Espanol/3_1_b2.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(75, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Alumno/Imagenes/3/Matematicas/3_2_b2.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(76, 2, 3, 1, 1, 1, 'Lengua Materna. Español', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Maestro/Imagenes/3/Matematicas/TS-LPM-MATE-3.png', 'https://telesecundaria.sep.gob.mx/LDI_TS/Alumno/1/MATEMATICAS/BLOQUE2/index.html', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 'https://loremflickr.com/cache/resized/defaultImage.small_600_400_nofilter.jpg', 1),
(77, 2, 4, 1, 2, 1, '1. La experiencia de ser adolescentes en la actualidad', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/1.jpg', 'ryjyaoFlFL0', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(78, 2, 4, 1, 2, 1, '2. Los subgéneros narrativos II: el cuento policiaco', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/2.jpg', 'KGlUFRoy5fo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(79, 2, 4, 1, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_3ro_primaria_1.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_3ro_primaria_1.pdf', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(80, 2, 4, 1, 4, 1, 'Cierra los ojos', 'http://librosdelrincon.sep.gob.mx/assets/img/cierra.png', 'http://librosdelrincon.sep.gob.mx/capsulas-radiofonicas/cierra-los-ojos/', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(81, 2, 4, 1, 2, 1, '1. La experiencia de ser adolescentes en la actualidad', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/1.jpg', 'ryjyaoFlFL0', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(82, 2, 4, 1, 2, 1, '2. Los subgéneros narrativos II: el cuento policiaco', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A1/B1/2.jpg', 'KGlUFRoy5fo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(83, 2, 4, 1, 5, 1, 'Camino de Lectura', 'http://librosdelrincon.sep.gob.mx/assets/img/Camino_de_lectura_3ro_primaria_1.png', 'http://librosdelrincon.sep.gob.mx/assets/pdf/03-Alumno/Caminos-lectura/Camino_de_lectura_3ro_primaria_1.pdf', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(84, 2, 4, 1, 4, 1, 'Cierra los ojos', 'http://librosdelrincon.sep.gob.mx/assets/img/cierra.png', 'http://librosdelrincon.sep.gob.mx/capsulas-radiofonicas/cierra-los-ojos/', '', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(85, 2, 4, 4, 2, 1, '1. Los mapas mentales', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/1.jpg', '7uOyvenj8mI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(86, 2, 4, 4, 2, 1, '2. Mi libro de Geografía', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/2.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(87, 2, 4, 4, 2, 1, 'https://www.youtube.com/embed/MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/3.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(88, 2, 4, 4, 3, 1, 'México: zonas de sismicidad y vulcanismo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Geografia/zona.PNG', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Geografia/1_g03_b1_s06_sismicidad/index.html', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(89, 2, 4, 4, 2, 1, '1. Los mapas mentales', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/1.jpg', '7uOyvenj8mI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(90, 2, 4, 4, 2, 1, '2. Mi libro de Geografía', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/2.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(91, 2, 4, 4, 2, 1, 'https://www.youtube.com/embed/MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A4/B1/3.jpg', 'MwslQJiN4QI', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(92, 2, 4, 4, 3, 1, 'México: zonas de sismicidad y vulcanismo', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Geografia/zona.PNG', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Geografia/1_g03_b1_s06_sismicidad/index.html', '', 'This song reached the masses from the Buena Vista Social Club project and I have heard so many variations and versions performed around the world ever since.  We decided to create our own version while on a trip recording and filming music in Cuba in 2015.  The Legendary Pancho Amat on the Cuban tres along with the incredible piano playing of Roberto Carcasses set the framework for this song, and then once we heard Teté Garcia Caturla sing lead vocals we realized exactly why we do what we do.  Listen to how well Cuba, the USA, and the Middle East all get along when the music plays. - Mark Johnson, PFC producer and co-founders', 2),
(93, 2, 5, 2, 2, 1, '1. Dos siglos de historia a vuelo de pájaro', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/1.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(94, 2, 5, 3, 2, 1, '2. Una familia colonial', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/2.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(95, 2, 5, 3, 2, 1, '3. Valores de ayer y hoy', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/3.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(96, 2, 5, 2, 2, 1, '4. Un paisaje diferente', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/4.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(97, 2, 5, 3, 2, 1, '5. Una medida intolerable', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/6.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(98, 2, 5, 3, 2, 1, '7. Hay de burgueses a burgueses', 'https://telesecundaria.sep.gob.mx/images/audiovisuales/G1/T2/A5/B1/7.jpg', 'ocyxUOJyyZk', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Videos/1/Geografia/2_Mi_libro_de_Geografia.mp4.zip', 'From BMI\'s \"Hola Fall\" event on October ', 2),
(99, 2, 5, 2, 3, 1, 'Entre burgueses y revolucionarios', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Imagenes/1/Historia/in-his1.png', 'https://telesecundaria.sep.gob.mx/Content/Repositorio/Informaticos/Alumno/Material/1/Historia/1_h01_b1_sp_burgueses/index.html', '', 'From BMI\'s \"Hola Fall\" event on October ', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_rec_met`
--

CREATE TABLE `relacion_rec_met` (
  `id` int(250) NOT NULL,
  `id_f_recurso` int(250) NOT NULL,
  `id_f_metadato` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_recurso`
--

CREATE TABLE `tipo_recurso` (
  `id` int(250) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `descripcion_t` text NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_recurso`
--

INSERT INTO `tipo_recurso` (`id`, `nombre`, `descripcion_t`, `icon`) VALUES
(1, 'Libro Texto Gratuito', 'Libro de Texto Gratuito digital con todos los materiales informáticos y audiovisuales existentes en la Página', 'book'),
(2, 'Video', 'Video', 'video'),
(3, 'Informático ', 'Interactivo informático', 'gamepad'),
(4, 'Audio', 'Capsulas radiofónicas', 'music'),
(5, 'Documento', 'Documentos relacionados con la materia', 'file'),
(6, 'Enlace Externo', 'Información de terceros relacionada con la materia', 'link');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_f_tipo` (`id_f_tipo`,`id_f_bloque`),
  ADD KEY `id_f_asignatura` (`id_f_asignatura`),
  ADD KEY `id_f_bloque` (`id_f_bloque`),
  ADD KEY `recursos_ibfk_4` (`id_f_nivel`),
  ADD KEY `recursos_ibfk_5` (`id_f_grado`);

--
-- Indices de la tabla `relacion_rec_met`
--
ALTER TABLE `relacion_rec_met`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_f_recurso` (`id_f_recurso`,`id_f_metadato`),
  ADD KEY `id_f_metadato` (`id_f_metadato`);

--
-- Indices de la tabla `tipo_recurso`
--
ALTER TABLE `tipo_recurso`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `relacion_rec_met`
--
ALTER TABLE `relacion_rec_met`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_recurso`
--
ALTER TABLE `tipo_recurso`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `recursos_ibfk_1` FOREIGN KEY (`id_f_asignatura`) REFERENCES `asignatura` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recursos_ibfk_2` FOREIGN KEY (`id_f_bloque`) REFERENCES `bloque` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recursos_ibfk_3` FOREIGN KEY (`id_f_tipo`) REFERENCES `tipo_recurso` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recursos_ibfk_4` FOREIGN KEY (`id_f_nivel`) REFERENCES `nivel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recursos_ibfk_5` FOREIGN KEY (`id_f_grado`) REFERENCES `grado` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_rec_met`
--
ALTER TABLE `relacion_rec_met`
  ADD CONSTRAINT `relacion_rec_met_ibfk_1` FOREIGN KEY (`id_f_metadato`) REFERENCES `metadatos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_rec_met_ibfk_2` FOREIGN KEY (`id_f_recurso`) REFERENCES `recursos` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
