-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 02:00 PM
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
-- Database: `wedesign`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientlist`
--

CREATE TABLE `clientlist` (
  `clientID` int(5) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `object` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `pictureList` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `projectID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`title`, `description`, `pictureList`, `projectID`) VALUES
('EEIF', 'Designing and re-Branding the French Jewish Scouts organization for their 100 years anniversary.', '[{\"id\": 1, \"url\": \"/EEIF 100 ans-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"\"}, {\"id\": 2, \"url\": \"/EEIF 100 ans-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Logo officiel des 100 ans des EEIF\"}, {\"id\": 3, \"url\": \"/EEIF 100 ans-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Variante du logo en monochrome pour les goodies notamment\"}, {\"id\": 4, \"url\": \"/EEIF 100 ans-05b-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Signalétique sur le lieux de l’événement en France à Cussac-Fort-Médoc\"}, {\"id\": 5, \"url\": \"/EEIF 100 ans-06-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Déclinaison du logo officiel pour la version Israélienne du mouvement de jeunesse (Hameirim- Groupe Local Ron Arad)\"}, {\"id\": 6, \"url\": \"/EEIF 100 ans-07-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Écusson des 100 ans version israélienne\"}, {\"id\": 7, \"url\": \"/EEIF 100 ans-08-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Affiche officielle des 100 ans des EEIF\"}, {\"id\": 8, \"url\": \"/EEIF 100 ans-09-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Affiche de la soirée des 100 ans en musique\"}, {\"id\": 9, \"url\": \"/EEIF 100 ans-10-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Affiche officielle de Tsomet 100, grand rassemblement des EEIF en Israel\"}, {\"id\": 10, \"url\": \"/EEIF 100 ans-11-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Programme des 100 ans de Tsomet 100, événement des EEIF en Israel\"}, {\"id\": 11, \"url\": \"/EEIF 100 ans-12-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Conception du Birkat Hamazon\"}, {\"id\": 12, \"url\": \"/EEIF 100 ans-13a-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Affiche officielle des 100 ans des EEIF\"}, {\"id\": 13, \"url\": \"/EEIF 100 ans-13b-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"\"}, {\"id\": 14, \"url\": \"/EEIF 100 ans-14-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Invitations aux Galas des EEIF en France sur les réseaux sociaux.\"}, {\"id\": 15, \"url\": \"/EEIF 100 ans-15-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Plan géographique de l’événement sur Cussac-Fort-Médoc en France\"}, {\"id\": 16, \"url\": \"/EEIF 100 ans-16-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Conception graphique du livre des “100 temps du mouvement” de 200 pages.\"}, {\"id\": 17, \"url\": \"/EEIF 100 ans-17-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Conception graphique du livre des “100 temps du mouvement” de 200 pages.\"}, {\"id\": 18, \"url\": \"/EEIF 100 ans-18-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Conception graphique du livre des “100 temps du mouvement” de 200 pages.\"}, {\"id\": 19, \"url\": \"/EEIF 100 ans-19-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Conception graphique du livre des “100 temps du mouvement” de 200 pages.\"}, {\"id\": 20, \"url\": \"/EEIF 100 ans-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EEIF - 100 ans\", \"description\": \"Logo officiel des 100 ans des EEIF\"}]', 1),
('TRAJECTOIRE CAPITAL', 'XXXX', '[\r\n{ \"id\": 1, \"url\": \"/Trajectoire Capital Group-WebSite-03-Designed by WEDESIGN-Branding-BD.mp4\", \"title\": \"\", \"description\":\"\" }\r\n]', 2),
('STAY HOTEL EILAT', 'Visual Design for the new Eilat hotel of the Stay Hotel Chain', '[{\"id\": 1, \"url\": \"/Stay Eilat-Amenities-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"\"}, {\"id\": 2, \"url\": \"/Stay Eilat-Elevator-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"Elevator Design\"}, {\"id\": 3, \"url\": \"/Stay Eilat-Key Cards-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"Key Card\"}, {\"id\": 4, \"url\": \"/Stay Eilat-Pantones-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"\"}, {\"id\": 5, \"url\": \"/Stay Eilat-Placemat-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"Placemat\"}, {\"id\": 6, \"url\": \"/Stay Eilat-Remote Control-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"STAY EILAT HOTEL\", \"description\": \"Remote Control\"}]', 3),
('CHOISIR L\'ECOLE JUIVE', 'Modernizing the logo and image of a French Jewish organization', '[{\"id\": 1, \"url\": \"/Choisir-ecole.jpg\", \"title\": \"CHOISIR L\'ECOLE JUIVE\", \"description\": \"Choisir l\'École Juive - new logo\"}, {\"id\": 2, \"url\": \"/Choisir-Ecole-Juive-Logo-01.jpg\", \"title\": \"CHOISIR L\'ECOLE JUIVE\", \"description\": \"Choisir L\'École Juive, logo before / after\"}]', 4),
('QUALITA', 'Project 4 Description', '[\r\n{ \"id\": 1, \"url\": \"/Les Tetes de Sion-02-Jeu de Société-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LES TÊTES DE SION\", \"description\":\"Board game design\" },\r\n{ \"id\": 2, \"url\": \"/Les Tetes de Sion-03-Jeu de Société-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LES TÊTES DE SION\", \"description\":\"Board game box back design\"},\r\n{ \"id\": 3, \"url\": \"/Les Tetes de Sion-04-Jeu TV-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LES TÊTES DE SION\", \"description\":\"Qualita\'s original webTV game\" },\r\n{ \"id\": 4, \"url\": \"/Les Tetes de Sion-04-Playing Card-Jeu de Société-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LES TÊTES DE SION\", \"description\":\"Design of 444 playing cards for 4 different themes\" },\r\n{ \"id\": 5, \"url\": \"/LesTetesDeSion.jpg\", \"title\": \"LES TÊTES DE SION\", \"description\":\"Board game design\" }\r\n]', 5),
('ONE DUBNOV', 'Project 5 Description', '[\r\n{ \"id\": 1, \"url\": \"/One Dubnov-01-Moodboard-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Moodboard\" },\r\n{ \"id\": 2, \"url\": \"/One Dubnov-02-Moodboard-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Moodboard\"},\r\n{ \"id\": 3, \"url\": \"/One Dubnov-03-Moodboard-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Moodboard\" },\r\n{ \"id\": 4, \"url\": \"/One Dubnov-04-Logo-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Brand Identity - Logo\" },\r\n{ \"id\": 5, \"url\": \"/One Dubnov-05-Construction Fence-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Construction Fence Design\" },\r\n{ \"id\": 6, \"url\": \"/One Dubnov-06-Construction Fence-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Construction Fence Design\" },\r\n{ \"id\": 7, \"url\": \"/One Dubnov-07-Construction Fence-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Construction Fence Design\" },\r\n{ \"id\": 8, \"url\": \"/One Dubnov-08-Construction Fence-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Construction Fence Design\" },\r\n{ \"id\": 9, \"url\": \"/One Dubnov-09-The Sherover Theatre-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"The Sherover Theatre\" },\r\n{ \"id\": 10, \"url\": \"/One Dubnov-10-Hard Hat-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Hard Hat\" },\r\n{ \"id\": 11, \"url\": \"/One Dubnov-11-Appartment marketing plan-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Apartment Marketing Plans\" },\r\n{ \"id\": 12, \"url\": \"/One Dubnov-12-Advertising-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Advertising\" },\r\n{ \"id\": 13, \"url\": \"/One Dubnov-13-Marketing Brochure-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Marketing Brochure\" },\r\n{ \"id\": 14, \"url\": \"/OneDubnov.jpg\", \"title\": \"ONE DUBNOV\", \"description\":\"Logo\" }\r\n]', 6),
('ZIVOUG', 'Project 6 Description', '[\r\n{ \"id\": 1, \"url\": \"/Zivoug-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ZIVOUG\", \"description\":\"Brand Identity - Logo\" },\r\n{ \"id\": 2, \"url\": \"/Zivoug-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ZIVOUG\", \"description\":\"Website Design\"}\r\n]', 7),
('ANNATEL', 'Project 7 Description', '[\r\n    { \"id\": 1, \"url\": \"/Annatel-Carte Sim-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - SIM Card\" },\r\n    { \"id\": 2, \"url\": \"/Annatel-Charte Graphique-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Graphic Charter\" },\r\n    { \"id\": 3, \"url\": \"/Annatel-Enseigne-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Logo Responsive, Hanging Wall\" },\r\n    { \"id\": 4, \"url\": \"/Annatel-Facture-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Invoice\" },\r\n    { \"id\": 5, \"url\": \"/Annatel-Identity-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Stationery Graphic\" },\r\n    { \"id\": 6, \"url\": \"/Annatel-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Logo & Responsive Logo\" },\r\n    { \"id\": 7, \"url\": \"/Annatel-Logo-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Logo\" },\r\n    { \"id\": 8, \"url\": \"/Annatel-Logos-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Logos for each service\" },\r\n    { \"id\": 9, \"url\":\"/Annatel-Sac-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Tote Bag\" },\r\n    { \"id\": 10, \"url\": \"/Annatel-TV Telephones-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"\" },\r\n    { \"id\": 11, \"url\": \"/Annatel-Typography-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ANNATEL\", \"description\": \"Brand Identity - Creation of the complete set of \'Annatel\' Typography\" }\r\n    ]', 8),
('DERMAPOSITIVE', 'Paris sera toujours Paris, ville des lumieres et de la culture.', '[\r\n    { \"id\": 1, \"url\": \"/Dermapositive-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DERMAPOSITIVE\", \"description\": \"Packaging\" },\r\n    { \"id\": 2, \"url\": \"/Dermapositive-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DERMAPOSITIVE\", \"description\": \"Illustration\" },\r\n    { \"id\": 3, \"url\": \"/Dermapositive-03-Designed by WEDESIGN-Branding-Zen.jpg\", \"title\": \"DERMAPOSITIVE\", \"description\": \"Illustration\" },\r\n    { \"id\": 4, \"url\": \"/Dermapositive-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DERMAPOSITIVE\", \"description\": \"Illustaion\" },\r\n    { \"id\": 5, \"url\": \"/Dermapositive-05-Designed by WEDESIGN-Branding-Joy.jpg\", \"title\": \"DERMAPOSITIVE\", \"description\": \"Illustration\" }\r\n    ]', 9),
('BRAIN OPTIMA', 'Project 9 Description', '[\r\n{ \"id\": 1, \"url\": \"/BrainOptimalGeneve-01-Designed by WEDESIGN-Branding.jpg\'\", \"title\": \"BRAIN OPTIMA\", \"description\":\"Brand Identity - Logo\" }\r\n]', 10),
('DAVID CITADEL JERUSALEM WINERY', 'Project 10 Description', '[\r\n{ \"id\": 1, \"url\": \"/David Citadel Jerusalem Winery-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"Product Identity - Packaging - Wine Labels - Full Range\" },\r\n{ \"id\": 2, \"url\": \"/David Citadel Jerusalem Winery-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"Product Identity - Logo\"},\r\n{ \"id\": 3, \"url\": \"/David Citadel Jerusalem Winery-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"Product Identity - Packaging - Wine Label\" },\r\n{ \"id\": 4, \"url\": \"/David Citadel Jerusalem Winery-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"\" },\r\n{ \"id\": 5, \"url\": \"/David Citadel Jerusalem Winery-06-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"\" },\r\n{ \"id\": 6, \"url\": \"/David Citadel Jerusalem Winery-07-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"\" },\r\n{ \"id\": 7, \"url\": \"/David Citadel Jerusalem Winery-08-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"\" },\r\n{ \"id\": 8, \"url\": \"/David Citadel Jerusalem Winery-Designed by WEDESIGN-Branding.jpg\", \"title\": \"DAVID CITADEL JERUSALEM WINERY\", \"description\":\"Product Identity - Packaging - Wine Label\" }\r\n]', 11),
('METSUYAN', 'Project 11 Description', '[\r\n{ \"id\": 1, \"url\": \"/Metsuyan-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"METSUYAN\", \"description\":\"\" },\r\n{ \"id\": 2, \"url\": \"/Metsuyan-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"METSUYAN\", \"description\":\"Brand Identity - Logo\"},\r\n{ \"id\": 3, \"url\": \"/Metsuyan-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"METSUYAN\", \"description\":\"\" },\r\n{ \"id\": 4, \"url\": \"/Metsuyan-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"METSUYAN\", \"description\":\"Packaging - Sushi box\" }\r\n]', 12),
('BUYERR', 'Project 12 Description', '[\r\n    { \"id\": 1, \"url\": \"/Buyerr-Apple Store-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Buyerr App Design for Apple Store\" },\r\n    { \"id\": 2, \"url\": \"/Buyerr-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Website Design\" },\r\n    { \"id\": 3, \"url\": \"/Buyerr-Telephone-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Instagram-friendly Graphic Design\" },\r\n    { \"id\": 4, \"url\": \"/Buyerr-Telephone-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"\" },\r\n    { \"id\": 5, \"url\": \"/Buyerr-Telephone-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Buyerr App Design for Apple Store\" },\r\n    { \"id\": 6, \"url\": \"/Buyerr-Telephone-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Instagram-friendly Graphic Design\" },\r\n    { \"id\": 7, \"url\": \"/Buyerr-Telephone-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"Instagram-friendly Graphic Design\" },\r\n    { \"id\": 8, \"url\": \"/Buyerr-Website-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"BUYERR\", \"description\": \"\" }\r\n  ]', 13),
('ICONE FORMATION', 'Project 13 Description', '[\r\n{ \"id\": 1, \"url\": \"/Icone.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Smart Computer School Poster\" },\r\n{ \"id\": 2, \"url\": \"/Icone Limudim-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Brand Identity - Icone Limudim Logo\"},\r\n{ \"id\": 3, \"url\": \"/Ulpan Sheli-Advertising-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Ulpan Sheli Advertising\"},\r\n{ \"id\": 4, \"url\": \"/Smart Computer-Flyer-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Smart Computer School Flyer\"},\r\n{ \"id\": 5, \"url\": \"/Smart Computer-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Brand Identity - Smart Computer School Logo\"},\r\n{ \"id\": 6, \"url\": \"/Smart Computer-Rollup-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"ICONE FORMATION\", \"description\":\"Smart Computer School Rollup\"}\r\n]', 14),
('EVOKE', 'Project 14 Description', '[\r\n    { \"id\": 1, \"url\": \"/Evoke-Bag-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 2, \"url\": \"/Evoke-Booth-09-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 3, \"url\": \"/Evoke-Booth-10-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 4, \"url\": \"/Evoke-Boxes-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 5, \"url\": \"/Evoke-Flyer-08-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 6, \"url\": \"/Evoke-Folder-07-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 7, \"url\": \"/Evoke-Invitation-11-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 8, \"url\": \"/Evoke-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 9, \"url\":\"/Evoke-Point Of Sale-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 10, \"url\": \"/Evoke-Point Of Sale-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" },\r\n    { \"id\": 11, \"url\": \"/Evoke-Point Of Sale-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"EVOKE\", \"description\": \"\" }\r\n    ]', 15),
('CNEF', 'Project 15 Description', '[\r\n{ \"id\": 1, \"url\": \"/CNEF-Hoodie Back-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CNEF\", \"description\":\"Hoodie\" },\r\n{ \"id\": 2, \"url\": \"/CNEF-Hoodie Front-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CNEF\", \"description\":\"Hoodie\"},\r\n{ \"id\": 3, \"url\": \"/CNEF-Logo-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CNEF\", \"description\":\"CNEF Logo\"}\r\n]', 16),
('CHAMPEL CAPITAL', 'Project 16 Description', '[\r\n    { \"id\": 1, \"url\": \"/Champel Capital-Brochure-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"Champel Capital Brochure Design\" },\r\n    { \"id\": 2, \"url\": \"/Champel Capital-Brochure-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"\" },\r\n    { \"id\": 3, \"url\": \"/Champel Capital-Brochure-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"Champel Capital Portfolio Overview Design\" },\r\n    { \"id\": 4, \"url\": \"/Champel Capital-Business Card-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"Champel Capital Business Card\" },\r\n    { \"id\": 5, \"url\": \"/Champel Capital-Rubber Stamp-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"\" },\r\n    { \"id\": 6, \"url\": \"/Champel Capital-Rubber Stamp-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"Champel Capital Logo\" },\r\n    { \"id\": 7, \"url\": \"/Champel Capital-Website-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"\" },\r\n    { \"id\": 8, \"url\": \"/Champel Capital-Website-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"CHAMPEL CAPITAL\", \"description\": \"Champel Capital Website Design\" }\r\n  ]', 17),
('SHARON LABORATORY', 'Project 17 Description', '[\r\n    { \"id\": 1, \"url\": \"/Sharon Laboratory-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"\" },\r\n    { \"id\": 2, \"url\": \"/Sharon Laboratory-01-Logo-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Logo\" },\r\n    { \"id\": 3, \"url\": \"/Sharon Laboratory-A4-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Brochure\" },\r\n    { \"id\": 4, \"url\": \"/Sharon Laboratory-Bag-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Bag\" },\r\n    { \"id\": 5, \"url\": \"/Sharon Laboratory-Biomix-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Catalog\" },\r\n    { \"id\": 6, \"url\": \"/Sharon Laboratory-Biosecure-06-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Flyer\" },\r\n    { \"id\": 7, \"url\": \"/Sharon Laboratory-Booth-07-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Booth Design\" },\r\n    { \"id\": 8, \"url\":\"/Sharon Laboratory-Brochure-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Overview Catalog\" },\r\n    { \"id\": 9, \"url\": \"/Sharon Laboratory-BusinessCard-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Business Card\" },\r\n    { \"id\": 10, \"url\": \"/Sharon Laboratory-Rollup-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"SHARON LABORATORIES\", \"description\": \"Sharon Laboratory Rollups\" }\r\n    ]', 18),
('HEVRON HEIGHTS WINERY', 'Project 18 Description', '[\r\n    { \"id\": 1, \"url\": \"/Hevron Heights-Bag-10-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Bag\" },\r\n    { \"id\": 2, \"url\": \"/Hevron Heights-Booth-08-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Booth Design\" },\r\n    { \"id\": 3, \"url\": \"/Hevron Heights-Booth-09-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Booth Design\" },\r\n    { \"id\": 4, \"url\": \"/Hevron Heights-Brochure-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 5, \"url\": \"/Hevron Heights-Brochure-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 6, \"url\": \"/Hevron Heights-Brochure-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 7, \"url\": \"/Hevron Heights-Brochure-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 8, \"url\": \"/Hevron Heights-Brochure-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 9, \"url\": \"/Hevron Heights-Brochure-06-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" },\r\n    { \"id\": 10, \"url\": \"/Hevron Heights-Brochure-07-Designed by WEDESIGN-Branding.jpg\", \"title\": \"HEVRON HEIGHTS WINERY\", \"description\": \"Hevron Heights Winery Brochure\" }\r\n     ]', 19),
('PRINCESS SISSI', 'Project 19 Description', '[\r\n{ \"id\": 1, \"url\": \"/Princess Sissi-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"Princess Sissi Logo\" },\r\n{ \"id\": 2, \"url\": \"/Princess Sissi-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"Princess Sissi Business Card\"},\r\n{ \"id\": 3, \"url\": \"/Princess Sissi-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"Princess Sissi Label Tag\" },\r\n{ \"id\": 4, \"url\": \"/Princess Sissi-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"Princess Sissi website Design\" },\r\n{ \"id\": 5, \"url\": \"/Princess Sissi-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"Princess Sissi website Design\" },\r\n{ \"id\": 6, \"url\": \"/Princess Sissi-06-Designed by WEDESIGN-Branding.jpg\", \"title\": \"PRINCESS SISSI\", \"description\":\"The universe of Princess Sissi\" }\r\n]', 20),
('LE REPERTOIRE', 'Project Description', '[\r\n{ \"id\": 1, \"url\": \"/Le Repertoire-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Logo\" },\r\n{ \"id\": 2, \"url\": \"/Le Repertoire-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Le Répertoire Cover - 2016\"},\r\n{ \"id\": 3, \"url\": \"/Le Repertoire-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"\'Le petit guide pratique de l\'Ole Hadash\' section of the Repertoire Directory\" },\r\n{ \"id\": 4, \"url\": \"/Le Repertoire-Icons-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Icons\" },\r\n{ \"id\": 5, \"url\": \"/LeRepertoire-Cover-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Le Répertoire Cover  - 2017 / 2018\" },\r\n{ \"id\": 6, \"url\": \"/LeRepertoire-Cover-04-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Inside pages\" },\r\n{ \"id\": 7, \"url\": \"/LeRepertoire-Cover-05-Designed by WEDESIGN-Branding.jpg\", \"title\": \"LE REPERTOIRE\", \"description\":\"Le Répertoire Cover - 2019 / 2020\" }\r\n]', 21),
('FSJU', 'Project Description', '[\r\n    { \"id\": 1, \"url\": \"/Festival des cultures Juives-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"FSJU\", \"description\": \"Poster Design\" },\r\n    { \"id\": 2, \"url\": \"/Festival des cultures Juives-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"FSJU\", \"description\": \"Urban display - Poster Design\" },\r\n    { \"id\": 3, \"url\": \"/Festival des cultures Juives-03-Brochure-Designed by WEDESIGN-Branding.jpg\", \"title\": \"FSJU\", \"description\": \"Brochure cover\" }\r\n    ]', 22),
('L\'OREAL - COMPOSITE COLOR', 'Project Description', '[\r\n    { \"id\": 1, \"url\": \"/Loreal1.jpg\", \"title\": \"L\'OREAL - COMPOSITE COLOR\", \"description\": \"\" },\r\n    { \"id\": 2, \"url\": \"/Loreal2.jpg\", \"title\": \"L\'OREAL - COMPOSITE COLOR\", \"description\": \"\" },\r\n    { \"id\": 3, \"url\": \"/Loreal3.jpg\", \"title\": \"L\'OREAL - COMPOSITE COLOR\", \"description\": \"\" }\r\n    ]', 23),
('NOVIDI INNOVATION', 'Project Description', '[\r\n    { \"id\": 1, \"url\": \"/Novidi Innovation-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"NOVIDI INNOVATIONS\", \"description\": \"Logo\" }\r\n    ]', 24),
('POWER AGE', 'Project Description', '[\r\n    { \"id\": 1, \"url\": \"/Power Age-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"POWER AGE\", \"description\": \"Product identity - Power Age Packaging\" },\r\n    { \"id\": 2, \"url\": \"/Power Age-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"POWER AGE\", \"description\": \"Power Age Advertising\" },\r\n    { \"id\": 3, \"url\": \"/Power Age-03-Designed by WEDESIGN-Branding.jpg\", \"title\": \"POWER AGE\", \"description\": \"Power Age Advertising\" }\r\n    ]', 25),
('NITSOTS YONATHAN', 'Project Description', '[\r\n    { \"id\": 1, \"url\": \"/Nitsots Yonathan-01-Designed by WEDESIGN-Branding.jpg\", \"title\": \"NITSOTS YONATHAN\", \"description\": \"Nitsots Yonathan Logo\" },\r\n    { \"id\": 2, \"url\": \"/Nitsots Yonathan-02-Designed by WEDESIGN-Branding.jpg\", \"title\": \"NITSOTS YONATHAN\", \"description\": \"Nitsots Yonathan Logo\" }\r\n    ]', 26);

