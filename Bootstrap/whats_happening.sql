-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 11, 2024 at 10:02 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whats_happening`
--

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `EventID` int(11) NOT NULL,
  `EventTypeID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `EventDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SubmitDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EventTitle` varchar(100) NOT NULL,
  `EventImage` varchar(50) NOT NULL,
  `EventDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`EventID`, `EventTypeID`, `GroupID`, `EventDate`, `SubmitDate`, `EventTitle`, `EventImage`, `EventDesc`) VALUES
(1, 5, 1, '2024-02-25 22:00:00', '2024-01-04 01:11:00', 'Support Spay and Neuter Day', 'files/images/events/animal1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sodales vel mi sit amet molestie. Suspendisse porttitor ultricies accumsan.'),
(2, 3, 6, '2024-02-26 15:00:00', '2024-01-11 01:11:00', 'Come Skate on the Oval', 'files/images/events/skate3.jpg', 'Nullam sit amet quam mauris. Vestibulum lacinia libero non magna lobortis commodo. Curabitur venenatis eros non dapibus iaculis.'),
(3, 3, 8, '2024-02-28 00:00:00', '2024-01-15 09:07:00', 'Learn to Ski', 'files/images/events/ski6.jpg', 'Nulla vitae enim quis sapien suscipit commodo. Curabitur ut pellentesque turpis. Aenean consectetur dignissim posuere.'),
(4, 4, 2, '2024-02-28 21:00:00', '2024-02-01 18:08:00', 'Food/Wine Pairing', 'files/images/events/food1.jpg', 'Nullam tincidunt metus in massa lobortis, at aliquet ligula tincidunt. Quisque nisi arcu, scelerisque eu nunc at, varius vehicula magna. '),
(5, 2, 3, '2024-03-01 22:00:00', '2024-02-18 13:18:00', 'Exhibition of Local Dance', 'files/images/events/dance1.jpg', 'Nullam tincidunt ante vitae est bibendum tempor. Vivamus non libero dolor. Etiam eget dui id erat congue ultrices porttitor non mauris.'),
(6, 5, 4, '2024-03-08 17:00:00', '2024-02-21 01:27:00', 'Local bands compete to raise funds for national competition', 'files/images/events/music1.jpg', 'Sed quis sagittis enim. Nullam non consequat est. Integer nec vestibulum velit. Donec posuere orci metus, nec porta odio pharetra sit amet. '),
(7, 5, 1, '2024-06-02 16:00:00', '2024-02-18 10:16:00', 'Meet, Greet and Adapt Day', 'files/images/events/animal3.jpg', 'Ut ullamcorper ipsum erat, ac fermentum metus congue nec. Aliquam et lorem vel risus maximus tempor sed ut nibh. Integer laoreet libero ac blandit aliquam. '),
(8, 5, 5, '2024-06-25 20:00:00', '2024-02-14 13:08:00', 'Auction of Local art to support local artists', 'files/images/events/art1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae eros metus. Integer porta, sapien sed sodales hendrerit, nunc purus sagittis libero, mattis molestie velit ex a quam.'),
(9, 1, 4, '2024-07-29 21:00:00', '2024-02-18 01:31:00', 'Spring concert', 'files/images/events/music2.jpg', 'Donec sagittis ipsum felis, vel maximus sapien ultricies id. Aenean eget dolor at nibh dapibus congue sit amet ut neque. Ut vehicula viverra massa, sollicitudin dapibus erat euismod sit amet.'),
(10, 4, 2, '2024-06-30 18:00:00', '2024-02-20 01:31:00', 'Spring Hamper - Get Yours', 'files/images/events/food7.jpg', 'Etiam nec massa ullamcorper, lobortis mauris aliquet, ultrices tellus. Aliquam erat volutpat. Phasellus lacinia ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ');

-- --------------------------------------------------------

--
-- Table structure for table `EventType`
--

CREATE TABLE `EventType` (
  `EventTypeID` int(11) NOT NULL,
  `EventType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EventType`
--

INSERT INTO `EventType` (`EventTypeID`, `EventType`) VALUES
(1, 'Music'),
(2, 'Art+Culture'),
(3, 'Sports'),
(4, 'Food'),
(5, 'Fund Raiser');

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(100) NOT NULL,
  `GroupImage` varchar(50) NOT NULL,
  `GroupType` varchar(100) NOT NULL,
  `GroupDesc` text CHARACTER SET utf8mb4 NOT NULL,
  `contactName` varchar(255) NOT NULL,
  `ContactEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`GroupID`, `GroupName`, `GroupImage`, `GroupType`, `GroupDesc`, `contactName`, `ContactEmail`) VALUES
