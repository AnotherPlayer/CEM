-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2020 a las 01:05:54
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
(1, 'AMAZON WEB SERVICES', 'Quia doloribus similique rerum sapiente.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(2, 'SERVIDORES', 'Quo magnam est natus illo.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(3, 'DISEÑO WEB', 'Unde omnis doloremque distinctio quia ipsam quaerat.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(4, 'NOSQL', 'Eum non quia error.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(5, 'MYSQL', 'Voluptate eveniet similique nihil ipsam.', '2020-05-18 01:41:50', '2020-05-18 01:41:50');

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

INSERT INTO `courses` (`id`, `teacher_id`, `category_id`, `level_id`, `name`, `description`, `slug`, `picture`, `status`, `previous_approved`, `previous_rejected`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, 'Omnis magnam ut voluptas alias facere.', 'Quo saepe pariatur vel cum placeat non. Nesciunt ipsa cumque qui nobis voluptatem vero. Vero dicta ut aut modi.', 'omnis-magnam-ut-voluptas-alias-facere', '2d5f427b8992c2de5bef568ee8f170bc.jpg', '3', 0, 1, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(2, 1, 1, 2, 'Sequi et blanditiis et enim vel.', 'Est repellendus enim odio in cupiditate aut inventore vitae. Voluptatem et officiis velit quam. Enim doloremque molestiae in voluptas nulla. Qui explicabo praesentium libero sit quasi omnis.', 'sequi-et-blanditiis-et-enim-vel', '4f80a6b3f2259caff5dbcd8f1e931cc6.jpg', '1', 1, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(3, 1, 1, 1, 'Amet veniam quibusdam possimus veniam voluptas totam corrupti.', 'Ea voluptas hic qui quia quis possimus impedit. Laborum ut recusandae repellat placeat corporis. Et id labore explicabo consequuntur. Maxime laudantium incidunt et sapiente.', 'amet-veniam-quibusdam-possimus-veniam-voluptas-totam-corrupti', 'e352883d42abc806c1edf082c6bd1cf6.jpg', '2', 0, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(4, 10, 5, 3, 'Non maxime animi tempore cumque.', 'Optio aut velit eveniet similique architecto optio. Autem explicabo unde quia. Id soluta aut aut consequatur at voluptatem ad. Iusto exercitationem voluptate ex quo. Qui laborum sed reiciendis.', 'non-maxime-animi-tempore-cumque', 'a9bef54f6e7adef346f1657736c9c334.jpg', '3', 0, 1, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(5, 9, 2, 1, 'Voluptatem animi voluptatem laborum eaque sed.', 'Qui cupiditate ut nihil minus qui est ut. Autem et odio itaque provident ea fuga vel. Necessitatibus possimus velit iure aperiam est quod ex. Voluptatem ducimus distinctio ut ab.', 'voluptatem-animi-voluptatem-laborum-eaque-sed', 'e1ef1b2ba1d3cbbce137764442319f76.jpg', '2', 0, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(6, 7, 1, 3, 'Esse quidem inventore distinctio dignissimos.', 'Delectus qui id aperiam et. Neque possimus amet nobis eos. Necessitatibus exercitationem assumenda quia optio dolor doloribus facilis. Possimus inventore aut sit.', 'esse-quidem-inventore-distinctio-dignissimos', '8461f13ccfa22d29683a733eb3999421.jpg', '2', 0, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(7, 9, 3, 1, 'Doloremque sit laudantium nostrum odio.', 'Aut cum aliquam quos. Pariatur voluptatem soluta et fuga debitis cupiditate. Aut quis ut sed eos praesentium. Nisi voluptas quis voluptatem perferendis voluptate nihil.', 'doloremque-sit-laudantium-nostrum-odio', 'd801021a9570b9809835239cba2d6931.jpg', '2', 0, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(8, 2, 1, 2, 'Ducimus distinctio architecto sit vel debitis consectetur.', 'Consequuntur eos sint atque dolore. Aliquam et vitae in. Deserunt repellat et enim quia cum qui reprehenderit. Optio blanditiis et rerum est eveniet laboriosam.', 'ducimus-distinctio-architecto-sit-vel-debitis-consectetur', '48f8adc38d53d2028140f42b10dc5778.jpg', '2', 0, 0, '2020-05-18 01:43:40', '2020-05-18 01:43:40', NULL),
(9, 5, 1, 1, 'Aperiam rerum eum perspiciatis ducimus est sed.', 'Eum hic laudantium quos quo. Autem cum impedit et unde dolorum. Et aliquid sapiente dignissimos eaque. Quia ut quia quos quo.', 'aperiam-rerum-eum-perspiciatis-ducimus-est-sed', '527abed53e7d6b74c6302929a6691cd8.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(10, 6, 4, 3, 'Delectus aut ipsa quas dolorem corrupti.', 'Et ut ducimus quibusdam minus cumque deleniti ut maxime. Laborum suscipit aut adipisci quas dolore.', 'delectus-aut-ipsa-quas-dolorem-corrupti', 'edac1547e61d6983b38b08692e411cc0.jpg', '3', 0, 1, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(11, 10, 4, 3, 'Soluta recusandae architecto facilis repellat voluptatem quia.', 'Qui deserunt odio assumenda. Vel fuga ducimus ut quas odio enim aut.', 'soluta-recusandae-architecto-facilis-repellat-voluptatem-quia', 'cfb02b99e2155a3a3e7211f6e29593ca.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(12, 8, 1, 3, 'Et totam et et eos.', 'Optio et atque et quam unde. Perspiciatis aut facere molestias culpa qui rerum. Ipsam at excepturi doloremque nulla. Sit dolores nobis odit.', 'et-totam-et-et-eos', '890c60369b62e91d48383983c188efe1.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(13, 2, 1, 1, 'Et aut laudantium et possimus id quo.', 'Enim quasi fuga officiis repudiandae aut error dolorem. Libero debitis sint quae ipsum molestiae itaque cumque. Quisquam rerum aut sapiente mollitia consequuntur esse.', 'et-aut-laudantium-et-possimus-id-quo', '3ec880ea677b65944b6c4eb16af2c886.jpg', '3', 0, 1, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(14, 3, 5, 3, 'Doloremque et laborum perspiciatis ipsam.', 'Impedit sed corrupti quidem ea. Earum sed rerum suscipit eligendi nobis recusandae.', 'doloremque-et-laborum-perspiciatis-ipsam', '354080277abf088e7c26bca7fec0bb95.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(15, 1, 2, 2, 'Alias inventore odio ipsam quas aut officia voluptatem.', 'Quia quam laboriosam praesentium maiores aspernatur cumque. Qui cum quaerat sed quod perspiciatis.', 'alias-inventore-odio-ipsam-quas-aut-officia-voluptatem', 'c70b8a1ff638f554fb17b44a37c94b95.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(16, 2, 3, 3, 'Ut inventore optio corporis.', 'Quasi qui error mollitia iste. Dolorum tenetur ea quia quo ad sint commodi. Rerum commodi possimus aut doloremque id saepe est. Ut quam dicta omnis.', 'ut-inventore-optio-corporis', 'ab8f786f2a543760c7fa5a84a0a5cade.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(17, 4, 5, 1, 'Aspernatur et ut eum dolorem aut.', 'Eos iusto aut voluptates quisquam et. Fugit consequatur sit eius voluptatem iusto labore animi. Vel maxime aut iste soluta sed et eaque et. Distinctio autem fugiat sequi a ab voluptate porro.', 'aspernatur-et-ut-eum-dolorem-aut', 'e4a665c0a1c9e62079eb6178b506bdae.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(18, 7, 2, 3, 'Maxime in numquam distinctio ut aperiam vel tenetur.', 'Omnis non qui nemo distinctio odit distinctio ut. In suscipit qui sit beatae. Non quibusdam voluptatem dolores aut suscipit.', 'maxime-in-numquam-distinctio-ut-aperiam-vel-tenetur', '838f1e90363923cb94f427955de733bf.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(19, 8, 4, 1, 'Eaque harum maiores dolor blanditiis.', 'In ipsam quia sed quis a fugiat quis. Consequuntur unde tenetur non eaque aut quo et repellat.', 'eaque-harum-maiores-dolor-blanditiis', 'f9cb83f47e957f5c1e5713b28da8b04c.jpg', '1', 1, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(20, 9, 4, 1, 'Id ex labore in asperiores et.', 'Quidem earum quis autem recusandae. Fugit incidunt odio ad dolorem rerum.', 'id-ex-labore-in-asperiores-et', '555bc7cb1c8076fab9e4afd9ae8a2593.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(21, 8, 3, 1, 'Fuga voluptatem mollitia distinctio iste.', 'Itaque numquam rem voluptas. Vel saepe saepe consequatur totam labore. Temporibus voluptatem dolores aliquam accusantium.', 'fuga-voluptatem-mollitia-distinctio-iste', '8515a746d47d25dc06c842c6293c83ba.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(22, 7, 4, 3, 'Velit minus nulla nisi dolores similique est.', 'Impedit doloremque et nobis ratione. Omnis ratione unde autem non quos. Incidunt et est mollitia enim assumenda possimus. Earum corrupti et tempore reiciendis et laborum.', 'velit-minus-nulla-nisi-dolores-similique-est', 'c367034c076ddd36c5cd6790db21eb73.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(23, 5, 1, 2, 'Vel ut iste consequatur in omnis.', 'Repellendus et perspiciatis perferendis alias veritatis sed. Sunt ea eos accusantium quos ut rerum nemo. Possimus sint nisi atque aut iure et molestiae.', 'vel-ut-iste-consequatur-in-omnis', '9ef3d881b70e3cedff33e515559147fd.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(24, 9, 1, 2, 'Dicta explicabo ut dolor accusamus.', 'Corrupti dolore voluptas et dolorem ab. Qui nostrum maxime aut labore. Magni ut molestiae cum eius iure.', 'dicta-explicabo-ut-dolor-accusamus', 'b5613e5c356ebaf3351f755056f17e67.jpg', '2', 0, 0, '2020-05-18 01:43:41', '2020-05-18 01:43:41', NULL),
(25, 5, 1, 2, 'Excepturi et sunt assumenda animi nihil veritatis adipisci.', 'Dolore qui ad doloribus autem. Et odit cupiditate in dolor. Repellendus commodi ex eligendi reprehenderit. At consequatur quisquam ipsa expedita fuga cumque.', 'excepturi-et-sunt-assumenda-animi-nihil-veritatis-adipisci', 'b300cf3feae60b06da505bfaee2e03c9.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(26, 6, 2, 1, 'Odio qui id vel.', 'Dicta sunt accusamus cupiditate qui adipisci voluptas cumque. Laudantium sequi ratione illum ab. Reiciendis ipsa optio ut sint impedit laborum. Deleniti repudiandae minima consequatur eaque et qui error ullam.', 'odio-qui-id-vel', '78e59a7dbc849394a4de7ced8d1e05e1.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(27, 10, 5, 1, 'Molestiae ullam aliquid qui eum rerum facilis saepe.', 'Illo cupiditate non porro. Minus necessitatibus autem culpa occaecati. Minus quisquam repellendus sed alias magnam. Modi ad blanditiis voluptatem.', 'molestiae-ullam-aliquid-qui-eum-rerum-facilis-saepe', '353f8f7e6ef7cb7a2929832475887b99.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(28, 10, 3, 3, 'Quisquam accusantium et incidunt similique.', 'Sunt ut est quas ut nesciunt. Officiis repudiandae laudantium id ipsam vitae ut. Soluta aliquam quis est ut enim facilis molestiae. Ipsum et iste nisi beatae. Suscipit officia debitis dolores incidunt.', 'quisquam-accusantium-et-incidunt-similique', 'fd28cf9fd9473f3d2211ee76f628dc9f.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(29, 6, 2, 3, 'Quam nihil illo rem autem amet.', 'Autem error dolor quia assumenda. Molestias rem in facere voluptas esse quisquam. Excepturi non et dolorem voluptate dolor quo.', 'quam-nihil-illo-rem-autem-amet', '41a01e56842a3b19ab5ed1df28e9e08b.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(30, 2, 1, 2, 'Adipisci aut sunt ut repellendus sint.', 'Quae quaerat tempore deserunt aut nisi qui laboriosam. Iure voluptate similique esse cupiditate. Ut voluptas vel suscipit molestias similique. Consequuntur qui eos dolor est.', 'adipisci-aut-sunt-ut-repellendus-sint', '41e3815e068c82903af02c5c6a36f7cc.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(31, 6, 1, 1, 'Est architecto laborum fuga omnis quia blanditiis maxime consequatur.', 'Voluptatem et similique ut qui. Eaque est esse id qui voluptas corporis. Aliquid laudantium et enim voluptatem. Placeat vero sequi aut repudiandae tenetur odit.', 'est-architecto-laborum-fuga-omnis-quia-blanditiis-maxime-consequatur', '94b3dff1e4fc75f3607b6923d60b13f6.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(32, 10, 4, 2, 'Necessitatibus dolores architecto assumenda ipsum.', 'Ut maiores fugiat quia distinctio temporibus omnis. Fugiat voluptas qui omnis ut odio nostrum amet officiis. In omnis id placeat rerum odio adipisci.', 'necessitatibus-dolores-architecto-assumenda-ipsum', '57be76d2cb1db6b937337f8602fd723c.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(33, 7, 1, 1, 'Cumque enim quasi animi fugit molestiae.', 'Ut voluptate laboriosam aut sed voluptatem consequatur sunt excepturi. Qui eveniet nobis quas quae autem distinctio. Officia doloribus et rerum est. Quis amet ea voluptatem aspernatur odit.', 'cumque-enim-quasi-animi-fugit-molestiae', '48877e81eb2d92840615a7647123de8a.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(34, 1, 4, 1, 'Assumenda velit qui fugiat earum repellendus.', 'Autem consequuntur quia molestias. Officia quae perferendis non veniam. Blanditiis ullam ducimus dignissimos dicta eos sit. Blanditiis quod culpa est.', 'assumenda-velit-qui-fugiat-earum-repellendus', '8ac287cd212bdf64822fd0a422ee1970.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(35, 5, 4, 3, 'Suscipit cumque necessitatibus architecto.', 'Corporis odio repellendus est. Minus et dolorum ea. Optio quia ea placeat fugit et dolor. Mollitia mollitia nam sed amet.', 'suscipit-cumque-necessitatibus-architecto', 'd9a8835078225331196f14f2cf6a0fe4.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(36, 10, 5, 1, 'Voluptatibus sed ut ipsam optio ab deleniti.', 'Iste facilis quo repellat nam qui repudiandae voluptas repellendus. Expedita consequuntur earum rem sit odio vitae. Sed velit expedita at et quia. Fuga quia facilis saepe asperiores nemo id voluptates.', 'voluptatibus-sed-ut-ipsam-optio-ab-deleniti', 'ed0feda6a02110b7dda09f4c8c7576e6.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(37, 10, 3, 1, 'Quaerat quis magni sequi neque.', 'Soluta quis ea ab exercitationem consequatur necessitatibus facilis. Blanditiis aut ut impedit consequatur beatae quia. Et recusandae sit voluptatem dolor sed laudantium enim tempora.', 'quaerat-quis-magni-sequi-neque', '47beceac05b72d1efc8a875e5558bf77.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(38, 3, 1, 3, 'Ea non magnam eaque enim exercitationem.', 'Et quisquam asperiores dolorem possimus. Ullam ut minus nobis officia corporis voluptas. Quas velit vitae quod voluptas eveniet cum. Voluptas quos ut odio dolorum quam. Aspernatur vero quia qui.', 'ea-non-magnam-eaque-enim-exercitationem', '1ba3fee9d131ab7673dab11da29d55f2.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(39, 8, 4, 1, 'Maiores nam saepe est rerum nobis harum unde totam.', 'Sit voluptatum sed repudiandae reprehenderit eligendi. Aut eum qui cum eius dolor earum corrupti aliquid. Autem eveniet quis culpa unde nobis consequatur quidem nostrum.', 'maiores-nam-saepe-est-rerum-nobis-harum-unde-totam', 'd82ad9976c0f287512b67c35bf822f3f.jpg', '3', 0, 1, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(40, 5, 1, 2, 'Et ad laudantium laboriosam quia qui saepe vero voluptates.', 'Natus totam at autem. Est ut corrupti quasi aut debitis quas quasi. Tenetur pariatur adipisci voluptates mollitia quisquam odio. At aut sapiente aut pariatur.', 'et-ad-laudantium-laboriosam-quia-qui-saepe-vero-voluptates', '9e3f3d478dcc3d75a5ffcd82146668f8.jpg', '2', 0, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(41, 4, 1, 2, 'Maiores dolore delectus laborum eum et et est non.', 'Et vitae dignissimos laborum ipsa. Sit ut dolorem aliquid dignissimos voluptatum. Fuga modi necessitatibus dignissimos.', 'maiores-dolore-delectus-laborum-eum-et-et-est-non', '8bceff8faa8d7be1bc29a4b2c67703c1.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(42, 7, 2, 1, 'Totam illo quis vitae numquam reprehenderit nobis.', 'Ea non voluptas sit est. Unde nostrum eveniet quos eos. Velit sit sint dolorum autem. Non similique in harum voluptatem eius numquam.', 'totam-illo-quis-vitae-numquam-reprehenderit-nobis', '750b58dff46e4904fe69dc3f85825303.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(43, 8, 2, 2, 'Explicabo voluptate earum vel voluptatem distinctio consequuntur delectus.', 'Cupiditate magnam reiciendis necessitatibus provident ut nemo suscipit quos. Temporibus dolores unde blanditiis inventore fugit dicta. At exercitationem qui rerum vitae et accusantium.', 'explicabo-voluptate-earum-vel-voluptatem-distinctio-consequuntur-delectus', 'd3f9de6e78a793e615061df65bc90db0.jpg', '1', 1, 0, '2020-05-18 01:43:42', '2020-05-18 01:43:42', NULL),
(44, 5, 2, 1, 'Necessitatibus accusamus quae qui et nobis et tenetur voluptates.', 'Eos vel inventore beatae non sunt incidunt. Vel quis odit iure eum magni quidem consequatur. Qui voluptatem distinctio ipsa magni delectus sed. Qui quo blanditiis incidunt perferendis.', 'necessitatibus-accusamus-quae-qui-et-nobis-et-tenetur-voluptates', '545c642469f43518841e39259e6317cc.jpg', '1', 1, 0, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(45, 10, 4, 2, 'Repudiandae quo harum asperiores dicta modi modi eligendi.', 'Quos aliquid pariatur rerum non sunt. Placeat quo in assumenda nihil qui tempore. Eum optio maxime eos accusantium illum nulla quas.', 'repudiandae-quo-harum-asperiores-dicta-modi-modi-eligendi', 'fb33e09ec3ec6b60de832ec7b36f8a44.jpg', '3', 0, 1, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(46, 10, 2, 1, 'Harum corrupti provident voluptate.', 'Distinctio et est magnam doloremque. Et odio facere autem. Veritatis ea officiis dolor id quam dolores.', 'harum-corrupti-provident-voluptate', '1bcfe8c303588dbd9294c304af932daf.jpg', '2', 0, 0, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(47, 4, 4, 2, 'Dolorem tempore inventore voluptatibus sunt fugiat animi.', 'Nihil ut eum consequatur iusto cupiditate atque voluptas. Labore expedita et quaerat eum. Officiis consequuntur quaerat non ipsa laborum dolor adipisci. Rerum maiores tenetur minima nobis necessitatibus minima facilis.', 'dolorem-tempore-inventore-voluptatibus-sunt-fugiat-animi', 'a9c18c4bcde07d9682b7b8b82eaa2bd7.jpg', '3', 0, 1, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(48, 3, 5, 2, 'Qui quas fugiat iste sunt dolore autem voluptatum.', 'Atque suscipit quae nihil laboriosam. Eius nam voluptate molestias magni sint rerum facere. Ut sint aut et ad.', 'qui-quas-fugiat-iste-sunt-dolore-autem-voluptatum', '30dd8436ade3eba995f73e507ff8c52e.jpg', '1', 1, 0, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(49, 5, 2, 2, 'Blanditiis eaque praesentium nesciunt veniam.', 'Eius dolorem voluptatem dolores et autem molestiae. Nostrum tempore consequatur sit ea id esse perspiciatis. Iure hic nihil ex debitis quia aliquam expedita.', 'blanditiis-eaque-praesentium-nesciunt-veniam', 'e4cd7d5f08a13b764dc05c738b178d71.jpg', '2', 0, 0, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL),
(50, 9, 4, 3, 'Quia facilis asperiores velit sint quo.', 'Quia et non sit quia fugiat aliquid eos. Exercitationem error voluptatibus quisquam dicta fugiat dignissimos. Ex qui iure nesciunt magni beatae ut cumque.', 'quia-facilis-asperiores-velit-sint-quo', '93c937897adf6ab25d32bbdd310f047e.jpg', '3', 0, 1, '2020-05-18 01:43:43', '2020-05-18 01:43:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL
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
(1, 1, 'Modi ut eaque veritatis dolores veritatis ut modi eum.', '2020-05-18 01:43:43', '2020-05-18 01:43:43'),
(2, 1, 'Sed quo numquam eligendi ut ut labore alias tempore.', '2020-05-18 01:43:43', '2020-05-18 01:43:43'),
(3, 2, 'Sapiente corrupti aut consequatur voluptas repudiandae.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(4, 2, 'Doloremque qui vel voluptatibus totam itaque esse hic voluptas.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(5, 3, 'Quidem omnis laudantium facilis sit.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(6, 3, 'Omnis unde et officiis quo et quisquam eius.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(7, 4, 'Voluptatem aperiam voluptatum quod deserunt dolorem voluptas.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(8, 4, 'Quis et blanditiis sit consequuntur accusamus id ducimus.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(9, 5, 'Qui dolor et neque voluptas dicta impedit et.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(10, 5, 'Rerum voluptatum quam ipsam veniam consequatur quo unde aut.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(11, 6, 'Doloribus quia fuga cum corporis.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(12, 6, 'Nostrum cumque veritatis est quidem.', '2020-05-18 01:43:46', '2020-05-18 01:43:47'),
(13, 7, 'Nobis eos iure omnis minus.', '2020-05-18 01:43:47', '2020-05-18 01:43:48'),
(14, 7, 'Corrupti soluta eos voluptate molestiae similique consectetur.', '2020-05-18 01:43:47', '2020-05-18 01:43:48'),
(15, 8, 'In dicta similique consequuntur sint ducimus.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(16, 8, 'Amet quas modi cumque est aut sequi enim.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(17, 9, 'Provident blanditiis nihil ut magni voluptas nihil eos.', '2020-05-18 01:43:49', '2020-05-18 01:43:49'),
(18, 9, 'Architecto voluptatem repellat omnis tempore.', '2020-05-18 01:43:49', '2020-05-18 01:43:49'),
(19, 10, 'Excepturi officia impedit facilis et.', '2020-05-18 01:43:50', '2020-05-18 01:43:50'),
(20, 10, 'Est qui adipisci sapiente quos pariatur.', '2020-05-18 01:43:50', '2020-05-18 01:43:50'),
(21, 11, 'Quas et voluptas soluta soluta magnam enim.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(22, 11, 'Occaecati perspiciatis possimus vitae quos.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(23, 12, 'Adipisci ullam eveniet omnis natus similique.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(24, 12, 'Architecto molestiae beatae sed.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(25, 13, 'Blanditiis aliquid nobis praesentium tempore voluptate voluptatem neque amet.', '2020-05-18 01:43:52', '2020-05-18 01:43:53'),
(26, 13, 'Placeat eius voluptates et fugiat doloribus delectus.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(27, 14, 'Voluptatem deserunt deserunt voluptas autem et.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(28, 14, 'Est ut eligendi perferendis quia.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(29, 15, 'Dolor qui accusantium consectetur voluptatem temporibus.', '2020-05-18 01:43:54', '2020-05-18 01:43:54'),
(30, 15, 'Omnis amet voluptas qui eum.', '2020-05-18 01:43:54', '2020-05-18 01:43:54'),
(31, 16, 'Pariatur aut voluptatibus unde sit molestiae ratione.', '2020-05-18 01:43:55', '2020-05-18 01:43:55'),
(32, 16, 'Quidem voluptatem ducimus qui quam repellat delectus.', '2020-05-18 01:43:55', '2020-05-18 01:43:55'),
(33, 17, 'Iusto quaerat aperiam at aliquid saepe voluptatem.', '2020-05-18 01:43:56', '2020-05-18 01:43:57'),
(34, 17, 'Aut nemo consectetur aliquid illum cumque et illum.', '2020-05-18 01:43:56', '2020-05-18 01:43:57'),
(35, 18, 'Sint eveniet quia perspiciatis delectus.', '2020-05-18 01:43:58', '2020-05-18 01:43:58'),
(36, 18, 'Sed doloribus sit eveniet autem iure.', '2020-05-18 01:43:58', '2020-05-18 01:43:58'),
(37, 19, 'Et dolores asperiores consectetur ab sed ut est.', '2020-05-18 01:43:59', '2020-05-18 01:43:59'),
(38, 19, 'Velit exercitationem nulla consequatur odio ipsam aut ipsa.', '2020-05-18 01:43:59', '2020-05-18 01:43:59'),
(39, 20, 'Aut ut maiores tenetur minus unde.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(40, 20, 'Molestiae repellendus voluptates est.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(41, 21, 'Et quasi eum animi amet aliquam aperiam.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(42, 21, 'Quos rem ipsum nihil est hic voluptatum quia.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(43, 22, 'Ipsum veniam sint sed asperiores omnis nulla.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(44, 22, 'Sit similique occaecati corrupti recusandae consequatur nisi culpa et.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(45, 23, 'Rerum mollitia sit itaque qui eveniet odit modi.', '2020-05-18 01:44:02', '2020-05-18 01:44:02'),
(46, 23, 'Est omnis perspiciatis optio quos similique molestiae.', '2020-05-18 01:44:02', '2020-05-18 01:44:02'),
(47, 24, 'Incidunt ut perspiciatis voluptas unde et.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(48, 24, 'Numquam nemo dolores sed eligendi adipisci.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(49, 25, 'Neque asperiores fugiat quia eligendi ut officiis consectetur.', '2020-05-18 01:44:04', '2020-05-18 01:44:04'),
(50, 25, 'Qui sit tempore tenetur unde et ut.', '2020-05-18 01:44:04', '2020-05-18 01:44:04'),
(51, 26, 'Quasi ut et cumque aut.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(52, 26, 'Quasi tempora inventore quis ea omnis itaque eaque.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(53, 27, 'Adipisci eveniet id aperiam rerum quis.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(54, 27, 'Nihil ex ducimus qui omnis voluptatibus beatae.', '2020-05-18 01:44:05', '2020-05-18 01:44:06'),
(55, 28, 'Architecto autem unde est explicabo et.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(56, 28, 'Possimus quasi sunt facere at eum.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(57, 29, 'Qui facilis excepturi voluptatem reprehenderit provident.', '2020-05-18 01:44:07', '2020-05-18 01:44:07'),
(58, 29, 'Ducimus odit minima tenetur dicta laboriosam non.', '2020-05-18 01:44:07', '2020-05-18 01:44:07'),
(59, 30, 'Quod non cupiditate saepe praesentium iure.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(60, 30, 'Qui vel consequatur ratione.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(61, 31, 'Est ut libero et eius qui.', '2020-05-18 01:44:09', '2020-05-18 01:44:09'),
(62, 31, 'Ducimus et dolorem ut minima quia ipsam odit quibusdam.', '2020-05-18 01:44:09', '2020-05-18 01:44:09'),
(63, 32, 'Et perferendis ut minima qui nostrum modi nisi.', '2020-05-18 01:44:10', '2020-05-18 01:44:10'),
(64, 32, 'Dolore ut sapiente fugit et ad et repellat.', '2020-05-18 01:44:10', '2020-05-18 01:44:10'),
(65, 33, 'Non et ea expedita consequuntur fugiat fugit illo.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(66, 33, 'Sapiente quia vero itaque cum doloremque.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(67, 34, 'Sint qui mollitia aut ea voluptas pariatur.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(68, 34, 'Aliquid vitae consequuntur consectetur consequatur.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(69, 35, 'Exercitationem possimus qui modi consequatur molestias reprehenderit minus.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(70, 35, 'Quibusdam enim magnam minima sit consequatur officia quae.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(71, 36, 'Quis beatae ducimus aliquid sit rerum sed ea.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(72, 36, 'Ex saepe sed voluptas aliquid vel voluptatem repellat.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(73, 37, 'Odio illum non maxime autem.', '2020-05-18 01:44:14', '2020-05-18 01:44:14'),
(74, 37, 'Officia dolore ratione voluptatum animi aliquid sunt.', '2020-05-18 01:44:14', '2020-05-18 01:44:14'),
(75, 38, 'Aut quo animi officia illo.', '2020-05-18 01:44:15', '2020-05-18 01:44:15'),
(76, 38, 'Vel et exercitationem et asperiores eaque doloribus veritatis.', '2020-05-18 01:44:15', '2020-05-18 01:44:15'),
(77, 39, 'Aut atque enim ut qui facere.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(78, 39, 'Exercitationem quia inventore molestiae iusto non optio ea.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(79, 40, 'Ut qui adipisci inventore est id reiciendis.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(80, 40, 'Culpa ipsa dolores et alias natus tempore qui placeat.', '2020-05-18 01:44:16', '2020-05-18 01:44:17'),
(81, 41, 'Sed tenetur commodi est.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(82, 41, 'Ducimus aperiam voluptatem unde nihil qui quibusdam labore.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(83, 42, 'Repudiandae laudantium esse molestiae perspiciatis.', '2020-05-18 01:44:18', '2020-05-18 01:44:18'),
(84, 42, 'Dolorem nemo at eum labore.', '2020-05-18 01:44:18', '2020-05-18 01:44:18'),
(85, 43, 'Magni quia earum sunt quia labore.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(86, 43, 'Iste atque quis minima saepe qui.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(87, 44, 'Fuga sed temporibus quia voluptatem.', '2020-05-18 01:44:20', '2020-05-18 01:44:20'),
(88, 44, 'Nostrum eum beatae hic hic.', '2020-05-18 01:44:20', '2020-05-18 01:44:20'),
(89, 45, 'Sapiente porro ut hic sit quos eius non ad.', '2020-05-18 01:44:21', '2020-05-18 01:44:21'),
(90, 45, 'Aut odit vero et est ut numquam.', '2020-05-18 01:44:21', '2020-05-18 01:44:21'),
(91, 46, 'Voluptas est ipsum voluptate tempore ea dolor.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(92, 46, 'Nemo aut optio temporibus laudantium quas provident temporibus et.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(93, 47, 'Porro inventore ipsa atque soluta blanditiis.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(94, 47, 'Aliquid consequatur odit debitis.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(95, 48, 'Rerum illum possimus sunt qui est dolore laborum eum.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(96, 48, 'In officiis rerum non quia rem quidem.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(97, 49, 'Dolor tenetur tenetur eum est dignissimos non.', '2020-05-18 01:44:24', '2020-05-18 01:44:24'),
(98, 49, 'Temporibus iure quibusdam aliquid est ex est natus amet.', '2020-05-18 01:44:24', '2020-05-18 01:44:24'),
(99, 50, 'Quia voluptas quaerat molestias.', '2020-05-18 01:44:25', '2020-05-18 01:44:25'),
(100, 50, 'Dolor eum vitae accusantium vel.', '2020-05-18 01:44:25', '2020-05-18 01:44:25');

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
(1, 'Beginner', 'Perspiciatis suscipit quidem iusto veniam repellat.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(2, 'Intermediate', 'Repudiandae tempora cupiditate qui ab qui est autem.', '2020-05-18 01:41:49', '2020-05-18 01:41:49'),
(3, 'Advanced', 'Accusamus animi ad a.', '2020-05-18 01:41:49', '2020-05-18 01:41:49');

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
(3, '2018_03_08_093718_create_teachers_table', 1),
(4, '2018_03_08_094050_create_students_table', 1),
(5, '2018_03_08_094221_create_levels_table', 1),
(6, '2018_03_08_094435_create_categories_table', 1),
(7, '2018_03_08_094533_create_courses_table', 1),
(8, '2018_03_08_095736_create_reviews_table', 1),
(9, '2018_03_08_100021_create_table_course_student', 1),
(10, '2018_03_08_100348_create_requirements_table', 1),
(11, '2018_03_08_100438_create_goals_table', 1);

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
(1, 1, 'Error dolores totam nulla ut est.', '2020-05-18 01:43:43', '2020-05-18 01:43:44'),
(2, 1, 'Qui esse sit pariatur aut explicabo.', '2020-05-18 01:43:43', '2020-05-18 01:43:44'),
(3, 1, 'Qui occaecati possimus odit quis sunt.', '2020-05-18 01:43:43', '2020-05-18 01:43:44'),
(4, 1, 'Voluptatum rerum numquam qui corporis ut est porro.', '2020-05-18 01:43:43', '2020-05-18 01:43:44'),
(5, 2, 'Dolorum magnam nihil explicabo corrupti ipsam enim.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(6, 2, 'Voluptatem et quibusdam quidem omnis.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(7, 2, 'Officia quaerat nam deleniti quia.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(8, 2, 'Exercitationem cum repellendus voluptatibus a at.', '2020-05-18 01:43:44', '2020-05-18 01:43:44'),
(9, 3, 'Cupiditate qui dolorum laboriosam consequatur sed nesciunt temporibus.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(10, 3, 'Dolores aut eius officiis nostrum reprehenderit.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(11, 3, 'Ad et repellendus provident ipsa occaecati aspernatur.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(12, 3, 'Vero natus provident recusandae sunt necessitatibus maiores.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(13, 4, 'Neque minus natus quae laboriosam.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(14, 4, 'Assumenda alias qui ut beatae eos velit culpa.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(15, 4, 'Qui deserunt voluptatem laudantium sit.', '2020-05-18 01:43:45', '2020-05-18 01:43:45'),
(16, 4, 'Itaque consequatur amet nisi minima nesciunt sed.', '2020-05-18 01:43:45', '2020-05-18 01:43:46'),
(17, 5, 'Libero nobis placeat ea natus qui.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(18, 5, 'Aut iusto culpa voluptas accusamus.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(19, 5, 'Sit nobis consequatur molestiae nulla ut nesciunt.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(20, 5, 'Et accusamus voluptas voluptatem porro consequatur aut exercitationem minus.', '2020-05-18 01:43:46', '2020-05-18 01:43:46'),
(21, 6, 'Magni non sunt sunt.', '2020-05-18 01:43:47', '2020-05-18 01:43:47'),
(22, 6, 'Et qui nihil eius vitae qui unde pariatur.', '2020-05-18 01:43:47', '2020-05-18 01:43:47'),
(23, 6, 'Sint quasi et quaerat dolor.', '2020-05-18 01:43:47', '2020-05-18 01:43:47'),
(24, 6, 'Sapiente eum amet nulla qui quo possimus beatae.', '2020-05-18 01:43:47', '2020-05-18 01:43:47'),
(25, 7, 'In maiores sequi aliquid quia natus.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(26, 7, 'Doloribus nisi nihil est suscipit.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(27, 7, 'Enim dolore velit et et est quia minima.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(28, 7, 'Dolores minus in qui reiciendis.', '2020-05-18 01:43:48', '2020-05-18 01:43:48'),
(29, 8, 'Quos dicta labore eligendi vero sed ipsa.', '2020-05-18 01:43:48', '2020-05-18 01:43:49'),
(30, 8, 'Veniam magnam expedita doloribus cupiditate doloremque.', '2020-05-18 01:43:48', '2020-05-18 01:43:49'),
(31, 8, 'Sequi voluptatem non nemo rerum.', '2020-05-18 01:43:49', '2020-05-18 01:43:49'),
(32, 8, 'Natus nihil ab consequatur quos.', '2020-05-18 01:43:49', '2020-05-18 01:43:49'),
(33, 9, 'Architecto non dolorem tenetur explicabo eum nam.', '2020-05-18 01:43:49', '2020-05-18 01:43:50'),
(34, 9, 'Itaque et at ut nihil libero.', '2020-05-18 01:43:49', '2020-05-18 01:43:50'),
(35, 9, 'Recusandae et quia asperiores dolor error et quaerat.', '2020-05-18 01:43:49', '2020-05-18 01:43:50'),
(36, 9, 'Placeat dolor impedit accusantium earum recusandae officia rerum.', '2020-05-18 01:43:50', '2020-05-18 01:43:50'),
(37, 10, 'Consequatur ut accusamus id deserunt earum.', '2020-05-18 01:43:50', '2020-05-18 01:43:51'),
(38, 10, 'Rerum accusantium et mollitia dolorem excepturi.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(39, 10, 'Dolorem labore quam vero est vel modi excepturi.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(40, 10, 'Earum aut delectus vero beatae culpa.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(41, 11, 'Vero non aut adipisci eligendi molestiae aut omnis.', '2020-05-18 01:43:51', '2020-05-18 01:43:51'),
(42, 11, 'In consequatur aliquid nostrum reprehenderit aut est sit.', '2020-05-18 01:43:51', '2020-05-18 01:43:52'),
(43, 11, 'Aut corporis natus odit quo ut ut illum.', '2020-05-18 01:43:51', '2020-05-18 01:43:52'),
(44, 11, 'Possimus minus laudantium praesentium sit quidem quos dolorem.', '2020-05-18 01:43:51', '2020-05-18 01:43:52'),
(45, 12, 'Et dolores veniam delectus autem veritatis optio mollitia.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(46, 12, 'Laboriosam a molestiae optio voluptatibus velit voluptatem tempore.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(47, 12, 'Impedit fuga ex aspernatur ut.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(48, 12, 'Ex molestiae id ipsum pariatur beatae consectetur nihil.', '2020-05-18 01:43:52', '2020-05-18 01:43:52'),
(49, 13, 'Nemo et doloribus in aperiam explicabo.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(50, 13, 'Ut sequi ad similique sit debitis sapiente.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(51, 13, 'Culpa vel est illum autem corporis aut.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(52, 13, 'Tenetur impedit molestiae eaque facere perspiciatis et.', '2020-05-18 01:43:53', '2020-05-18 01:43:53'),
(53, 14, 'Deserunt quia nisi mollitia voluptate pariatur molestiae iure.', '2020-05-18 01:43:53', '2020-05-18 01:43:54'),
(54, 14, 'Quo voluptas placeat rerum aut nostrum praesentium.', '2020-05-18 01:43:54', '2020-05-18 01:43:54'),
(55, 14, 'Doloremque ut officiis aspernatur laudantium et.', '2020-05-18 01:43:54', '2020-05-18 01:43:54'),
(56, 14, 'Perspiciatis eum dolor aut sit impedit quaerat.', '2020-05-18 01:43:54', '2020-05-18 01:43:54'),
(57, 15, 'Hic est vel distinctio distinctio.', '2020-05-18 01:43:54', '2020-05-18 01:43:55'),
(58, 15, 'Facilis et corrupti atque.', '2020-05-18 01:43:54', '2020-05-18 01:43:55'),
(59, 15, 'Sint deleniti ut deleniti ab eos cupiditate.', '2020-05-18 01:43:54', '2020-05-18 01:43:55'),
(60, 15, 'Rerum et id quo qui quis eius.', '2020-05-18 01:43:55', '2020-05-18 01:43:55'),
(61, 16, 'Qui quia debitis id eligendi et esse.', '2020-05-18 01:43:55', '2020-05-18 01:43:56'),
(62, 16, 'Ipsum eligendi laborum quia ea et sed.', '2020-05-18 01:43:55', '2020-05-18 01:43:56'),
(63, 16, 'Adipisci saepe nobis ut perferendis doloribus et voluptatem iusto.', '2020-05-18 01:43:56', '2020-05-18 01:43:56'),
(64, 16, 'Eum quas voluptas quo ut provident quia.', '2020-05-18 01:43:56', '2020-05-18 01:43:56'),
(65, 17, 'Dolor quia quod ipsam rerum explicabo est quaerat.', '2020-05-18 01:43:57', '2020-05-18 01:43:57'),
(66, 17, 'Accusamus sequi fugit at possimus quis mollitia consequatur.', '2020-05-18 01:43:57', '2020-05-18 01:43:57'),
(67, 17, 'Excepturi dolores id cum incidunt et error ut.', '2020-05-18 01:43:57', '2020-05-18 01:43:58'),
(68, 17, 'Aut dolor consequatur eos id sed ad magnam.', '2020-05-18 01:43:57', '2020-05-18 01:43:58'),
(69, 18, 'Placeat et non praesentium reprehenderit.', '2020-05-18 01:43:58', '2020-05-18 01:43:59'),
(70, 18, 'Exercitationem praesentium molestias veritatis eveniet.', '2020-05-18 01:43:58', '2020-05-18 01:43:59'),
(71, 18, 'Magni quis dolore illum pariatur.', '2020-05-18 01:43:58', '2020-05-18 01:43:59'),
(72, 18, 'Id omnis quia veniam quis repellat quia ut.', '2020-05-18 01:43:58', '2020-05-18 01:43:59'),
(73, 19, 'Et assumenda omnis voluptate sit molestiae sint sed.', '2020-05-18 01:43:59', '2020-05-18 01:43:59'),
(74, 19, 'Qui quod sint maiores est praesentium et voluptatibus.', '2020-05-18 01:43:59', '2020-05-18 01:44:00'),
(75, 19, 'Voluptatem quisquam cumque provident dignissimos ipsa numquam enim.', '2020-05-18 01:43:59', '2020-05-18 01:44:00'),
(76, 19, 'Veniam eum ea consequatur asperiores mollitia unde voluptatem.', '2020-05-18 01:43:59', '2020-05-18 01:44:00'),
(77, 20, 'Molestiae sed ut doloremque iure fugiat error quis accusantium.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(78, 20, 'Porro aut ipsa voluptatem numquam.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(79, 20, 'Exercitationem temporibus ipsa eveniet sit.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(80, 20, 'Deserunt aut adipisci perspiciatis aliquid non et soluta eius.', '2020-05-18 01:44:00', '2020-05-18 01:44:00'),
(81, 21, 'Labore molestiae et consequatur facere iusto maiores hic culpa.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(82, 21, 'Quia vero sunt unde qui quidem.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(83, 21, 'Et qui corporis quis quasi ipsam.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(84, 21, 'Possimus voluptatum ut accusamus sit et sint sint.', '2020-05-18 01:44:01', '2020-05-18 01:44:01'),
(85, 22, 'Dolor qui esse aut dignissimos nostrum aperiam.', '2020-05-18 01:44:01', '2020-05-18 01:44:02'),
(86, 22, 'Ea consectetur repudiandae qui temporibus qui libero.', '2020-05-18 01:44:02', '2020-05-18 01:44:02'),
(87, 22, 'Sequi qui occaecati labore.', '2020-05-18 01:44:02', '2020-05-18 01:44:02'),
(88, 22, 'Earum omnis fuga ipsam maxime in quia ut.', '2020-05-18 01:44:02', '2020-05-18 01:44:02'),
(89, 23, 'Dolor unde quae rerum repellat.', '2020-05-18 01:44:02', '2020-05-18 01:44:03'),
(90, 23, 'Tempore iure at totam.', '2020-05-18 01:44:02', '2020-05-18 01:44:03'),
(91, 23, 'Laboriosam tenetur dolorum quod necessitatibus.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(92, 23, 'Omnis asperiores accusamus quisquam inventore ea nihil aut voluptatem.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(93, 24, 'Aut id fugit dolorem dignissimos natus est molestiae.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(94, 24, 'Quibusdam nihil nostrum voluptatem.', '2020-05-18 01:44:03', '2020-05-18 01:44:03'),
(95, 24, 'Consequatur recusandae ut eius temporibus dolor dolore.', '2020-05-18 01:44:03', '2020-05-18 01:44:04'),
(96, 24, 'Sed est expedita facere optio.', '2020-05-18 01:44:03', '2020-05-18 01:44:04'),
(97, 25, 'Fuga delectus voluptatem et quos maiores.', '2020-05-18 01:44:04', '2020-05-18 01:44:04'),
(98, 25, 'Fugiat voluptatum eum ratione earum tenetur aliquam enim.', '2020-05-18 01:44:04', '2020-05-18 01:44:04'),
(99, 25, 'Eum autem unde qui quo odit.', '2020-05-18 01:44:04', '2020-05-18 01:44:04'),
(100, 25, 'Accusantium dolor atque enim doloremque deleniti.', '2020-05-18 01:44:04', '2020-05-18 01:44:05'),
(101, 26, 'Animi impedit rerum adipisci ad eos culpa incidunt.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(102, 26, 'Nihil iusto sint illum.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(103, 26, 'Vero dolorem ex quam libero velit autem.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(104, 26, 'Asperiores dolores maiores impedit eum.', '2020-05-18 01:44:05', '2020-05-18 01:44:05'),
(105, 27, 'Asperiores temporibus iure ut unde.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(106, 27, 'Aliquam laboriosam omnis necessitatibus qui eligendi eos.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(107, 27, 'Impedit perferendis sunt beatae saepe.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(108, 27, 'Est sit et tempore impedit inventore sunt.', '2020-05-18 01:44:06', '2020-05-18 01:44:06'),
(109, 28, 'Tenetur similique qui est dolorum aliquid in.', '2020-05-18 01:44:06', '2020-05-18 01:44:07'),
(110, 28, 'Voluptatibus beatae est sunt dolorum.', '2020-05-18 01:44:06', '2020-05-18 01:44:07'),
(111, 28, 'Porro enim ducimus sint corporis reiciendis magnam.', '2020-05-18 01:44:07', '2020-05-18 01:44:07'),
(112, 28, 'Voluptatibus consequatur id nemo quia voluptatem maxime.', '2020-05-18 01:44:07', '2020-05-18 01:44:07'),
(113, 29, 'Dolores nostrum ut libero rerum magni porro doloremque at.', '2020-05-18 01:44:07', '2020-05-18 01:44:08'),
(114, 29, 'Voluptatem molestias incidunt quisquam aut.', '2020-05-18 01:44:07', '2020-05-18 01:44:08'),
(115, 29, 'Eos ut delectus occaecati quis sit adipisci animi.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(116, 29, 'Labore perferendis est eaque error quo.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(117, 30, 'Ratione dolorem perspiciatis quia et ab.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(118, 30, 'Animi sequi architecto nihil veritatis et.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(119, 30, 'Velit dolores impedit distinctio magni odit fugit fuga.', '2020-05-18 01:44:08', '2020-05-18 01:44:08'),
(120, 30, 'Natus quidem molestiae non et repellendus reprehenderit.', '2020-05-18 01:44:08', '2020-05-18 01:44:09'),
(121, 31, 'Aut placeat quia ab aperiam incidunt dignissimos omnis.', '2020-05-18 01:44:09', '2020-05-18 01:44:09'),
(122, 31, 'Atque perferendis voluptate sit est architecto.', '2020-05-18 01:44:09', '2020-05-18 01:44:09'),
(123, 31, 'Quia eos quisquam nesciunt et ducimus quis excepturi.', '2020-05-18 01:44:09', '2020-05-18 01:44:09'),
(124, 31, 'Ea quo autem necessitatibus facere.', '2020-05-18 01:44:09', '2020-05-18 01:44:10'),
(125, 32, 'Aut non ex est facilis consectetur.', '2020-05-18 01:44:10', '2020-05-18 01:44:10'),
(126, 32, 'Illo quasi eveniet incidunt.', '2020-05-18 01:44:10', '2020-05-18 01:44:10'),
(127, 32, 'Ab nam voluptatibus itaque et.', '2020-05-18 01:44:10', '2020-05-18 01:44:10'),
(128, 32, 'Et aspernatur laboriosam aut eveniet ab.', '2020-05-18 01:44:10', '2020-05-18 01:44:11'),
(129, 33, 'Temporibus possimus sunt recusandae.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(130, 33, 'Rerum quis consectetur possimus iure.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(131, 33, 'Dolorem ea sit et eos illum et voluptatibus.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(132, 33, 'Architecto autem occaecati perferendis similique temporibus omnis.', '2020-05-18 01:44:11', '2020-05-18 01:44:11'),
(133, 34, 'Et et similique in accusantium totam assumenda.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(134, 34, 'Non aut ea aut tempora ullam eveniet.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(135, 34, 'Id quod laboriosam suscipit omnis quis.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(136, 34, 'Animi rerum ab dolor modi et vitae consequatur.', '2020-05-18 01:44:12', '2020-05-18 01:44:12'),
(137, 35, 'Unde eum natus sed magni veritatis.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(138, 35, 'Iure magnam consequatur aliquam atque ratione temporibus.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(139, 35, 'Aliquid enim cupiditate perferendis excepturi dolore atque.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(140, 35, 'Ut quia animi sit.', '2020-05-18 01:44:13', '2020-05-18 01:44:13'),
(141, 36, 'Dolores rerum quibusdam qui.', '2020-05-18 01:44:13', '2020-05-18 01:44:14'),
(142, 36, 'Reiciendis ea sunt eum eum.', '2020-05-18 01:44:13', '2020-05-18 01:44:14'),
(143, 36, 'Occaecati neque iure omnis qui.', '2020-05-18 01:44:13', '2020-05-18 01:44:14'),
(144, 36, 'Ipsam reprehenderit velit labore non.', '2020-05-18 01:44:13', '2020-05-18 01:44:14'),
(145, 37, 'Voluptas incidunt et corporis eius harum.', '2020-05-18 01:44:14', '2020-05-18 01:44:14'),
(146, 37, 'Dicta odio architecto facere tenetur ex eum cum.', '2020-05-18 01:44:14', '2020-05-18 01:44:15'),
(147, 37, 'Dolores laborum molestiae quo.', '2020-05-18 01:44:14', '2020-05-18 01:44:15'),
(148, 37, 'Natus alias veniam voluptatem ad sit.', '2020-05-18 01:44:14', '2020-05-18 01:44:15'),
(149, 38, 'Id voluptas dolores eveniet soluta cumque rerum dolor.', '2020-05-18 01:44:15', '2020-05-18 01:44:15'),
(150, 38, 'Quia voluptatibus sunt quia consectetur.', '2020-05-18 01:44:15', '2020-05-18 01:44:15'),
(151, 38, 'Dicta explicabo ipsam eum ullam voluptatum.', '2020-05-18 01:44:15', '2020-05-18 01:44:16'),
(152, 38, 'Quas praesentium maxime repudiandae dolorum beatae illum quas pariatur.', '2020-05-18 01:44:15', '2020-05-18 01:44:16'),
(153, 39, 'Dolor corporis officiis et fuga hic.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(154, 39, 'Explicabo veritatis enim dolor id aut tempore.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(155, 39, 'Soluta accusantium nisi repellat dolores.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(156, 39, 'Debitis consequatur quas aut omnis illum reiciendis soluta.', '2020-05-18 01:44:16', '2020-05-18 01:44:16'),
(157, 40, 'Unde nisi voluptates rem et nihil.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(158, 40, 'Tempora animi reiciendis aut quo at quo laudantium.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(159, 40, 'Sed rerum accusamus explicabo laudantium unde voluptas quo.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(160, 40, 'Officia ipsum modi a consequatur architecto.', '2020-05-18 01:44:17', '2020-05-18 01:44:17'),
(161, 41, 'Enim rem quia enim beatae dolores laboriosam quidem.', '2020-05-18 01:44:17', '2020-05-18 01:44:18'),
(162, 41, 'Quisquam voluptatem qui rerum ea sint ad ea autem.', '2020-05-18 01:44:17', '2020-05-18 01:44:18'),
(163, 41, 'Voluptatibus iure fugit enim dolores facilis et suscipit.', '2020-05-18 01:44:17', '2020-05-18 01:44:18'),
(164, 41, 'Beatae a quae cupiditate.', '2020-05-18 01:44:17', '2020-05-18 01:44:18'),
(165, 42, 'Nulla necessitatibus vero voluptas sequi omnis aperiam sit dolores.', '2020-05-18 01:44:18', '2020-05-18 01:44:19'),
(166, 42, 'Eum commodi itaque quas veniam.', '2020-05-18 01:44:18', '2020-05-18 01:44:19'),
(167, 42, 'Rerum voluptate nesciunt nam optio at recusandae laboriosam et.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(168, 42, 'Voluptate ut sint ut eum sit laudantium.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(169, 43, 'Ut ipsum non qui aut nobis.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(170, 43, 'Autem praesentium quia enim et.', '2020-05-18 01:44:19', '2020-05-18 01:44:19'),
(171, 43, 'Dolorem ipsam velit natus.', '2020-05-18 01:44:19', '2020-05-18 01:44:20'),
(172, 43, 'Tempore perferendis beatae quibusdam omnis.', '2020-05-18 01:44:19', '2020-05-18 01:44:20'),
(173, 44, 'Tempore ea nulla similique enim vel.', '2020-05-18 01:44:20', '2020-05-18 01:44:20'),
(174, 44, 'Nihil et suscipit fuga sed reprehenderit odio.', '2020-05-18 01:44:20', '2020-05-18 01:44:21'),
(175, 44, 'Consequatur labore quia iste quia corporis saepe quo.', '2020-05-18 01:44:20', '2020-05-18 01:44:21'),
(176, 44, 'Aut nemo facere non repudiandae iure aperiam sunt.', '2020-05-18 01:44:20', '2020-05-18 01:44:21'),
(177, 45, 'Saepe amet itaque libero perspiciatis nam porro itaque sed.', '2020-05-18 01:44:21', '2020-05-18 01:44:21'),
(178, 45, 'Atque repellat quod molestiae magni ipsa.', '2020-05-18 01:44:21', '2020-05-18 01:44:22'),
(179, 45, 'Rerum facere dolorem corrupti explicabo aut vel in.', '2020-05-18 01:44:21', '2020-05-18 01:44:22'),
(180, 45, 'Ipsa atque est molestiae.', '2020-05-18 01:44:21', '2020-05-18 01:44:22'),
(181, 46, 'Id deserunt excepturi earum consequatur.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(182, 46, 'Enim quas id nisi aut temporibus dolorem reiciendis.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(183, 46, 'Aperiam voluptas neque rerum amet voluptate sint porro.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(184, 46, 'Qui saepe sit natus earum odio non maxime.', '2020-05-18 01:44:22', '2020-05-18 01:44:22'),
(185, 47, 'Omnis dolorum praesentium voluptates incidunt.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(186, 47, 'Nihil magnam aspernatur et.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(187, 47, 'Occaecati aut exercitationem ut aut.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(188, 47, 'Esse omnis qui aut dolores rerum.', '2020-05-18 01:44:23', '2020-05-18 01:44:23'),
(189, 48, 'Est est quae quod molestias.', '2020-05-18 01:44:23', '2020-05-18 01:44:24'),
(190, 48, 'Vitae recusandae qui consequatur autem.', '2020-05-18 01:44:23', '2020-05-18 01:44:24'),
(191, 48, 'Quaerat exercitationem commodi aut dolorem.', '2020-05-18 01:44:24', '2020-05-18 01:44:24'),
(192, 48, 'Voluptatum vel labore doloremque accusamus.', '2020-05-18 01:44:24', '2020-05-18 01:44:24'),
(193, 49, 'Soluta error aut voluptas aut ad id eligendi.', '2020-05-18 01:44:25', '2020-05-18 01:44:25'),
(194, 49, 'Neque suscipit impedit rerum unde quae.', '2020-05-18 01:44:25', '2020-05-18 01:44:25'),
(195, 49, 'Totam dicta pariatur rem temporibus aspernatur similique.', '2020-05-18 01:44:25', '2020-05-18 01:44:25'),
(196, 49, 'Et id tenetur voluptatem tempora dolores sint consequatur.', '2020-05-18 01:44:25', '2020-05-18 01:44:25'),
(197, 50, 'Sit consequatur saepe voluptatem id veritatis saepe.', '2020-05-18 01:44:25', '2020-05-18 01:44:26'),
(198, 50, 'Ab reprehenderit aut et ut.', '2020-05-18 01:44:25', '2020-05-18 01:44:26'),
(199, 50, 'Exercitationem asperiores natus quos neque perspiciatis.', '2020-05-18 01:44:25', '2020-05-18 01:44:26'),
(200, 50, 'Eveniet repudiandae odit expedita omnis animi est suscipit omnis.', '2020-05-18 01:44:26', '2020-05-18 01:44:26');

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
(1, 'admin', 'Sint at nihil eum fuga nesciunt qui quia ut.', '2020-05-18 01:39:56', '2020-05-18 01:39:56'),
(2, 'teacher', 'Repudiandae vel et ipsam natus.', '2020-05-18 01:39:56', '2020-05-18 01:39:56'),
(3, 'student', 'Illum enim temporibus at illo laudantium.', '2020-05-18 01:39:56', '2020-05-18 01:39:56');

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
(1, 1, 'Industrial Engineer', '2020-05-18 01:39:58', '2020-05-18 01:39:58'),
(2, 2, 'Painting Machine Operator', '2020-05-18 01:40:00', '2020-05-18 01:40:00'),
(3, 3, 'Environmental Engineer', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(4, 4, 'Construction Laborer', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(5, 5, 'Automatic Teller Machine Servicer', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(6, 6, 'Food Service Manager', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(7, 7, 'Computer Support Specialist', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(8, 8, 'Communication Equipment Repairer', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(9, 9, 'Taper', '2020-05-18 01:41:25', '2020-05-18 01:41:25'),
(10, 10, 'Bartender Helper', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(11, 11, 'Marriage and Family Therapist', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(12, 12, 'Fitness Trainer', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(13, 13, 'Potter', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(14, 14, 'Sociology Teacher', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(15, 15, 'Maid', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(16, 16, 'Recreation Worker', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(17, 17, 'Statistician', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(18, 18, 'Event Planner', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(19, 19, 'Postal Clerk', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(20, 20, 'Insurance Sales Agent', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(21, 21, 'Health Educator', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(22, 22, 'Carver', '2020-05-18 01:41:26', '2020-05-18 01:41:26'),
(23, 23, 'Maid', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(24, 24, 'Agricultural Inspector', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(25, 25, 'Claims Taker', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(26, 26, 'Extraction Worker', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(27, 27, 'Automotive Mechanic', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(28, 28, 'Appliance Repairer', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(29, 29, 'Refinery Operator', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(30, 30, 'Electronic Masking System Operator', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(31, 31, 'Welder', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(32, 32, 'Municipal Clerk', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(33, 33, 'Postal Service Clerk', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(34, 34, 'Biochemist', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(35, 35, 'Team Assembler', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(36, 36, 'Medical Equipment Repairer', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(37, 37, 'Biochemist', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(38, 38, 'Electromechanical Equipment Assembler', '2020-05-18 01:41:27', '2020-05-18 01:41:27'),
(39, 39, 'Sociology Teacher', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(40, 40, 'Computer Repairer', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(41, 41, 'Motor Vehicle Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(42, 42, 'Paperhanger', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(43, 43, 'Motor Vehicle Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(44, 44, 'Typesetting Machine Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(45, 45, 'Music Composer', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(46, 46, 'Lathe Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(47, 47, 'Electronic Masking System Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(48, 48, 'Judge', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(49, 49, 'Letterpress Setters Operator', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(50, 50, 'Postsecondary Teacher', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(51, 51, 'Wholesale Buyer', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(52, 52, 'Coaches and Scout', '2020-05-18 01:41:28', '2020-05-18 01:41:28'),
(53, 53, 'Marine Cargo Inspector', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(54, 54, 'Environmental Engineering Technician', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(55, 55, 'Special Education Teacher', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(56, 56, 'Electronics Engineering Technician', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(57, 57, 'Pipelayer', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(58, 58, 'Lawyer', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(59, 59, 'Counseling Psychologist', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(60, 60, 'Grinding Machine Operator', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(61, 61, 'Manufactured Building Installer', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(62, 62, 'Camera Repairer', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(63, 63, NULL, '2020-05-18 01:55:58', '2020-05-18 01:55:58'),
(64, 64, NULL, '2020-05-21 03:50:26', '2020-05-21 03:50:26'),
(65, 65, NULL, '2020-05-21 03:50:58', '2020-05-21 03:50:58'),
(66, 66, NULL, '2020-05-21 03:51:16', '2020-05-21 03:51:16'),
(67, 67, NULL, '2020-05-21 04:05:34', '2020-05-21 04:05:34');

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
(1, 53, 'Teacher Assistant', 'Expedita quos officia incidunt voluptatem quos. Modi impedit architecto et voluptatum porro architecto. Impedit quis libero voluptatem quia neque.', 'https://marvin.biz/dignissimos-et-enim-autem-aliquam.html', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(2, 54, 'Silversmith', 'Aut sequi eius eius voluptatem soluta deserunt. Nobis eum dicta quas. Qui sed quo adipisci voluptatibus quo. Ex delectus autem magni laborum non maiores. Animi repellendus ab omnis fugit eveniet itaque nulla.', 'http://glover.com/at-tenetur-laborum-praesentium-voluptates-delectus-ipsam.html', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(3, 55, 'Mail Clerk', 'Minima consequatur ab autem a. Rerum qui qui et est sunt corporis. Eveniet et et accusantium.', 'https://www.rodriguez.com/itaque-harum-doloremque-sapiente-alias-laboriosam-temporibus-soluta', '2020-05-18 01:41:47', '2020-05-18 01:41:47'),
(4, 56, 'Dispatcher', 'Magni eos et fugit repudiandae voluptas voluptatem. Molestiae cupiditate quae ipsam voluptatem facere sed dolore est. Asperiores est accusantium nostrum ducimus laborum et. Animi voluptas quae repellat sit facilis.', 'http://dooley.info/inventore-tenetur-officiis-sed-ipsum-tenetur-quam', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(5, 57, 'Sales and Related Workers', 'Quod placeat molestiae debitis et. Sunt laboriosam quibusdam delectus et sed neque. Dolor est exercitationem deleniti laborum molestias cum ut voluptates.', 'http://keeling.com/nihil-quo-voluptatum-modi-eum-earum-culpa-tempora-sapiente', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(6, 58, 'Insurance Investigator', 'Nesciunt sapiente et et eum voluptatum. Sed temporibus provident doloribus provident itaque ut. Et repellat et sunt qui qui eum qui. Eos et delectus quas sit harum enim blanditiis.', 'http://schneider.com/', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(7, 59, 'Logging Tractor Operator', 'Vitae veritatis ratione ea recusandae. Suscipit nobis qui doloribus id doloremque maxime iusto. Ea ut molestias vel omnis. Hic sed id reiciendis error. Cum sunt deleniti odit porro qui ut qui.', 'http://herman.net/quasi-dignissimos-minus-id-aspernatur-atque-illum-corporis', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(8, 60, 'Sailor', 'Pariatur explicabo quia unde. Quis facilis commodi dolore odio. Fugit quos perferendis consequatur sit dolore magnam a.', 'http://www.reilly.com/voluptate-ea-mollitia-minus-dolores-consequuntur-suscipit-quasi', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(9, 61, 'Telecommunications Facility Examiner', 'Est nisi a natus qui sint. Ipsum ut iure quia explicabo voluptate. Libero laborum repudiandae ea occaecati numquam debitis. Dolor expedita sapiente quis vero tenetur non.', 'http://www.gerlach.biz/', '2020-05-18 01:41:48', '2020-05-18 01:41:48'),
(10, 62, 'Food Preparation Worker', 'Molestiae quod consectetur recusandae. Non ab quod non voluptatem dolorum fuga officia.', 'https://www.connelly.com/delectus-quaerat-qui-nesciunt-et', '2020-05-18 01:41:48', '2020-05-18 01:41:48');

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
(56, 3, 'Roxanne Jerde', 'West', 'roxanne-jerde-west', 'liliana.shields@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'f62ed7d948122a74e709d0464dfdf955.jpg', NULL, NULL, NULL, NULL, 'e3AfJYYsh8', '2020-05-18 01:41:46', '2020-05-18 01:41:46'),
(58, 2, 'Helena Franecki DDS', 'Williamson', 'helena-franecki-dds-williamson', 'mathilde.sporer@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6a3220f7a3dc4a62214f15529be86b57.jpg', NULL, NULL, NULL, NULL, 'DYFDIwcNMu', '2020-05-18 01:41:46', '2020-05-18 01:41:46'),
(59, 2, 'Lavada Skiles', 'Dibbert', 'lavada-skiles-dibbert', 'alvina59@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a0f14c011ba3ad042aff5d6c3e88ea0a.jpg', NULL, NULL, NULL, NULL, 'dDxGzNrl9l', '2020-05-18 01:41:46', '2020-05-18 01:41:46'),
(60, 3, 'Garrison Jast', 'Labadie', 'garrison-jast-labadie', 'delaney71@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ef543d55e9ebaccd46692e000d8b12e2.jpg', NULL, NULL, NULL, NULL, 'SgxCDT2afw', '2020-05-18 01:41:46', '2020-05-18 01:41:46'),
(61, 1, 'Gardner Brekke', 'Heathcote', 'gardner-brekke-heathcote', 'alesch@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '12f32c4146e0becf824346e6c15837ca.jpg', NULL, NULL, NULL, NULL, '3FxMZmCpUa', '2020-05-18 01:41:46', '2020-05-18 01:41:46'),
(64, 3, 'José Villanueva', NULL, 'jose-villanueva', 'al049738@uacam.mx', '$2y$10$b3ZJapY3f0y0vrdIrs.enOUgpqpNWakTaBgqkG7Y6BEWpeYiLwfCO', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-21 03:50:26', '2020-05-21 03:50:26'),
(65, 2, 'teacher', NULL, 'teacher', 'teacher_cem@gmail.com', '$2y$10$KjGcbGF0T0uY6SyKgkP90.EZpdxM/mT3naixfkyOorrYUOUxRDOIW', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-21 03:50:58', '2020-05-21 03:50:58'),
(66, 1, 'administrador', NULL, 'administrador', 'admin_cem@gmail.com', '$2y$10$0/TfWUpC9VaUIokhkiof9OdUZ/h97jFvjv.DnjPl1l9Ba4lZWkxfu', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-21 03:51:16', '2020-05-21 03:51:16'),
(67, 3, 'estudiante', NULL, 'estudiante', 'student_cem@gmail.com', '$2y$10$FVn9H9qg9.knj6TY48g4XO.86DiTehIOzCrXvaTXQ8/ZKGix8K9Iy', NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-21 04:05:34', '2020-05-21 04:05:34');

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
-- Indices de la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requirements_course_id_foreign` (`course_id`);

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
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Filtros para la tabla `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Filtros para la tabla `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Filtros para la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_social_accounts`
--
ALTER TABLE `user_social_accounts`
  ADD CONSTRAINT `user_social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