-- --------------------------------------------------------

--
-- Table structure for table `projectslist`
--

CREATE TABLE `projectslist` (
  `projectID` int(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `imgUrl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectslist`
--

INSERT INTO `projectslist` (`projectID`, `title`, `description`, `imgUrl`) VALUES
(1, 'EEIF - 100 Years', 'view project...', '/EEIF 100 ans-02.jpg'),
(2, 'TRAJECTOIRE CAPITAL GROUP', 'view project...', '/Trajectoire Capital Group-WebSite-intro-03-Designed by WEDESIGN-Branding-BD.mp4'),
(3, 'STAY HOTEL', 'view project...', '/Stay Eilat-Key Cards-01-Designed by WEDESIGN-Branding.jpg'),
(4, 'CHOISIR L\'ECOLE JUIVE', 'view project...', '/Choisir-ecole.jpg'),
(5, 'QUALITA', 'view project...', '/LesTetesDeSion.jpg'),
(6, 'ONE DUBNOV', 'view project...', '/OneDubnov.jpg'),
(7, 'ZIVOUG', 'view project...', '/Zivoug-01-Designed by WEDESIGN-Branding.jpg'),
(8, 'ANNATEL', 'view project...', '/Annatel-Carte Sim-01-Designed by WEDESIGN-Branding.jpg'),
(9, 'DERMAPOSITIVE', 'view project...', '/Dermapositive-Designed by WEDESIGN-Branding-video Portfolio menu.mp4'),
(10, 'BRAIN OPTIMA', 'view project...', '/BrainOptimalGeneve-01-Designed by WEDESIGN-Branding.jpg'),
(11, 'DAVID CITADEL JERUSALEM WINERY', 'view project...', '/David Citadel Jerusalem Winery-01-Designed by WEDESIGN-Branding.jpg'),
(12, 'METSUYAN', 'view project...', '/Metsuyan-05-Designed by WEDESIGN-Branding.jpg'),
(13, 'BUYERR', 'view project...', '/Buyerr-Telephone-03-Designed by WEDESIGN-Branding.jpg'),
(14, 'ICONE FORMATION', 'view project...', '/Icone.jpg'),
(15, 'EVOKE', 'view project...', '/Evoke-Bag-03-Designed by WEDESIGN-Branding.jpg'),
(16, 'CNEF', 'view project...', '/CNEF-Hoodie Front-02-Designed by WEDESIGN-Branding.jpg'),
(17, 'CHAMPEL CAPITAL', 'view project...', '/Champel Capital-Business Card-01-Designed by WEDESIGN-Branding.jpg'),
(18, 'SHARON LABORATORIES', 'view project...', '/Sharon Laboratory-01-Designed by WEDESIGN-Branding.jpg'),
(19, 'HEVRON HEIGHTS WINERY', 'view project...', '/Hevron Heights-Booth-08-Designed by WEDESIGN-Branding.jpg'),
(20, 'PRINCESS SISSI', 'view project...', '/Princess Sissi-06-Designed by WEDESIGN-Branding.jpg'),
(21, 'LE REPERTOIRE', 'view project...', '/Le Repertoire - Video Portfolio Menu.mp4'),
(22, 'FSJU', 'view project...', '/Festival des cultures Juives-01-Designed by WEDESIGN-Branding.jpg'),
(23, 'L\'OREAL - COMPOSITE COLOR', 'view project...', '/Loreal1.jpg'),
(24, 'NOVIDI INNOVATIONS', 'view project...', '/Novidi Innovation-01-Designed by WEDESIGN-Branding.jpg'),
(25, 'POWER AGE', 'view project...', '/Power Age-02-Designed by WEDESIGN-Branding.jpg'),
(26, 'NITSOTS YONATHAN', 'view project...', '/Nitsots Yonathan-02-Designed by WEDESIGN-Branding.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projectslistfr`
--

CREATE TABLE `projectslistfr` (
  `projectID` int(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `imgUrl` varchar(200) NOT NULL,
  `videoUrl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectslistfr`
--

INSERT INTO `projectslistfr` (`projectID`, `title`, `description`, `imgUrl`, `videoUrl`) VALUES
(1, 'EEIF - 100 Ans', 'voir le project...', '/EEIF 100 ans-02.jpg', ''),
(2, 'TRAJECTOIRE CAPITAL GROUP', 'voir le project...', '', '/Trajectoire Capital Group-WebSite-intro-03-Designed by WEDESIGN-Branding-BD.mp4'),
(3, 'STAY HOTEL', 'voir le project...', '/Stay Eilat-Key Cards-01-Designed by WEDESIGN-Branding.jpg', ''),
(4, 'CHOISIR L\'ECOLE JUIVE', 'voir le project...', '/Choisir-ecole.jpg', ''),
(5, 'QUALITA', 'voir le project...', '/LesTetesDeSion.jpg', ''),
(6, 'ONE DUBNOV', 'voir le project...', '/OneDubnov.jpg', ''),
(7, 'ZIVOUG', 'voir le project...', '/Zivoug-01-Designed by WEDESIGN-Branding.jpg', ''),
(8, 'ANNATEL', 'voir le project...', '/Annatel-Carte Sim-01-Designed by WEDESIGN-Branding.jpg', ''),
(9, 'DERMAPOSITIVE', 'voir le project...', '', '/Dermapositive-Designed by WEDESIGN-Branding-video Portfolio menu.mp4'),
(10, 'BRAIN OPTIMA', 'voir le project...', '/BrainOptimalGeneve-01-Designed by WEDESIGN-Branding.jpg', ''),
(11, 'DAVID CITADEL JERUSALEM WINERY', 'voir le project...', '/David Citadel Jerusalem Winery-01-Designed by WEDESIGN-Branding.jpg', ''),
(12, 'METSUYAN', 'voir le project...', '/Metsuyan-05-Designed by WEDESIGN-Branding.jpg', ''),
(13, 'BUYERR', 'voir le project...', '/Buyerr-Telephone-03-Designed by WEDESIGN-Branding.jpg', ''),
(14, 'ICONE FORMATION', 'voir le project...', '/Icone.jpg', ''),
(15, 'EVOKE', 'voir le project...', '/Evoke-Bag-03-Designed by WEDESIGN-Branding.jpg', ''),
(16, 'CNEF', 'voir le project...', '/CNEF-Hoodie Front-02-Designed by WEDESIGN-Branding.jpg', ''),
(17, 'CHAMPEL CAPITAL', 'voir le project...', '/Champel Capital-Business Card-01-Designed by WEDESIGN-Branding.jpg', ''),
(18, 'SHARON LABORATORIES', 'voir le project...', '/Sharon Laboratory-01-Designed by WEDESIGN-Branding.jpg', ''),
(19, 'HEVRON HEIGHTS WINERY', 'voir le project...', '/Hevron Heights-Booth-08-Designed by WEDESIGN-Branding.jpg', ''),
(20, 'PRINCESS SISSI', 'voir le project...', '/Princess Sissi-06-Designed by WEDESIGN-Branding.jpg', ''),
(21, 'LE REPERTOIRE', 'voir le project...', '', '/Le Repertoire - Video Portfolio Menu.mp4'),
(22, 'FSJU', 'voir le project...', '/Festival des cultures Juives-01-Designed by WEDESIGN-Branding.jpg', ''),
(23, 'L\'OREAL - COMPOSITE COLOR', 'voir le project...', '/Loreal1.jpg', ''),
(24, 'NOVIDI INNOVATIONS', 'voir le project...', '/Novidi Innovation-01-Designed by WEDESIGN-Branding.jpg', ''),
(25, 'POWER AGE', 'voir le project...', '/Power Age-02-Designed by WEDESIGN-Branding.jpg', ''),
(26, 'NITSOTS YONATHAN', 'voir le project...', '/Nitsots Yonathan-02-Designed by WEDESIGN-Branding.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uuid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `email`, `password`, `uuid`) VALUES
(3, 'Binyamin', 'Lachkar', 'benjilachkar@gmail.com', 'cc53be18abb5f5dd6824d67d57a0aeaf5628ad5810f816a1d71166fd65afd65781bb1dd5e8fb27966a5bbfa2a8a4c2280025319b8ee5077452ac56a7b47eb75f', '23a4ee79-d1fb-4f48-a118-242503c95167'),
(4, 'Myriam', 'Lachkar', 'contact@wedesign-branding.com', '64857ce3d188ca7166ca0aa6fadc523ede06c90128044be5e3cd0af4f235aca3f9d007cce3f08f323dabe79e876bb50ddec59b4abd84c4c35299d550fd3ec76e', '49159ec8-d2b4-4912-8ef8-3d866befec91');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientlist`
--
ALTER TABLE `clientlist`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexes for table `projectslist`
--
ALTER TABLE `projectslist`
  ADD PRIMARY KEY (`projectID`),
  ADD UNIQUE KEY `projectID` (`projectID`);

--
-- Indexes for table `projectslistfr`
--
ALTER TABLE `projectslistfr`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientlist`
--
ALTER TABLE `clientlist`
  MODIFY `clientID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `projectID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `projectslist`
--
ALTER TABLE `projectslist`
  MODIFY `projectID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `projectslistfr`
--
ALTER TABLE `projectslistfr`
  MODIFY `projectID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD CONSTRAINT `projectdetails_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `projectslist` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectslistfr`
--
ALTER TABLE `projectslistfr`
  ADD CONSTRAINT `projectslistfr_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `projectslist` (`projectID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
