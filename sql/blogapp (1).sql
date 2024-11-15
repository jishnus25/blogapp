-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `name`, `author`, `content`, `date`, `image`, `created_at`, `updated_at`) VALUES
(13, 'TechCrunch', 'Brain Heater', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">TechCrunch is a blog that provides technology and startup news, from the latest developments in Silicon Valley to venture capital funding.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The blog’s target audience is technology and business enthusiasts, especially startup founders and investors worldwide.</p>', '2024-11-14', 'images/6wzG3YSZnPJm0oUQRhp0sw7x6SqlsHkSclIlFfZI.png', '2024-11-14 22:50:51', '2024-11-14 22:50:51'),
(14, 'The Verge', 'Chorus', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The Verge’s website homepage is vibrant – a black and white theme with bright accents of orange and magenta.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">There is a collage of large headlines and pictures to attract site visitors’ attention below the blog’s title and the navigation bar.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">In addition, some additional blog content is displayed on the right side of the homepage for easy access, such as featured</p>', '2024-11-13', 'images/J5LSD7rtsHnapASVaBRyGD3uHE8faDDzkLr19Jrn.png', '2024-11-14 22:52:06', '2024-11-14 22:52:06'),
(15, 'Engadget', 'Engadget', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The blog’s simple black-and-white theme gives it a sleek look fitting for a technology blog.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Upon accessing the website, visitors’ eyes are immediately drawn to the collage of photos and headlines of their most recent and popular articles.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Further down the page, more article headlines are sorted by the most recent to the oldest and accompanied by a picture and sentence summarizing the article’s content. This lets visitors know that the blog is regularly updated with a variety of content.&nbsp;</p>', '2024-11-13', 'images/bUNRi50iwHdSblWZBqfky7BTMtwaxtMlNCgdlvt7.png', '2024-11-14 22:53:18', '2024-11-14 22:53:18'),
(16, 'Gizmodo', 'Kinja', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Gizmodo’s homepage is very busy yet still organized.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">It provides as much content as possible in neatly separated sections with different headings, such as&nbsp;<span style=\"font-weight: 700;\">Reviews &amp; Gadgets</span>,&nbsp;<span style=\"font-weight: 700;\">Science</span>, and&nbsp;<span style=\"font-weight: 700;\">Field Guide</span>. Each blog section consists of a collage of various headlines and pictures.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The blog also does a great job of emphasizing text readability by using a simple color scheme consisting of black, white, and blue.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">At the top of the page, there are links to other websites of the same company, promoting the websites and providing easy access to visit them.</p>', '2024-11-13', 'images/51tapAAk6N1e0WMEnaAwzf2wTQCBlIl7fH7JkgPV.png', '2024-11-14 22:54:17', '2024-11-14 22:54:17'),
(17, '9to5Mac', 'Apple products', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Part of the Apple user community, 9to5Mac is a blog covering news and reviews of Apple products.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The website was originally created as a hobby blog covering news on Macs. Since then, 9to5Mac has become a blog covering all Apple products and is now part of the 9to5 blog network, which includes other sites such as&nbsp;<span style=\"font-weight: 700;\">9to5Google</span>&nbsp;and&nbsp;<span style=\"font-weight: 700;\">9to5Toys</span>.</p>', '2024-11-14', 'images/4ZZqYZLQw8xRlm02kfaylHsHgBJEzSPd3VK63FYt.png', '2024-11-14 22:55:34', '2024-11-14 22:55:34'),
(21, 'Girlboss', 'Prismic', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The Girlboss team makes sure the pictures accompanying their articles follow the same color scheme.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">All the pictures feature subjects set in front of a colorful background mix of soft, pastel colors. This way, all the photos come together as a visually-attractive and cohesive unit.</p>', '2024-11-12', 'images/xosrD367yntShffnaAvXaWFKQeHsysFKM4nb3Tk3.png', '2024-11-15 02:05:00', '2024-11-15 02:05:00'),
(22, 'Men\'s Journal', 'word press', '<p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">The website has a very organized navigation bar. For example, if a site visitor hovers over&nbsp;<span style=\"font-weight: 700;\">Gear&nbsp;</span>on the navigation bar, various categories – such as&nbsp;<span style=\"font-weight: 700;\">Autos</span>,&nbsp;<span style=\"font-weight: 700;\">Tech</span>, and&nbsp;<span style=\"font-weight: 700;\">Fitness&nbsp;</span>– will appear, complete with corresponding pictures.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Visitors can even click on the arrow on either side of the categories to check out more categories.</p><p style=\"margin-bottom: 0px; padding-left: 0px; font-size: 20px; color: rgb(54, 52, 77); letter-spacing: 0.3px; line-height: 32px; padding-bottom: 20px; font-family: Muli, sans-serif;\">Use this feature to find the desired content quickly and easily</p>', '2024-11-06', 'images/S8r2wvxWCJmcdTO6m1ujC5PpEu5WRQb86wCK3Es7.png', '2024-11-15 02:11:22', '2024-11-15 02:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_14_144311_create_users_table', 2),
(6, '2024_11_14_161056_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'blogApp', 'c28dc8e6d9c771392540eb34c8c6214568e845e691cf0a0719f5b1a6f4fdc596', '[\"*\"]', NULL, NULL, '2024-11-14 11:36:40', '2024-11-14 11:36:40'),
(2, 'App\\Models\\User', 1, 'blogApp', 'aa37eb53703e1af34b5fd45ce4f0dc4ea7c30dd4f3d391352112ddb396a8f3ae', '[\"*\"]', NULL, NULL, '2024-11-14 11:36:43', '2024-11-14 11:36:43'),
(3, 'App\\Models\\User', 1, 'blogApp', 'd152b7cac1bc107f60cb9ea155222c0dd56fa09b25852280e2e7f6efd6405a3e', '[\"*\"]', NULL, NULL, '2024-11-14 11:36:44', '2024-11-14 11:36:44'),
(4, 'App\\Models\\User', 1, 'blogApp', '31adaef6ea81398a26d0dd4995710c676218065b4740c026b141cb2ffae156b6', '[\"*\"]', NULL, NULL, '2024-11-14 11:36:51', '2024-11-14 11:36:51'),
(5, 'App\\Models\\User', 1, 'blogApp', 'e91980275d1bcdf462547d88ef9a0046ff69d881fa2b99a0be0720747a8624a7', '[\"*\"]', NULL, NULL, '2024-11-14 11:38:59', '2024-11-14 11:38:59'),
(6, 'App\\Models\\User', 1, 'blogApp', '609e5efa73a96934d40c0c0f84ba831150dc53509217f73f4e6f997e0a2e40d4', '[\"*\"]', NULL, NULL, '2024-11-14 11:39:01', '2024-11-14 11:39:01'),
(7, 'App\\Models\\User', 1, 'blogApp', 'e69b1b223e17f84ade871444788d13bd80d46ae5dcdf4358ea0f13fa665b7ba2', '[\"*\"]', NULL, NULL, '2024-11-14 11:48:35', '2024-11-14 11:48:35'),
(8, 'App\\Models\\User', 1, 'blogApp', 'de6521ad07aa345b6f4a8b8bffac6d0047772b0e4f963f6bbf65bb665e00816e', '[\"*\"]', NULL, NULL, '2024-11-14 11:48:44', '2024-11-14 11:48:44'),
(9, 'App\\Models\\User', 1, 'blogApp', '6341652638db947604accd435a798ac150e7e633476d3ea3b0d32796ed6eaadd', '[\"*\"]', NULL, NULL, '2024-11-14 11:48:59', '2024-11-14 11:48:59'),
(10, 'App\\Models\\User', 1, 'blogApp', '288fde361d7487fae242f2b8807fe43f73268ec8eb5fb685d308d0371a9d9d14', '[\"*\"]', NULL, NULL, '2024-11-14 11:50:36', '2024-11-14 11:50:36'),
(11, 'App\\Models\\User', 1, 'blogApp', 'bdd9fc8b66ed8e5f8e9a2b8112e280f50a062bf840c8d60c6782a3022d0ac709', '[\"*\"]', NULL, NULL, '2024-11-14 11:50:52', '2024-11-14 11:50:52'),
(12, 'App\\Models\\User', 1, 'blogApp', '22f10b6bea67b4ae19440fd319fe4b08b69c82d72388971901e380be26417319', '[\"*\"]', NULL, NULL, '2024-11-14 11:50:58', '2024-11-14 11:50:58'),
(13, 'App\\Models\\User', 1, 'blogApp', '4eaa3bbb75377bcb5615fbaf7de22d2a64f467f7b6e850b3467df06c31b0ee0d', '[\"*\"]', NULL, NULL, '2024-11-14 11:53:56', '2024-11-14 11:53:56'),
(14, 'App\\Models\\User', 1, 'blogApp', '3255f14240155b135f94aa50728be331b33b405be2955fe9a272ae1bdd048534', '[\"*\"]', NULL, NULL, '2024-11-14 12:02:57', '2024-11-14 12:02:57'),
(15, 'App\\Models\\User', 1, 'blogApp', '7ed91368f28846376638cd134493d97dd73faf376e8788a274a9b9c7a68f12bf', '[\"*\"]', NULL, NULL, '2024-11-14 12:07:13', '2024-11-14 12:07:13'),
(16, 'App\\Models\\User', 1, 'blogApp', 'ad380bd6acfc739aa3d86b74122781dd70d779c7d94eafcaea8b2e67e50fd647', '[\"*\"]', NULL, NULL, '2024-11-14 12:12:36', '2024-11-14 12:12:36'),
(17, 'App\\Models\\User', 1, 'blogApp', '8ee60218fedb1f9866172bb75d643ff947ee6e28921cc7b5fe7b165f166ac561', '[\"*\"]', NULL, NULL, '2024-11-14 12:17:31', '2024-11-14 12:17:31'),
(18, 'App\\Models\\User', 1, 'blogApp', 'fb1d995e485d1eead5557931294cb0056f18eb2927dd9c7614f588f2a32a3b5c', '[\"*\"]', NULL, NULL, '2024-11-14 12:21:12', '2024-11-14 12:21:12'),
(19, 'App\\Models\\User', 1, 'blogApp', 'c829a8c1d8545796ba772be68f1e953e36cd3d315b34e10447df3eeb842ea334', '[\"*\"]', NULL, NULL, '2024-11-14 12:24:40', '2024-11-14 12:24:40'),
(20, 'App\\Models\\User', 1, 'blogApp', '538021a56aebbdc2866ebe86dbd48d299ff252fef55baa87bd82d2aaefe09888', '[\"*\"]', NULL, NULL, '2024-11-14 12:25:43', '2024-11-14 12:25:43'),
(21, 'App\\Models\\User', 1, 'blogApp', 'eaa3536c791023c2e911411417de5061b95c2da420809efca10f3073611fc26c', '[\"*\"]', NULL, NULL, '2024-11-14 12:26:42', '2024-11-14 12:26:42'),
(22, 'App\\Models\\User', 1, 'blogApp', '2585f1d134f9247e80ac3a7b729e04a5b00f05d643eda37e3f4de282c7acdfd0', '[\"*\"]', NULL, NULL, '2024-11-14 12:27:22', '2024-11-14 12:27:22'),
(23, 'App\\Models\\User', 1, 'blogApp', '93fe7bc64c3ed9ebd19ce46d281168688138469dabb8fe8752c832438c35740d', '[\"*\"]', NULL, NULL, '2024-11-14 12:43:33', '2024-11-14 12:43:33'),
(24, 'App\\Models\\User', 1, 'blogApp', '2eed85b19a23c410e886a6a29b3c4a886ca7766e6b25b8722078da38dc38e952', '[\"*\"]', NULL, NULL, '2024-11-14 13:00:13', '2024-11-14 13:00:13'),
(25, 'App\\Models\\User', 1, 'blogApp', '9bf1e0904224b83dce8371367758ebade4340959704b8de24cc475b401da085e', '[\"*\"]', NULL, NULL, '2024-11-14 16:19:13', '2024-11-14 16:19:13'),
(26, 'App\\Models\\User', 1, 'blogApp', 'ce3f8650e234bbe66160bf42d3b604e1ca549a47206af0967902f41b6f00275f', '[\"*\"]', NULL, NULL, '2024-11-14 16:21:51', '2024-11-14 16:21:51'),
(27, 'App\\Models\\User', 1, 'blogApp', '653ed1c42733c98f56d964ed0f79a5f8088662bf42f85fcd47cb70c84d90a30c', '[\"*\"]', NULL, NULL, '2024-11-14 17:12:10', '2024-11-14 17:12:10'),
(28, 'App\\Models\\User', 1, 'blogApp', '9e73c500e6deedadf3e2490583fade7c3a3a720ba8d7d609c7474b6e8c65f9f0', '[\"*\"]', NULL, NULL, '2024-11-14 22:48:38', '2024-11-14 22:48:38'),
(29, 'App\\Models\\User', 1, 'blogApp', '1f22f84786a986fa73155d4098648cc38f47d92d2d6d7368f166369966c6ad94', '[\"*\"]', NULL, NULL, '2024-11-14 23:29:53', '2024-11-14 23:29:53'),
(30, 'App\\Models\\User', 1, 'blogApp', '56f06d77b77f376040855167bf06f10d7198c4f83b9e4428f1952eb956e69378', '[\"*\"]', NULL, NULL, '2024-11-14 23:33:22', '2024-11-14 23:33:22'),
(31, 'App\\Models\\User', 1, 'blogApp', '22aca57bdf5bdd3a9933140d513fb03f9fa4f6f7f2525e1863470303821a0b6b', '[\"*\"]', NULL, NULL, '2024-11-14 23:43:34', '2024-11-14 23:43:34'),
(32, 'App\\Models\\User', 1, 'blogApp', 'e97fe48938fdc2c2b6b79d921aa816bb38574df6e3b6ed4bb0c11e81862e25b0', '[\"*\"]', NULL, NULL, '2024-11-14 23:44:05', '2024-11-14 23:44:05'),
(33, 'App\\Models\\User', 1, 'blogApp', 'ce2957ab7343fa7a82f4b6180009e12d57ed453b5c3258c6970010fd1aaa2e48', '[\"*\"]', NULL, NULL, '2024-11-14 23:44:43', '2024-11-14 23:44:43'),
(34, 'App\\Models\\User', 1, 'blogApp', 'a582bbb52d703fa8b37aa11e7c5358f971602f64aa75c0a168e3fc54a577a634', '[\"*\"]', NULL, NULL, '2024-11-14 23:47:28', '2024-11-14 23:47:28'),
(35, 'App\\Models\\User', 1, 'blogApp', 'fcb1456ffb07a2f240e4ed4a261a75b56bf09dc2bbc7fbd315ace654649e2477', '[\"*\"]', NULL, NULL, '2024-11-14 23:51:06', '2024-11-14 23:51:06'),
(36, 'App\\Models\\User', 1, 'blogApp', 'd7ddfa324bac3b4f7a01ccc24f48c4ea1d6b1a769eb720fc4752ae93ceef0199', '[\"*\"]', NULL, NULL, '2024-11-14 23:57:05', '2024-11-14 23:57:05'),
(37, 'App\\Models\\User', 1, 'blogApp', '5d9ef246b43a0fd084eff9f4eecdceb6786111a0a495675f233a5e92b673e9be', '[\"*\"]', NULL, NULL, '2024-11-15 00:06:27', '2024-11-15 00:06:27'),
(38, 'App\\Models\\User', 1, 'blogApp', '6d7a7bd823f8f62845df42be1c0d87547dded02c09bf6926bcd68ad1ac955d25', '[\"*\"]', NULL, NULL, '2024-11-15 00:11:39', '2024-11-15 00:11:39'),
(39, 'App\\Models\\User', 1, 'blogApp', '0f94336c34036cd5b099cede8f0c11c54acc513185c2b41797aac3ad022cc7ea', '[\"*\"]', NULL, NULL, '2024-11-15 00:15:19', '2024-11-15 00:15:19'),
(40, 'App\\Models\\User', 1, 'blogApp', '37f7fa10ea2708230805f56a4355ac9d6a99663da53f772395af23ca0f68b8e8', '[\"*\"]', NULL, NULL, '2024-11-15 00:25:13', '2024-11-15 00:25:13'),
(41, 'App\\Models\\User', 1, 'blogApp', 'c932733cf44bbd00067cc1b6a3a6f15556bb65e915ed67640a90ee53da15ab3a', '[\"*\"]', NULL, NULL, '2024-11-15 00:28:05', '2024-11-15 00:28:05'),
(42, 'App\\Models\\User', 1, 'blogApp', '01fdf9ac6cce0b8dbd1fde185feaa886219d29413b44b5b0e3d4d04aa7e86770', '[\"*\"]', NULL, NULL, '2024-11-15 00:29:10', '2024-11-15 00:29:10'),
(43, 'App\\Models\\User', 1, 'blogApp', 'b1ae4edd672e24dfbcc0c877e8396ff982fd1111a131ca98f042cba6d93ab28c', '[\"*\"]', NULL, NULL, '2024-11-15 00:29:23', '2024-11-15 00:29:23'),
(44, 'App\\Models\\User', 1, 'blogApp', '5793dc24a1e9ceb84ca3fd4d3691ac50c4736ffa187e631ece0b7d694a721261', '[\"*\"]', NULL, NULL, '2024-11-15 00:31:53', '2024-11-15 00:31:53'),
(45, 'App\\Models\\User', 1, 'blogApp', '28d1cffe840c28f8eecaee35e57449a31de746893e9107ad12eb55154b56c6d4', '[\"*\"]', NULL, NULL, '2024-11-15 00:33:31', '2024-11-15 00:33:31'),
(46, 'App\\Models\\User', 1, 'blogApp', 'f5503162c39d82026c9d239b0ca5c2b7216785960695ff4598a6ddadec1d3d8f', '[\"*\"]', NULL, NULL, '2024-11-15 00:35:18', '2024-11-15 00:35:18'),
(47, 'App\\Models\\User', 1, 'blogApp', '4da2c7f973291d8a08b4e374101c3e76fe42bba67f3371a884423c2164559c03', '[\"*\"]', NULL, NULL, '2024-11-15 00:35:20', '2024-11-15 00:35:20'),
(48, 'App\\Models\\User', 1, 'blogApp', '9469840fe24b5dfe37537351a50280dfeb74d93af7290402b9d060c5ed5d675e', '[\"*\"]', NULL, NULL, '2024-11-15 00:36:04', '2024-11-15 00:36:04'),
(49, 'App\\Models\\User', 1, 'blogApp', '9dc4e06a19df3553c636db29ff5bd18395e3a251d8aee2a55ca07c017c5e91c7', '[\"*\"]', NULL, NULL, '2024-11-15 00:39:32', '2024-11-15 00:39:32'),
(50, 'App\\Models\\User', 1, 'blogApp', '6d31101a4768ae5ef72b03b284774a18fd212272eccaafa4d3b7c4b77a8ec872', '[\"*\"]', NULL, NULL, '2024-11-15 00:39:50', '2024-11-15 00:39:50'),
(51, 'App\\Models\\User', 1, 'blogApp', 'ba340d834e21b8bf1c8d7271eb18a81217a7c578d94795f9a31e3042bac323b7', '[\"*\"]', NULL, NULL, '2024-11-15 00:52:23', '2024-11-15 00:52:23'),
(52, 'App\\Models\\User', 1, 'blogApp', 'f19c6180cdeba7a0a77efe049ef6676b14cc1a176fc54ef11ce3e6791b680fb2', '[\"*\"]', NULL, NULL, '2024-11-15 00:55:14', '2024-11-15 00:55:14'),
(53, 'App\\Models\\User', 1, 'blogApp', 'ed965dec982f0dcc2ac407dd3a4342117d981f73c9692ddcd0b8f0d1215a6ca1', '[\"*\"]', NULL, NULL, '2024-11-15 00:56:04', '2024-11-15 00:56:04'),
(54, 'App\\Models\\User', 1, 'blogApp', 'bd3cea0678310a8acc50766bd5cbf3c2bfa7c0a85e3f226e3795a320df4e3066', '[\"*\"]', NULL, NULL, '2024-11-15 01:10:53', '2024-11-15 01:10:53'),
(55, 'App\\Models\\User', 1, 'blogApp', 'daf5d0121bfcf68cace29c57db90e6c0f74226d6172c00b520ac928f5cd45d68', '[\"*\"]', NULL, NULL, '2024-11-15 01:11:21', '2024-11-15 01:11:21'),
(56, 'App\\Models\\User', 1, 'blogApp', '5a9ef40d9d08070bb7b2032bb3436fc4b9b64827dbf4a1df022e1a103890853e', '[\"*\"]', NULL, NULL, '2024-11-15 01:14:26', '2024-11-15 01:14:26'),
(57, 'App\\Models\\User', 1, 'blogApp', 'fe0b89b9f29623353d8686fb21d61ee4d478a53de43b5706de2f8f0ab74aad27', '[\"*\"]', NULL, NULL, '2024-11-15 01:26:05', '2024-11-15 01:26:05'),
(58, 'App\\Models\\User', 1, 'blogApp', '7d9c7af04ff83b26064745abfe44f089496c2ece6b5f9708766f8edb473541cd', '[\"*\"]', NULL, NULL, '2024-11-15 01:31:57', '2024-11-15 01:31:57'),
(59, 'App\\Models\\User', 1, 'blogApp', '8d19d2ae0bc278163683e200e83f7922ee440b17699f33f3473e3bf92eeaa720', '[\"*\"]', NULL, NULL, '2024-11-15 01:41:37', '2024-11-15 01:41:37'),
(60, 'App\\Models\\User', 1, 'blogApp', '2bf3e95f43c841ffd5d0cc854d4be667f11065a92752538f09652fcb0bc52c56', '[\"*\"]', NULL, NULL, '2024-11-15 01:51:49', '2024-11-15 01:51:49'),
(61, 'App\\Models\\User', 1, 'blogApp', 'e338568c17f7c918d8c0b497d10e2f8bb7239a882e099834e55d37893753f786', '[\"*\"]', NULL, NULL, '2024-11-15 01:53:23', '2024-11-15 01:53:23'),
(62, 'App\\Models\\User', 1, 'blogApp', '708bec8ff94ffcd05ced22d7f3aad1499ea7d2148411214497b4f98b25cfd59d', '[\"*\"]', NULL, NULL, '2024-11-15 01:57:33', '2024-11-15 01:57:33'),
(63, 'App\\Models\\User', 1, 'blogApp', 'f83911eb0f4bad1df4c64e64389fccf48c69e6b28185d745fd8aa55f6510e94b', '[\"*\"]', NULL, NULL, '2024-11-15 02:03:22', '2024-11-15 02:03:22'),
(64, 'App\\Models\\User', 1, 'blogApp', 'd6074139bc4964ceef0a9aa132465ecc84c37396feb9808e937b3b16b657b498', '[\"*\"]', NULL, NULL, '2024-11-15 02:03:38', '2024-11-15 02:03:38'),
(65, 'App\\Models\\User', 1, 'blogApp', '07a77c236a6f8552a3704df99a5a116e074b7175d7af0131396bdd067d311e30', '[\"*\"]', NULL, NULL, '2024-11-15 02:10:32', '2024-11-15 02:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$G6.rdBZ0fSMgVLmgRpYb5Ow3ukt0e01H6ELWZjYteLv5y.u.6k0hC', '2024-11-14', '2024-11-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
