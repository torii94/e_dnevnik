-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 08:34 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_dnevnik`
--

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `idGrad` int(11) NOT NULL,
  `Naziv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`idGrad`, `Naziv`) VALUES
(1, 'Mostar'),
(2, 'Siroki Brijeg'),
(3, 'Capljina'),
(4, 'Sarajevo'),
(5, 'Tuzla'),
(6, 'Split'),
(7, 'Zagreb'),
(8, 'Rijeka'),
(9, 'Osijek');

-- --------------------------------------------------------

--
-- Table structure for table `izostanak`
--

CREATE TABLE `izostanak` (
  `idIzostanak` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Opravdano` tinyint(1) DEFAULT NULL,
  `Korisnik_idUcenik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `izostanak`
--

INSERT INTO `izostanak` (`idIzostanak`, `Datum`, `Opravdano`, `Korisnik_idUcenik`) VALUES
(8, '2017-03-17', 1, 29),
(9, '2017-03-17', 0, 31),
(10, '2017-03-17', 1, 31),
(11, '2017-03-17', 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idKorisnik` int(11) NOT NULL,
  `Ime` varchar(45) NOT NULL,
  `Prezime` varchar(45) NOT NULL,
  `JMBG` varchar(15) NOT NULL,
  `Datum_rodjenja` date NOT NULL,
  `Tip_Korisnika` enum('Profesor','Ucenik','Roditelj') NOT NULL,
  `Grad_idGrad` int(11) NOT NULL,
  `Razred_idRazred` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idKorisnik`, `Ime`, `Prezime`, `JMBG`, `Datum_rodjenja`, `Tip_Korisnika`, `Grad_idGrad`, `Razred_idRazred`, `email`, `password`) VALUES
(19, 'Toni', 'Bozic', '0502994880502', '1994-02-05', 'Profesor', 1, 17, 'tonibozic94@gmail.com', 'an3nquhVndxJs'),
(21, 'Josip', 'Kelava', '120785005021', '1985-07-12', 'Profesor', 1, 18, 'josipkelava@gmail.com', 'anNB4XKyUFeT2'),
(22, 'Marko', 'Matić', '0101999654165', '1999-01-01', 'Ucenik', 1, 9, 'markomatic99@gmail.com', 'anGg7jq2tKgg2'),
(25, 'Ante', 'Kelava', '1215487464651', '1992-03-22', 'Profesor', 7, 10, 'antekelava91@gmail.com', 'angQob4HeOgnk'),
(26, 'Marin', 'Buhovac', '2203990564892', '1990-03-22', 'Profesor', 4, 10, 'marinbuhovac90@gmail.com', 'anXcfEL11Zl2A'),
(29, 'Karlo', 'Marić', '1105998504568', '1998-05-11', 'Ucenik', 1, 18, 'karlomaric98@gmail.com', 'an4Jkykm.08Ts'),
(31, 'Nikola', 'Glibo', '0301998548474', '1998-01-03', 'Ucenik', 3, 18, 'nikolaglibo98@gmail.com', 'anDtGSTni/YeI'),
(32, 'Stjepan', 'Rozić', '0305998548474', '1998-06-03', 'Ucenik', 4, 18, 'stjepanrozic98@gmail.com', 'anmWEj5NkB8mQ'),
(34, 'Marko', 'Božić', '1503998548474', '1998-03-15', 'Ucenik', 6, 18, 'markobozic98@gmail.com', 'anGg7jq2tKgg2'),
(35, 'Ivan', 'Kelava', '1709998548474', '1998-09-17', 'Ucenik', 1, 18, 'ivankelava98@gmail.com', 'anbS0Ec/BLJ6w'),
(36, 'Ante', 'Matić', '1707998548474', '1998-07-17', 'Ucenik', 1, 18, 'antematic98@gmail.com', 'angQob4HeOgnk'),
(37, 'Ana', 'Marić', '1407998548474', '1998-07-14', 'Ucenik', 1, 18, 'anamaric98@gmail.com', 'anH655b4qa3FY'),
(38, 'Ante', 'Rozić', '1207998504302', '1998-07-12', 'Ucenik', 1, 19, 'anterozic98@gmail.com', 'an3y3eqgD9w9w'),
(39, 'Ana', 'Martinović', '1102998504302', '1998-02-11', 'Ucenik', 3, 19, 'anamartinovic98@gmail.com', 'anH655b4qa3FY'),
(40, 'Sanela', 'Bošnjak', '1205998504302', '1998-05-12', 'Ucenik', 3, 19, 'sanelabosnjak98@gmail.com', 'an82OVM6YVSWk'),
(41, 'Marko', 'Bošnjak', '1107998504302', '1998-07-11', 'Ucenik', 1, 19, 'markobosnjak98@gmail.com', 'anGg7jq2tKgg2'),
(42, 'Mateo', 'Božić', '1102998504302', '1998-02-11', 'Ucenik', 1, 19, 'mateobozic98@gmail.com', 'anN3P2u7MTp7M'),
(43, 'Andrea', 'Glibo', '0404998504302', '1998-04-04', 'Ucenik', 8, 19, 'andreaglibo98@gmail.com', 'an/p7FOGiaTbg'),
(44, 'Ivana', 'Martinović', '0404998504302', '1998-04-04', 'Ucenik', 1, 19, 'ivanamartinovic98@gmail.com', 'anHa2WMrDdFzs'),
(45, 'Darko', 'Rozić', '0102998504302', '1998-02-01', 'Ucenik', 1, 19, 'darkorozic98@gmail.com', 'anZueA9vo/8Qc'),
(46, 'Marko', 'Kvesić', '0708998504302', '1998-08-07', 'Ucenik', 1, 19, 'markokvesic98@gmail.com', 'anGg7jq2tKgg2'),
(47, 'Mislav', 'Bago', '0708998504302', '1998-08-07', 'Ucenik', 8, 19, 'mislavbago98@gmail.com', 'anlqFSnjYXJ7A'),
(48, 'Josipa', 'Martinović', '2203998564658', '1998-03-11', 'Ucenik', 1, 18, 'josipamartinovic98@gmail.com', 'anBLBh123CTYw'),
(49, 'Ivana', 'Rozić', '1103998564658', '1998-03-11', 'Ucenik', 3, 18, 'ivanarozic@gmail.com', 'anHa2WMrDdFzs'),
(50, 'Marko', 'Erceg', '1104998564658', '1998-04-11', 'Ucenik', 6, 20, 'markoerceg98@gmail.com', 'anGg7jq2tKgg2'),
(51, 'Ana', 'Erceg', '1104998564658', '1998-04-11', 'Ucenik', 6, 20, 'anaerceg98@gmail.com', 'anH655b4qa3FY'),
(52, 'Matea', 'Glibo', '1205998564658', '1998-05-12', 'Ucenik', 3, 20, 'mateaglibo98@gmail.com', 'anrC2Kgo69.Kg'),
(53, 'Mislav', 'Kelava', '1405998564658', '1998-05-14', 'Ucenik', 1, 20, 'mislavkelava98@gmail.com', 'anlqFSnjYXJ7A'),
(54, 'Davor', 'Boro', '1407998564658', '1998-07-14', 'Ucenik', 1, 20, 'davorboro98@gmail.com', 'an42mNPAEYk6g'),
(55, 'Davorka', 'Boro', '1407998564658', '1998-07-14', 'Ucenik', 1, 20, 'davorkaboro98@gmail.com', 'anid8O9HXQNeM'),
(56, 'Ante', 'Marić', '1209998564658', '1998-09-12', 'Ucenik', 3, 20, 'antemaric98@gmail.com', 'angQob4HeOgnk');

-- --------------------------------------------------------

--
-- Table structure for table `predmet`
--

CREATE TABLE `predmet` (
  `idPredmet` int(11) NOT NULL,
  `Naziv` varchar(45) NOT NULL,
  `Korisnik_idProfesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `predmet`
--

INSERT INTO `predmet` (`idPredmet`, `Naziv`, `Korisnik_idProfesor`) VALUES
(4, 'Matematika', 19),
(6, 'Fizika', 19),
(7, 'Programiranje', 21),
(10, 'Povijest', 21),
(11, 'Geografija', 25),
(12, 'Glazbena kultura', 25),
(13, 'Latinski jezik', 21),
(14, 'Informatika', 19),
(15, 'TZK', 26),
(16, 'Engleski jezik', 26),
(17, 'Vjeronauk', 21);

-- --------------------------------------------------------

--
-- Table structure for table `razred`
--

CREATE TABLE `razred` (
  `idRazred` int(11) NOT NULL,
  `Odjeljenje` varchar(1) NOT NULL,
  `Godina` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `razred`
--

INSERT INTO `razred` (`idRazred`, `Odjeljenje`, `Godina`) VALUES
(9, 'a', 'I.'),
(10, 'b', 'I.'),
(11, 'c', 'I.'),
(12, 'a', 'II.'),
(13, 'b', 'II.'),
(14, 'c', 'II.'),
(15, 'a', 'III.'),
(16, 'b', 'III.'),
(17, 'c', 'III.'),
(18, 'a', 'IV.'),
(19, 'b', 'IV.'),
(20, 'c', 'IV.');

-- --------------------------------------------------------

--
-- Table structure for table `ucenik_predmet`
--

CREATE TABLE `ucenik_predmet` (
  `id` int(11) NOT NULL,
  `Ocjena` int(5) NOT NULL,
  `Datum` date NOT NULL,
  `Predmet_id` int(11) NOT NULL,
  `Korisnik_idUcenik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ucenik_predmet`
--

INSERT INTO `ucenik_predmet` (`id`, `Ocjena`, `Datum`, `Predmet_id`, `Korisnik_idUcenik`) VALUES
(6, 2, '2017-03-02', 6, 35),
(7, 4, '2017-03-02', 10, 29),
(8, 4, '2017-02-02', 10, 49),
(9, 2, '2017-02-02', 7, 49),
(10, 2, '2017-02-02', 10, 32),
(11, 4, '2017-02-02', 6, 31),
(12, 3, '2017-03-05', 4, 31),
(13, 5, '2017-03-05', 4, 29),
(14, 3, '2017-07-04', 4, 43),
(15, 1, '2017-03-20', 10, 31),
(16, 3, '2017-03-20', 11, 31),
(17, 3, '2017-03-19', 12, 31),
(18, 5, '2017-03-19', 13, 31),
(19, 5, '2017-03-19', 15, 31),
(20, 3, '2017-03-05', 17, 31),
(21, 2, '2017-03-05', 16, 31),
(22, 2, '2017-03-05', 7, 31),
(23, 4, '2017-03-05', 14, 31),
(24, 3, '2017-03-24', 4, 31),
(25, 4, '2017-03-25', 10, 31),
(27, 2, '2017-03-25', 4, 43),
(28, 2, '2017-03-25', 4, 43),
(29, 2, '2017-03-25', 4, 43),
(30, 1, '2017-03-25', 4, 43),
(31, 4, '2017-03-25', 4, 31),
(32, 2, '2017-04-21', 6, 31),
(33, 3, '2017-04-21', 6, 31),
(34, 3, '2017-04-21', 6, 29),
(35, 4, '2017-04-21', 14, 43),
(36, 3, '2017-04-21', 4, 35),
(37, 3, '2017-04-21', 4, 39),
(38, 3, '2017-04-21', 4, 38),
(39, 3, '2017-04-21', 4, 38),
(40, 3, '2017-04-21', 4, 42),
(41, 3, '2017-04-21', 4, 46),
(42, 3, '2017-04-21', 4, 49),
(43, 3, '2017-04-21', 4, 55),
(44, 3, '2017-04-21', 4, 32),
(45, 2, '2017-04-21', 4, 35),
(46, 5, '2017-04-21', 6, 35),
(47, 2, '2017-04-21', 6, 29),
(48, 2, '2017-04-21', 6, 22),
(49, 2, '2017-04-21', 6, 31),
(50, 2, '2017-04-21', 6, 32),
(51, 2, '2017-04-21', 6, 37),
(52, 2, '2017-04-21', 6, 39),
(53, 2, '2017-04-21', 6, 41),
(54, 5, '2017-04-21', 6, 41),
(55, 5, '2017-04-21', 6, 40),
(56, 5, '2017-04-21', 6, 48),
(57, 5, '2017-04-21', 6, 51),
(58, 5, '2017-04-21', 6, 38),
(59, 3, '2017-04-21', 7, 35),
(60, 3, '2017-04-21', 7, 22),
(61, 3, '2017-04-21', 7, 29),
(62, 4, '2017-04-21', 7, 35),
(63, 4, '2017-04-21', 7, 38),
(64, 4, '2017-04-21', 7, 40),
(65, 4, '2017-04-21', 7, 44),
(66, 4, '2017-04-21', 7, 46),
(67, 4, '2017-04-21', 7, 44),
(68, 4, '2017-04-21', 7, 42),
(69, 2, '2017-04-21', 7, 22),
(70, 3, '2017-04-21', 7, 29),
(71, 3, '2017-04-21', 7, 35),
(72, 3, '2017-04-21', 7, 42),
(73, 3, '2017-04-21', 7, 47),
(74, 3, '2017-04-21', 7, 49),
(75, 3, '2017-04-21', 10, 31),
(76, 3, '2017-04-21', 10, 29),
(77, 3, '2017-04-21', 10, 22),
(78, 5, '2017-04-21', 10, 35),
(79, 5, '2017-04-21', 10, 40),
(80, 5, '2017-04-21', 10, 45),
(81, 5, '2017-04-21', 10, 46),
(82, 5, '2017-04-21', 10, 43),
(83, 5, '2017-04-21', 10, 49),
(84, 5, '2017-04-21', 10, 53),
(85, 5, '2017-04-21', 10, 56),
(86, 5, '2017-04-21', 11, 37),
(87, 5, '2017-04-21', 11, 29),
(88, 5, '2017-04-21', 11, 22),
(89, 5, '2017-04-21', 11, 29),
(90, 5, '2017-04-21', 11, 31),
(91, 5, '2017-04-21', 11, 35),
(92, 4, '2017-04-21', 11, 40),
(93, 4, '2017-04-21', 11, 45),
(94, 4, '2017-04-21', 11, 47),
(95, 4, '2017-04-21', 12, 32),
(96, 4, '2017-04-21', 12, 31),
(97, 4, '2017-04-21', 12, 32),
(98, 4, '2017-04-21', 12, 43),
(99, 4, '2017-04-21', 12, 45),
(100, 4, '2017-04-21', 12, 40),
(101, 4, '2017-04-21', 12, 45),
(102, 4, '2017-04-21', 16, 39),
(103, 4, '2017-04-21', 16, 39),
(104, 4, '2017-04-21', 12, 38),
(105, 4, '2017-04-21', 12, 44),
(106, 4, '2017-04-21', 12, 46),
(107, 4, '2017-04-21', 12, 40),
(108, 4, '2017-04-21', 13, 32),
(109, 4, '2017-04-21', 13, 22),
(110, 4, '2017-04-21', 13, 36),
(111, 4, '2017-04-21', 13, 40),
(112, 4, '2017-04-21', 13, 39),
(113, 4, '2017-04-21', 13, 44),
(114, 4, '2017-04-21', 13, 46),
(115, 4, '2017-04-21', 13, 47),
(116, 4, '2017-04-21', 14, 37),
(117, 4, '2017-04-21', 14, 22),
(118, 4, '2017-04-21', 14, 40),
(119, 4, '2017-04-21', 14, 39),
(120, 4, '2017-04-21', 14, 47),
(121, 4, '2017-04-21', 14, 45),
(122, 4, '2017-04-21', 14, 37),
(123, 4, '2017-04-21', 14, 36),
(124, 4, '2017-04-21', 14, 39),
(125, 4, '2017-04-21', 14, 48),
(126, 4, '2017-04-21', 14, 56),
(127, 2, '2017-04-21', 14, 38),
(128, 2, '2017-04-21', 14, 35),
(129, 2, '2017-04-21', 14, 36),
(130, 2, '2017-04-21', 14, 42),
(131, 2, '2017-04-21', 14, 40),
(132, 2, '2017-04-21', 15, 40),
(133, 5, '2017-04-21', 15, 22),
(134, 5, '2017-04-21', 15, 32),
(135, 5, '2017-04-21', 15, 34),
(136, 5, '2017-04-21', 15, 36),
(137, 5, '2017-04-21', 15, 38),
(138, 5, '2017-04-21', 15, 39),
(139, 5, '2017-04-21', 15, 44),
(140, 5, '2017-04-21', 15, 48),
(141, 5, '2017-04-21', 16, 48),
(142, 5, '2017-04-21', 16, 32),
(143, 5, '2017-04-21', 16, 40),
(144, 5, '2017-04-21', 16, 45),
(145, 5, '2017-04-21', 16, 45),
(146, 3, '2017-04-21', 16, 48),
(147, 3, '2017-04-21', 16, 49),
(148, 3, '2017-04-21', 16, 35),
(149, 3, '2017-04-21', 16, 46),
(150, 3, '2017-04-21', 16, 39),
(151, 3, '2017-04-21', 16, 46),
(152, 3, '2017-04-21', 16, 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`idGrad`);

--
-- Indexes for table `izostanak`
--
ALTER TABLE `izostanak`
  ADD PRIMARY KEY (`idIzostanak`),
  ADD KEY `fk_Izostanak_Korisnik1_idx` (`Korisnik_idUcenik`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idKorisnik`),
  ADD KEY `fk_Korisnik_Grad_idx` (`Grad_idGrad`),
  ADD KEY `fk_Korisnik_Razred1_idx` (`Razred_idRazred`);

--
-- Indexes for table `predmet`
--
ALTER TABLE `predmet`
  ADD PRIMARY KEY (`idPredmet`),
  ADD KEY `fk_Predmet_Korisnik1_idx` (`Korisnik_idProfesor`);

--
-- Indexes for table `razred`
--
ALTER TABLE `razred`
  ADD PRIMARY KEY (`idRazred`);

--
-- Indexes for table `ucenik_predmet`
--
ALTER TABLE `ucenik_predmet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Ucenik_Predmet_Predmet1_idx` (`Predmet_id`),
  ADD KEY `fk_Ucenik_Predmet_Korisnik1_idx` (`Korisnik_idUcenik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `idGrad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `izostanak`
--
ALTER TABLE `izostanak`
  MODIFY `idIzostanak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idKorisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `predmet`
--
ALTER TABLE `predmet`
  MODIFY `idPredmet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `razred`
--
ALTER TABLE `razred`
  MODIFY `idRazred` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ucenik_predmet`
--
ALTER TABLE `ucenik_predmet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `izostanak`
--
ALTER TABLE `izostanak`
  ADD CONSTRAINT `fk_Izostanak_Korisnik1` FOREIGN KEY (`Korisnik_idUcenik`) REFERENCES `korisnik` (`idKorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_Korisnik_Grad` FOREIGN KEY (`Grad_idGrad`) REFERENCES `grad` (`idGrad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Korisnik_Razred1` FOREIGN KEY (`Razred_idRazred`) REFERENCES `razred` (`idRazred`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `predmet`
--
ALTER TABLE `predmet`
  ADD CONSTRAINT `fk_Predmet_Korisnik1` FOREIGN KEY (`Korisnik_idProfesor`) REFERENCES `korisnik` (`idKorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ucenik_predmet`
--
ALTER TABLE `ucenik_predmet`
  ADD CONSTRAINT `fk_Ucenik_Predmet_Korisnik1` FOREIGN KEY (`Korisnik_idUcenik`) REFERENCES `korisnik` (`idKorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ucenik_Predmet_Predmet1` FOREIGN KEY (`Predmet_id`) REFERENCES `predmet` (`idPredmet`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
