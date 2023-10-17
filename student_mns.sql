-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 12:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mns`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `starting_date` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `offer_fee` int(11) NOT NULL DEFAULT 0,
  `banner_image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `teacher_id`, `title`, `fee`, `starting_date`, `duration`, `image`, `description`, `status`, `created_at`, `updated_at`, `offer_fee`, `banner_image`) VALUES
(1, 9, 'Et voluptate ut dolo', 80, '66', 'Molestiae qui tempor', 'upload/course-images/ssmsb7_1662960719.png', 'Itaque sim/ilique exe.', 1, '2022-09-11 23:31:59', '2023-10-03 00:26:54', 5000, 'upload/course-offer-images/ssmsb7_1696314414.png'),
(2, 9, 'Ipsum ex consequat', 15, '2015-10-13', 'Dolores similique co', 'upload/course-images/ssmsb7_1662961129.png', 'ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttDuis temporibus duis.', 1, '2022-09-11 23:38:49', '2023-10-03 00:27:26', 50000, 'upload/course-offer-images/ssmsb7_1696314446.png'),
(3, 9, 'Nam qui possimus es', 64, '1985-12-05', '100', 'upload/course-images/ssmsb7_1662964052.jpg', '<p>uttttttttttttthihjdxfjhpidjhpidfjhbpdfijhb</p>', 1, '2022-09-12 00:27:32', '2023-10-03 00:29:43', 0, NULL),
(4, 9, 'Voluptatem quae qui', 73, '1991-10-26', 'Quisquam rerum qui i', 'upload/course-images/ssmsb7_1663040430.png', 'qw qeytujhrfyujshmnvhjgydikmug&nbsp; nmjmyfguj m', 1, '2022-09-12 21:40:30', '2023-10-03 00:29:41', 12000, 'upload/course-offer-images/ssmsb7_1696314183.jpg'),
(5, 13, 'Python programming', 7000, '2022-09-06', '100 Hour', 'upload/course-images/ssmsb7_1663041273.webp', '<p>Description</p><p>Do you want to become a programmer? Do you want to learn how to create games, automate your browser, visualize data, and much more?</p><p><br></p><p>If you’re looking to learn Python for the very first time or need a quick brush-up, this is the course for you!</p><p><br></p><p>Python has rapidly become one of the most popular programming languages around the world. Compared to other languages such as Java or C++, Python consistently outranks and outperforms these languages in demand from businesses and job availability. The average Python developer makes over $100,000 - this number is only going to grow in the coming years.</p><p><br></p><p>The best part? Python is one of the easiest coding languages to learn right now. It doesn’t matter if you have no programming experience or are unfamiliar with the syntax of Python. By the time you finish this course, you\'ll be an absolute pro at programming!</p><p><br></p><p>This course will cover all the basics and several advanced concepts of Python. We’ll go over:</p><p><br></p><p>The fundamentals of Python programming</p><p><br></p><p>Writing and Reading to Files</p><p><br></p><p>Automation of Word and Excel Files</p><p><br></p><p>Web scraping with BeautifulSoup4</p><p><br></p><p>Browser automation with Selenium</p><p><br></p><p>Data Analysis and Visualization with MatPlotLib</p><p><br></p><p>Regex parsing and Task Management</p><p><br></p><p>GUI and Gaming with Tkinter</p><p><br></p><p>And much more!</p><div><br></div>', 1, '2022-09-12 21:54:33', '2023-10-03 00:29:40', 1000, 'upload/course-offer-images/ssmsb7_1663137624.webp'),
(6, 13, 'Laravel', 89, '1996-07-15', '100 Hour', 'upload/course-images/ssmsb7_1663041400.jpg', '<h4 style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: medium; margin: 1.5em 0px 0.75em; color: rgb(35, 35, 35); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">A Progressive Framework</h4><p style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; color: rgb(86, 84, 84); font-size: medium; line-height: 1.8em; font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">We like to call Laravel a \"progressive\" framework. By that, we mean that Laravel grows with you. If you\'re just taking your first steps into web development, Laravel\'s vast library of documentation, guides, and&nbsp;<a href=\"https://laracasts.com/\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">video tutorials</a>&nbsp;will help you learn the ropes without becoming overwhelmed.</p><p style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; color: rgb(86, 84, 84); font-size: medium; line-height: 1.8em; font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">If you\'re a senior developer, Laravel gives you robust tools for&nbsp;<a href=\"https://laravel.com/docs/9.x/container\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">dependency injection</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/testing\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">unit testing</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/queues\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">queues</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/broadcasting\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">real-time events</a>, and more. Laravel is fine-tuned for building professional web applications and ready to handle enterprise work loads.</p>', 1, '2022-09-12 21:56:40', '2023-10-03 00:29:39', 1000, 'upload/course-offer-images/ssmsb7_1663133463.png'),
(7, 10, 'Why Laravel?', 46, '2016-10-21', 'Aut eum amet facili', 'upload/course-images/ssmsb7_1663041557.jpg', 'Susc<span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.</span><h4 style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: medium; margin: 1.5em 0px 0.75em; color: rgb(35, 35, 35); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">A Progressive Framework</h4><p style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; color: rgb(86, 84, 84); font-size: medium; line-height: 1.8em; font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">We like to call Laravel a \"progressive\" framework. By that, we mean that Laravel grows with you. If you\'re just taking your first steps into web development, Laravel\'s vast library of documentation, guides, and&nbsp;<a href=\"https://laracasts.com/\" style=\"border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">video tutorials</a>&nbsp;will help you learn the ropes without becoming overwhelmed.</p><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">If you\'re a senior developer, Laravel gives you robust tools for</span><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">&nbsp;</span><a href=\"https://laravel.com/docs/9.x/container\" style=\"font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">dependency injection</a><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">,</span><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">&nbsp;</span><a href=\"https://laravel.com/docs/9.x/testing\" style=\"font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">unit testing</a><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">,</span><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">&nbsp;</span><a href=\"https://laravel.com/docs/9.x/queues\" style=\"font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">queues</a><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">,</span><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">&nbsp;</span><a href=\"https://laravel.com/docs/9.x/broadcasting\" style=\"font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; border: 0px solid rgb(231, 232, 242); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(10,178,245,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(235, 68, 50); text-decoration-line: underline; position: relative; transition: all 0.3s ease 0s; word-break: break-word;\">real-time events</a><span style=\"color: rgb(86, 84, 84); font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: medium; background-color: transparent;\">, and more. Laravel is fine-tuned for building professional web applications and ready to handle enterprise work loads.</span>ipit at veritati.', 1, '2022-09-12 21:59:17', '2023-10-03 00:25:39', 52000, 'upload/course-offer-images/ssmsb7_1696314339.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enroll_data` varchar(255) NOT NULL,
  `enroll_timestamp` varchar(255) NOT NULL,
  `enroll_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_type` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `payment_data` varchar(255) DEFAULT NULL,
  `payment_timestamp` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `student_id`, `course_id`, `enroll_data`, `enroll_timestamp`, `enroll_status`, `payment_type`, `payment_status`, `payment_amount`, `payment_data`, `payment_timestamp`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-17', '1663372800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-16 22:37:27', '2022-09-16 22:37:27'),
(2, 3, 5, '2022-09-17', '1663372800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-16 22:38:12', '2022-09-16 22:38:12'),
(3, 4, 5, '2022-09-17', '1663372800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-16 22:41:25', '2022-09-16 22:41:25'),
(4, 5, 6, '2022-09-17', '1663372800', 'pending', 'online', 'pending', 0, NULL, NULL, NULL, '2022-09-16 22:43:09', '2022-09-16 22:43:09'),
(5, 6, 7, '2022-09-17', '1663372800', 'pending', 'online', 'pending', 0, NULL, NULL, NULL, '2022-09-17 00:17:13', '2022-09-17 00:17:13'),
(6, 7, 5, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 21:22:15', '2022-09-17 21:22:15'),
(7, 8, 6, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 22:55:04', '2022-09-17 22:55:04'),
(8, 9, 6, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 22:57:56', '2022-09-17 22:57:56'),
(9, 10, 6, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 22:58:03', '2022-09-17 22:58:03'),
(10, 11, 7, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 22:58:34', '2022-09-17 22:58:34'),
(11, 12, 7, '2022-09-18', '1663459200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2022-09-17 22:58:37', '2022-09-17 22:58:37'),
(12, 7, 7, '2022-09-19', '1663545600', 'pending', 'online', 'pending', 0, NULL, NULL, NULL, '2022-09-18 21:24:06', '2022-09-18 21:24:06'),
(13, 13, 5, '2023-07-19', '1689724800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2023-07-19 11:42:51', '2023-07-19 11:42:51'),
(14, 14, 5, '2023-07-19', '1689724800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2023-07-19 11:59:13', '2023-07-19 11:59:13'),
(15, 14, 6, '2023-07-19', '1689724800', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2023-07-19 11:59:58', '2023-07-19 11:59:58'),
(16, 15, 6, '2023-10-03', '1696291200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2023-10-03 01:06:44', '2023-10-03 01:06:44'),
(17, 16, 6, '2023-10-03', '1696291200', 'pending', 'online', 'pending', 0, NULL, NULL, NULL, '2023-10-03 01:35:50', '2023-10-03 01:35:50'),
(18, 15, 5, '2023-10-03', '1696291200', 'pending', 'cash', 'pending', 0, NULL, NULL, NULL, '2023-10-03 01:47:42', '2023-10-03 01:47:42');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_09_07_061401_create_sessions_table', 1),
(13, '2022_09_08_064603_create_teachers_table', 2),
(16, '2022_09_12_042947_create_courses_table', 3),
(19, '2022_09_13_070014_add_offer_fee_column', 4),
(20, '2022_09_13_070106_add_banner_image_column', 4),
(21, '2022_09_17_032426_create_enrolls_table', 5),
(22, '2022_09_17_033142_create_students_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jjnLsCrEFh2MYNva4g9YrJWMbTx2Ud3PgS14XWD0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSnRjM3l5UE9sSmRXdmpjQ3RHQ3ozWGdpMWhlVWpnUkNBbTVVY1kzaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Qvc3Ntc2I3L3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InN0dWRlbnRfaWQiO2k6MTU7czoxMjoic3R1ZGVudF9uYW1lIjtzOjEzOiJXb21lbidzIHNob2VzIjt9', 1696319028),
('xbQM4Fj9kkl9yMAJWo1EeZvSMAJBsodr4ey6kDSx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkQ0TFdWUVAxZ3dlRU5qeWRrbjdXMlRGNmZ1bGFMMGV5V3B4UjF5ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb3Vyc2UvbWFuYWdlLW9mZmVyIjt9fQ==', 1696329854),
('yvjhVPZTM5eLBWhu1vOzBpQ0tXaorCIr3KdA0v9U', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFk2cUs0bUFlSFpoRUI1WE5WNTdPZ0xhTGU5THBCYzlQTmQxMm1wWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Qvc3Ntc2I3L3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1696329859);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'alamin', 'alamin@gmail.com', '$2y$10$FIySX2vCWw1kwVGOlJ4YHOxePT4vG3ABHH7yilZu3ppGCRxz8KmSi', '0147858520', NULL, NULL, 1, '2022-09-16 22:43:09', '2022-09-16 22:43:09'),
(6, 'Baset laravel', 'larave@gmail.com', '$2y$10$zrjQrNRaUWKueTfTi66T6.NWrpS3uc2ynqFghVXm.oilxy5Zxi82K', '014785203', NULL, NULL, 1, '2022-09-17 00:17:13', '2022-09-17 00:17:13'),
(7, 'Razoan', 'razoan@gmail.com', '$2y$10$vNvGR7fVycjpjNP4/DJi0unh9rgSDM.bgsyGlFOxyXYq8O6XkRoKO', '01743069757', NULL, NULL, 1, '2022-09-17 21:22:14', '2022-09-17 21:22:14'),
(13, 'Razoan Hossian', 'razoan1@gmail.com', '$2y$10$IsBRiQqoWUPgg1WXCyn7RuJuDOJC.LeAboUWc269ea9svVW5/eccq', '3232', NULL, NULL, 1, '2023-07-19 11:42:51', '2023-07-19 11:42:51'),
(14, 'Razoan Hossian', 'smrazoan2@gmail.com', '$2y$10$GTyGCGrGcEUWNlgMAo8JVuEUzIvgN2q2vYYz8bO9xdiYYGhcPY8dq', '123456789', NULL, NULL, 1, '2023-07-19 11:59:13', '2023-07-19 11:59:13'),
(15, 'Women\'s shoes', 'razoan38@gmail.com', '$2y$10$5SW5j33IbHQw4f5f96fv.uCxgnVs72V3M3nBLqwzPBphu5rZrl4P6', '1743069757', NULL, 'upload/student-image/ssmsb7_1696327709.jpg', 1, '2023-10-03 01:06:44', '2023-10-03 04:08:29'),
(16, 'Tobias Terry', 'rygafikuk@mailinator.com', '$2y$10$zcmBocACTIjm6B7APAJFSuMaIvOpj86PSB042nHV9FXKqmDQBDMcW', '55', NULL, NULL, 1, '2023-10-03 01:35:50', '2023-10-03 01:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `number`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Razoan', 'razoan1@gmail.com', '$2y$10$slm8Ed4mj66dLz0aOIMOwOd0WnQ.LkbiPpXkCVb/36Y3IvfhRyu2K', 1746039000, 'upload/teacher-images/ssmsb7_1662876200.jpg', '2022-09-10 22:55:41', '2022-09-11 00:31:08'),
(10, 'Razoan Hossain', 'razoan5@gmail.com', '$2y$10$KXiW9txZ55NlSlHc6XCb/.zdSckPd6HcH5KtEDpo03yIKd5urfKxK', 174306985, 'upload/teacher-images/ssmsb7_1662876254.jpg', '2022-09-10 23:12:43', '2022-09-12 21:58:19'),
(12, 'Galvin Woodward', 'famop@mailinator.com', '$2y$10$mOEuw8s.ocyVbmD8YVsTfeASOUIhIixo9lkK65W/r5PvVXt/tTewS', 14788556, 'upload/teacher-images/ssmsb7_1662876166.jpg', '2022-09-11 00:02:46', '2022-09-11 22:33:50'),
(13, 'Faysal', 'faysal@gmail.com', '$2y$10$RR86.7EWicaRAimJTPfIbuV48Ys8/byoe/CShLMYf36SLjKZniK1.', 14752369, 'upload/teacher-images/ssmsb7_1663040738.jpg', '2022-09-12 21:45:38', '2022-09-12 21:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Razoan', 'razoan@gmail.com', NULL, '$2y$10$ZCoHm86DR1Ngzha5.dNFO.pNUToTCCvbt9.p84PojBG4Jd7/PNOaK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 00:52:10', '2022-09-07 00:52:10'),
(2, 'admin', 'admin@example.com', NULL, '$2y$10$evU6y2ddgTXXcVEkl2vufumZTTEjQtsIxhqA5W15boKog81yTK5.e', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 21:29:47', '2022-09-07 21:29:47'),
(3, 'Razoan Hossian', 'razoan1@gmail.com', NULL, '$2y$10$K6dIOfk2lLAufK8y24TEducncHlBTk0h8xN8O5TnCv0FgLQ4IAq/C', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-13 11:46:06', '2023-07-13 11:46:06'),
(4, 'Razoan Hossian', 'razoan38@gmail.com', NULL, '$2y$10$SaMiKoeff2uJ7RMfgll/.usnDNG6/KBIn6agNNhUMmdRPTA3rziTa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-03 01:20:12', '2023-10-03 01:20:12'),
(5, 'Couch Fabric', 'razoan100@gmail.com', NULL, '$2y$10$QsqZylst9BFKhkJs8uYuEOcPdqPrF8RQkxfXrOBVxyPOsGOPYXag2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-03 01:21:11', '2023-10-03 01:21:11'),
(6, 'Razoan Hossian', 'razoan380@gmail.com', NULL, '$2y$10$HhZFaIppvveP7mUIoQIrJOLczbwu7fTfCcFg8toofT9BjwL6omLxC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-03 01:22:42', '2023-10-03 01:22:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
