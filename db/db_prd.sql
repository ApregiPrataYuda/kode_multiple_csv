-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 08:37 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_prd`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_prod`
--

CREATE TABLE `d_prod` (
  `id_prod_d` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `id_product_h` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_prod`
--

INSERT INTO `d_prod` (`id_prod_d`, `qty`, `price`, `warna`, `id_product_h`) VALUES
(1, 10, 3000, 'red', 1),
(2, 30, 4000, 'blue', 2),
(3, 20, 7000, 'white', 3),
(4, 0, NULL, NULL, NULL),
(5, 30, 4000, 'purple', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(3) NOT NULL,
  `id_provinsi` int(3) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `id_provinsi`, `nama`) VALUES
(1, 2, 'Jakarta Selatan'),
(2, 2, 'Jakarta Barat'),
(3, 2, 'Jakarta timur'),
(4, 2, 'Jakarta utara'),
(5, 2, 'jakarta Pusat'),
(7, 1, 'bogor'),
(8, 1, 'bandung'),
(9, 3, 'wash');

-- --------------------------------------------------------

--
-- Table structure for table `m_country`
--

CREATE TABLE `m_country` (
  `id` varchar(20) NOT NULL,
  `id_m_set_category_hierarchy` int(11) DEFAULT NULL,
  `id_m_set_category_name` int(11) DEFAULT NULL,
  `id_parent` varchar(20) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `name_official` varchar(100) DEFAULT NULL,
  `alpha2_code` varchar(45) NOT NULL,
  `alpha3_code` varchar(45) NOT NULL,
  `numeric_code` varchar(45) NOT NULL,
  `iso_31662` varchar(45) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_country`
--

INSERT INTO `m_country` (`id`, `id_m_set_category_hierarchy`, `id_m_set_category_name`, `id_parent`, `code`, `name`, `name_official`, `alpha2_code`, `alpha3_code`, `numeric_code`, `iso_31662`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
('AD6001', 27, 6, '', 'AD ', 'Andorra', 'The Principality of Andorra ', 'AD ', 'AND ', '20', 'ISO 3166-2:AD ', 0, '0000-00-00 00:00:00', 1, '2022-08-15 10:15:37'),
('AE6001', 27, 6, '', 'AE', 'United Arab Emirates', 'The United Arab Emirates ', 'AE ', 'ARE ', '784', 'ISO 3166-2:AE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AF6001', 27, 6, '', 'AF', 'Afghanistan', 'The Islamic Republic of Afghanistan ', 'AF ', 'AFG ', '4', 'ISO 3166-2:AF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AG6001', 27, 6, '', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda ', 'AG ', 'ATG ', '28', 'ISO 3166-2:AG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AI6001', 27, 6, '', 'AI', 'Anguilla', 'Anguilla ', 'AI ', 'AIA ', '660', 'ISO 3166-2:AI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AL6001', 27, 6, '', 'AL', 'Albania', 'The Republic of Albania ', 'AL ', 'ALB ', '8', 'ISO 3166-2:AL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AM6001', 27, 6, '', 'AM', 'Armenia', 'The Republic of Armenia ', 'AM ', 'ARM ', '51', 'ISO 3166-2:AM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AO6001', 27, 6, '', 'AO', 'Angola', 'The Republic of Angola ', 'AO ', 'AGO ', '24', 'ISO 3166-2:AO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AQ6001', 27, 6, '', 'AQ', 'Antarctica', 'All land and ice shelves south of the 60th parallel south ', 'AQ ', 'ATA ', '10', 'ISO 3166-2:AQ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AR6001', 27, 6, '', 'AR', 'Argentina', 'The Argentine Republic ', 'AR ', 'ARG ', '32', 'ISO 3166-2:AR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AS6001', 27, 6, '', 'AS', 'American', 'The Territory of American Samoa ', 'AS ', 'ASM ', '16', 'ISO 3166-2:AS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AT6001', 27, 6, '', 'AT', 'Austria', 'The Republic of Austria ', 'AT ', 'AUT ', '40', 'ISO 3166-2:AT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AU6001', 27, 6, '', 'AU', 'Australia', 'The Commonwealth of Australia ', 'AU ', 'AUS ', '36', 'ISO 3166-2:AU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AW6001', 27, 6, '', 'AW', 'Aruba', 'Aruba ', 'AW ', 'ABW ', '533', 'ISO 3166-2:AW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AX6001', 27, 6, '', 'AX', 'Aland Island', 'Aland Island', 'AX ', 'ALA ', '248', 'ISO 3166-2:AX ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('AZ6001', 27, 6, '', 'AZ', 'Azerbaijan', 'The Republic of Azerbaijan ', 'AZ ', 'AZE ', '31', 'ISO 3166-2:AZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BA6001', 27, 6, '', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina ', 'BA ', 'BIH ', '70', 'ISO 3166-2:BA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BB6001', 27, 6, '', 'BB', 'Barbados', 'Barbados ', 'BB ', 'BRB ', '52', 'ISO 3166-2:BB ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BD6001', 27, 6, '', 'BD', 'Bangladesh', 'The People\'s Republic of Bangladesh ', 'BD ', 'BGD ', '50', 'ISO 3166-2:BD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BE6001', 27, 6, '', 'BE', 'Belgium', 'The Kingdom of Belgium ', 'BE ', 'BEL ', '56', 'ISO 3166-2:BE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BF6001', 27, 6, '', 'BF', 'Burkina Faso', 'Burkina Faso ', 'BF ', 'BFA ', '854', 'ISO 3166-2:BF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BG6001', 27, 6, '', 'BG', 'Bulgaria', 'The Republic of Bulgaria ', 'BG ', 'BGR ', '100', 'ISO 3166-2:BG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BH6001', 27, 6, '', 'BH', 'Bahrain', 'The Kingdom of Bahrain ', 'BH ', 'BHR ', '48', 'ISO 3166-2:BH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BI6001', 27, 6, '', 'BI', 'Burundi', 'The Republic of Burundi ', 'BI ', 'BDI ', '108', 'ISO 3166-2:BI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BJ6001', 27, 6, '', 'BJ', 'Benin', 'The Republic of Benin ', 'BJ ', 'BEN ', '204', 'ISO 3166-2:BJ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BL6001', 27, 6, '', 'BL', 'Saint Barthélemy', 'The Collectivity of Saint-Barthélemy ', 'BL ', 'BLM ', '652', 'ISO 3166-2:BL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BM6001', 27, 6, '', 'BM', 'Bermuda', 'Bermuda ', 'BM ', 'BMU ', '60', 'ISO 3166-2:BM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BN6001', 27, 6, '', 'BN', 'Brunei Darussalam', 'The Nation of Brunei, the Abode of Peace ', 'BN ', 'BRN ', '96', 'ISO 3166-2:BN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BO6001', 27, 6, '', 'BO', 'Bolivia', 'The Plurinational State of Bolivia ', 'BO ', 'BOL ', '68', 'ISO 3166-2:BO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BQ6001', 27, 6, '', 'BQ', 'Saba', 'Bonaire, Sint Eustatius and Saba ', 'BQ ', 'BES ', '535', 'ISO 3166-2:BQ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BR6001', 27, 6, '', 'BR', 'Brazil', 'The Federative Republic of Brazil ', 'BR ', 'BRA ', '76', 'ISO 3166-2:BR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BS6001', 27, 6, '', 'BS', 'The', 'The Commonwealth of The Bahamas ', 'BS ', 'BHS ', '44', 'ISO 3166-2:BS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BT6001', 27, 6, '', 'BT', 'Bhutan', 'The Kingdom of Bhutan ', 'BT ', 'BTN ', '64', 'ISO 3166-2:BT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BV6001', 27, 6, '', 'BV', 'Bouvet Island', 'Bouvet Island ', 'BV ', 'BVT ', '74', 'ISO 3166-2:BV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BW6001', 27, 6, '', 'BW', 'Botswana', 'The Republic of Botswana ', 'BW ', 'BWA ', '72', 'ISO 3166-2:BW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BY6001', 27, 6, '', 'BY', 'Belarus', 'The Republic of Belarus ', 'BY ', 'BLR ', '112', 'ISO 3166-2:BY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('BZ6001', 27, 6, '', 'BZ', 'Belize', 'Belize ', 'BZ ', 'BLZ ', '84', 'ISO 3166-2:BZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CA6001', 27, 6, '', 'CA', 'Canada', 'Canada ', 'CA ', 'CAN ', '124', 'ISO 3166-2:CA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CC6001', 27, 6, '', 'CC', 'Cocos Island', 'The Territory of Cocos (Keeling) Islands ', 'CC ', 'CCK ', '166', 'ISO 3166-2:CC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CD6001', 27, 6, '', 'CD', 'Democratic', 'The Democratic Republic of the Congo ', 'CD ', 'COD ', '180', 'ISO 3166-2:CD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CF6001', 27, 6, '', 'CF', 'Central African Republic', 'The Central African Republic ', 'CF ', 'CAF ', '140', 'ISO 3166-2:CF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CG6001', 27, 6, '', 'CG', 'Republic', 'The Republic of the Congo ', 'CG ', 'COG ', '178', 'ISO 3166-2:CG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CH6001', 27, 6, '', 'CH', 'Switzerland', 'The Swiss Confederation ', 'CH ', 'CHE ', '756', 'ISO 3166-2:CH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CI6001', 27, 6, '', 'CI', 'Côte d\'Ivoire?', 'The Republic of Côte d\'Ivoire ', 'CI ', 'CIV ', '384', 'ISO 3166-2:CI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CK6001', 27, 6, '', 'CK', 'Cook Island', 'The Cook Islands ', 'CK ', 'COK ', '184', 'ISO 3166-2:CK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CL6001', 27, 6, '', 'CL', 'Chile', 'The Republic of Chile ', 'CL ', 'CHL ', '152', 'ISO 3166-2:CL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CM6001', 27, 6, '', 'CM', 'Cameroon', 'The Republic of Cameroon ', 'CM ', 'CMR ', '120', 'ISO 3166-2:CM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CN6001', 27, 6, '', 'CN', 'China', 'The People\'s Republic of China ', 'CN ', 'CHN ', '156', 'ISO 3166-2:CN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CO6001', 27, 6, '', 'CO', 'Colombia', 'The Republic of Colombia ', 'CO ', 'COL ', '170', 'ISO 3166-2:CO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CR6001', 27, 6, '', 'CR', 'Costa Rica', 'The Republic of Costa Rica ', 'CR ', 'CRI ', '188', 'ISO 3166-2:CR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CU6001', 27, 6, '', 'CU', 'Cuba', 'The Republic of Cuba ', 'CU ', 'CUB ', '192', 'ISO 3166-2:CU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CV6001', 27, 6, '', 'CV', 'Cape Verde', 'The Republic of Cabo Verde ', 'CV ', 'CPV ', '132', 'ISO 3166-2:CV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CW6001', 27, 6, '', 'CW', 'Curaçao', 'The Country of Curaçao ', 'CW ', 'CUW ', '531', 'ISO 3166-2:CW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CX6001', 27, 6, '', 'CX', 'Christmas Island', 'The Territory of Christmas Island ', 'CX ', 'CXR ', '162', 'ISO 3166-2:CX ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CY6001', 27, 6, '', 'CY', 'Cyprus', 'The Republic of Cyprus ', 'CY ', 'CYP ', '196', 'ISO 3166-2:CY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('CZ6001', 27, 6, '', 'CZ', 'Czechia', 'The Czech Republic ', 'CZ ', 'CZE ', '203', 'ISO 3166-2:CZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DD6001', 27, 6, '', 'DD', 'DTesting', '', 'DD', 'DDD', '', 'ISO 3166-2:DD', 1, '2021-12-30 11:19:26', NULL, NULL),
('DD6001-123', 28, 7, 'DD6001', NULL, 'TESTING STATE', 'State', '', '', '123', '', 1, '2021-12-30 11:19:52', NULL, NULL),
('DD6001-1234', 28, 7, 'DD6001', NULL, 'TEST STATE', 'State', '', '', '1234', '', 1, '2021-12-30 11:20:01', NULL, NULL),
('DD6001-444', 28, 7, 'DD6001', NULL, 'NYOBA STATE', 'State', '', '', '444', '', 1, '2021-12-31 10:27:31', NULL, NULL),
('DD6001-456', 28, 7, 'DD6001', NULL, 'JAJAL STATE', 'State', '', '', '456', '', 1, '2021-12-31 10:27:11', NULL, NULL),
('DD6001-456-1', 29, 8, 'DD6001-456', NULL, 'JAJAL1 CITY', 'City', '', '', '456.33', '', 1, '2021-12-31 10:27:46', 1, '2021-12-31 10:31:58'),
('DD6001-456-2', 29, 8, 'DD6001-456', NULL, 'JAJAL2 CITY', 'City', '', '', '456.99', '', 1, '2021-12-31 10:32:48', NULL, NULL),
('DD6001-456-3', 29, 8, 'DD6001-456', NULL, 'JAJAL3 CITY', 'City', '', '', '456.33', '', 1, '2021-12-31 10:33:04', 1, '2021-12-31 10:34:14'),
('DE6001', 27, 6, '', 'DE', 'Germany', 'The Federal Republic of Germany ', 'DE ', 'DEU ', '276', 'ISO 3166-2:DE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DJ6001', 27, 6, '', 'DJ', 'Djibouti', 'The Republic of Djibouti ', 'DJ ', 'DJI ', '262', 'ISO 3166-2:DJ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DK6001', 27, 6, '', 'DK', 'Denmark', 'The Kingdom of Denmark ', 'DK ', 'DNK ', '208', 'ISO 3166-2:DK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DM6001', 27, 6, '', 'DM', 'Dominica', 'The Commonwealth of Dominica ', 'DM ', 'DMA ', '212', 'ISO 3166-2:DM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DO6001', 27, 6, '', 'DO', 'Dominican Republic', 'The Dominican Republic ', 'DO ', 'DOM ', '214', 'ISO 3166-2:DO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('DZ6001', 27, 6, '', 'DZ', 'Algeria', 'The People\'s Democratic Republic of Algeria ', 'DZ ', 'DZA ', '12', 'ISO 3166-2:DZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('EC6001', 27, 6, '', 'EC', 'Ecuador', 'The Republic of Ecuador ', 'EC ', 'ECU ', '218', 'ISO 3166-2:EC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('EE6001', 27, 6, '', 'EE', 'Estonia', 'The Republic of Estonia ', 'EE ', 'EST ', '233', 'ISO 3166-2:EE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('EG6001', 27, 6, '', 'EG', 'Egypt', 'The Arab Republic of Egypt ', 'EG ', 'EGY ', '818', 'ISO 3166-2:EG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('EH6001', 27, 6, '', 'EH', 'Western Sahara', 'The Sahrawi Arab Democratic Republic ', 'EH ', 'ESH ', '732', 'ISO 3166-2:EH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ER6001', 27, 6, '', 'ER', 'Eritrea', 'The State of Eritrea ', 'ER ', 'ERI ', '232', 'ISO 3166-2:ER ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ES6001', 27, 6, '', 'ES', 'Spain', 'The Kingdom of Spain ', 'ES ', 'ESP ', '724', 'ISO 3166-2:ES ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ET6001', 27, 6, '', 'ET', 'Ethiopia', 'The Federal Democratic Republic of Ethiopia ', 'ET ', 'ETH ', '231', 'ISO 3166-2:ET ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FI6001', 27, 6, '', 'FI', 'Finland', 'The Republic of Finland ', 'FI ', 'FIN ', '246', 'ISO 3166-2:FI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FJ6001', 27, 6, '', 'FJ', 'Fiji', 'The Republic of Fiji ', 'FJ ', 'FJI ', '242', 'ISO 3166-2:FJ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FK6001', 27, 6, '', 'FK', 'Falkland Island', 'The Falkland Islands ', 'FK ', 'FLK ', '238', 'ISO 3166-2:FK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FM6001', 27, 6, '', 'FM', 'Federated States of Micronesia', 'The Federated States of Micronesia ', 'FM ', 'FSM ', '583', 'ISO 3166-2:FM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FO6001', 27, 6, '', 'FO', 'Faroe Island', 'The Faroe Islands ', 'FO ', 'FRO ', '234', 'ISO 3166-2:FO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('FR6001', 27, 6, '', 'FR', 'France', 'The French Republic ', 'FR ', 'FRA ', '250', 'ISO 3166-2:FR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GA6001', 27, 6, '', 'GA', 'Gabon', 'The Gabonese Republic ', 'GA ', 'GAB ', '266', 'ISO 3166-2:GA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GB6001', 27, 6, '', 'GB', 'United Kingdom', 'The United Kingdom of Great Britain and Northern Ireland ', 'GB ', 'GBR ', '826', 'ISO 3166-2:GB ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GD6001', 27, 6, '', 'GD', 'Grenada', 'Grenada ', 'GD ', 'GRD ', '308', 'ISO 3166-2:GD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GE6001', 27, 6, '', 'GE', 'Georgia', 'Georgia ', 'GE ', 'GEO ', '268', 'ISO 3166-2:GE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GF6001', 27, 6, '', 'GF', 'French Guiana', 'Guyane ', 'GF ', 'GUF ', '254', 'ISO 3166-2:GF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GG6001', 27, 6, '', 'GG', 'Guernsey', 'The Bailiwick of Guernsey ', 'GG ', 'GGY ', '831', 'ISO 3166-2:GG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GH6001', 27, 6, '', 'GH', 'Ghana', 'The Republic of Ghana ', 'GH ', 'GHA ', '288', 'ISO 3166-2:GH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GI6001', 27, 6, '', 'GI', 'Gibraltar', 'Gibraltar ', 'GI ', 'GIB ', '292', 'ISO 3166-2:GI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GL6001', 27, 6, '', 'GL', 'Greenland', 'Kalaallit Nunaat ', 'GL ', 'GRL ', '304', 'ISO 3166-2:GL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GM6001', 27, 6, '', 'GM', 'The Gambia', 'The Republic of The Gambia ', 'GM ', 'GMB ', '270', 'ISO 3166-2:GM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GN6001', 27, 6, '', 'GN', 'Guinea', 'The Republic of Guinea ', 'GN ', 'GIN ', '324', 'ISO 3166-2:GN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GP6001', 27, 6, '', 'GP', 'Guadeloupe', 'Guadeloupe ', 'GP ', 'GLP ', '312', 'ISO 3166-2:GP ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GQ6001', 27, 6, '', 'GQ', 'Equatorial Guinea', 'The Republic of Equatorial Guinea ', 'GQ ', 'GNQ ', '226', 'ISO 3166-2:GQ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GR6001', 27, 6, '', 'GR', 'Greece', 'The Hellenic Republic ', 'GR ', 'GRC ', '300', 'ISO 3166-2:GR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GS6001', 27, 6, '', 'GS', 'South Georgia and The south Sandwich Islands', 'South Georgia and the South Sandwich Islands ', 'GS ', 'SGS ', '239', 'ISO 3166-2:GS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GT6001', 27, 6, '', 'GT', 'Guatemala', 'The Republic of Guatemala ', 'GT ', 'GTM ', '320', 'ISO 3166-2:GT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GU6001', 27, 6, '', 'GU', 'Guam', 'The Territory of Guam ', 'GU ', 'GUM ', '316', 'ISO 3166-2:GU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GW6001', 27, 6, '', 'GW', 'Guinea-Bissau', 'The Republic of Guinea-Bissau ', 'GW ', 'GNB ', '624', 'ISO 3166-2:GW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('GY6001', 27, 6, '', 'GY', 'Guyana', 'The Co-operative Republic of Guyana ', 'GY ', 'GUY ', '328', 'ISO 3166-2:GY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HK6001', 27, 6, '', 'HK', 'Hong Kong', 'The Hong Kong Special Administrative Region of China[10] ', 'HK ', 'HKG ', '344', 'ISO 3166-2:HK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HM6001', 27, 6, '', 'HM', 'Heard Island and McDonalds Island', 'The Territory of Heard Island and McDonald Islands ', 'HM ', 'HMD ', '334', 'ISO 3166-2:HM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HN6001', 27, 6, '', 'HN', 'Honduras', 'The Republic of Honduras ', 'HN ', 'HND ', '340', 'ISO 3166-2:HN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HR6001', 27, 6, '', 'HR', 'Croatia', 'The Republic of Croatia ', 'HR ', 'HRV ', '191', 'ISO 3166-2:HR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HT6001', 27, 6, '', 'HT', 'Haiti', 'The Republic of Haiti ', 'HT ', 'HTI ', '332', 'ISO 3166-2:HT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('HU6001', 27, 6, '', 'HU', 'Hungary', 'Hungary ', 'HU ', 'HUN ', '348', 'ISO 3166-2:HU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ID6001', 27, 6, '', 'ID', 'Indonesia', 'The Republic of Indonesia ', 'ID ', 'IDN ', '360', 'ISO 3166-2:ID ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ID6001-11', 28, 7, 'ID6001', NULL, 'ACEH', 'State', '', '', '11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-10', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH SINGKIL', 'City', '', '', '11.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-11', 29, 8, 'ID6001-11', NULL, 'KAB. BIREUEN', 'City', '', '', '11.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-12', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH BARAT DAYA', 'City', '', '', '11.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-13', 29, 8, 'ID6001-11', NULL, 'KAB. GAYO LUES', 'City', '', '', '11.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-14', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH JAYA', 'City', '', '', '11.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-15', 29, 8, 'ID6001-11', NULL, 'KAB. NAGAN RAYA', 'City', '', '', '11.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-16', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH TAMIANG', 'City', '', '', '11.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-17', 29, 8, 'ID6001-11', NULL, 'KAB. BENER MERIAH', 'City', '', '', '11.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-18', 29, 8, 'ID6001-11', NULL, 'KAB. PIDIE JAYA', 'City', '', '', '11.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-19', 29, 8, 'ID6001-11', NULL, 'KOTA BANDA ACEH', 'City', '', '', '11.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-2', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH TENGGARA', 'City', '', '', '11.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-20', 29, 8, 'ID6001-11', NULL, 'KOTA SABANG', 'City', '', '', '11.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-21', 29, 8, 'ID6001-11', NULL, 'KOTA LHOKSEUMAWE', 'City', '', '', '11.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-22', 29, 8, 'ID6001-11', NULL, 'KOTA LANGSA', 'City', '', '', '11.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-23', 29, 8, 'ID6001-11', NULL, 'KOTA SUBULUSSALAM', 'City', '', '', '11.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-3', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH TIMUR', 'City', '', '', '11.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-4', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH TENGAH', 'City', '', '', '11.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-5', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH BARAT', 'City', '', '', '11.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-6', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH BESAR', 'City', '', '', '11.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-7', 29, 8, 'ID6001-11', NULL, 'KAB. PIDIE', 'City', '', '', '11.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-8', 29, 8, 'ID6001-11', NULL, 'KAB. ACEH UTARA', 'City', '', '', '11.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-11-9', 29, 8, 'ID6001-11', NULL, 'KAB. SIMEULUE', 'City', '', '', '11.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12', 28, 7, 'ID6001', NULL, 'SUMATERA UTARA', 'State', '', '', '12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-1', 29, 8, 'ID6001-12', NULL, 'KAB. TAPANULI TENGAH', 'City', '', '', '12.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-10', 29, 8, 'ID6001-12', NULL, 'KAB. LABUHANBATU', 'City', '', '', '12.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-11', 29, 8, 'ID6001-12', NULL, 'KAB. DAIRI', 'City', '', '', '12.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-12', 29, 8, 'ID6001-12', NULL, 'KAB. TOBA SAMOSIR', 'City', '', '', '12.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-13', 29, 8, 'ID6001-12', NULL, 'KAB. MANDAILING NATAL', 'City', '', '', '12.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-14', 29, 8, 'ID6001-12', NULL, 'KAB. NIAS SELATAN', 'City', '', '', '12.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-15', 29, 8, 'ID6001-12', NULL, 'KAB. PAKPAK BHARAT', 'City', '', '', '12.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-16', 29, 8, 'ID6001-12', NULL, 'KAB. HUMBANG HASUNDUTAN', 'City', '', '', '12.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-17', 29, 8, 'ID6001-12', NULL, 'KAB. SAMOSIR', 'City', '', '', '12.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-18', 29, 8, 'ID6001-12', NULL, 'KAB. SERDANG BEDAGAI', 'City', '', '', '12.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-19', 29, 8, 'ID6001-12', NULL, 'KAB. BATU BARA', 'City', '', '', '12.19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-20', 29, 8, 'ID6001-12', NULL, 'KAB. PADANG LAWAS UTARA', 'City', '', '', '12.2', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-21', 29, 8, 'ID6001-12', NULL, 'KAB. PADANG LAWAS', 'City', '', '', '12.21', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-22', 29, 8, 'ID6001-12', NULL, 'KAB. LABUHANBATU SELATAN', 'City', '', '', '12.22', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-23', 29, 8, 'ID6001-12', NULL, 'KAB. LABUHANBATU UTARA', 'City', '', '', '12.23', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-24', 29, 8, 'ID6001-12', NULL, 'KAB. NIAS UTARA', 'City', '', '', '12.24', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-25', 29, 8, 'ID6001-12', NULL, 'KAB. NIAS BARAT', 'City', '', '', '12.25', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-26', 29, 8, 'ID6001-12', NULL, 'KOTA MEDAN', 'City', '', '', '12.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-27', 29, 8, 'ID6001-12', NULL, 'KOTA PEMATANG SIANTAR', 'City', '', '', '12.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-28', 29, 8, 'ID6001-12', NULL, 'KOTA SIBOLGA', 'City', '', '', '12.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-29', 29, 8, 'ID6001-12', NULL, 'KOTA TANJUNG BALAI', 'City', '', '', '12.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-3', 29, 8, 'ID6001-12', NULL, 'KAB. TAPANULI SELATAN', 'City', '', '', '12.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-30', 29, 8, 'ID6001-12', NULL, 'KOTA BINJAI', 'City', '', '', '12.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-31', 29, 8, 'ID6001-12', NULL, 'KOTA TEBING TINGGI', 'City', '', '', '12.76', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-32', 29, 8, 'ID6001-12', NULL, 'KOTA PADANGSIDIMPUAN', 'City', '', '', '12.77', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-33', 29, 8, 'ID6001-12', NULL, 'KOTA GUNUNGSITOLI', 'City', '', '', '12.78', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-4', 29, 8, 'ID6001-12', NULL, 'KAB. NIAS', 'City', '', '', '12.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-5', 29, 8, 'ID6001-12', NULL, 'KAB. LANGKAT', 'City', '', '', '12.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-6', 29, 8, 'ID6001-12', NULL, 'KAB. KARO', 'City', '', '', '12.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-7', 29, 8, 'ID6001-12', NULL, 'KAB. DELI SERDANG', 'City', '', '', '12.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-8', 29, 8, 'ID6001-12', NULL, 'KAB. SIMALUNGUN', 'City', '', '', '12.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-12-9', 29, 8, 'ID6001-12', NULL, 'KAB. ASAHAN', 'City', '', '', '12.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13', 28, 7, 'ID6001', NULL, 'SUMATERA BARAT', 'State', '', '', '13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-1', 29, 8, 'ID6001-13', NULL, 'KAB. PESISIR SELATAN', 'City', '', '', '13.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-10', 29, 8, 'ID6001-13', NULL, 'KAB. DHARMASRAYA', 'City', '', '', '13.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-11', 29, 8, 'ID6001-13', NULL, 'KAB. SOLOK SELATAN', 'City', '', '', '13.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-12', 29, 8, 'ID6001-13', NULL, 'KAB. PASAMAN BARAT', 'City', '', '', '13.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-13', 29, 8, 'ID6001-13', NULL, 'KOTA PADANG', 'City', '', '', '13.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-14', 29, 8, 'ID6001-13', NULL, 'KOTA SOLOK', 'City', '', '', '13.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-15', 29, 8, 'ID6001-13', NULL, 'KOTA SAWAHLUNTO', 'City', '', '', '13.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-16', 29, 8, 'ID6001-13', NULL, 'KOTA PADANG PANJANG', 'City', '', '', '13.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-17', 29, 8, 'ID6001-13', NULL, 'KOTA BUKITTINGGI', 'City', '', '', '13.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-18', 29, 8, 'ID6001-13', NULL, 'KOTA PAYAKUMBUH', 'City', '', '', '13.76', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-19', 29, 8, 'ID6001-13', NULL, 'KOTA PARIAMAN', 'City', '', '', '13.77', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-2', 29, 8, 'ID6001-13', NULL, 'KAB. SOLOK', 'City', '', '', '13.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-4', 29, 8, 'ID6001-13', NULL, 'KAB. TANAH DATAR', 'City', '', '', '13.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-5', 29, 8, 'ID6001-13', NULL, 'KAB. PADANG PARIAMAN', 'City', '', '', '13.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-6', 29, 8, 'ID6001-13', NULL, 'KAB. AGAM', 'City', '', '', '13.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-7', 29, 8, 'ID6001-13', NULL, 'KAB. LIMA PULUH ', 'City', '', '', '13.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-8', 29, 8, 'ID6001-13', NULL, 'KAB. PASAMAN', 'City', '', '', '13.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-13-9', 29, 8, 'ID6001-13', NULL, 'KAB. KEPULAUAN MENTAWAI', 'City', '', '', '13.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14', 28, 7, 'ID6001', NULL, 'RIAU', 'State', '', '', '14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-1', 29, 8, 'ID6001-14', NULL, 'KAB. KAMPAR', 'City', '', '', '14.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-10', 29, 8, 'ID6001-14', NULL, 'KAB. KEPULAUAN MERANTI', 'City', '', '', '14.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-11', 29, 8, 'ID6001-14', NULL, 'KOTA PEKANBARU', 'City', '', '', '14.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-12', 29, 8, 'ID6001-14', NULL, 'KOTA DUMAI', 'City', '', '', '14.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-2', 29, 8, 'ID6001-14', NULL, 'KAB. INDRAGIRI HULU', 'City', '', '', '14.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-3', 29, 8, 'ID6001-14', NULL, 'KAB. BENGKALIS', 'City', '', '', '14.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-5', 29, 8, 'ID6001-14', NULL, 'KAB.  PELALAWAN', 'City', '', '', '14.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-6', 29, 8, 'ID6001-14', NULL, 'KAB.  ROKAN HULU', 'City', '', '', '14.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-7', 29, 8, 'ID6001-14', NULL, 'KAB.  ROKAN HILIR', 'City', '', '', '14.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-8', 29, 8, 'ID6001-14', NULL, 'KAB.  SIAK', 'City', '', '', '14.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-14-9', 29, 8, 'ID6001-14', NULL, 'KAB. KUANTAN SINGINGI', 'City', '', '', '14.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15', 28, 7, 'ID6001', NULL, 'JAMBI', 'State', '', '', '15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-1', 29, 8, 'ID6001-15', NULL, 'KAB.  KERINCI', 'City', '', '', '15.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-10', 29, 8, 'ID6001-15', NULL, 'KOTA JAMBI', 'City', '', '', '15.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-11', 29, 8, 'ID6001-15', NULL, 'KOTA SUNGAI PENUH', 'City', '', '', '15.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-2', 29, 8, 'ID6001-15', NULL, 'KAB.  MERANGIN', 'City', '', '', '15.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-3', 29, 8, 'ID6001-15', NULL, 'KAB. SAROLANGUN', 'City', '', '', '15.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-4', 29, 8, 'ID6001-15', NULL, 'KAB. BATANGHARI', 'City', '', '', '15.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-6', 29, 8, 'ID6001-15', NULL, 'KAB. TANJUNG JABUNG BARAT', 'City', '', '', '15.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-7', 29, 8, 'ID6001-15', NULL, 'KAB. TANJUNG JABUNG TIMUR', 'City', '', '', '15.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-8', 29, 8, 'ID6001-15', NULL, 'KAB. BUNGO', 'City', '', '', '15.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-15-9', 29, 8, 'ID6001-15', NULL, 'KAB. TEBO', 'City', '', '', '15.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16', 28, 7, 'ID6001', NULL, 'SUMATERA SELATAN', 'State', '', '', '16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-1', 29, 8, 'ID6001-16', NULL, 'KAB. OGAN KOMERING ULU', 'City', '', '', '16.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-10', 29, 8, 'ID6001-16', NULL, 'KAB. OGAN ILIR', 'City', '', '', '16.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-11', 29, 8, 'ID6001-16', NULL, 'KAB. EMPAT LAWANG', 'City', '', '', '16.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-12', 29, 8, 'ID6001-16', NULL, 'KOTA PALEMBANG', 'City', '', '', '16.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-13', 29, 8, 'ID6001-16', NULL, 'KOTA PAGAR ALAM', 'City', '', '', '16.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-14', 29, 8, 'ID6001-16', NULL, 'KOTA LUBUK LINGGAU', 'City', '', '', '16.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-15', 29, 8, 'ID6001-16', NULL, 'KOTA PRABUMULIH', 'City', '', '', '16.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-2', 29, 8, 'ID6001-16', NULL, 'KAB. OGAN KOMERING ILIR', 'City', '', '', '16.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-3', 29, 8, 'ID6001-16', NULL, 'KAB. MUARA ENIM', 'City', '', '', '16.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-4', 29, 8, 'ID6001-16', NULL, 'KAB. LAHAT', 'City', '', '', '16.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-5', 29, 8, 'ID6001-16', NULL, 'KAB. MUSI RAWAS', 'City', '', '', '16.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-7', 29, 8, 'ID6001-16', NULL, 'KAB. BANYUASIN', 'City', '', '', '16.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-8', 29, 8, 'ID6001-16', NULL, 'KAB. OKU TIMUR', 'City', '', '', '16.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-16-9', 29, 8, 'ID6001-16', NULL, 'KAB. OKU SELATAN', 'City', '', '', '16.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17', 28, 7, 'ID6001', NULL, 'BENGKULU', 'State', '', '', '17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-1', 29, 8, 'ID6001-17', NULL, 'KAB. BENGKULU SELATAN', 'City', '', '', '17.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-10', 29, 8, 'ID6001-17', NULL, 'KOTA BENGKULU', 'City', '', '', '17.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-2', 29, 8, 'ID6001-17', NULL, 'KAB. REJANG LEBONG', 'City', '', '', '17.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-3', 29, 8, 'ID6001-17', NULL, 'KAB. BENGKULU UTARA', 'City', '', '', '17.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-4', 29, 8, 'ID6001-17', NULL, 'KAB. KAUR', 'City', '', '', '17.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-5', 29, 8, 'ID6001-17', NULL, 'KAB. SELUMA', 'City', '', '', '17.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-6', 29, 8, 'ID6001-17', NULL, 'KAB. MUKO MUKO', 'City', '', '', '17.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-8', 29, 8, 'ID6001-17', NULL, 'KAB. KEPAHIANG', 'City', '', '', '17.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-17-9', 29, 8, 'ID6001-17', NULL, 'KAB. BENGKULU TENGAH', 'City', '', '', '17.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18', 28, 7, 'ID6001', NULL, 'LAMPUNG', 'State', '', '', '18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-1', 29, 8, 'ID6001-18', NULL, 'KAB. LAMPUNG SELATAN', 'City', '', '', '18.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-10', 29, 8, 'ID6001-18', NULL, 'KAB. PRINGSEWU', 'City', '', '', '18.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-11', 29, 8, 'ID6001-18', NULL, 'KAB. MESUJI', 'City', '', '', '18.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-12', 29, 8, 'ID6001-18', NULL, 'KAB. TULANG BAWANG BARAT', 'City', '', '', '18.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-13', 29, 8, 'ID6001-18', NULL, 'KOTA BANDAR LAMPUNG', 'City', '', '', '18.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-14', 29, 8, 'ID6001-18', NULL, 'KOTA METRO', 'City', '', '', '18.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-2', 29, 8, 'ID6001-18', NULL, 'KAB. LAMPUNG TENGAH', 'City', '', '', '18.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-3', 29, 8, 'ID6001-18', NULL, 'KAB. LAMPUNG UTARA', 'City', '', '', '18.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-4', 29, 8, 'ID6001-18', NULL, 'KAB. LAMPUNG BARAT', 'City', '', '', '18.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-5', 29, 8, 'ID6001-18', NULL, 'KAB. TULANG BAWANG', 'City', '', '', '18.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-6', 29, 8, 'ID6001-18', NULL, 'KAB. TANGGAMUS', 'City', '', '', '18.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-7', 29, 8, 'ID6001-18', NULL, 'KAB. LAMPUNG TIMUR', 'City', '', '', '18.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-18-9', 29, 8, 'ID6001-18', NULL, 'KAB. PESAWARAN', 'City', '', '', '18.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19', 28, 7, 'ID6001', NULL, 'KEP. BANGKA BELITUNG', 'State', '', '', '19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-1', 29, 8, 'ID6001-19', NULL, 'KAB. BANGKA', 'City', '', '', '19.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-2', 29, 8, 'ID6001-19', NULL, 'KAB. BELITUNG', 'City', '', '', '19.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-3', 29, 8, 'ID6001-19', NULL, 'KAB. BANGKA SELATAN', 'City', '', '', '19.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-4', 29, 8, 'ID6001-19', NULL, 'KAB. BANGKA TENGAH', 'City', '', '', '19.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-5', 29, 8, 'ID6001-19', NULL, 'KAB. BANGKA BARAT', 'City', '', '', '19.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-6', 29, 8, 'ID6001-19', NULL, 'KAB. BELITUNG TIMUR', 'City', '', '', '19.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-19-7', 29, 8, 'ID6001-19', NULL, 'KOTA PANGKAL PINANG', 'City', '', '', '19.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21', 28, 7, 'ID6001', NULL, 'KEPULAUAN RIAU', 'State', '', '', '21', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-1', 29, 8, 'ID6001-21', NULL, 'KAB. BINTAN', 'City', '', '', '21.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-2', 29, 8, 'ID6001-21', NULL, 'KAB. KARIMUN', 'City', '', '', '21.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-3', 29, 8, 'ID6001-21', NULL, 'KAB. NATUNA', 'City', '', '', '21.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-4', 29, 8, 'ID6001-21', NULL, 'KAB. LINGGA', 'City', '', '', '21.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-5', 29, 8, 'ID6001-21', NULL, 'KAB. KEPULAUAN ANAMBAS', 'City', '', '', '21.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-6', 29, 8, 'ID6001-21', NULL, 'KOTA BATAM', 'City', '', '', '21.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-21-7', 29, 8, 'ID6001-21', NULL, 'KOTA TANJUNG PINANG', 'City', '', '', '21.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31', 28, 7, 'ID6001', NULL, 'DKI JAKARTA', 'State', '', '', '31', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-1', 29, 8, 'ID6001-31', NULL, 'KAB. ADM. KEP. SERIBU', 'City', '', '', '31.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-2', 29, 8, 'ID6001-31', NULL, 'KOTA ADM. JAKARTA PUSAT', 'City', '', '', '31.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-3', 29, 8, 'ID6001-31', NULL, 'KOTA ADM. JAKARTA UTARA', 'City', '', '', '31.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-4', 29, 8, 'ID6001-31', NULL, 'KOTA ADM. JAKARTA BARAT', 'City', '', '', '31.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-5', 29, 8, 'ID6001-31', NULL, 'KOTA ADM. JAKARTA SELATAN', 'City', '', '', '31.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-31-6', 29, 8, 'ID6001-31', NULL, 'KOTA ADM. JAKARTA TIMUR', 'City', '', '', '31.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32', 28, 7, 'ID6001', NULL, 'JAWA BARAT', 'State', '', '', '32', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-1', 29, 8, 'ID6001-32', NULL, 'KAB. BOGOR', 'City', '', '', '32.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-10', 29, 8, 'ID6001-32', NULL, 'KAB. MAJALENGKA', 'City', '', '', '32.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-11', 29, 8, 'ID6001-32', NULL, 'KAB. SUMEDANG', 'City', '', '', '32.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-13', 29, 8, 'ID6001-32', NULL, 'KAB. SUBANG', 'City', '', '', '32.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-14', 29, 8, 'ID6001-32', NULL, 'KAB. PURWAKARTA', 'City', '', '', '32.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-15', 29, 8, 'ID6001-32', NULL, 'KAB. KARAWANG', 'City', '', '', '32.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-16', 29, 8, 'ID6001-32', NULL, 'KAB. BEKASI', 'City', '', '', '32.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-17', 29, 8, 'ID6001-32', NULL, 'KAB. BANDUNG BARAT', 'City', '', '', '32.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-18', 29, 8, 'ID6001-32', NULL, 'KOTA BOGOR', 'City', '', '', '32.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-19', 29, 8, 'ID6001-32', NULL, 'KOTA SUKABUMI', 'City', '', '', '32.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-2', 29, 8, 'ID6001-32', NULL, 'KAB. SUKABUMI', 'City', '', '', '32.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-20', 29, 8, 'ID6001-32', NULL, 'KOTA BANDUNG', 'City', '', '', '32.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-21', 29, 8, 'ID6001-32', NULL, 'KOTA CIREBON', 'City', '', '', '32.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-22', 29, 8, 'ID6001-32', NULL, 'KOTA DEPOK', 'City', '', '', '32.76', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-23', 29, 8, 'ID6001-32', NULL, 'KOTA CIMAHI', 'City', '', '', '32.77', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-24', 29, 8, 'ID6001-32', NULL, 'KOTA TASIKMALAYA', 'City', '', '', '32.78', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-25', 29, 8, 'ID6001-32', NULL, 'KOTA BANJAR', 'City', '', '', '32.79', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-3', 29, 8, 'ID6001-32', NULL, 'KAB. CIANJUR', 'City', '', '', '32.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-4', 29, 8, 'ID6001-32', NULL, 'KAB. BANDUNG', 'City', '', '', '32.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-5', 29, 8, 'ID6001-32', NULL, 'KAB. GARUT', 'City', '', '', '32.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-6', 29, 8, 'ID6001-32', NULL, 'KAB. TASIKMALAYA', 'City', '', '', '32.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-7', 29, 8, 'ID6001-32', NULL, 'KAB. CIAMIS', 'City', '', '', '32.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-8', 29, 8, 'ID6001-32', NULL, 'KAB. KUNINGAN', 'City', '', '', '32.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-32-9', 29, 8, 'ID6001-32', NULL, 'KAB. CIREBON', 'City', '', '', '32.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33', 28, 7, 'ID6001', NULL, 'JAWA TENGAH', 'State', '', '', '33', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-1', 29, 8, 'ID6001-33', NULL, 'KAB. CILACAP', 'City', '', '', '33.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-10', 29, 8, 'ID6001-33', NULL, 'KAB. KLATEN', 'City', '', '', '33.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-11', 29, 8, 'ID6001-33', NULL, 'KAB. SUKOHARJO', 'City', '', '', '33.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-12', 29, 8, 'ID6001-33', NULL, 'KAB. WONOGIRI', 'City', '', '', '33.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-14', 29, 8, 'ID6001-33', NULL, 'KAB. SRAGEN', 'City', '', '', '33.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-15', 29, 8, 'ID6001-33', NULL, 'KAB. GROBOGAN', 'City', '', '', '33.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-16', 29, 8, 'ID6001-33', NULL, 'KAB. BLORA', 'City', '', '', '33.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-17', 29, 8, 'ID6001-33', NULL, 'KAB. REMBANG', 'City', '', '', '33.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-18', 29, 8, 'ID6001-33', NULL, 'KAB. PATI', 'City', '', '', '33.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-19', 29, 8, 'ID6001-33', NULL, 'KAB. KUDUS', 'City', '', '', '33.19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-2', 29, 8, 'ID6001-33', NULL, 'KAB. BANYUMAS', 'City', '', '', '33.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-20', 29, 8, 'ID6001-33', NULL, 'KAB. JEPARA', 'City', '', '', '33.2', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-21', 29, 8, 'ID6001-33', NULL, 'KAB. DEMAK', 'City', '', '', '33.21', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-22', 29, 8, 'ID6001-33', NULL, 'KAB. SEMARANG', 'City', '', '', '33.22', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-23', 29, 8, 'ID6001-33', NULL, 'KAB. TEMANGGUNG', 'City', '', '', '33.23', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-24', 29, 8, 'ID6001-33', NULL, 'KAB. KENDAL', 'City', '', '', '33.24', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-25', 29, 8, 'ID6001-33', NULL, 'KAB. BATANG', 'City', '', '', '33.25', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-26', 29, 8, 'ID6001-33', NULL, 'KAB. PEKALONGAN', 'City', '', '', '33.26', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-27', 29, 8, 'ID6001-33', NULL, 'KAB. PEMALANG', 'City', '', '', '33.27', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-28', 29, 8, 'ID6001-33', NULL, 'KAB. TEGAL', 'City', '', '', '33.28', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-29', 29, 8, 'ID6001-33', NULL, 'KAB. BREBES', 'City', '', '', '33.29', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-3', 29, 8, 'ID6001-33', NULL, 'KAB. PURBALINGGA', 'City', '', '', '33.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-30', 29, 8, 'ID6001-33', NULL, 'KOTA MAGELANG', 'City', '', '', '33.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-31', 29, 8, 'ID6001-33', NULL, 'KOTA SURAKARTA', 'City', '', '', '33.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-32', 29, 8, 'ID6001-33', NULL, 'KOTA SALATIGA', 'City', '', '', '33.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-33', 29, 8, 'ID6001-33', NULL, 'KOTA SEMARANG', 'City', '', '', '33.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-34', 29, 8, 'ID6001-33', NULL, 'KOTA PEKALONGAN', 'City', '', '', '33.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-35', 29, 8, 'ID6001-33', NULL, 'KOTA TEGAL', 'City', '', '', '33.76', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-4', 29, 8, 'ID6001-33', NULL, 'KAB. BANJARNEGARA', 'City', '', '', '33.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-5', 29, 8, 'ID6001-33', NULL, 'KAB. KEBUMEN', 'City', '', '', '33.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-6', 29, 8, 'ID6001-33', NULL, 'KAB. PURWOREJO', 'City', '', '', '33.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-7', 29, 8, 'ID6001-33', NULL, 'KAB. WONOSOBO', 'City', '', '', '33.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-8', 29, 8, 'ID6001-33', NULL, 'KAB. MAGELANG', 'City', '', '', '33.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-33-9', 29, 8, 'ID6001-33', NULL, 'KAB. BOYOLALI', 'City', '', '', '33.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34', 28, 7, 'ID6001', NULL, 'DAISTA YOGYAKARTA', 'State', '', '', '34', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34-1', 29, 8, 'ID6001-34', NULL, 'KAB. KULON PROGO', 'City', '', '', '34.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34-2', 29, 8, 'ID6001-34', NULL, 'KAB. BANTUL', 'City', '', '', '34.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34-3', 29, 8, 'ID6001-34', NULL, 'KAB. GUNUNG KIDUL', 'City', '', '', '34.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34-4', 29, 8, 'ID6001-34', NULL, 'KAB. SLEMAN', 'City', '', '', '34.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-34-5', 29, 8, 'ID6001-34', NULL, 'KOTA YOGYAKARTA', 'City', '', '', '34.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35', 28, 7, 'ID6001', NULL, 'JAWA TIMUR', 'State', '', '', '35', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-1', 29, 8, 'ID6001-35', NULL, 'KAB. PACITAN', 'City', '', '', '35.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-10', 29, 8, 'ID6001-35', NULL, 'KAB. BANYUWANGI', 'City', '', '', '35.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-11', 29, 8, 'ID6001-35', NULL, 'KAB. BONDOWOSO', 'City', '', '', '35.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-12', 29, 8, 'ID6001-35', NULL, 'KAB. SITUBONDO', 'City', '', '', '35.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-13', 29, 8, 'ID6001-35', NULL, 'KAB. PROBOLINGGO', 'City', '', '', '35.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-14', 29, 8, 'ID6001-35', NULL, 'KAB. PASURUAN', 'City', '', '', '35.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-16', 29, 8, 'ID6001-35', NULL, 'KAB. MOJOKERTO', 'City', '', '', '35.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-17', 29, 8, 'ID6001-35', NULL, 'KAB. JOMBANG', 'City', '', '', '35.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-18', 29, 8, 'ID6001-35', NULL, 'KAB. NGANJUK', 'City', '', '', '35.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-19', 29, 8, 'ID6001-35', NULL, 'KAB. MADIUN', 'City', '', '', '35.19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-2', 29, 8, 'ID6001-35', NULL, 'KAB. PONOROGO', 'City', '', '', '35.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-20', 29, 8, 'ID6001-35', NULL, 'KAB. MAGETAN', 'City', '', '', '35.2', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-21', 29, 8, 'ID6001-35', NULL, 'KAB. NGAWI', 'City', '', '', '35.21', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-22', 29, 8, 'ID6001-35', NULL, 'KAB. BOJONEGORO', 'City', '', '', '35.22', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-23', 29, 8, 'ID6001-35', NULL, 'KAB. TUBAN', 'City', '', '', '35.23', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-24', 29, 8, 'ID6001-35', NULL, 'KAB. LAMONGAN', 'City', '', '', '35.24', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-25', 29, 8, 'ID6001-35', NULL, 'KAB. GRESIK', 'City', '', '', '35.25', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-26', 29, 8, 'ID6001-35', NULL, 'KAB. BANGKALAN', 'City', '', '', '35.26', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-27', 29, 8, 'ID6001-35', NULL, 'KAB. SAMPANG', 'City', '', '', '35.27', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-28', 29, 8, 'ID6001-35', NULL, 'KAB. PAMEKASAN', 'City', '', '', '35.28', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-29', 29, 8, 'ID6001-35', NULL, 'KAB. SUMENEP', 'City', '', '', '35.29', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-3', 29, 8, 'ID6001-35', NULL, 'KAB. TRENGGALEK', 'City', '', '', '35.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-30', 29, 8, 'ID6001-35', NULL, 'KOTA KEDIRI', 'City', '', '', '35.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-31', 29, 8, 'ID6001-35', NULL, 'KOTA BLITAR', 'City', '', '', '35.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-32', 29, 8, 'ID6001-35', NULL, 'KOTA MALANG', 'City', '', '', '35.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-33', 29, 8, 'ID6001-35', NULL, 'KOTA PROBOLINGGO', 'City', '', '', '35.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-34', 29, 8, 'ID6001-35', NULL, 'KOTA PASURUAN', 'City', '', '', '35.75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-35', 29, 8, 'ID6001-35', NULL, 'KOTA MOJOKERTO', 'City', '', '', '35.76', '', 0, '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `m_country` (`id`, `id_m_set_category_hierarchy`, `id_m_set_category_name`, `id_parent`, `code`, `name`, `name_official`, `alpha2_code`, `alpha3_code`, `numeric_code`, `iso_31662`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
('ID6001-35-36', 29, 8, 'ID6001-35', NULL, 'KOTA MADIUN', 'City', '', '', '35.77', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-37', 29, 8, 'ID6001-35', NULL, 'KOTA SURABAYA', 'City', '', '', '35.78', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-38', 29, 8, 'ID6001-35', NULL, 'KOTA BATU', 'City', '', '', '35.79', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-4', 29, 8, 'ID6001-35', NULL, 'KAB. TULUNGAGUNG', 'City', '', '', '35.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-5', 29, 8, 'ID6001-35', NULL, 'KAB. BLITAR', 'City', '', '', '35.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-6', 29, 8, 'ID6001-35', NULL, 'KAB. KEDIRI', 'City', '', '', '35.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-7', 29, 8, 'ID6001-35', NULL, 'KAB. MALANG', 'City', '', '', '35.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-8', 29, 8, 'ID6001-35', NULL, 'KAB. LUMAJANG', 'City', '', '', '35.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-35-9', 29, 8, 'ID6001-35', NULL, 'KAB. JEMBER', 'City', '', '', '35.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36', 28, 7, 'ID6001', NULL, 'BANTEN', 'State', '', '', '36', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-39', 29, 8, 'ID6001-36', NULL, 'KAB. PANDEGLANG', 'City', '', '', '36.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-40', 29, 8, 'ID6001-36', NULL, 'KAB. LEBAK', 'City', '', '', '36.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-41', 29, 8, 'ID6001-36', NULL, 'KAB. TANGERANG', 'City', '', '', '36.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-42', 29, 8, 'ID6001-36', NULL, 'KAB. SERANG', 'City', '', '', '36.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-43', 29, 8, 'ID6001-36', NULL, 'KOTA TANGERANG', 'City', '', '', '36.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-44', 29, 8, 'ID6001-36', NULL, 'KOTA CILEGON', 'City', '', '', '36.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-45', 29, 8, 'ID6001-36', NULL, 'KOTA SERANG', 'City', '', '', '36.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-36-46', 29, 8, 'ID6001-36', NULL, 'KOTA TANGERANG SELATAN', 'City', '', '', '36.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51', 28, 7, 'ID6001', NULL, 'BALI', 'State', '', '', '51', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-47', 29, 8, 'ID6001-51', NULL, 'KAB. JEMBRANA', 'City', '', '', '51.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-48', 29, 8, 'ID6001-51', NULL, 'KAB. TABANAN', 'City', '', '', '51.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-49', 29, 8, 'ID6001-51', NULL, 'KAB. BADUNG', 'City', '', '', '51.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-50', 29, 8, 'ID6001-51', NULL, 'KAB. GIANYAR', 'City', '', '', '51.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-51', 29, 8, 'ID6001-51', NULL, 'KAB. KLUNGKUNG', 'City', '', '', '51.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-52', 29, 8, 'ID6001-51', NULL, 'KAB. BANGLI', 'City', '', '', '51.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-53', 29, 8, 'ID6001-51', NULL, 'KAB. KARANGASEM', 'City', '', '', '51.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-54', 29, 8, 'ID6001-51', NULL, 'KAB. BULELENG', 'City', '', '', '51.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-51-55', 29, 8, 'ID6001-51', NULL, 'KOTA DENPASAR', 'City', '', '', '51.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52', 28, 7, 'ID6001', NULL, 'NUSA TENGGARA BARAT', 'State', '', '', '52', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-56', 29, 8, 'ID6001-52', NULL, 'KAB. LOMBOK BARAT', 'City', '', '', '52.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-57', 29, 8, 'ID6001-52', NULL, 'KAB. LOMBOK TENGAH', 'City', '', '', '52.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-58', 29, 8, 'ID6001-52', NULL, 'KAB. LOMBOK TIMUR', 'City', '', '', '52.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-59', 29, 8, 'ID6001-52', NULL, 'KAB. SUMBAWA', 'City', '', '', '52.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-60', 29, 8, 'ID6001-52', NULL, 'KAB. DOMPU', 'City', '', '', '52.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-61', 29, 8, 'ID6001-52', NULL, 'KAB. BIMA', 'City', '', '', '52.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-62', 29, 8, 'ID6001-52', NULL, 'KAB. SUMBAWA BARAT', 'City', '', '', '52.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-63', 29, 8, 'ID6001-52', NULL, 'KAB. LOMBOK UTARA', 'City', '', '', '52.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-64', 29, 8, 'ID6001-52', NULL, 'KOTA MATARAM', 'City', '', '', '52.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-52-65', 29, 8, 'ID6001-52', NULL, 'KOTA BIMA', 'City', '', '', '52.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53', 28, 7, 'ID6001', NULL, 'NUSA TENGGARA TIMUR', 'State', '', '', '53', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-66', 29, 8, 'ID6001-53', NULL, 'KAB. KUPANG', 'City', '', '', '53.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-67', 29, 8, 'ID6001-53', NULL, 'KAB TIMOR TENGAH SELATAN', 'City', '', '', '53.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-68', 29, 8, 'ID6001-53', NULL, 'KAB. TIMOR TENGAH UTARA', 'City', '', '', '53.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-69', 29, 8, 'ID6001-53', NULL, 'KAB. BELU', 'City', '', '', '53.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-70', 29, 8, 'ID6001-53', NULL, 'KAB. ALOR', 'City', '', '', '53.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-71', 29, 8, 'ID6001-53', NULL, 'KAB. FLORES TIMUR', 'City', '', '', '53.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-72', 29, 8, 'ID6001-53', NULL, 'KAB. SIKKA', 'City', '', '', '53.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-73', 29, 8, 'ID6001-53', NULL, 'KAB. ENDE', 'City', '', '', '53.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-74', 29, 8, 'ID6001-53', NULL, 'KAB. NGADA', 'City', '', '', '53.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-75', 29, 8, 'ID6001-53', NULL, 'KAB. MANGGARAI', 'City', '', '', '53.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-76', 29, 8, 'ID6001-53', NULL, 'KAB. SUMBA TIMUR', 'City', '', '', '53.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-77', 29, 8, 'ID6001-53', NULL, 'KAB. SUMBA BARAT', 'City', '', '', '53.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-78', 29, 8, 'ID6001-53', NULL, 'KAB. LEMBATA', 'City', '', '', '53.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-79', 29, 8, 'ID6001-53', NULL, 'KAB. ROTE NDAO', 'City', '', '', '53.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-80', 29, 8, 'ID6001-53', NULL, 'KAB. MANGGARAI BARAT', 'City', '', '', '53.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-81', 29, 8, 'ID6001-53', NULL, 'KAB. NAGEKEO', 'City', '', '', '53.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-82', 29, 8, 'ID6001-53', NULL, 'KAB. SUMBA TENGAH', 'City', '', '', '53.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-83', 29, 8, 'ID6001-53', NULL, 'KAB. SUMBA BARAT DAYA', 'City', '', '', '53.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-84', 29, 8, 'ID6001-53', NULL, 'KAB. MANGGARAI TIMUR', 'City', '', '', '53.19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-85', 29, 8, 'ID6001-53', NULL, 'KAB. SABU RAIJUA', 'City', '', '', '53.2', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-53-86', 29, 8, 'ID6001-53', NULL, 'KOTA KUPANG', 'City', '', '', '53.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61', 28, 7, 'ID6001', NULL, 'KALIMANTAN BARAT', 'State', '', '', '61', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-1', 29, 8, 'ID6001-61', NULL, 'KAB. SAMBAS', 'City', '', '', '61.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-10', 29, 8, 'ID6001-61', NULL, 'KAB. MELAWI', 'City', '', '', '61.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-11', 29, 8, 'ID6001-61', NULL, 'KAB. KAYONG UTARA', 'City', '', '', '61.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-12', 29, 8, 'ID6001-61', NULL, 'KAB. KUBU RAYA', 'City', '', '', '61.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-13', 29, 8, 'ID6001-61', NULL, 'KOTA PONTIANAK', 'City', '', '', '61.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-14', 29, 8, 'ID6001-61', NULL, 'KOTA SINGKAWANG', 'City', '', '', '61.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-2', 29, 8, 'ID6001-61', NULL, 'KAB. PONTIANAK', 'City', '', '', '61.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-3', 29, 8, 'ID6001-61', NULL, 'KAB. SANGGAU', 'City', '', '', '61.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-4', 29, 8, 'ID6001-61', NULL, 'KAB. KETAPANG', 'City', '', '', '61.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-5', 29, 8, 'ID6001-61', NULL, 'KAB. SINTANG', 'City', '', '', '61.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-6', 29, 8, 'ID6001-61', NULL, 'KAB. KAPUAS HULU', 'City', '', '', '61.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-7', 29, 8, 'ID6001-61', NULL, 'KAB. BENGKAYANG', 'City', '', '', '61.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-8', 29, 8, 'ID6001-61', NULL, 'KAB. LANDAK', 'City', '', '', '61.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-61-9', 29, 8, 'ID6001-61', NULL, 'KAB. SEKADAU', 'City', '', '', '61.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62', 28, 7, 'ID6001', NULL, 'KALIMANTAN TENGAH', 'State', '', '', '62', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-1', 29, 8, 'ID6001-62', NULL, 'KAB. KOTAWARINGIN BARAT', 'City', '', '', '62.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-10', 29, 8, 'ID6001-62', NULL, 'KAB. GUNUNG MAS', 'City', '', '', '62.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-11', 29, 8, 'ID6001-62', NULL, 'KAB. PULANG PISAU', 'City', '', '', '62.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-12', 29, 8, 'ID6001-62', NULL, 'KAB. MURUNG RAYA', 'City', '', '', '62.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-13', 29, 8, 'ID6001-62', NULL, 'KAB. BARITO TIMUR', 'City', '', '', '62.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-14', 29, 8, 'ID6001-62', NULL, 'KOTA PALANGKARAYA', 'City', '', '', '62.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-2', 29, 8, 'ID6001-62', NULL, 'KAB. KOTAWARINGIN TIMUR', 'City', '', '', '62.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-3', 29, 8, 'ID6001-62', NULL, 'KAB. KAPUAS', 'City', '', '', '62.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-4', 29, 8, 'ID6001-62', NULL, 'KAB. BARITO SELATAN', 'City', '', '', '62.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-5', 29, 8, 'ID6001-62', NULL, 'KAB. BARITO UTARA', 'City', '', '', '62.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-6', 29, 8, 'ID6001-62', NULL, 'KAB. KATINGAN', 'City', '', '', '62.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-7', 29, 8, 'ID6001-62', NULL, 'KAB. SERUYAN', 'City', '', '', '62.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-8', 29, 8, 'ID6001-62', NULL, 'KAB. SUKAMARA', 'City', '', '', '62.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-62-9', 29, 8, 'ID6001-62', NULL, 'KAB. LAMANDAU', 'City', '', '', '62.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63', 28, 7, 'ID6001', NULL, 'KALIMANTAN SELATAN', 'State', '', '', '63', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-1', 29, 8, 'ID6001-63', NULL, 'KAB. TANAH LAUT', 'City', '', '', '63.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-10', 29, 8, 'ID6001-63', NULL, 'KAB. TANAH BUMBU', 'City', '', '', '63.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-11', 29, 8, 'ID6001-63', NULL, 'KAB. BALANGAN', 'City', '', '', '63.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-12', 29, 8, 'ID6001-63', NULL, 'KOTA BANJARMASIN', 'City', '', '', '63.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-13', 29, 8, 'ID6001-63', NULL, 'KOTA BANJARBARU', 'City', '', '', '63.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-2', 29, 8, 'ID6001-63', NULL, 'KAB. KOTABARU', 'City', '', '', '63.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-3', 29, 8, 'ID6001-63', NULL, 'KAB. BANJAR', 'City', '', '', '63.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-4', 29, 8, 'ID6001-63', NULL, 'KAB. BARITO KUALA', 'City', '', '', '63.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-5', 29, 8, 'ID6001-63', NULL, 'KAB. TAPIN', 'City', '', '', '63.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-6', 29, 8, 'ID6001-63', NULL, 'KAB. HULU SUNGAI SELATAN', 'City', '', '', '63.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-7', 29, 8, 'ID6001-63', NULL, 'KAB. HULU SUNGAI TENGAH', 'City', '', '', '63.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-8', 29, 8, 'ID6001-63', NULL, 'KAB. HULU SUNGAI UTARA', 'City', '', '', '63.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-63-9', 29, 8, 'ID6001-63', NULL, 'KAB. TABALONG', 'City', '', '', '63.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64', 28, 7, 'ID6001', NULL, 'KALIMANTAN TIMUR', 'State', '', '', '64', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-1', 29, 8, 'ID6001-64', NULL, 'KAB. PASER', 'City', '', '', '64.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-10', 29, 8, 'ID6001-64', NULL, 'KAB TANA TIDUNG', 'City', '', '', '64.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-11', 29, 8, 'ID6001-64', NULL, 'KOTA BALIKPAPAN', 'City', '', '', '64.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-12', 29, 8, 'ID6001-64', NULL, 'KOTA SAMARINDA', 'City', '', '', '64.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-13', 29, 8, 'ID6001-64', NULL, 'KOTA TARAKAN', 'City', '', '', '64.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-14', 29, 8, 'ID6001-64', NULL, 'KOTA BONTANG', 'City', '', '', '64.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-2', 29, 8, 'ID6001-64', NULL, 'KAB. KUTAI KARTANEGARA', 'City', '', '', '64.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-3', 29, 8, 'ID6001-64', NULL, 'KAB. BERAU', 'City', '', '', '64.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-4', 29, 8, 'ID6001-64', NULL, 'KAB. BULUNGAN', 'City', '', '', '64.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-5', 29, 8, 'ID6001-64', NULL, 'KAB. NUNUKAN', 'City', '', '', '64.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-6', 29, 8, 'ID6001-64', NULL, 'KAB. MALINAU', 'City', '', '', '64.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-7', 29, 8, 'ID6001-64', NULL, 'KAB. KUTAI BARAT', 'City', '', '', '64.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-8', 29, 8, 'ID6001-64', NULL, 'KAB. KUTAI TIMUR', 'City', '', '', '64.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-64-9', 29, 8, 'ID6001-64', NULL, 'KAB PENAJAM PASER UTARA', 'City', '', '', '64.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71', 28, 7, 'ID6001', NULL, 'SULAWESI UTARA', 'State', '', '', '71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-1', 29, 8, 'ID6001-71', NULL, 'KAB. BOLAANG MONGONDOW', 'City', '', '', '71.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-10', 29, 8, 'ID6001-71', NULL, 'KAB. BOLAANG MONGONDOW TI', 'City', '', '', '71.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-11', 29, 8, 'ID6001-71', NULL, 'KAB. BOLAANG MONGONDOW SE', 'City', '', '', '71.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-12', 29, 8, 'ID6001-71', NULL, 'KOTA MANADO', 'City', '', '', '71.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-13', 29, 8, 'ID6001-71', NULL, 'KOTA BITUNG', 'City', '', '', '71.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-14', 29, 8, 'ID6001-71', NULL, 'KOTA TOMOHON', 'City', '', '', '71.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-15', 29, 8, 'ID6001-71', NULL, 'KOTA KOTAMOBAGU', 'City', '', '', '71.74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-2', 29, 8, 'ID6001-71', NULL, 'KAB. MINAHASA', 'City', '', '', '71.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-3', 29, 8, 'ID6001-71', NULL, 'KAB. KEPULAUAN SANGIHE', 'City', '', '', '71.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-4', 29, 8, 'ID6001-71', NULL, 'KAB. KEPULAUAN TALAUD', 'City', '', '', '71.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-5', 29, 8, 'ID6001-71', NULL, 'KAB. MINAHASA SELATAN', 'City', '', '', '71.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-6', 29, 8, 'ID6001-71', NULL, 'KAB. MINAHASA UTARA', 'City', '', '', '71.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-7', 29, 8, 'ID6001-71', NULL, 'KAB. MINAHASA TENGGARA', 'City', '', '', '71.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-8', 29, 8, 'ID6001-71', NULL, 'KAB. BOLAANG MONGONDOW UT', 'City', '', '', '71.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-71-9', 29, 8, 'ID6001-71', NULL, 'KAB. KEP. SIAU TAGULANDANG B', 'City', '', '', '71.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72', 28, 7, 'ID6001', NULL, 'SULAWESI TENGAH', 'State', '', '', '72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-1', 29, 8, 'ID6001-72', NULL, 'KAB. BANGGAI', 'City', '', '', '72.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-10', 29, 8, 'ID6001-72', NULL, 'KAB. SIGI', 'City', '', '', '72.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-11', 29, 8, 'ID6001-72', NULL, 'KOTA PALU', 'City', '', '', '72.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-2', 29, 8, 'ID6001-72', NULL, 'KAB. POSO', 'City', '', '', '72.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-3', 29, 8, 'ID6001-72', NULL, 'KAB. DONGGALA', 'City', '', '', '72.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-4', 29, 8, 'ID6001-72', NULL, 'KAB. TOLI TOLI', 'City', '', '', '72.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-5', 29, 8, 'ID6001-72', NULL, 'KAB. BUOL', 'City', '', '', '72.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-6', 29, 8, 'ID6001-72', NULL, 'KAB. MOROWALI', 'City', '', '', '72.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-7', 29, 8, 'ID6001-72', NULL, 'KAB. BANGGAI KEPULAUAN', 'City', '', '', '72.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-8', 29, 8, 'ID6001-72', NULL, 'KAB. PARIGI MOUTONG', 'City', '', '', '72.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-72-9', 29, 8, 'ID6001-72', NULL, 'KAB. TOJO UNA UNA', 'City', '', '', '72.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73', 28, 7, 'ID6001', NULL, 'SULAWESI SELATAN', 'State', '', '', '73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-1', 29, 8, 'ID6001-73', NULL, 'KAB. KEPULAUAN SELAYAR', 'City', '', '', '73.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-10', 29, 8, 'ID6001-73', NULL, 'KAB. PANGKAJENE KEPULAUAN', 'City', '', '', '73.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-11', 29, 8, 'ID6001-73', NULL, 'KAB. BARRU', 'City', '', '', '73.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-12', 29, 8, 'ID6001-73', NULL, 'KAB. SOPPENG', 'City', '', '', '73.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-13', 29, 8, 'ID6001-73', NULL, 'KAB. WAJO', 'City', '', '', '73.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-14', 29, 8, 'ID6001-73', NULL, 'KAB. SIDENRENG RAPPANG', 'City', '', '', '73.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-15', 29, 8, 'ID6001-73', NULL, 'KAB. PINRANG', 'City', '', '', '73.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-16', 29, 8, 'ID6001-73', NULL, 'KAB. ENREKANG', 'City', '', '', '73.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-17', 29, 8, 'ID6001-73', NULL, 'KAB. LUWU', 'City', '', '', '73.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-18', 29, 8, 'ID6001-73', NULL, 'KAB. TANA TORAJA', 'City', '', '', '73.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-19', 29, 8, 'ID6001-73', NULL, 'KAB. POLEWALI MAMASA', 'City', '', '', '', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-2', 29, 8, 'ID6001-73', NULL, 'KAB. BULUKUMBA', 'City', '', '', '73.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-20', 29, 8, 'ID6001-73', NULL, 'KAB. MAJENE', 'City', '', '', '', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-21', 29, 8, 'ID6001-73', NULL, 'KAB. MAMUJU', 'City', '', '', '', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-22', 29, 8, 'ID6001-73', NULL, 'KAB. LUWU UTARA', 'City', '', '', '73.22', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-23', 29, 8, 'ID6001-73', NULL, 'KAB. MAMASA', 'City', '', '', '', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-24', 29, 8, 'ID6001-73', NULL, 'KAB. LUWU TIMUR', 'City', '', '', '73.24', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-25', 29, 8, 'ID6001-73', NULL, 'KAB. MAMUJU UTARA', 'City', '', '', '', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-27', 29, 8, 'ID6001-73', NULL, 'KOTA MAKASSAR', 'City', '', '', '73.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-28', 29, 8, 'ID6001-73', NULL, 'KOTA PARE PARE', 'City', '', '', '73.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-29', 29, 8, 'ID6001-73', NULL, 'KOTA PALOPO', 'City', '', '', '73.73', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-3', 29, 8, 'ID6001-73', NULL, 'KAB. BANTAENG', 'City', '', '', '73.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-4', 29, 8, 'ID6001-73', NULL, 'KAB. JENEPONTO', 'City', '', '', '73.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-5', 29, 8, 'ID6001-73', NULL, 'KAB. TAKALAR', 'City', '', '', '73.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-6', 29, 8, 'ID6001-73', NULL, 'KAB. GOWA', 'City', '', '', '73.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-7', 29, 8, 'ID6001-73', NULL, 'KAB. SINJAI', 'City', '', '', '73.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-8', 29, 8, 'ID6001-73', NULL, 'KAB. BONE', 'City', '', '', '73.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-73-9', 29, 8, 'ID6001-73', NULL, 'KAB. MAROS', 'City', '', '', '73.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-74', 28, 7, 'ID6001', NULL, 'SULAWESI TENGGARA', 'State', '', '', '74', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-74-1', 29, 8, 'ID6001-74', NULL, 'KAB. KOLAKA', 'City', '', '', '74.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-74-2', 29, 8, 'ID6001-74', NULL, 'KAB. KONAWE', 'City', '', '', '74.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-74-3', 29, 8, 'ID6001-74', NULL, 'KAB. MUNA', 'City', '', '', '74.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-75', 28, 7, 'ID6001', NULL, 'GORONTALO', 'State', '', '', '75', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-76', 28, 7, 'ID6001', NULL, 'SULAWESI BARAT', 'State', '', '', '76', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-81', 28, 7, 'ID6001', NULL, 'MALUKU', 'State', '', '', '81', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-82', 28, 7, 'ID6001', NULL, 'MALUKU UTARA', 'State', '', '', '82', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-82-1', 29, 8, 'ID6001-82', NULL, 'KAB. PULAU MOROTAI', 'City', '', '', '82.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-82-2', 29, 8, 'ID6001-82', NULL, 'KOTA TERNATE', 'City', '', '', '82.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-82-3', 29, 8, 'ID6001-82', NULL, 'KOTA TIDORE KEPULAUAN', 'City', '', '', '82.72', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91', 28, 7, 'ID6001', NULL, 'P A P U A', 'State', '', '', '91', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-1', 29, 8, 'ID6001-91', NULL, 'KAB. MERAUKE', 'City', '', '', '91.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-10', 29, 8, 'ID6001-91', NULL, 'KAB. SARMI', 'City', '', '', '91.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-11', 29, 8, 'ID6001-91', NULL, 'KAB. KEEROM', 'City', '', '', '91.11', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-12', 29, 8, 'ID6001-91', NULL, 'KAB PEGUNUNGAN BINTANG', 'City', '', '', '91.12', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-13', 29, 8, 'ID6001-91', NULL, 'KAB. YAHUKIMO', 'City', '', '', '91.13', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-14', 29, 8, 'ID6001-91', NULL, 'KAB. TOLIKARA', 'City', '', '', '91.14', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-15', 29, 8, 'ID6001-91', NULL, 'KAB. WAROPEN', 'City', '', '', '91.15', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-16', 29, 8, 'ID6001-91', NULL, 'KAB. BOVEN DIGOEL', 'City', '', '', '91.16', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-17', 29, 8, 'ID6001-91', NULL, 'KAB. MAPPI', 'City', '', '', '91.17', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-18', 29, 8, 'ID6001-91', NULL, 'KAB. ASMAT', 'City', '', '', '91.18', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-19', 29, 8, 'ID6001-91', NULL, 'KAB. SUPIORI', 'City', '', '', '91.19', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-2', 29, 8, 'ID6001-91', NULL, 'KAB. JAYAWIJAYA', 'City', '', '', '91.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-20', 29, 8, 'ID6001-91', NULL, 'KAB. MAMBERAMO RAYA', 'City', '', '', '91.2', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-21', 29, 8, 'ID6001-91', NULL, 'KAB. MAMBERAMO TENGAH', 'City', '', '', '91.21', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-22', 29, 8, 'ID6001-91', NULL, 'KAB. YALIMO', 'City', '', '', '91.22', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-23', 29, 8, 'ID6001-91', NULL, 'KAB. LANNY JAYA', 'City', '', '', '91.23', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-24', 29, 8, 'ID6001-91', NULL, 'KAB. NDUGA', 'City', '', '', '91.24', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-25', 29, 8, 'ID6001-91', NULL, 'KAB. PUNCAK', 'City', '', '', '91.25', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-26', 29, 8, 'ID6001-91', NULL, 'KAB. DOGIYAI', 'City', '', '', '91.26', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-27', 29, 8, 'ID6001-91', NULL, 'KAB. INTAN JAYA', 'City', '', '', '91.27', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-28', 29, 8, 'ID6001-91', NULL, 'KAB. DEIYAI', 'City', '', '', '91.28', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-29', 29, 8, 'ID6001-91', NULL, 'KOTA JAYAPURA', 'City', '', '', '91.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-3', 29, 8, 'ID6001-91', NULL, 'KAB. JAYAPURA', 'City', '', '', '91.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-4', 29, 8, 'ID6001-91', NULL, 'KAB. NABIRE', 'City', '', '', '91.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-5', 29, 8, 'ID6001-91', NULL, 'KAB. KEPULAUAN YAPEN', 'City', '', '', '91.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-6', 29, 8, 'ID6001-91', NULL, 'KAB. BIAK NUMFOR', 'City', '', '', '91.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-7', 29, 8, 'ID6001-91', NULL, 'KAB. PUNCAK JAYA', 'City', '', '', '91.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-8', 29, 8, 'ID6001-91', NULL, 'KAB. PANIAI', 'City', '', '', '91.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-91-9', 29, 8, 'ID6001-91', NULL, 'KAB. MIMIKA', 'City', '', '', '91.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92', 28, 7, 'ID6001', NULL, 'PAPUA BARAT', 'State', '', '', '92', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-1', 29, 8, 'ID6001-92', NULL, 'KAB. SORONG', 'City', '', '', '92.01', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-10', 29, 8, 'ID6001-92', NULL, 'KAB. MAYBRAT', 'City', '', '', '92.1', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-11', 29, 8, 'ID6001-92', NULL, 'KOTA SORONG', 'City', '', '', '92.71', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-2', 29, 8, 'ID6001-92', NULL, 'KAB. MANOKWARI', 'City', '', '', '92.02', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-3', 29, 8, 'ID6001-92', NULL, 'KAB. FAK FAK', 'City', '', '', '92.03', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-4', 29, 8, 'ID6001-92', NULL, 'KAB. SORONG SELATAN', 'City', '', '', '92.04', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-5', 29, 8, 'ID6001-92', NULL, 'KAB. RAJA AMPAT', 'City', '', '', '92.05', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-6', 29, 8, 'ID6001-92', NULL, 'KAB. TELUK BINTUNI', 'City', '', '', '92.06', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-7', 29, 8, 'ID6001-92', NULL, 'KAB. TELUK WONDAMA', 'City', '', '', '92.07', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-8', 29, 8, 'ID6001-92', NULL, 'KAB. KAIMANA', 'City', '', '', '92.08', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('ID6001-92-9', 29, 8, 'ID6001-92', NULL, 'KAB. TAMBRAUW', 'City', '', '', '92.09', '', 0, '0000-00-00 00:00:00', NULL, NULL),
('IE6001', 27, 6, '', 'IE', 'Republic of Ireland', 'Ireland ', 'IE ', 'IRL ', '372', 'ISO 3166-2:IE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IL6001', 27, 6, '', 'IL', 'Israel', 'The State of Israel ', 'IL ', 'ISR ', '376', 'ISO 3166-2:IL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IM6001', 27, 6, '', 'IM', 'Isle of man', 'The Isle of Man ', 'IM ', 'IMN ', '833', 'ISO 3166-2:IM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IN6001', 27, 6, '', 'IN', 'India', 'The Republic of India ', 'IN ', 'IND ', '356', 'ISO 3166-2:IN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IO6001', 27, 6, '', 'IO', 'British Indian Ocean Territory', 'The British Indian Ocean Territory ', 'IO ', 'IOT ', '86', 'ISO 3166-2:IO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IQ6001', 27, 6, '', 'IQ', 'Iraq', 'The Republic of Iraq ', 'IQ ', 'IRQ ', '368', 'ISO 3166-2:IQ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IR6001', 27, 6, '', 'IR', 'Iran', 'The Islamic Republic of Iran ', 'IR ', 'IRN ', '364', 'ISO 3166-2:IR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IS6001', 27, 6, '', 'IS', 'Iceland', 'Iceland ', 'IS ', 'ISL ', '352', 'ISO 3166-2:IS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('IT6001', 27, 6, '', 'IT', 'Italy', 'The Italian Republic ', 'IT ', 'ITA ', '380', 'ISO 3166-2:IT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('JE6001', 27, 6, '', 'JE', 'Jersey', 'The Bailiwick of Jersey ', 'JE ', 'JEY ', '832', 'ISO 3166-2:JE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('JM6001', 27, 6, '', 'JM', 'Jamaica', 'Jamaica ', 'JM ', 'JAM ', '388', 'ISO 3166-2:JM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('JO6001', 27, 6, '', 'JO', 'Jordan', 'The Hashemite Kingdom of Jordan ', 'JO ', 'JOR ', '400', 'ISO 3166-2:JO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('JP6001', 27, 6, '', 'JP', 'Japan', 'Japan ', 'JP ', 'JPN ', '392', 'ISO 3166-2:JP ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KE6001', 27, 6, '', 'KE', 'Kenya', 'The Republic of Kenya ', 'KE ', 'KEN ', '404', 'ISO 3166-2:KE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KG6001', 27, 6, '', 'KG', 'Kyrgyzstan', 'The Kyrgyz Republic ', 'KG ', 'KGZ ', '417', 'ISO 3166-2:KG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KH6001', 27, 6, '', 'KH', 'Cambodia', 'The Kingdom of Cambodia ', 'KH ', 'KHM ', '116', 'ISO 3166-2:KH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KI6001', 27, 6, '', 'KI', 'Kiribati', 'The Republic of Kiribati ', 'KI ', 'KIR ', '296', 'ISO 3166-2:KI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KM6001', 27, 6, '', 'KM', 'Comoros', 'The Union of the Comoros ', 'KM ', 'COM ', '174', 'ISO 3166-2:KM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KN6001', 27, 6, '', 'KN', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis ', 'KN ', 'KNA ', '659', 'ISO 3166-2:KN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KP6001', 27, 6, '', 'KP', 'North Korea', 'The Democratic People\'s Republic of Korea ', 'KP ', 'PRK ', '408', 'ISO 3166-2:KP ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KR6001', 27, 6, '', 'KR', 'South Korea', 'The Republic of Korea ', 'KR ', 'KOR ', '410', 'ISO 3166-2:KR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KW6001', 27, 6, '', 'KW', 'Kuwait', 'The State of Kuwait ', 'KW ', 'KWT ', '414', 'ISO 3166-2:KW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KY6001', 27, 6, '', 'KY', 'Cayman Island', 'The Cayman Islands ', 'KY ', 'CYM ', '136', 'ISO 3166-2:KY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('KZ6001', 27, 6, '', 'KZ', 'Kazakhstan', 'The Republic of Kazakhstan ', 'KZ ', 'KAZ ', '398', 'ISO 3166-2:KZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LA6001', 27, 6, '', 'LA', 'Laos', 'The Lao People\'s Democratic Republic ', 'LA ', 'LAO ', '418', 'ISO 3166-2:LA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LB6001', 27, 6, '', 'LB', 'Lebanon', 'The Lebanese Republic ', 'LB ', 'LBN ', '422', 'ISO 3166-2:LB ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LC6001', 27, 6, '', 'LC', 'Saint Lucia', 'Saint Lucia ', 'LC ', 'LCA ', '662', 'ISO 3166-2:LC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LI6001', 27, 6, '', 'LI', 'Liechtenstein', 'The Principality of Liechtenstein ', 'LI ', 'LIE ', '438', 'ISO 3166-2:LI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LK6001', 27, 6, '', 'LK', 'Sri Lanka', 'The Democratic Socialist Republic of Sri Lanka ', 'LK ', 'LKA ', '144', 'ISO 3166-2:LK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LR6001', 27, 6, '', 'LR', 'Liberia', 'The Republic of Liberia ', 'LR ', 'LBR ', '430', 'ISO 3166-2:LR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LS6001', 27, 6, '', 'LS', 'Lesotho', 'The Kingdom of Lesotho ', 'LS ', 'LSO ', '426', 'ISO 3166-2:LS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LT6001', 27, 6, '', 'LT', 'Lithuania', 'The Republic of Lithuania ', 'LT ', 'LTU ', '440', 'ISO 3166-2:LT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LU6001', 27, 6, '', 'LU', 'Luxembourg', 'The Grand Duchy of Luxembourg ', 'LU ', 'LUX ', '442', 'ISO 3166-2:LU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LV6001', 27, 6, '', 'LV', 'Latvia', 'The Republic of Latvia ', 'LV ', 'LVA ', '428', 'ISO 3166-2:LV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('LY6001', 27, 6, '', 'LY', 'Libya', 'The State of Libya ', 'LY ', 'LBY ', '434', 'ISO 3166-2:LY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MA6001', 27, 6, '', 'MA', 'Morocco', 'The Kingdom of Morocco ', 'MA ', 'MAR ', '504', 'ISO 3166-2:MA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MC6001', 27, 6, '', 'MC', 'Monaco', 'The Principality of Monaco ', 'MC ', 'MCO ', '492', 'ISO 3166-2:MC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MD6001', 27, 6, '', 'MD', 'Moldova', 'The Republic of Moldova ', 'MD ', 'MDA ', '498', 'ISO 3166-2:MD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ME6001', 27, 6, '', 'ME', 'Montenegro', 'Montenegro ', 'ME ', 'MNE ', '499', 'ISO 3166-2:ME ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MF6001', 27, 6, '', 'MF', 'Collectivity of Saint Martin', 'The Collectivity of Saint-Martin ', 'MF ', 'MAF ', '663', 'ISO 3166-2:MF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MG6001', 27, 6, '', 'MG', 'Madagascar', 'The Republic of Madagascar ', 'MG ', 'MDG ', '450', 'ISO 3166-2:MG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MH6001', 27, 6, '', 'MH', 'Marshall Island', 'The Republic of the Marshall Islands ', 'MH ', 'MHL ', '584', 'ISO 3166-2:MH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MK6001', 27, 6, '', 'MK', 'North Macedonia', 'Republic of North Macedonia[12] ', 'MK ', 'MKD ', '807', 'ISO 3166-2:MK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ML6001', 27, 6, '', 'ML', 'Mali', 'The Republic of Mali ', 'ML ', 'MLI ', '466', 'ISO 3166-2:ML ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MM6001', 27, 6, '', 'MM', 'Myanmar', 'The Republic of the Union of Myanmar ', 'MM ', 'MMR ', '104', 'ISO 3166-2:MM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MN6001', 27, 6, '', 'MN', 'Mongolia', 'The State of Mongolia ', 'MN ', 'MNG ', '496', 'ISO 3166-2:MN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MO6001', 27, 6, '', 'MO', 'Macau', 'Macao Special Administrative Region of China[11] ', 'MO ', 'MAC ', '446', 'ISO 3166-2:MO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MP6001', 27, 6, '', 'MP', 'Northern Mariana Islands', 'The Commonwealth of the Northern Mariana Islands ', 'MP ', 'MNP ', '580', 'ISO 3166-2:MP ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MQ6001', 27, 6, '', 'MQ', 'Martinique', 'Martinique ', 'MQ ', 'MTQ ', '474', 'ISO 3166-2:MQ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MR6001', 27, 6, '', 'MR', 'Mauritania', 'The Islamic Republic of Mauritania ', 'MR ', 'MRT ', '478', 'ISO 3166-2:MR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MS6001', 27, 6, '', 'MS', 'Montserrat', 'Montserrat ', 'MS ', 'MSR ', '500', 'ISO 3166-2:MS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MT6001', 27, 6, '', 'MT', 'Malta', 'The Republic of Malta ', 'MT ', 'MLT ', '470', 'ISO 3166-2:MT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MU6001', 27, 6, '', 'MU', 'Mauritius', 'The Republic of Mauritius ', 'MU ', 'MUS ', '480', 'ISO 3166-2:MU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MV6001', 27, 6, '', 'MV', 'Maldives', 'The Republic of Maldives ', 'MV ', 'MDV ', '462', 'ISO 3166-2:MV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MW6001', 27, 6, '', 'MW', 'Malawi', 'The Republic of Malawi ', 'MW ', 'MWI ', '454', 'ISO 3166-2:MW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MX6001', 27, 6, '', 'MX', 'Mexico', 'The United Mexican States ', 'MX ', 'MEX ', '484', 'ISO 3166-2:MX ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MY6001', 27, 6, '', 'MY', 'Malaysia', 'Malaysia ', 'MY ', 'MYS ', '458', 'ISO 3166-2:MY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('MZ6001', 27, 6, '', 'MZ', 'Mozambique', 'The Republic of Mozambique ', 'MZ ', 'MOZ ', '508', 'ISO 3166-2:MZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NA6001', 27, 6, '', 'NA', 'Namibia', 'The Republic of Namibia ', 'NA ', 'NAM ', '516', 'ISO 3166-2:NA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NC6001', 27, 6, '', 'NC', 'New Caledonia', 'New Caledonia ', 'NC ', 'NCL ', '540', 'ISO 3166-2:NC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NE6001', 27, 6, '', 'NE', 'Niger', 'The Republic of the Niger ', 'NE ', 'NER ', '562', 'ISO 3166-2:NE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NF6001', 27, 6, '', 'NF', 'Norfolk Island', 'The Territory of Norfolk Island ', 'NF ', 'NFK ', '574', 'ISO 3166-2:NF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NG6001', 27, 6, '', 'NG', 'Nigeria', 'The Federal Republic of Nigeria ', 'NG ', 'NGA ', '566', 'ISO 3166-2:NG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NI6001', 27, 6, '', 'NI', 'Nicaragua', 'The Republic of Nicaragua ', 'NI ', 'NIC ', '558', 'ISO 3166-2:NI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NL6001', 27, 6, '', 'NL', 'Netherlands', 'The Kingdom of the Netherlands ', 'NL ', 'NLD ', '528', 'ISO 3166-2:NL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NO6001', 27, 6, '', 'NO', 'Norway', 'The Kingdom of Norway ', 'NO ', 'NOR ', '578', 'ISO 3166-2:NO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NP6001', 27, 6, '', 'NP', 'Nepal', 'The Federal Democratic Republic of Nepal ', 'NP ', 'NPL ', '524', 'ISO 3166-2:NP ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NR6001', 27, 6, '', 'NR', 'Nauru', 'The Republic of Nauru ', 'NR ', 'NRU ', '520', 'ISO 3166-2:NR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NU6001', 27, 6, '', 'NU', 'Niue', 'Niue ', 'NU ', 'NIU ', '570', 'ISO 3166-2:NU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('NZ6001', 27, 6, '', 'NZ', 'New Zealand', 'New Zealand ', 'NZ ', 'NZL ', '554', 'ISO 3166-2:NZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('OM6001', 27, 6, '', 'OM', 'Oman', 'The Sultanate of Oman ', 'OM ', 'OMN ', '512', 'ISO 3166-2:OM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PA6001', 27, 6, '', 'PA', 'Panama', 'The Republic of Panamá ', 'PA ', 'PAN ', '591', 'ISO 3166-2:PA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PE6001', 27, 6, '', 'PE', 'Peru', 'The Republic of Perú ', 'PE ', 'PER ', '604', 'ISO 3166-2:PE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PF6001', 27, 6, '', 'PF', 'French Polynesia', 'French Polynesia ', 'PF ', 'PYF ', '258', 'ISO 3166-2:PF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PG6001', 27, 6, '', 'PG', 'Papua New Guinea', 'The Independent State of Papua New Guinea ', 'PG ', 'PNG ', '598', 'ISO 3166-2:PG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PH6001', 27, 6, '', 'PH', 'Philippines', 'The Republic of the Philippines ', 'PH ', 'PHL ', '608', 'ISO 3166-2:PH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PK6001', 27, 6, '', 'PK', 'Pakistan', 'The Islamic Republic of Pakistan ', 'PK ', 'PAK ', '586', 'ISO 3166-2:PK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PL6001', 27, 6, '', 'PL', 'Poland', 'The Republic of Poland ', 'PL ', 'POL ', '616', 'ISO 3166-2:PL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PM6001', 27, 6, '', 'PM', 'Saint Pierre and Miquelon', 'The Overseas Collectivity of Saint-Pierre and Miquelon ', 'PM ', 'SPM ', '666', 'ISO 3166-2:PM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PN6001', 27, 6, '', 'PN', 'Pitcairn Islands', 'The Pitcairn, Henderson, Ducie and Oeno Islands ', 'PN ', 'PCN ', '612', 'ISO 3166-2:PN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PR6001', 27, 6, '', 'PR', 'Puerto Rico', 'The Commonwealth of Puerto Rico ', 'PR ', 'PRI ', '630', 'ISO 3166-2:PR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PS6001', 27, 6, '', 'PS', 'State of Palestine', 'The State of Palestine ', 'PS ', 'PSE ', '275', 'ISO 3166-2:PS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PT6001', 27, 6, '', 'PT', 'Portugal', 'The Portuguese Republic ', 'PT ', 'PRT ', '620', 'ISO 3166-2:PT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PW6001', 27, 6, '', 'PW', 'Palau', 'The Republic of Palau ', 'PW ', 'PLW ', '585', 'ISO 3166-2:PW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('PY6001', 27, 6, '', 'PY', 'Paraguay', 'The Republic of Paraguay ', 'PY ', 'PRY ', '600', 'ISO 3166-2:PY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('QA6001', 27, 6, '', 'QA', 'Qatar', 'The State of Qatar ', 'QA ', 'QAT ', '634', 'ISO 3166-2:QA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('RE6001', 27, 6, '', 'RE', 'Réunion', 'Réunion ', 'RE ', 'REU ', '638', 'ISO 3166-2:RE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('RO6001', 27, 6, '', 'RO', 'Romania', 'Romania ', 'RO ', 'ROU ', '642', 'ISO 3166-2:RO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('RS6001', 27, 6, '', 'RS', 'Serbia', 'The Republic of Serbia ', 'RS ', 'SRB ', '688', 'ISO 3166-2:RS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('RU6001', 27, 6, '', 'RU', 'Russia', 'The Russian Federation ', 'RU ', 'RUS ', '643', 'ISO 3166-2:RU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('RW6001', 27, 6, '', 'RW', 'Rwanda', 'The Republic of Rwanda ', 'RW ', 'RWA ', '646', 'ISO 3166-2:RW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SA6001', 27, 6, '', 'SA', 'Saudi Arabia', 'The Kingdom of Saudi Arabia ', 'SA ', 'SAU ', '682', 'ISO 3166-2:SA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SB6001', 27, 6, '', 'SB', 'Solomon Islands', 'The Solomon Islands ', 'SB ', 'SLB ', '90', 'ISO 3166-2:SB ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SC6001', 27, 6, '', 'SC', 'Seychelles', 'The Republic of Seychelles ', 'SC ', 'SYC ', '690', 'ISO 3166-2:SC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SD6001', 27, 6, '', 'SD', 'Sudan', 'The Republic of the Sudan ', 'SD ', 'SDN ', '729', 'ISO 3166-2:SD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SE6001', 27, 6, '', 'SE', 'Sweden', 'The Kingdom of Sweden ', 'SE ', 'SWE ', '752', 'ISO 3166-2:SE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SG6001', 27, 6, '', 'SG', 'Singapore', 'The Republic of Singapore ', 'SG ', 'SGP ', '702', 'ISO 3166-2:SG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SH6001', 27, 6, '', 'SH', 'Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha ', 'SH ', 'SHN ', '654', 'ISO 3166-2:SH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SI6001', 27, 6, '', 'SI', 'Slovenia', 'The Republic of Slovenia ', 'SI ', 'SVN ', '705', 'ISO 3166-2:SI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SJ6001', 27, 6, '', 'SJ', 'Jan Mayen', 'Svalbard and Jan Mayen ', 'SJ ', 'SJM ', '744', 'ISO 3166-2:SJ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SK6001', 27, 6, '', 'SK', 'Slovakia', 'The Slovak Republic ', 'SK ', 'SVK ', '703', 'ISO 3166-2:SK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SL6001', 27, 6, '', 'SL', 'Sierra Leone', 'The Republic of Sierra Leone ', 'SL ', 'SLE ', '694', 'ISO 3166-2:SL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SM6001', 27, 6, '', 'SM', 'San Marino', 'The Republic of San Marino ', 'SM ', 'SMR ', '674', 'ISO 3166-2:SM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SN6001', 27, 6, '', 'SN', 'Senegal', 'The Republic of Senegal ', 'SN ', 'SEN ', '686', 'ISO 3166-2:SN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SO6001', 27, 6, '', 'SO', 'Somalia', 'The Federal Republic of Somalia ', 'SO ', 'SOM ', '706', 'ISO 3166-2:SO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SR6001', 27, 6, '', 'SR', 'Suriname', 'The Republic of Suriname ', 'SR ', 'SUR ', '740', 'ISO 3166-2:SR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SS6001', 27, 6, '', 'SS', 'South Sudan', 'The Republic of South Sudan ', 'SS ', 'SSD ', '728', 'ISO 3166-2:SS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ST6001', 27, 6, '', 'ST', 'São Tomé and Príncipe', 'The Democratic Republic of São Tomé and Príncipe ', 'ST ', 'STP ', '678', 'ISO 3166-2:ST ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SV6001', 27, 6, '', 'SV', 'El Salvador', 'The Republic of El Salvador ', 'SV ', 'SLV ', '222', 'ISO 3166-2:SV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SX6001', 27, 6, '', 'SX', 'Sint Maarten', 'Sint Maarten ', 'SX ', 'SXM ', '534', 'ISO 3166-2:SX ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SY6001', 27, 6, '', 'SY', 'Syria', 'The Syrian Arab Republic ', 'SY ', 'SYR ', '760', 'ISO 3166-2:SY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('SZ6001', 27, 6, '', 'SZ', 'Eswatini', 'The Kingdom of Eswatini ', 'SZ ', 'SWZ ', '748', 'ISO 3166-2:SZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TC6001', 27, 6, '', 'TC', 'Turks and Caicos Islands', 'The Turks and Caicos Islands ', 'TC ', 'TCA ', '796', 'ISO 3166-2:TC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TD6001', 27, 6, '', 'TD', 'Chad', 'The Republic of Chad ', 'TD ', 'TCD ', '148', 'ISO 3166-2:TD ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TF6001', 27, 6, '', 'TF', 'French Southern and Antarctic Lands', 'The French Southern and Antarctic Lands ', 'TF ', 'ATF ', '260', 'ISO 3166-2:TF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TG6001', 27, 6, '', 'TG', 'Togo', 'The Togolese Republic ', 'TG ', 'TGO ', '768', 'ISO 3166-2:TG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TH6001', 27, 6, '', 'TH', 'Thailand', 'The Kingdom of Thailand ', 'TH ', 'THA ', '764', 'ISO 3166-2:TH ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TJ6001', 27, 6, '', 'TJ', 'Tajikistan', 'The Republic of Tajikistan ', 'TJ ', 'TJK ', '762', 'ISO 3166-2:TJ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TK6001', 27, 6, '', 'TK', 'Tokelau', 'Tokelau ', 'TK ', 'TKL ', '772', 'ISO 3166-2:TK ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TL6001', 27, 6, '', 'TL', 'East Timor', 'The Democratic Republic of Timor-Leste ', 'TL ', 'TLS ', '626', 'ISO 3166-2:TL ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TM6001', 27, 6, '', 'TM', 'Turkmenistan', 'Turkmenistan ', 'TM ', 'TKM ', '795', 'ISO 3166-2:TM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TN6001', 27, 6, '', 'TN', 'Tunisia', 'The Republic of Tunisia ', 'TN ', 'TUN ', '788', 'ISO 3166-2:TN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TO6001', 27, 6, '', 'TO', 'Tonga', 'The Kingdom of Tonga ', 'TO ', 'TON ', '776', 'ISO 3166-2:TO ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TR6001', 27, 6, '', 'TR', 'Turkey', 'The Republic of Turkey ', 'TR ', 'TUR ', '792', 'ISO 3166-2:TR ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TT6001', 27, 6, '', 'TT', 'Trinidad and Tobago', 'The Republic of Trinidad and Tobago ', 'TT ', 'TTO ', '780', 'ISO 3166-2:TT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TV6001', 27, 6, '', 'TV', 'Tuvalu', 'Tuvalu ', 'TV ', 'TUV ', '798', 'ISO 3166-2:TV ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TW6001', 27, 6, '', 'TW', 'Taiwan', 'The Republic of China ', 'TW ', 'TWN ', '158', 'ISO 3166-2:TW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('TZ6001', 27, 6, '', 'TZ', 'Tanzania', 'The United Republic of Tanzania ', 'TZ ', 'TZA ', '834', 'ISO 3166-2:TZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `m_country` (`id`, `id_m_set_category_hierarchy`, `id_m_set_category_name`, `id_parent`, `code`, `name`, `name_official`, `alpha2_code`, `alpha3_code`, `numeric_code`, `iso_31662`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
('UA6001', 27, 6, '', 'UA', 'Ukraine', 'Ukraine ', 'UA ', 'UKR ', '804', 'ISO 3166-2:UA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('UG6001', 27, 6, '', 'UG', 'Uganda', 'The Republic of Uganda ', 'UG ', 'UGA ', '800', 'ISO 3166-2:UG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('UM6001', 27, 6, '', 'UM', 'United States Minor Outlying Islands', 'Baker Island, Howland Island, Jarvis Island, Johnston Atoll, Kingman Reef, Midway Atoll, Navassa Isl', 'UM ', 'UMI ', '581', 'ISO 3166-2:UM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('US6001', 27, 6, '', 'US', 'United States of America', 'The United States of America ', 'US ', 'USA ', '840', 'ISO 3166-2:US ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('UY6001', 27, 6, '', 'UY', 'Uruguay', 'The Oriental Republic of Uruguay ', 'UY ', 'URY ', '858', 'ISO 3166-2:UY ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('UZ6001', 27, 6, '', 'UZ', 'Uzbekistan', 'The Republic of Uzbekistan ', 'UZ ', 'UZB ', '860', 'ISO 3166-2:UZ ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VA6001', 27, 6, '', 'VA', 'Holy See', 'The Holy See ', 'VA ', 'VAT ', '336', 'ISO 3166-2:VA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VC6001', 27, 6, '', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines ', 'VC ', 'VCT ', '670', 'ISO 3166-2:VC ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VE6001', 27, 6, '', 'VE', 'Venezuela', 'The Bolivarian Republic of Venezuela ', 'VE ', 'VEN ', '862', 'ISO 3166-2:VE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VG6001', 27, 6, '', 'VG', 'British Virgin Islands', 'The Virgin Islands ', 'VG ', 'VGB ', '92', 'ISO 3166-2:VG ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VI6001', 27, 6, '', 'VI', 'United States', 'The Virgin Islands of the United States ', 'VI ', 'VIR ', '850', 'ISO 3166-2:VI ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VN6001', 27, 6, '', 'VN', 'Vietnam', 'The Socialist Republic of Viet Nam ', 'VN ', 'VNM ', '704', 'ISO 3166-2:VN ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('VU6001', 27, 6, '', 'VU', 'Vanuatu', 'The Republic of Vanuatu ', 'VU ', 'VUT ', '548', 'ISO 3166-2:VU ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('WF6001', 27, 6, '', 'WF', 'Wallis and Futuna', 'The Territory of the Wallis and Futuna Islands ', 'WF ', 'WLF ', '876', 'ISO 3166-2:WF ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('WS6001', 27, 6, '', 'WS', 'Samoa', 'The Independent State of Samoa ', 'WS ', 'WSM ', '882', 'ISO 3166-2:WS ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('YE6001', 27, 6, '', 'YE', 'Yemen', 'The Republic of Yemen ', 'YE ', 'YEM ', '887', 'ISO 3166-2:YE ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('YT6001', 27, 6, '', 'YT', 'Mayotte', 'The Department of Mayotte ', 'YT ', 'MYT ', '175', 'ISO 3166-2:YT ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ZA6001', 27, 6, '', 'ZA', 'South African', 'The Republic of South Africa ', 'ZA ', 'ZAF ', '710', 'ISO 3166-2:ZA ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ZM6001', 27, 6, '', 'ZM', 'Zambia', 'The Republic of Zambia ', 'ZM ', 'ZMB ', '894', 'ISO 3166-2:ZM ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
('ZW6001', 27, 6, '', 'ZW', 'Zimbabwe', 'The Republic of Zimbabwe ', 'ZW ', 'ZWE ', '716', 'ISO 3166-2:ZW ', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`id`, `nama`) VALUES
(1, 'indonesia'),
(2, 'inggris'),
(3, 'amerika');

-- --------------------------------------------------------

--
-- Table structure for table `prds`
--

CREATE TABLE `prds` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(11) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prds`
--

INSERT INTO `prds` (`id`, `kode_barang`, `nama_barang`) VALUES
(37, 'kd001', 'pulpen'),
(38, 'kd002', 'pencil'),
(39, 'kd003', 'botol'),
(40, 'kd004', 'hp'),
(41, 'kd005', 'mouse'),
(42, 'kd001', 'pulpen'),
(43, 'kd002', 'pencil'),
(44, 'kd003', 'botol'),
(45, 'kd004', 'hp'),
(46, 'kd005', 'mouse');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `kode_product` varchar(20) NOT NULL,
  `kode_product_detail` varchar(128) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_header`
--

CREATE TABLE `product_header` (
  `id` int(11) NOT NULL,
  `kode_product` varchar(20) NOT NULL,
  `nama_product` varchar(128) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prod_h`
--

CREATE TABLE `prod_h` (
  `id_product_h` int(11) NOT NULL,
  `kode_product` varchar(20) DEFAULT NULL,
  `nama_product` varchar(30) DEFAULT NULL,
  `deskripsi_product` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prod_h`
--

INSERT INTO `prod_h` (`id_product_h`, `kode_product`, `nama_product`, `deskripsi_product`) VALUES
(1, 'p001', 'mouse', 'mouse bagus'),
(2, 'p002', 'laptop', 'laptop bagus'),
(3, 'p003', 'handphone', 'hanphone bagus');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(3) NOT NULL,
  `id_negara` int(3) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `id_negara`, `nama`) VALUES
(1, 1, 'jawa barat'),
(2, 1, 'jakarta'),
(3, 1, 'banten'),
(4, 2, 'manchester'),
(5, 3, 'washington');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` int(3) NOT NULL,
  `id_negara` int(3) DEFAULT NULL,
  `id_provinsi` int(3) DEFAULT NULL,
  `id_kota` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `id_negara`, `id_provinsi`, `id_kota`) VALUES
(7, 1, 2, 2),
(8, 1, 1, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_prod`
--
ALTER TABLE `d_prod`
  ADD PRIMARY KEY (`id_prod_d`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `m_country`
--
ALTER TABLE `m_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prds`
--
ALTER TABLE `prds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_header`
--
ALTER TABLE `product_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_h`
--
ALTER TABLE `prod_h`
  ADD PRIMARY KEY (`id_product_h`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_prod`
--
ALTER TABLE `d_prod`
  MODIFY `id_prod_d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `negara`
--
ALTER TABLE `negara`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prds`
--
ALTER TABLE `prds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_header`
--
ALTER TABLE `product_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_h`
--
ALTER TABLE `prod_h`
  MODIFY `id_product_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
