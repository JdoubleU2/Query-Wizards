-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2023 at 04:45 PM
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
-- Database: `SWAC Football Database`
--
CREATE DATABASE IF NOT EXISTS `SWAC Football Database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `SWAC Football Database`;

-- --------------------------------------------------------

--
-- Table structure for table `Games`
--

DROP TABLE IF EXISTS `Games`;
CREATE TABLE `Games` (
  `GameID` int(10) NOT NULL,
  `HomeTeamID` int(10) DEFAULT NULL,
  `AwayTeamID` int(10) DEFAULT NULL,
  `DatePlayed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Games`
--

INSERT INTO `Games` (`GameID`, `HomeTeamID`, `AwayTeamID`, `DatePlayed`) VALUES
(1, 4, 1, '2023-10-28'),
(2, 1, 5, '2023-09-30'),
(3, 3, 1, '2023-11-11'),
(4, 1, 7, '2023-09-16'),
(5, 1, 5, '2023-09-30'),
(6, 1, 5, '2023-09-30'),
(7, 5, 7, '2023-09-23'),
(8, 7, 4, '2023-10-21'),
(9, 2, 4, '2023-09-03'),
(10, 2, 6, '2023-10-07'),
(11, 2, 7, '2023-11-04'),
(12, 4, 2, '2023-09-03'),
(13, 4, 1, '2023-10-28'),
(14, 2, 7, '2023-11-04'),
(15, 3, 2, '2023-09-02'),
(16, 3, 6, '2023-09-09'),
(17, 3, 4, '2023-10-07'),
(18, 3, 7, '2023-10-28'),
(19, 3, 1, '2023-11-11'),
(20, 5, 7, '2023-09-23'),
(21, 5, 6, '2023-10-14'),
(22, 5, 10, '2023-10-04'),
(23, 6, 3, '2023-09-16'),
(24, 6, 8, '2023-09-21'),
(25, 6, 2, '2023-09-07'),
(26, 6, 4, '2023-11-04'),
(27, 9, 7, '2023-09-14'),
(28, 9, 6, '2023-11-11'),
(29, 9, 3, '2023-10-21'),
(30, 11, 4, '2023-09-30'),
(31, 11, 8, '2023-10-14'),
(32, 11, 2, '2023-10-21'),
(33, 8, 3, '2023-09-30'),
(34, 8, 2, '2023-10-28'),
(35, 8, 5, '2023-10-10'),
(36, 9, 7, '2023-09-14'),
(37, 9, 3, '2023-10-21'),
(38, 9, 5, '2023-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
CREATE TABLE `Players` (
  `PlayerID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Height` varchar(10) DEFAULT NULL,
  `Weight` int(10) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `Players`
--

INSERT INTO `Players` (`PlayerID`, `FirstName`, `LastName`, `Position`, `Height`, `Weight`, `TeamID`) VALUES
(1, 'Tylik', 'Bethea', 'QB', '6\'6', 225, 9),
(2, 'Ejike', 'Brown', 'DL', '6\'2', 247, 9),
(3, 'Julian', 'Calvez', 'QB', '6\'3', 190, 5),
(4, 'Sundiata', 'Anderson', 'DL', '6\'5', 240, 5),
(5, 'Harold ', 'Blood', 'QB', '6\'2', 180, 3),
(6, 'Darius', 'Harry', 'DE', '6\'2', 245, 3),
(7, 'Cornelious ', 'Brown', 'QB', '6\'5', 210, 6),
(8, 'Hayden', 'Aniagor-Gilford', 'DE', '6\'2', 220, 6),
(9, 'Allen', 'Walker', 'LB', '6\'2\"', 234, 2),
(10, 'Rico', 'Powers', 'WR', '6\'2\"', 187, 2),
(11, 'Jared', 'Wilson', 'RB', '5\'11\"', 230, 11),
(12, 'Jaquez', 'Pennimon', 'DB', '6\'1\"', 180, 11),
(13, 'Mekhi', 'Hagens', 'QB', '6\'2\"', 204, 8),
(14, 'Dean', 'Sarris', 'K', '6\'0\"', 176, 8),
(15, 'Jaelyn', 'Lay', 'TE', '6\'6\"', 260, 10),
(104, 'Brian', 'Jenkins Jr', 'WR', '5\'7\"', 160, 1),
(105, 'TreVion', 'Green', 'LB', '6\'0\"', 195, 1),
(106, 'Isaiah', 'Major', 'LB', '6\'1\"', 230, 4),
(107, 'Jeremiah', 'Pruitt', 'TE', '6\'5\"', 230, 4),
(108, 'Evan', 'Means', 'WR', '6\'2\"', 160, 7),
(109, 'Isaiah', 'Bogerty', 'LB', '6\'3\"', 215, 7),
(110, 'Jarveon', 'Howard', 'RB', '5\'10\"', 200, 12),
(111, 'Michael', 'OkamoLufile', 'LB', '6\'2\"', 235, 12),
(112, 'Stacy', 'Brown', 'S', '6\'3\"', 205, 1),
(113, 'Shemar', 'Savage', 'WR', '6\'4\"', 210, 1),
(114, 'Connor', 'Wisham', 'RB', '6\'0\"', 180, 1),
(115, 'Joshua', 'Clarke', 'LB', '6\'2\"', 225, 2),
(116, 'George', 'McCorley', 'WR', '6\'3\"', 215, 2),
(117, 'Jaheem', 'Hazel', 'CB', '6\'0\"', 190, 2),
(118, 'Rodney', 'Johnson', 'DB', '6\'3\"', 200, 3),
(119, 'Cassius', 'Allen', 'WR', '6\'4\"', 200, 3),
(120, 'Keylin', 'Roach', 'DB', '6\'1\"', 185, 3),
(121, 'Lovie', 'Jenkins', 'DB', '6\'1\"', 195, 4),
(122, 'Jaquez', 'Yant', 'RB', '6\'2\"', 235, 4),
(123, 'Jamari', 'Gassett', 'WR', '5\'10\"', 170, 4),
(124, 'Trent', 'Henry', 'DB', '5\'11\"', 195, 5),
(125, 'Nigel', 'Lanier', 'WR', '6\'2\"', 180, 5),
(126, 'Kevin', 'Thomas', 'DB', '6\'0\"', 185, 5),
(127, 'Marquez', 'Beason', 'CB', '5\'11\"', 185, 6),
(128, 'Terrell', 'Gardner', 'WR', '5\'8\"', 160, 6),
(129, 'Kaleb', 'Dawson', 'S', '5\'11\"', 200, 6),
(130, 'Viramontes', 'Pippens', 'DT', '6\'1\"', 300, 7),
(131, 'Andrew', 'Body', 'QB', '6\'1\"', 190, 7),
(132, 'Charles', 'George', 'S', '6\'3\"', 229, 7),
(133, 'Rico', 'Dozier', 'LB', '6\'0\"', 221, 8),
(134, 'Daemon', 'Dawkins', 'WR', '5\'10\"', 170, 8),
(135, 'Kenji', 'Lewis', 'WR', '6\'1\"', 200, 8),
(136, 'Iverson', 'Clement', 'CB', '6\'0\"', 190, 9),
(137, 'Cam\'Ron', 'Ransom', 'QB', '6\'3\"', 227, 9),
(138, 'Tink', 'Boyd', 'WR', '5\'11\"', 186, 9),
(139, 'Colton', 'Adams', 'LB', '6\'1\"', 244, 10),
(140, 'Kisean', 'Johnson', 'WR', '6\'0\"', 209, 10),
(141, 'Tacaris', 'Bozeman', 'RB', '5\'9\"', 182, 10),
(142, 'Andrew', 'Ogletree', 'DL', '6\'2\"', 274, 10),
(143, 'Brandon', 'Williams', 'DB', '5\'10\"', 180, 11),
(144, 'Christian', 'Fagan', 'DB', '5\'9\"', 180, 11),
(145, 'Aaron', 'Webb', 'DB', '6\'0\"', 180, 11),
(146, 'Anthony', 'Williams', 'WR', '6\'0\"', 200, 12),
(147, 'Terreance', 'Ellis', 'LB', '6\'2\"', 220, 12),
(148, 'Malik', 'Rodgers', 'WR', '5\'10\"', 170, 12);

-- --------------------------------------------------------

--
-- Table structure for table `SwacTeams`
--

DROP TABLE IF EXISTS `SwacTeams`;
CREATE TABLE `SwacTeams` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(100) DEFAULT NULL,
  `Mascot` varchar(100) DEFAULT NULL,
  `CoachName` varchar(100) DEFAULT NULL,
  `Record` varchar(10) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `StadiumName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SwacTeams`
--

INSERT INTO `SwacTeams` (`TeamID`, `TeamName`, `Mascot`, `CoachName`, `Record`, `City`, `StadiumName`) VALUES
(1, 'Prairie View A&M', 'Panthers', 'Bubba McDowell', '3-1', 'Prairie View', 'Panther Stadium'),
(2, 'Jackson State University', 'Tigers', 'Thomas Taylor', '3-2', 'Jackson State', 'JSU Stadium'),
(3, 'Southern University A&M', 'Jaguars', 'Eric Dooley', '2-3', 'Southern University', 'A.W. Mumford Stadium'),
(4, 'Florida A&M University', 'Rattlers', 'Willie Simmons', '4-0', 'Tallahassee', 'Bragg Memorial Stadium'),
(5, 'Grambling State', 'Tigers', 'Hugh Jackson', '2-1', 'Grambling', 'Eddie G Robinson Memorial Stadium'),
(6, 'Alabama A&M University', 'Bulldogs', 'Connie Shells', '4-1', 'Huntsville', 'Louis Crews Stadium'),
(7, 'Texas Southern University', 'Tigers', 'Clarence McKinney', '1-4', 'Houston', 'BBVA Stadium'),
(8, 'University of Arkansas at Pine Bluff', 'Golden Lions', 'Doc Gamble', '2-3', 'Pine Bluff', 'Simmons Bank Field'),
(9, 'Bethune-Cookman University', 'Wildcats', 'Terry Sims', '2-3', 'Daytona Beach', 'Municipal Stadium'),
(10, 'Alabama State', 'Hornets', 'Donald Hill-Eley', '3-2', 'Montgomery', 'ASU Stadium'),
(11, 'Mississippi Valley State', 'Delta Devils', 'Vincent Dancy', '1-4', 'Itta Bena', 'Rice-Totten Stadium'),
(12, 'Alcorn State University ', 'Braves', 'Fred McNair', '6-4', 'Lorman, MS', 'Jack Spinks Football Stadium');

--
-- Triggers `SwacTeams`
--
DROP TRIGGER IF EXISTS `check_insert_swac_teams`;
DELIMITER $$
CREATE TRIGGER `check_insert_swac_teams` BEFORE INSERT ON `SwacTeams` FOR EACH ROW BEGIN
    DECLARE teamCount INT;

    -- Check the number of teams in the SwacTeams table
    SELECT COUNT(*)
    INTO teamCount
    FROM SwacTeams;

    -- If the number of teams is already 12, prevent the insertion
    IF teamCount >= 12 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only 12 teams are allowed in the SWAC.';
    END IF;
END
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `before_insert_update_team_statistics` BEFORE INSERT ON `TeamStatistics`
 FOR EACH ROW BEGIN
    DECLARE statCount INT;
    DECLARE teamCount INT;

    -- Check the number of unique StatID values
    SELECT COUNT(DISTINCT StatID) INTO statCount FROM TeamStatistics;

    -- Check the number of unique TeamID values
    SELECT COUNT(DISTINCT TeamID) INTO teamCount FROM TeamStatistics;

    -- If the counts are not equal, prevent the insertion/update
    IF statCount <> teamCount THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The number of unique StatID values must be the same as the number of unique TeamID values.';
    END IF;
END
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `before_insert_team_games` BEFORE INSERT ON `TeamStatistics`
 FOR EACH ROW BEGIN
    DECLARE gamesCount INT;

    -- Check the number of game entries for the team
    SELECT COUNT(*) INTO gamesCount
    FROM TeamStatistics
    WHERE TeamID = NEW.TeamID;

    -- If the count exceeds 14, prevent the insertion/update
    IF gamesCount >= 14 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A team cannot have more than 14 games in a season.';
    END IF;
END
DELIMITER ;

-- --------------------------------------------------------
--
-- Routines 'SwacTeams'
--
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTeamInfo`(IN `inputGameID` INT)
BEGIN
    SELECT
        G.GameID,
        G.DatePlayed,
        HomeTeam.TeamName AS HomeTeamName,
        HomeTeam.City AS HomeTeamCity,
        AwayTeam.TeamName AS AwayTeamName,
        AwayTeam.City AS AwayTeamCity
    FROM
        Games G
        JOIN SwacTeams HomeTeam ON G.HomeTeamID = HomeTeam.TeamID
        JOIN SwacTeams AwayTeam ON G.AwayTeamID = AwayTeam.TeamID
    WHERE
        G.GameID = inputGameID;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPlayer`(IN firstName VARCHAR(100), IN lastName VARCHAR(100), IN position VARCHAR(50), IN height VARCHAR(10), IN weight VARCHAR(10), IN teamID INT)
BEGIN
    INSERT INTO Players (FirstName, LastName, Position, Height, Weight, TeamID)
    VALUES (firstName, lastName, position, height, weight, teamID);
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SwitchPlayerTeam`(IN inputPlayerID INT, IN newTeamID INT)
BEGIN
    UPDATE Players
    SET TeamID = newTeamID
    WHERE PlayerID = inputPlayerID;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateOffYardsGained`(IN inputTeamID INT, IN givenYards INT)
BEGIN
    UPDATE TeamStatistics
    SET Off_YardsGained = Off_YardsGained + givenYards
    WHERE TeamID = inputTeamID;
END$$
DELIMITER ;

-- --------------------------------------------------------
--
-- Table structure for table `TeamStatistics`
--

DROP TABLE IF EXISTS `TeamStatistics`;
CREATE TABLE `TeamStatistics` (
  `StatID` int(10) NOT NULL,
  `TeamID` int(10) DEFAULT NULL,
  `Off_YardsGained` int(4) DEFAULT NULL,
  `Off_Touchdowns` int(4) DEFAULT NULL,
  `Def_Sacks` int(4) DEFAULT NULL,
  `Def_Intercepts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TeamStatistics`
--

INSERT INTO `TeamStatistics` (`StatID`, `TeamID`, `Off_YardsGained`, `Off_Touchdowns`, `Def_Sacks`, `Def_Intercepts`) VALUES
(0, 4, 3740, 34, 33, 9),
(1, 1, 3486, 23, 15, 8),
(2, 2, 3852, 35, 28, 16),
(3, 3, 3286, 27, 24, 6),
(5, 5, 3695, 36, 21, 13),
(6, 11, 2473, 13, 10, 5),
(7, 10, 2584, 18, 23, 8),
(8, 9, 2630, 22, 22, 9),
(9, 8, 2784, 18, 18, 4),
(10, 7, 3810, 32, 25, 5),
(11, 6, 3687, 38, 19, 10),
(12, 12, 3542, 23, 28, 14);

--
-- Triggers `TeamStatistics`
--
DROP TRIGGER IF EXISTS `before_insert_team_games`;
DELIMITER $$
CREATE TRIGGER `before_insert_team_games` BEFORE INSERT ON `TeamStatistics` FOR EACH ROW BEGIN
    DECLARE gamesCount INT;

    -- Check the number of game entries for the team
    SELECT COUNT(*) INTO gamesCount
    FROM TeamStatistics
    WHERE TeamID = NEW.TeamID;

    -- If the count exceeds 14, prevent the insertion/update
    IF gamesCount >= 14 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A team cannot have more than 14 games in a season.';
    END IF;
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_insert_update_team_statistics`;
DELIMITER $$
CREATE TRIGGER `before_insert_update_team_statistics` BEFORE INSERT ON `TeamStatistics` FOR EACH ROW BEGIN
    DECLARE statCount INT;
    DECLARE teamCount INT;

    -- Check the number of unique StatID values
    SELECT COUNT(DISTINCT StatID) INTO statCount FROM TeamStatistics;

    -- Check the number of unique TeamID values
    SELECT COUNT(DISTINCT TeamID) INTO teamCount FROM TeamStatistics;

    -- If the counts are not equal, prevent the insertion/update
    IF statCount <> teamCount THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The number of unique StatID values must be the same as the number of unique TeamID values.';
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Games`
--
ALTER TABLE `Games`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `HomeTeamID` (`HomeTeamID`),
  ADD KEY `AwayTeamID` (`AwayTeamID`);

--
-- Indexes for table `Players`
--
ALTER TABLE `Players`
  ADD PRIMARY KEY (`PlayerID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `SwacTeams`
