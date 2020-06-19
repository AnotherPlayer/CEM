-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2020 a las 20:04:16
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursos_map`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'cxcxc', 1, '2020-06-14 11:39:06', '2020-06-14 11:39:06'),
(2, 2, 'cxcxc', 1, '2020-06-14 11:39:16', '2020-06-14 11:39:16'),
(3, 2, 'sdsd', 0, '2020-06-14 11:39:16', '2020-06-14 11:39:16'),
(4, 2, 'cxxcxc', 0, '2020-06-14 11:39:16', '2020-06-14 11:39:16'),
(5, 2, 'cxcx', 1, '2020-06-14 11:39:16', '2020-06-14 11:39:16'),
(6, 3, 'Es una ciencia natural', 1, '2020-06-14 12:06:49', '2020-06-14 12:06:49'),
(7, 3, 'Ciencia exacta', 0, '2020-06-14 12:06:49', '2020-06-14 12:06:49'),
(8, 3, 'No se sabe', 0, '2020-06-14 12:06:49', '2020-06-14 12:06:49'),
(9, 3, 'Ninguna de las anteriores', 0, '2020-06-14 12:06:49', '2020-06-14 12:06:49'),
(10, 4, 'No sé joven', 0, '2020-06-14 12:07:33', '2020-06-14 12:07:33'),
(11, 4, 'Es una ciencia natural', 1, '2020-06-14 12:07:33', '2020-06-14 12:07:33'),
(12, 4, 'Podría ser', 0, '2020-06-14 12:07:34', '2020-06-14 12:07:34'),
(13, 4, 'dsdsdd', 0, '2020-06-14 12:07:34', '2020-06-14 12:07:34'),
(14, 6, 's', 0, '2020-06-14 12:53:55', '2020-06-14 12:53:55'),
(15, 6, 'd', 0, '2020-06-14 12:53:55', '2020-06-14 12:53:55'),
(16, 6, 'd', 0, '2020-06-14 12:53:56', '2020-06-14 12:53:56'),
(17, 6, 's', 0, '2020-06-14 12:53:56', '2020-06-14 12:53:56'),
(18, 7, 'fdfd', 0, '2020-06-15 00:06:27', '2020-06-15 00:06:27'),
(19, 7, 'fdfd', 0, '2020-06-15 00:06:27', '2020-06-15 00:06:27'),
(20, 7, 'fdf', 0, '2020-06-15 00:06:27', '2020-06-15 00:06:27'),
(21, 7, 'fdf', 0, '2020-06-15 00:06:27', '2020-06-15 00:06:27'),
(22, 8, 'no esta definida', 0, '2020-06-15 07:56:08', '2020-06-15 07:56:08'),
(23, 8, 'uno', 0, '2020-06-15 07:56:08', '2020-06-15 07:56:08'),
(24, 8, 'igual a la constante', 0, '2020-06-15 07:56:08', '2020-06-15 07:56:08'),
(25, 8, 'cero', 1, '2020-06-15 07:56:08', '2020-06-15 07:56:08'),
(30, 10, 'Stokes', 0, '2020-06-19 11:18:29', '2020-06-19 11:18:29'),
(31, 10, 'Green', 1, '2020-06-19 11:18:29', '2020-06-19 11:18:29'),
(32, 10, 'La Place', 0, '2020-06-19 11:18:29', '2020-06-19 11:18:29'),
(33, 10, 'Series de fourier', 0, '2020-06-19 11:18:29', '2020-06-19 11:18:29'),
(34, 11, 'Doble', 1, '2020-06-19 11:18:54', '2020-06-19 11:18:54'),
(35, 11, 'Impropia', 0, '2020-06-19 11:18:54', '2020-06-19 11:18:54'),
(36, 11, 'Propia', 0, '2020-06-19 11:18:54', '2020-06-19 11:18:54'),
(37, 11, 'Triple', 0, '2020-06-19 11:18:54', '2020-06-19 11:18:54'),
(38, 12, 'Stokes', 0, '2020-06-19 22:37:21', '2020-06-19 22:37:21'),
(39, 12, 'Green', 1, '2020-06-19 22:37:21', '2020-06-19 22:37:21'),
(40, 12, 'La Place', 0, '2020-06-19 22:37:21', '2020-06-19 22:37:21'),
(41, 12, 'Series de fourier', 0, '2020-06-19 22:37:21', '2020-06-19 22:37:21'),
(42, 13, 'Doble', 1, '2020-06-19 22:37:46', '2020-06-19 22:37:46'),
(43, 13, 'Impropia', 0, '2020-06-19 22:37:46', '2020-06-19 22:37:46'),
(44, 13, 'Propia', 0, '2020-06-19 22:37:47', '2020-06-19 22:37:47'),
(45, 13, 'Triple', 0, '2020-06-19 22:37:47', '2020-06-19 22:37:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Cálculo Integral', 'una integral es una generalización de la suma de infinitos sumandos.', NULL, '2020-06-15 23:33:54'),
(7, 'Cálculo Diferencial', 'El cálculo diferencial es una parte del cálculo infinitesimal y del análisis matemático que estudia cómo cambian las funciones continuas según sus variables cambian de estado', NULL, '2020-06-15 23:33:10'),
(8, 'Ecuaciones Diferenciales', 'Es una ecuación matemática que relaciona una función con sus derivadas', NULL, '2020-06-15 23:33:23'),
(9, 'Cálculo Vectorial', 'Es el análisis real multivariable de vectores en 2 o más dimensiones.', NULL, NULL),
(10, 'Álgebra Básica', 'Conceptos básicos de álgebra, que es una de la ramas principales de las matemáticas.', NULL, '2020-06-19 09:14:15'),
(22, 'Métodos Numéricos', 'Diseñar algoritmos para simular aproximaciones de solución a problemas en análisis matemático', '2020-06-19 22:31:27', '2020-06-19 22:31:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `previous_approved` tinyint(1) NOT NULL DEFAULT 0,
  `previous_rejected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `teacher_id`, `category_id`, `level_id`, `name`, `description`, `youtube_url`, `slug`, `picture`, `status`, `previous_approved`, `previous_rejected`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 6, 10, 1, 'Álgebra Básica', 'Para trabajar en álgebra son necesarios ciertos conocimientos previos sobre operatoria en Números Enteros y Números Racionales. También deben conocerse las propiedades de las potencias.\r\n\r\nLos ejercicios deben desarrollarse de acuerdo a las operatorias que se realicen. Se pueden restar o sumar términos semejantes, multiplicar expresiones algebraicas o bien simplificarlas..', 'https://www.youtube.com/embed/videoseries?list=PLxRzOq2BmDkoUSZKzx3Gh8iqQDsKJnOEv', 'algebra-basica', 'DUga14MokhHI1Gypi0Yf55OVM22g3BFtoUQhuzqx.jpeg', '3', 1, 1, '2020-06-15 07:18:21', '2020-06-19 22:28:04', NULL),
