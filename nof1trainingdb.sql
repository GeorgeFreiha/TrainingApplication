-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 09:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nof1trainingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `program_img` varchar(250) NOT NULL,
  `program_name` varchar(250) NOT NULL,
  `program_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `program_img`, `program_name`, `program_type`) VALUES
(4, 'https://ganbarumethod.com/wp-content/themes/astra-child/images/tab/Powerbuild.jpg', 'Powerbuild', 'Neurological'),
(6, 'https://ganbarumethod.com/wp-content/uploads/2020/11/FullBody-GRU.jpg', 'Full Body', 'Hypertrophy'),
(7, 'https://ganbarumethod.com/wp-content/uploads/2020/11/Half-Body-GRU-Program.jpg', 'Half Body', 'Hyperbolic'),
(8, 'https://ganbarumethod.com/wp-content/uploads/2020/11/womensprime.jpg', 'Women\'s Prime', 'Hypertrophy'),
(9, 'https://ganbarumethod.com/wp-content/themes/astra-child/images/tab/Strength.jpg', 'Strength', 'Neurological');

-- --------------------------------------------------------

--
-- Table structure for table `programsplit`
--

CREATE TABLE `programsplit` (
  `id` int(11) NOT NULL,
  `list_of_exercises` varchar(10000) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programsplit`
--

INSERT INTO `programsplit` (`id`, `list_of_exercises`, `program_id`) VALUES
(1, 'Upper1:\r\nA1)Low incline DB press\r\nA2)Flat DB press\r\nB1)Upper-Back row\r\nB2)Low incline trap 3 raise\r\nC1)Triceps dips\r\nC2)DB incline curl\r\nLower1:\r\nA1)RDL\r\nA2)Hip Thrust\r\nB1)Lying leg curl\r\nB2)Horiz back extension\r\nC1)Leg press\r\nUpper2:\r\nA1)Lat chin-up\r\nA2)Lat pull-down\r\nB1)High incline press\r\nB2)Machine lateral raise\r\nC1)Rear delt row\r\nC2)Clavicular Fly\r\nC3)DB Y raise\r\nLower2:\r\nA1)Front squat\r\nA2)Leg press\r\nA3)Goblet squat\r\nB1)Seated Leg curl\r\nB2)DB RDL\r\nC1)Bulgarian split squats (Glutes)', 4),
(2, 'Day1:\r\nA1)Lat Pulldown\r\nB1)Low incline DB press\r\nC1)RDL\r\nD1)Single leg press\r\nE1)Incline DB hammer curl\r\nE2)Katana extensions\r\nDay2:\r\nA)DB high incline press\r\nB1)Rear delt row\r\nB2)Cable middle delt lateral raise\r\nC1)Hip thrust\r\nD1)Banded 45deg hip extension\r\nE1)High cable row\r\nF1)Reverse preacher curl\r\nF2)Preacher curl\r\nDay3:\r\nA)Pendulum squat\r\nB1)Seated leg curl\r\nC1)Clavicular fly\r\nD1)DB Y raise\r\nE1)Cable Pullover\r\nF1)Cable triceps extension\r\nDay4:\r\nA1)T-Bar row\r\nB1)Lying leg curl\r\nC1)Nordic drops\r\nD1)Cable chest press\r\nE1)SA cable biceps curl\r\n', 6),
(3, 'Day1:\r\nA1)Hip thrust\r\nB1)Leg press\r\nC1)Horiz back extension\r\nD1)Ring pushups\r\nE1)High incline Db press\r\nF1)Machine shoulder raise\r\nG1)Cross body Extensions\r\n\r\nDay2:\r\nA1)Pull-ups (upper-back bias)\r\nB1)Machine row (lat bias)\r\nC1)FFE Split squat\r\nD1)Single Leg Extension\r\nE1)Rear delt fly\r\nE2)Standing Cable Curl\r\n\r\nDay3:\r\nA1)Rev band hack squat\r\nB1)Leg Extensions\r\nC1)Single arm lat pulldown\r\nD1)DB row\r\nE1)Inverted row \r\nE2)Rear delt machine\r\nF1)Incline Db curl\r\n', 7),
(4, 'Workout1:\r\nA1)Bulgarian split squat\r\nB1)Hip Thrust\r\nB2)45 deg hip extension\r\nC1)Walking lunge\r\nC2)Goblet Squat\r\nD1)Single leg DB standing calf raise\r\nE1)Low incline DB press\r\nE2)Cable row\r\nF1)Upper-back pulldown\r\nF2)DB Y raise\r\n\r\nWorkout2:\r\nA1)RDL\r\nA2)Cossack squat\r\nB1)Leg press\r\nC1)DB RDL\r\nC2)Garhammer raise\r\nD1)Single leg lying leg curl\r\nE1)Single arm DB row\r\nE2)DB overhead press\r\nF1)Rear delt row\r\nF2)Elevated pushup\r\n\r\nWorkout3:\r\nA1)Goblet Squat\r\nB1)Leg press\r\nB2)Leg press Calf raise\r\nC1)Lying leg curl\r\nD1)Glute kickback\r\nE1)SA lat pulldown\r\nE2)Unrolling Cable row\r\n\r\nWorkout4:\r\nA1)RDL\r\nB1)Hip thrust\r\nB2)Hollowbody hold\r\nC1)Step up\r\nD1)Walking lunge\r\nE1)Single arm cable Y raise\r\nF1)Machine row lats\r\n', 8),
(5, 'Chest&Back\r\nA1)Slight decline DB press\r\nA2)Rear delt row\r\nB1)Lat Pulldown\r\nB2)Cable Chest press\r\n\r\nLower Body 1:\r\nA1)Squat variation\r\nB1)Seated leg curl\r\nB2)Walking lunge\r\nC1)Hanging knee raise\r\n\r\nBack&Shoulders:\r\nA1)Chin ups\r\nA2)High incline DB press\r\nB1)High incline DB press\r\nB2)Upper back row\r\n\r\nLower body 2:\r\nA1)RDL\r\nB1)Smith machine RLE lunge\r\nC1)Single Leg lying leg curl\r\nD1)45degree hip extension\r\n', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programsplit`
--
ALTER TABLE `programsplit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_index` (`program_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `programsplit`
--
ALTER TABLE `programsplit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `programsplit`
--
ALTER TABLE `programsplit`
  ADD CONSTRAINT `programsplit_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
