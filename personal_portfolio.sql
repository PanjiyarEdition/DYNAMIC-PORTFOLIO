-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 06:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `details` text NOT NULL,
  `fb_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(100) NOT NULL,
  `github_link` varchar(100) NOT NULL,
  `photo` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `name`, `intro`, `details`, `fb_link`, `twitter_link`, `linkedin_link`, `github_link`, `photo`) VALUES
(1, 'JIGAR PANJIYAR', 'I am Jigar Panjiyar. I am a Full-Stack Web Developer.', 'I am a hardworking and ambitious individual with a great passion for computer programming. I am good at programming. I have a good knowledge about HTML, CSS, Bootstrap  PHP, MySQL. Give me the opportunity to spend my skills on the welfare of your company', 'https://www.facebook.com', 'https://twitter.com', 'https://www.linkedin.com', 'https://github.com', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` int(1) NOT NULL,
  `small_text` text NOT NULL,
  `office` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `small_text`, `office`, `address`, `phone`, `email`) VALUES
(1, 'We are always here for you. Fell free to Contact.', 'Assam University ', 'Silchar', '9876543210', 'panjiyaredition@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `education_informations`
--

CREATE TABLE `education_informations` (
  `id` int(1) NOT NULL,
  `degree_name` varchar(100) NOT NULL,
  `year` int(5) NOT NULL,
  `progressbar` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_informations`
--

INSERT INTO `education_informations` (`id`, `degree_name`, `year`, `progressbar`) VALUES
(3, 'B.Tech.', 2024, 80),
(4, 'Higher Secondary ', 2019, 70),
(6, 'Senior Secondary ', 2017, 90);

-- --------------------------------------------------------

--
-- Table structure for table `guest_messages`
--

CREATE TABLE `guest_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_messages`
--

INSERT INTO `guest_messages` (`id`, `name`, `email`, `message`, `status`) VALUES
(8, 'gfd', 'fdbg@gmail.com', 'fgb', 2),
(9, 'Unknown ', 'unknow@gmail.com', 'unknow', 2);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(3) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `photo`) VALUES
(3, '20622.png'),
(4, '96898.jpg'),
(7, '5822.png'),
(14, '35845.png'),
(15, '84952.jpg'),
(18, '50159.png');

-- --------------------------------------------------------

--
-- Table structure for table `my_best_works`
--

CREATE TABLE `my_best_works` (
  `id` int(2) NOT NULL,
  `works_name` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `photo` varchar(110) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_best_works`
--

INSERT INTO `my_best_works` (`id`, `works_name`, `catagory`, `photo`) VALUES
(4, 'Todo List', 'Web Development', 'Todo List.png'),
(5, 'Result Management System', 'Web Dev', 'Result Management System.png'),
(10, 'demo', 'dfkd', 'default.jpg'),
(13, 'Logo Design', 'Graphics', 'default.jpg'),
(14, 'Library Management', 'Project Management', '14.png'),
(15, 'Logo', 'Graphics', '15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(3) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `some_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `some_text`) VALUES
(14, 'fas fa-file-code', 'PSD TO HTML', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution'),
(15, 'fab fa-php', 'Dynamic Website with php', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution'),
(16, 'fab fa-laravel', 'Dynamic Website with laravel', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution');

-- --------------------------------------------------------

--
-- Table structure for table `stastistics`
--

CREATE TABLE `stastistics` (
  `id` int(1) NOT NULL,
  `feature_item` int(11) NOT NULL,
  `active_products` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `clients` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stastistics`
--

INSERT INTO `stastistics` (`id`, `feature_item`, `active_products`, `experience`, `clients`) VALUES
(1, 499, 649, 2, 1499);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(3) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_desegnation` varchar(100) NOT NULL,
  `customer_comment` text NOT NULL,
  `photo` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_name`, `customer_desegnation`, `customer_comment`, `photo`) VALUES
(12, 'MR.X', 'Manager at TATA', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '12.png'),
(18, 'Unknown Fact', 'HR at Panjiyar Edition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '18.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `photo` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `email`, `password`, `status`, `photo`) VALUES
(4, 'JIGAR PANJIYAR', 'jigar@gmail.com', '$2y$10$GTTkIMbeNKVis5XS/GmD.O.cY.B1OZm9XA3JuFPsV8X82/l2r8f22', 2, '4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_informations`
--
ALTER TABLE `education_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_messages`
--
ALTER TABLE `guest_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_best_works`
--
ALTER TABLE `my_best_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stastistics`
--
ALTER TABLE `stastistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education_informations`
--
ALTER TABLE `education_informations`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guest_messages`
--
ALTER TABLE `guest_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `my_best_works`
--
ALTER TABLE `my_best_works`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stastistics`
--
ALTER TABLE `stastistics`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