(1, 'Human Society', 'files/images/Groups/HumanSociety.jpg', 'Animal Shelter', 'Nullam id pellentesque ante. Vestibulum in convallis mauris.Duis dolor augue, varius eget gravida eu, ullamcorper vitae sem. Curabitur eleifend maximus finibus. Phasellus sagittis porttitor augue ut commodo.Duis dolor augue, varius eget gravida eu, ullamcorper vitae sem. ', 'Petra Barn', 'pb@hs.com'),
(2, 'Eat Local', 'files/images/Groups/EatLocal.jpg', 'Promotes Local Farms', 'Aenean odio ante, efficitur vel porttitor id, imperdiet ut urna. Ut tincidunt nibh sapien, nec interdum eros fringilla in. Cras accumsan rutrum arcu ac congue. Integer finibus velit eu elementum rutrum.', 'Joe farm', 'joe@farms.com'),
(3, 'Dance NS', 'files/images/Groups/DanceNS.jpg', 'Dance for Youth', 'Sed sit amet urna sed nisl lobortis pharetra sit amet at nulla. Nulla euismod elit in mauris dignissim auctor. Aenean a diam non turpis mollis auctor ac quis est.', 'Ami Glen', 'ami@NSD.com'),
(4, 'Youth Band', 'files/images/Groups/YouthBand.jpg', 'Promotes Local School Bands', 'Ut ligula metus, pretium non dapibus dictum, rutrum at magna. Pellentesque et lorem in diam pharetra cursus eget et ex. Integer finibus velit eu elementum rutrum.', 'Drum Trumpet', 'DT@band.com'),
(5, 'Nocturne Association', 'files/images/Groups/Nocturne.jpg', 'Showcasing and supporting local art', 'Quisque vel rutrum est. Donec in turpis nec enim tincidunt eleifend vel eu nunc.Varius eget gravida eu, ullamcorper vitae sem.', 'P Blue', 'pb@nocturne.com'),
(6, 'Outdoor Skating Group', 'files/images/Groups/Outdoor_Skate.jpg', 'Organizes outdoor skating', 'Nunc vel commodo sapien. Phasellus ac enim sit amet ligula congue scelerisque sit amet quis tellus.Ut tincidunt nibh sapien, nec interdum eros fringilla in. ', 'Blade Fast', 'bf@rink.com'),
(7, 'NS Soccer Association', 'files/images/Groups/NS_Soccer.jpg', 'Organzies youth soccer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat, est et posuere maximus, magna arcu dapibus justo, ac congue dui dui sed tellus. Aliquam bibendum efficitur lacinia. Quisque ac pellentesque turpis', 'Soca Foot', 'soca@soccer.com'),
(8, 'NS Ski School', 'files/images/Groups/NS_Ski.jpg', 'Downhill skiing', 'Aliquam consequat, est et posuere maximus, magna arcu dapibus justo.', 'SK Downing', 'sk@hill.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `events_ibfk_1` (`EventTypeID`),
  ADD KEY `events_ibfk_2` (`GroupID`);

--
-- Indexes for table `EventType`
--
ALTER TABLE `EventType`
  ADD PRIMARY KEY (`EventTypeID`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `EventType`
--
ALTER TABLE `EventType`
  MODIFY `EventTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Events`
--
ALTER TABLE `Events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`EventTypeID`) REFERENCES `EventType` (`EventTypeID`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`GroupID`) REFERENCES `Groups` (`GroupID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