--
ALTER TABLE `SwacTeams`
  ADD PRIMARY KEY (`TeamID`);

--
-- Indexes for table `TeamStatistics`
--
ALTER TABLE `TeamStatistics`
  ADD PRIMARY KEY (`StatID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Games`
--
ALTER TABLE `Games`
  MODIFY `GameID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SwacTeams`
--
ALTER TABLE `SwacTeams`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Games`
--
ALTER TABLE `Games`
  ADD CONSTRAINT `AwayTeamID` FOREIGN KEY (`AwayTeamID`) REFERENCES `swacteams` (`TeamID`),
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`HomeTeamID`) REFERENCES `swacteams` (`TeamID`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`AwayTeamID`) REFERENCES `swacteams` (`TeamID`);

--
-- Constraints for table `Players`
--
ALTER TABLE `Players`
  ADD CONSTRAINT `TeamID` FOREIGN KEY (`TeamID`) REFERENCES `swacteams` (`TeamID`);

--
-- Constraints for table `TeamStatistics`
--
ALTER TABLE `TeamStatistics`
  ADD CONSTRAINT `teamstatistics_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `swacteams` (`TeamID`),
  ADD CONSTRAINT `teamstatistics_ibfk_2` FOREIGN KEY (`TeamID`) REFERENCES `swacteams` (`TeamID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