(16, 6, 8, 3, 'Ecuaciones Diferenciales', 'Una ecuación diferencial (ED) es una ecuación que relaciona de manera no trivial a una función desconocida y una o más derivadas de esta función desconocida con respecto a una o más variables independientes. Si la función desconocida depende de una sola variable la ecuación diferencial se llama ordinaria , por el contrario, si depende de más de una variable, se llama parcial .', 'https://www.youtube.com/embed/videoseries?list=PLxRzOq2BmDkoS_NQZ8DDC7_HF4_Qojajf', 'ecuaciones-diferenciales', 'gyxKqX3dTZz5RFEfR4PcHSkkCmLIcRBtTRyh5uym.jpeg', '1', 1, 1, '2020-06-15 07:44:35', '2020-06-19 06:52:09', NULL),
(31, 11, 9, 2, 'Cálculo Vectorial', 'El cálculo vectorial es un campo de las matemáticas referidas al análisis real \r\nmultivariable de vectores en 2 o más dimensiones. Es un enfoque de la geometría diferencial como conjunto \r\nde fórmulas y técnicas para solucionar problemas muy útiles para la ingeniería y la física.', 'https://www.youtube.com/embed/videoseries?list=PLd2N8M5m6-aCDd1dGNVKTpBvZfSl-tsFK', 'calculo-vectorial', 'rZwfX67mck337gVyeW3Ccl253tOQx7hT7LFjw1Ah.jpeg', '1', 1, 0, '2020-06-19 22:35:03', '2020-06-19 22:38:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `course_student`
--

INSERT INTO `course_student` (`course_id`, `student_id`) VALUES
(7, 13),
(3, 15),
(7, 13),
(7, 13),
(16, 23),
(31, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionarios`
--

CREATE TABLE `cuestionarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuestionarios`
--

INSERT INTO `cuestionarios` (`id`, `questionnaire_id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'teacher', '2020-06-14 12:01:19', '2020-06-14 12:01:19'),
(2, 2, 15, 'teacher', '2020-06-14 12:01:49', '2020-06-14 12:01:49'),
(3, 3, 15, 'teacher', '2020-06-14 12:07:44', '2020-06-14 12:07:44'),
(4, 10, 24, 'Juan Carlos', '2020-06-19 11:19:08', '2020-06-19 11:19:08'),
(5, 10, 24, 'Juan Carlos', '2020-06-19 11:19:15', '2020-06-19 11:19:15');

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
-- Estructura de tabla para la tabla `goals`
--

CREATE TABLE `goals` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `goal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `goals`
--

INSERT INTO `goals` (`id`, `course_id`, `goal`, `created_at`, `updated_at`) VALUES
(59, 16, 'Podrá desarrollar ejercicios aplicadaos a casos de la vida cotidiana', '2020-06-19 06:56:43', '2020-06-19 06:56:43'),
(66, 31, 'Que el estudiante conozca las aplicaciones del calculo vectorial', '2020-06-19 22:35:58', '2020-06-19 22:35:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `levels`
--

INSERT INTO `levels` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Beginner', 'Nivel Principiante', '2020-06-13 09:28:45', '2020-06-13 09:28:45'),
(2, 'Intermediate', 'Nivel Intermedio', '2020-06-13 09:28:45', '2020-06-13 09:28:45'),
(3, 'Advanced', 'Nivel Avanzado', '2020-06-13 09:28:45', '2020-06-13 09:28:45');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_04_001245_create_teachers_table', 1),
(5, '2020_05_04_001845_create_students_table', 1),
(6, '2020_05_04_002103_create_levels_table', 1),
(7, '2020_05_04_002317_create_categories_table', 1),
(8, '2020_05_04_002423_create_courses_table', 1),
(9, '2020_05_04_002945_create_reviews_table', 1),
(10, '2020_05_04_003225_create_table_course_student', 1),
(11, '2020_05_04_003521_create_requirements_table', 1),
(12, '2020_05_04_003601_create_goals_table', 1),
(13, '2020_06_06_233251_create_questionnaires_table', 1),
(14, '2020_06_08_203338_create_questions_table', 1),
(15, '2020_06_08_203528_create_answers_table', 1),
(16, '2020_06_10_012321_create_cuestionarios_table', 1),
(17, '2020_06_10_012559_create_respuestas_table', 1);

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
-- Estructura de tabla para la tabla `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `user_id`, `title`, `purpose`, `created_at`, `updated_at`) VALUES
(7, 16, 'Cálculo Integral', 'Examen diagnóstico Cálculo Integral', '2020-06-15 07:53:25', '2020-06-15 07:53:25'),
(11, 24, 'EXAMEN DIAGNÓSTICO DE CÁLCULO VECTORIAL', 'Conocer nivel de complejidad del alumno para realizar ejercicios', '2020-06-19 22:36:42', '2020-06-19 22:36:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `questionnaire_id`, `question`, `created_at`, `updated_at`) VALUES
(3, 3, '¿Qué significa la Física?', '2020-06-14 12:06:49', '2020-06-14 12:06:49'),
(4, 3, '¿Qué significa la Ciencia?', '2020-06-14 12:07:33', '2020-06-14 12:07:33'),
(8, 7, '¿Cuál es la derivada de una constante?', '2020-06-15 07:56:08', '2020-06-15 07:56:08'),
(10, 10, 'Relación entre una integral de línea alrededor de una curva cerrado simple C y una integral doble sobre la región  plana D limitada por C. ¿A qué teorema corresponde?', '2020-06-19 11:18:29', '2020-06-19 11:18:29'),
(11, 10, 'Es un tipo de integral definida aplicada a funciones de más de una variable real.¿ A qué teorema corresponde?', '2020-06-19 11:18:54', '2020-06-19 11:18:54'),
(12, 11, 'Relación entre una integral de línea alrededor de una curva cerrado simple C y una integral doble sobre la región  plana D limitada por C. ¿A qué teorema corresponde?', '2020-06-19 22:37:21', '2020-06-19 22:37:21'),
(13, 11, 'Es un tipo de integral definida aplicada a funciones de más de una variable real.¿ A qué teorema corresponde?', '2020-06-19 22:37:46', '2020-06-19 22:37:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requirements`
--

CREATE TABLE `requirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `requirement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `requirements`
--

INSERT INTO `requirements` (`id`, `course_id`, `requirement`, `created_at`, `updated_at`) VALUES
(34, 13, 'Conocimientos básicos de aritmética', '2020-06-15 07:18:21', '2020-06-15 07:18:21'),
(37, 16, 'Necesitas saber álgebra básica nivel medio, trigonometría (identidades trigonométricas), calculo diferencial e integral', '2020-06-15 07:44:35', '2020-06-19 06:57:43'),
(63, 31, 'cálculo diferencial, integral, multivariable', '2020-06-19 22:35:04', '2020-06-19 22:35:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuestionario_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `cuestionario_id`, `question_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(5, 4, 10, 30, '2020-06-19 11:19:08', '2020-06-19 11:19:08'),
(6, 4, 11, 36, '2020-06-19 11:19:08', '2020-06-19 11:19:08'),
(7, 5, 10, 30, '2020-06-19 11:19:15', '2020-06-19 11:19:15'),
(8, 5, 11, 34, '2020-06-19 11:19:15', '2020-06-19 11:19:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre del rol de usuario',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Podrar controlar todo lo requerente a la plataforma de cursos', '2020-06-13 09:23:20', '2020-06-13 09:23:20'),
(2, 'teacher', 'Podrá crear cursos y exámenes de prueba', '2020-06-13 09:23:20', '2020-06-13 09:23:20'),
(3, 'student', 'Podrá tomar cursos, ver su perfil', '2020-06-13 09:23:20', '2020-06-13 09:23:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hand Sewer', '2020-06-13 09:23:42', '2020-06-13 09:23:42'),
(2, 2, 'Clergy', '2020-06-13 09:24:31', '2020-06-13 09:24:31'),
(3, 3, 'Photographic Process Worker', '2020-06-13 09:26:36', '2020-06-13 09:26:36'),
(4, 4, 'Receptionist and Information Clerk', '2020-06-13 09:26:36', '2020-06-13 09:26:36'),
(5, 5, 'Packaging Machine Operator', '2020-06-13 09:26:36', '2020-06-13 09:26:36'),
(6, 6, 'Ambulance Driver', '2020-06-13 09:26:36', '2020-06-13 09:26:36'),
(9, 9, 'Illustrator', '2020-06-13 09:28:44', '2020-06-13 09:28:44'),
(10, 10, 'Tax Examiner', '2020-06-13 09:28:44', '2020-06-13 09:28:44'),
(13, 13, NULL, '2020-06-13 09:36:55', '2020-06-13 09:36:55'),
(15, 15, NULL, '2020-06-13 09:37:43', '2020-06-13 09:37:43'),
(21, 21, NULL, '2020-06-16 12:51:47', '2020-06-16 12:51:47'),
(23, 23, NULL, '2020-06-19 07:45:37', '2020-06-19 07:45:37'),
(24, 24, NULL, '2020-06-19 07:51:46', '2020-06-19 07:51:46'),
(26, 26, NULL, '2020-06-19 10:52:23', '2020-06-19 10:52:23'),
(27, 27, NULL, '2020-06-19 21:25:08', '2020-06-19 21:25:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `title`, `biography`, `website_url`, `created_at`, `updated_at`) VALUES
(6, 15, NULL, NULL, NULL, '2020-06-13 09:42:25', '2020-06-13 09:42:25'),
(11, 24, NULL, NULL, NULL, '2020-06-19 07:52:15', '2020-06-19 07:52:15'),
(12, 26, NULL, NULL, NULL, '2020-06-19 10:59:53', '2020-06-19 10:59:53'),
(13, 13, NULL, NULL, NULL, '2020-06-19 22:26:04', '2020-06-19 22:26:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `last_name`, `slug`, `email`, `password`, `picture`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 1, 'Jaylin Gutkowski', 'Dicki', 'jaylin-gutkowski-dicki', 'jerel.ondricka@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '54d1eeb3faac71b582fa15eda7829d38.jpg', NULL, NULL, NULL, NULL, 'ovn8HZw6po', '2020-06-13 09:28:44', '2020-06-13 09:28:44'),
(10, 1, 'Karlie Greenholt', 'Marvin', 'karlie-greenholt-marvin', 'rschimmel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8e9958396d41c9018ede22e30bb342dd.jpg', NULL, NULL, NULL, NULL, 'YnLklwsSRa', '2020-06-13 09:28:44', '2020-06-13 09:28:44'),
(13, 2, 'José Villanueva', NULL, 'jose-villanueva', 'al049738@uacam.mx', '$2y$10$1rEkZ7Wc462zrleunU7/SOC9YDhgAfEvuY5A6zu/bZLgHA.RTuFU6', NULL, 'cus_HSOQDeNQmRTglA', NULL, NULL, NULL, 'zTpcU4gUmLz31bbHHoVrrS4ilynIMeGOB5Do1F6GuSimRMY9qyxFaxjwQTgl', '2020-06-13 09:36:55', '2020-06-19 22:26:04'),
(15, 2, 'Jesús Antonio', NULL, 'teacher', 'teacher_cem@gmail.com', '$2y$10$vM92Nq73v4dz2O0.P0v9Uea2V9M4e0KC/94D76ADUSeGiPt4xpyLi', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-13 09:37:42', '2020-06-13 09:37:42'),
(21, 3, 'Carlos Escalante', NULL, 'carlos-escalante', 'escalante2020@gmail.com', '$2y$10$jEhHIclCz6MF5jxy6x4bneXdHzM7do9gNHEyIqpEiCdoZ5JpLZ3pq', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-16 12:51:47', '2020-06-16 12:52:46'),
(23, 1, 'Administrador Cem', NULL, 'administrador-cem', 'cem.asesorias2020@gmail.com', '$2y$10$TeKNslpP.g16/tpF3WKc..90klyGa2rD0Jf1.dY/BuwdV9MsqF5/a', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19 07:45:37', '2020-06-19 07:45:37'),
(24, 2, 'Juan Carlos', NULL, 'juan-carlos', 'teachercem2020@gmail.com', '$2y$10$KkQgyUTaRyA/RK8YFuqDde4.hfMCQV957JaVDg7FhXcU9RQb4fFqS', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19 07:51:46', '2020-06-19 07:52:15'),
(26, 3, 'Test Student', NULL, 'test-student', 'student_cem@gmail.com', '$2y$10$4A7x1euATmuIZ7BH.pOXv.fzNVyBszczCBIol4EgqXDCo7k7RLoZW', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19 10:52:23', '2020-06-19 10:59:53'),
(27, 3, 'Felipe López', NULL, 'felipe-lopez', 'feliptest20@gmail.com', '$2y$10$og5aWGueCTAAmWRpxbKr2emDn.tHj8rJhAi1LBE9N8YqNinn4p5cm', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19 21:25:08', '2020-06-19 21:25:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_social_accounts`
--

CREATE TABLE `user_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_teacher_id_foreign` (`teacher_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`);

--
-- Indices de la tabla `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indices de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goals_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requirements_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_social_accounts`
--
ALTER TABLE `user_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_social_accounts_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `user_social_accounts`
--
ALTER TABLE `user_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_social_accounts`
--
ALTER TABLE `user_social_accounts`
  ADD CONSTRAINT `user_social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
