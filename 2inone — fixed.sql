-- --------------------------------------------------------
-- Host:                         146.59.77.166
-- Wersja serwera:               10.8.4-MariaDB-1:10.8.4+maria~deb11 - mariadb.org binary distribution
-- Serwer OS:                    debian-linux-gnu
-- HeidiSQL Wersja:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Zrzut struktury bazy danych s3653_baza
CREATE DATABASE IF NOT EXISTS `db_96285` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_96285`;

-- Zrzut struktury tabela s3653_baza.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.addon_account: ~9 rows (około)
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Bank Savings', 0),
	('caution', 'caution', 0),
	('property_black_money', 'Money Sale Property', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_police', 'Police', 1),
	('society_cardealer', 'Concesionnaire', 1),
	('society_mecano', 'Mecano', 1),
	('society_burgershot', 'BurgerShot', 1),
	('society_flyingschool', 'Szkola Latania', 1),
	('society_dycha', 'Dycha', 1),
	('society_garcongarage', 'Garcon Garage', 1),
	('society_aod', 'Aod', 1),
	('society_zakon', 'Zakszot', 1),
	('society_gsk', 'GSK', 1),
	('society_ballas', 'Ballas', 1),
	('society_arcade', 'Arcade', 1),
	('society_foodtruck', 'FoodTruck', 1),
	('society_vanilla', 'Vanilla Unicorn', 1);

-- Zrzut struktury tabela s3653_baza.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.addon_account_data: ~24 rows (około)
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(2, 'society_ambulance', 10000, NULL),
	(3, 'society_banker', 0, NULL),
	(4, 'society_police', 10000, NULL),
	(5, 'society_cardealer', 10000, NULL),
	(6, 'society_mecano', 10000, NULL),
	(7, 'society_realestateagent', 0, NULL),
	(8, 'society_taxi', 0, NULL);

-- Zrzut struktury tabela s3653_baza.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.addon_inventory: ~5 rows (około)
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Mieszkanie', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_mechanic', 'Mechanik', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1),
	('society_burgershot', 'BurgerShot', 1),
	('society_flyingschool', 'Szkola Latnia', 0),
	('society_dycha', 'Dycha', 0),
	('society_garcongarage', 'Garcon Garage', 0),
	('society_aod', 'Aod', 0),
	('society_zakon', 'Zakszot', 0),
	('society_gsk', 'GSK', 0),
	('society_ballas', 'Ballas', 0),
	('society_arcade', 'Arcade', 0),
	('society_foodtruck', 'FoodTruck', 0),
	('society_vanilla', 'Vanilla Unicorn', 0);

-- Zrzut struktury tabela s3653_baza.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.addon_inventory_items: ~88 rows (około)
INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(410, 'society_police', 'vintagepistol', 0, NULL),
	(411, 'society_police', 'pistol', 0, NULL),
	(412, 'society_police', 'phone', 0, NULL),
	(413, 'society_police', 'bread', 0, NULL),
	(414, 'society_police', 'handcuffs', 0, NULL),
	(415, 'society_police', 'water', 0, NULL);

-- Zrzucanie danych dla tabeli s3653_baza.addon_inventory_items: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.billing: ~0 rows (około)

-- Zrzut struktury tabela es_extended.black_market
CREATE TABLE IF NOT EXISTS `black_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.black_market: ~3 rows (około)
INSERT INTO `black_market` (`id`, `item`, `price`, `stock`, `zone`, `category`) VALUES
	(1, 'WEAPON_PISTOL', 90000, 42, 'BlackMarket', 'pistol'),
	(2, 'WEAPON_HEAVYPISTOL', 140000, 45, 'BlackMarket', 'pistol'),
	(3, 'WEAPON_VINTAGEPISTOL', 170000, 43, 'BlackMarket', 'pistol');

-- Zrzut struktury tabela s3653_baza.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.datastore: ~9 rows (około)
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	   ('society_ambulance', 'Ambulance', 1),
	   ('society_cardealer', 'Cardealer', 1),
	   ('society_mechanic', 'Mechanik', 1),
	   ('society_police', 'Police', 1),
   	   ('society_taxi', 'Taxi', 1),
	   ('society_burgershot', 'BurgerShot', 1),
	   ('property', 'Propriété', 0),
	   ('society_flyingschool', 'Szkola Latnia', 0),
	   ('society_dycha', 'Dycha', 0),
	   ('society_garcongarage', 'Garcon Garage', 0),
	   ('society_aod', 'Aod', 0),
	   ('society_zakon', 'Zakszot', 0),
	   ('society_gsk', 'GSK', 0),
	   ('society_ballas', 'Ballas', 0),
	   ('society_arcade', 'Arcade', 0),
	   ('society_foodtruck', 'FoodTruck', 0),
	   ('society_vanilla', 'Vanilla Unicorn', 0);

-- Zrzut struktury tabela s3653_baza.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.datastore_data: ~39 rows (około)
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_ambulance', NULL, '{}'),
	(2, 'society_mechanic', NULL, '{}'),
	(3, 'society_police', NULL, '{}'),
	(5, 'society_taxi', NULL, '{}'),
	(6, 'society_burgershot', NULL, '{}'),
	(7, 'society_flyingschool', NULL, '{}'),
	(8, 'society_dycha', NULL, '{}'),
	(9, 'society_garcongarage', NULL, '{}'),
	(10, 'society_zakon', NULL, '{}'),
	(11, 'society_gsk', NULL, '{}'),
	(12, 'society_ballas', NULL, '{}'),
	(13, 'society_arcade', NULL, '{}'),
	(14, 'society_foodtruck', NULL, '{}'),
	(15, 'society_vanilla', NULL, '{}');

-- Zrzut struktury tabela s3653_baza.disc_ammo
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela s3653_baza.disc_inventory
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `type` text DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela s3653_baza.disc_inventory_itemdata
CREATE TABLE IF NOT EXISTS `disc_inventory_itemdata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `closeonuse` tinyint(1) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 100,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.disc_inventory_itemdata: ~3 rows (około)
INSERT INTO `disc_inventory_itemdata` (`id`, `name`, `description`, `weight`, `closeonuse`, `max`) VALUES
	(1, 'car_keys', 'Klucze do auta XYZ 123', 10, 1, 1),
	(2, 'bread', 'Świeży Chleb', 10, 1, 100),
	(3, 'lockpick', 'Nielegalny przedmiot', 10, 1, 1);

	-- Zrzut struktury tabela es_extended.dojtablet_firms
CREATE TABLE IF NOT EXISTS `dojtablet_firms` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Zrzucanie danych dla tabeli es_extended.dojtablet_firms: ~1 rows (około)
INSERT INTO `dojtablet_firms` (`identifier`, `type`, `name`, `note`) VALUES
	('steam:110000115ef87d4', 'restaurant', 'BurgerShot', ''),
	('steam:110000115ef87d4', 'event', 'Jajca', 'Jajuszka'),
	('steam:110000115ef87d4', 'restaurant', 'Keczupy', 'Keczup');

-- Zrzut struktury tabela es_extended.dopeplants
CREATE TABLE IF NOT EXISTS `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzucanie danych dla tabeli es_extended.dopeplants: ~0 rows (około)

-- Zrzut struktury tabela es_extended.fivetebex
CREATE TABLE IF NOT EXISTS `fivetebex` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `fivecoins` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Zrzut struktury tabela es_extended.glovebox_inventory
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;


-- Zrzut struktury tabela s3653_baza.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.fine_types: ~52 rows (około)
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2);

-- Zrzut struktury tabela s3653_baza.fivecity_secondjobs
CREATE TABLE IF NOT EXISTS `fivecity_secondjobs` (
  `identifier` varchar(50) DEFAULT NULL,
  `jobs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`jobs`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.fivecity_secondjobs: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.items: ~153 rows (około)
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('alcohol', 'Alkohol', 20, 0, 1),
	('alitas', 'Skrzydełka', 1, 0, 1),
	('alive_chicken', 'Żywy kurczak', 2, 0, 50),
	('ammo_pistol', 'Pistol Ammo', 10, 0, 1),
	('ammo_pistol_large', 'Pistol Ammo Large', -10, 0, 1),
	('ammo_rifle', 'Rifle Ammo', 10, 0, 1),
	('ammo_rifle_large', 'Rifle Ammo Large', 10, 0, 1),
	('ammo_shotgun', 'Shotgun Shells', 10, 0, 1),
	('ammo_shotgun_large', 'Shotgun Shells Large', 10, 0, 1),
	('ammo_smg', 'SMG Ammo', 10, 0, 1),
	('ammo_smg_large', 'SMG Ammo Large', 10, 0, 1),
	('ammo_snp', 'Sniper Ammo', 10, 0, 1),
	('ammo_snp_large', 'Sniper Ammo Large', 10, 0, 1),
	('angels_beer', 'Angels Beer', 20, 0, 1),
	('bandage', 'Bandaże', 5, 0, 1),
	('bar', 'Czekolada', 10, 0, 1),
	('barley', 'Jęczmień', 20, 0, 1),
	('beefcheeks', 'Policzki Wołowe', 20, 0, 1),
	('beeftongues', 'Języki Wołowe', 20, 0, 1),
	('beer', 'Piwo', 15, 0, 1),
	('black_money', 'Oznakowana Gotówka', -1, 0, 1),
	('black_pendrive', 'Czarny Pendrive', 20, 0, 1),
	('bletka', 'Bletka', 20, 0, 1),
	('blowpipe', 'Palnik', 10, 0, 1),
	('blue_pendrive', 'Niebieski Pendrive', 20, 0, 1),
	('bodycam', 'Bodycam', 2, 0, 1),
	('bread', 'Chleb', 25, 0, 1),
	('breadfresh', 'Świeży chleb', 40, 0, 1),
	('bun', 'Bułka', 20, 0, 1),
	('burgerbs', 'Burger', 20, 0, 1),
	('burguer', 'Big Mac', 1, 0, 1),
	('bursztyn', 'Bursztyn', 20, 0, 1),
	('butter', 'Masło', 20, 0, 1),
	('car_keys', 'Klucze do auta', 50, 0, 1),
	('carokit', 'Zestaw karoserii', 3, 0, 1),
	('carotool', 'Narzędzia do karoserii', 4, 0, 1),
	('cash', 'Gotówka', 10000000, 0, 1),
	('chain_10ct', 'Naszyjnik', 20, 0, 1),
	('chain_2ct', 'Naszyjnik', 20, 0, 1),
	('chain_5ct', 'Naszyjnik', 20, 0, 1),
	('chain_8ct', 'Naszyjnik', 20, 0, 1),
	('champagne', 'Szampan', 10, 0, 1),
	('chickburger', 'Chick Burger', 20, 0, 1),
	('chicken', 'Kurczak', 20, 0, 1),
	('chickenburger', 'Chicken Burger', 20, 0, 1),
	('chips', 'Frytki', 5, 0, 1),
	('chocolate', 'Czekolada', 10, 0, 1),
	('chocolateshake', 'Shake Czekoladowy', 20, 0, 1),
	('cigarett', 'Papieros', 20, 0, 1),
	('cigarettespack', 'Paczka Papierosów', 20, 0, 1),
	('ciuchynurka', 'Strój Nurka', 100, 0, 1),
	('clip', 'Magazynek', 5, 0, 1),
	('clothe', 'Odzież', 25, 0, 1),
	('cocacola', 'Coca-cola', 15, 0, 1),
	('cocoa', 'Kakao', 20, 0, 1),
	('coffe', 'Kawa', 15, 0, 1),
	('coffee', 'Kawa', 20, 0, 1),
	('coffeeseeds', 'Nasiona', 20, 0, 1),
	('coke', 'Kokaina', 100, 0, 1),
	('coke_pooch', 'Paczka Kokainy', 100, 0, 1),
	('colacola', 'Coca-cola', 1, 0, 1),
	('copper', 'Miedź', 50, 0, 1),
	('crack', 'Crack', 20, 0, 1),
	('crisps', 'Chipsy', 10, 0, 1),
	('cupcake', 'Babeczka', 15, 0, 1),
	('cutted_wood', 'Pociete drewno', 50, 0, 1),
	('diamond', 'Diament', 50, 0, 1),
	('diamondcasino_card_gold', 'Złota Karta', 5, 0, 1),
	('diamondcasino_card_platinum', 'Czarna Karta', 5, 0, 1),
	('doniczka', 'Doniczka', 20, 0, 1),
	('doughpotato', 'Ziemniaki', 20, 0, 1),
	('drill', 'Wiertło', 10, 0, 1),
	('drill_n', 'Wiertarka', 5, 0, 1),
	('ecola', 'eCola', 50, 0, 1),
	('essence', 'Benzyna', 100, 0, 1),
	('fabric', 'Tkanina', 50, 0, 1),
	('firework', 'Fajerwerka', 1, 0, 1),
	('fireworks', 'Fajerwerki', 100, 0, 1),
	('fixkit', 'Zestaw Naprawczy', 15, 0, 1),
	('fixtool', 'Narzędzia naprawcze', 15, 0, 1),
	('flashlight', 'Latarka', 1, 0, 1),
	('fries', 'Frytki', 20, 0, 1),
	('gazbottle', 'Butla z gazem', 11, 0, 1),
	('ggps', 'GPS', 5, 0, 1),
	('glass_drill_n', 'Drill do Szyb', 20, 0, 1),
	('gold', 'Zloto', 50, 0, 1),
	('gold_bar', 'Złoto', 5, 0, 1),
	('gps', 'Cimice', 40, 0, 1),
	('green_pendrive', 'Zielony Pendrive', 20, 0, 1),
	('grip', 'Grip', 1, 0, 1),
	('groundmeat', 'Mielone Mięso', 20, 0, 1),
	('ham', 'Szynka', 20, 0, 1),
	('hamburger', 'Hamburger', 25, 0, 1),
	('handcuffs', 'Kajdanki', 10, 0, 1),
	('harley_vodka', 'Harley Vodka', 20, 0, 1),
	('heartstopper', 'Heart Stopper', 20, 0, 1),
	('hop', 'Chmiel', 20, 0, 1),
	('hotdog', 'Hot Dog', 100, 0, 1),
	('human_case', 'Metalowa Skrzynka', 1, 0, 1),
	('human_case_safe', 'Zabezpieczona Metalowa Skrzynka', 1, 0, 1),
	('human_document', 'Dokument', 1, 0, 1),
	('human_fire', 'Palnik', 1, 0, 1),
	('human_oxygen', 'Tlen', 5, 0, 1),
	('human_pass', 'BlackMarket Pass', 5, 0, 1),
	('human_pda', 'Dziwny Telefon', 5, 0, 1),
	('human_pendrive', 'Pendrive', 5, 0, 1),
	('human_pendrive_green', 'Pendrive C', 5, 0, 1),
	('human_pendrive_pink', 'Pendrive B', 5, 0, 1),
	('human_pendrive_yellow', 'Pendrive A', 5, 0, 1),
	('human_suit', 'Strój Nurka', 5, 0, 1),
	('human_tablet', 'Tablet HUMANOS', 5, 0, 1),
	('human_vial', 'Fiolka z Wirusem', 5, 0, 1),
	('ice', 'Lód', 20, 0, 1),
	('icetea', 'Herbata', 15, 0, 1),
	('iron', 'Srebro', 50, 0, 1),
	('jablka', 'Jabłko', 100, 0, 1),
	('jewelry_pouch', 'Sakiewka', 20, 0, 1),
	('jewels', 'Kryształy', 50, 0, 1),
	('Kamizelka', 'Kamizelka', 5, 0, 1),
	('kartaems', 'Karta pracy EMS', 10, 0, 1),
	('kartalspd', 'Karta pracy LSPD', 10, 0, 1),
	('kevlar', 'Kamizelka', 100, 0, 1),
	('keya', 'Klucz A', 20, 0, 1),
	('keyb', 'Klucz B', 20, 0, 1),
	('keyc', 'Klucz C', 20, 0, 1),
	('lemon', 'Cytryna', 20, 0, 1),
	('lemonade', 'Lemoniada', 20, 0, 1),
	('license', 'Licencja', 50, 0, 1),
	('lighter', 'Zaplniczka', 5, 0, 1),
	('limonade', 'Fanta', 25, 0, 1),
	('lockpick', 'Wytrych', 20, 0, 1),
	('lokalizator', 'Lokalizator GPS', 1, 0, 1),
	('lornetka', 'Lornetka', 1, 0, 1),
	('maka', 'Mąka', 100, 0, 1),
	('malt', 'Słodzik', 20, 0, 1),
	('mcensalada', 'Sałatka', 5, 0, 1),
	('mcflurry', 'Mc Flurry', 5, 0, 1),
	('mcmenu', 'Menu', 1, 0, 1),
	('meat', 'Mięso', 20, 0, 1),
	('medic', 'Przedmioty medyczne', 20, 0, 1),
	('medikit', 'Apteczka', 5, 1, 1),
	('metalparts', 'Metalowe Części', 100, 0, 1),
	('meth', 'Meta', 100, 0, 1),
	('meth_pooch', 'Paczka Mety', 100, 0, 1),
	('milk', 'Mleko', 100, 0, 1),
	('nasionko', 'nasiono Konopi', 100, 0, 1),
	('nasiono2', 'nasiono Makowca', 100, 0, 1),
	('nasiono3', 'nasiono Kokainy', 100, 0, 1),
	('nicebread', 'Dobry Chleb', 20, 0, 1),
	('nuggets', 'Nuggetsy', 5, 0, 1),
	('nuts', 'Orzechy', 5, 0, 1),
	('obursztyn', 'Oszlifowany bursztyn', 20, 0, 1),
	('odznaka', 'Odznaka', 5, 0, 0),
	('opium', 'Opium', 100, 0, 1),
	('opium_pooch', 'Paczka opium', 100, 0, 1),
	('packaged_chicken', 'Kurczak na tacye', 20, 2, 0),
	('packaged_plank', 'Paczka desek', 25, 0, 1),
	('packedmincedmeat', 'Zapakowane Mięso', 20, 0, 1),
	('painting_broken', 'Poszarpany Obraz', 20, 0, 1),
	('painting_factory', 'Obraz', 20, 0, 1),
	('painting_girls', 'Obraz', 20, 0, 1),
	('painting_pig', 'Obraz', 20, 0, 1),
	('painting_shapes', 'Obraz', 20, 0, 1),
	('patatas', 'Frytki', 5, 0, 1),
	('peat', 'Torf', 20, 0, 1),
	('pendrive', 'Pendrive z Wirusem', 2, 0, 1),
	('petrol', 'Olej', 100, 0, 1),
	('petrol_raffin', 'Rafinowana ropa naftowa', 100, 0, 1),
	('phone', 'Telefon', 5, 0, 1),
	('plant_extract', 'Ekstrakt z Rośliny', 20, 0, 1),
	('police_hook', 'Hak', 1, 0, 1),
	('pomarancza', 'Pomarańcza', 50, 0, 1),
	('portfel', 'Portfel', 5, 0, 1),
	('potato', 'Ziemniak', 100, 0, 1),
	('pszenica', 'Pszenica', 81, 0, 1),
	('radio', 'Radio', 5, 0, 1),
	('rawcowhead', 'Surowa Głowa Krowy', 20, 0, 1),
	('rawmeat', 'Surowe Mięso', 20, 0, 1),
	('receiptbs', 'Paragon', 20, 0, 1),
	('rolex', 'Rolex', 20, 0, 1),
	('romesalad', 'Sałata Rzymska', 20, 0, 1),
	('rope', 'Lina', 5, 0, 1),
	('ruby', 'Rubin', 20, 0, 1),
	('salad', 'Sałata', 100, 0, 1),
	('silencieux', 'Tłumik', 1, 0, 1),
	('sim', 'Karta SIM', -1, 0, 1),
	('slaughtered_chicken', 'Zabity kurczak', 50, 2, 0),
	('sok', 'Sok', 30, 0, 1),
	('sprunk', 'Sprunk', 50, 0, 1),
	('stone', 'Kamien', 100, 0, 1),
	('strawberry', 'Truskawki', 20, 0, 1),
	('strawberryslushy', 'Truskawkowe Slushy', 20, 0, 1),
	('subik', 'Subik', 20, 0, 1),
	('sugar', 'Cukier', 20, 0, 1),
	('suscase', 'SusCase', 100, 0, 1),
	('tea', 'Herbata', 50, 0, 1),
	('toast', 'Tost', 20, 0, 1),
	('tomato', 'Pomidor', 100, 0, 1),
	('tomatokok', 'Pomidory', 20, 0, 1),
	('torba', 'Torba', 1, 0, 1),
	('ubranialspd', 'Ubrania więzienne', 30, 0, 1),
	('ubursztyn', 'Umyty bursztyn', 20, 0, 1),
	('vangelico_bottle', 'Butelka', 20, 0, 1),
	('vangelico_panther', 'Figurka Panthery', 20, 0, 1),
	('vangelico_reddiamond', 'Czerwony Diament', 20, 0, 1),
	('vape', 'E-Papieros', 1, 0, 1),
	('veggieburger', 'Veggie Burger', 20, 0, 1),
	('washed_stone', 'Umyty kamień', 100, 0, 1),
	('water', 'Woda', 15, 0, 1),
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 1, 0, 1),
	('WEAPON_APPISTOL', 'AP Pistol', 1, 0, 1),
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 1, 0, 1),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, 0, 1),
	('WEAPON_ASSAULTSMG', 'Assault SMG', 1, 0, 1),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, 0, 1),
	('WEAPON_BALL', 'Ball', 1, 0, 1),
	('WEAPON_BAT', 'Bat', 1, 0, 1),
	('WEAPON_BATTLEAXE', 'Battle Axe', 1, 0, 1),
	('WEAPON_BOTTLE', 'Bottle', 1, 0, 1),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 1, 0, 1),
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 1, 0, 1),
	('WEAPON_BZGAS', 'BZ Gas', 1, 0, 1),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 1, 0, 1),
	('WEAPON_COMBATMG', 'Combat MG', 1, 0, 1),
	('WEAPON_COMBATPDW', 'Combat PDW', 1, 0, 1),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 1, 0, 1),
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', 1, 0, 1),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', 1, 0, 1),
	('WEAPON_CROWBAR', 'Crowbar', 1, 0, 1),
	('WEAPON_DAGGER', 'Dagger', 1, 0, 1),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 1, 0, 1),
	('WEAPON_DIGISCANNER', 'Digiscanner', 1, 0, 1),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 1, 0, 1),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 1, 0, 1),
	('WEAPON_FIREWORK', 'Firework Launcher', 1, 0, 1),
	('WEAPON_FLARE', 'Flare', 1, 0, 1),
	('WEAPON_FLAREGUN', 'Flare Gun', 1, 0, 1),
	('WEAPON_FLASHLIGHT', 'Flashlight', 1, 0, 1),
	('WEAPON_GARBAGEBAG', 'Garbage Bag', 1, 0, 1),
	('WEAPON_GOLFCLUB', 'Golf Club', 1, 0, 1),
	('WEAPON_GRENADE', 'Grenade', 1, 0, 1),
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', 1, 0, 1),
	('WEAPON_GUSENBERG', 'Gusenberg', 1, 0, 1),
	('WEAPON_HAMMER', 'Hammer', 1, 0, 1),
	('WEAPON_HANDCUFFS', 'Handcuffs', 1, 0, 1),
	('WEAPON_HATCHET', 'Hatchet', 1, 0, 1),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1, 0, 1),
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 1, 0, 1),
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 1, 0, 1),
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', 1, 0, 1),
	('WEAPON_KNIFE', 'Knife', 1, 0, 1),
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', 1, 0, 1),
	('WEAPON_MACHETE', 'Machete', 1, 0, 1),
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1, 0, 1),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1, 0, 1),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 1, 0, 1),
	('WEAPON_MG', 'MG', 1, 0, 1),
	('WEAPON_MICROSMG', 'Micro SMG', 1, 0, 1),
	('WEAPON_MINIGUN', 'Minigun', 1, 0, 1),
	('WEAPON_MINISMG', 'Mini SMG', 1, 0, 1),
	('WEAPON_MOLOTOV', 'Molotov', 1, 0, 1),
	('WEAPON_MUSKET', 'Musket', 1, 0, 1),
	('WEAPON_NIGHTSTICK', 'Police Baton', 1, 0, 1),
	('WEAPON_PETROLCAN', 'Petrol Can', 1, 0, 1),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1, 0, 1),
	('WEAPON_PISTOL', 'Pistol', 1, 0, 1),
	('WEAPON_PISTOL50', 'Police .50', 1, 0, 1),
	('WEAPON_POOLCUE', 'Pool Cue', 1, 0, 1),
	('WEAPON_PROXMINE', 'Proximity Mine', 1, 0, 1),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 0, 1),
	('WEAPON_RAILGUN', 'Rail Gun', 1, 0, 1),
	('WEAPON_REVOLVER', 'Revolver', 1, 0, 1),
	('WEAPON_RPG', 'RPG', 1, 0, 1),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 1, 0, 1),
	('WEAPON_SMG', 'SMG', 1, 0, 1),
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 1, 0, 1),
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 1, 0, 1),
	('WEAPON_SNOWBALL', 'Snow Ball', 1, 0, 1),
	('WEAPON_SNSPISTOL', 'SNS Pistol', 1, 0, 1),
	('WEAPON_SPECIALCARBINE', 'Special Rifle', 1, 0, 1),
	('WEAPON_STICKYBOMB', 'Sticky Bombs', 1, 0, 1),
	('WEAPON_STINGER', 'Stinger', 1, 0, 1),
	('WEAPON_STUNGUN', 'Police Taser', 1, 0, 1),
	('WEAPON_SWITCHBLADE', 'Switch Blade', 1, 0, 1),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 1, 0, 1),
	('WEAPON_WRENCH', 'Wrench', 1, 0, 1),
	('weed', 'Marihuana', 100, 0, 1),
	('weed_pooch', 'Paczka marihuany', 250, 0, 1),
	('weird_phone', 'Dziwny Telefon', 5, 0, 1),
	('whiskey_rider', 'Whiskey Rider', 20, 0, 1),
	('wizytowka', 'Wizytówka', 2, 0, 1),
	('wood', 'Drzewo', 100, 0, 1),
	('wool', 'Welna', 100, 0, 1),
	('yeast', 'Drożdże', 20, 0, 1),
	('yoda_stick', 'Yoda Stick', 10, 0, 1),
	('zarowki', 'Kolorowe Żarówki', 1, 0, 1),
	('zdrapka', 'Zdrapka', 20, 0, 1),
	('zdrapkaplus', 'Zdrapka+', 20, 0, 1);

	-- Zrzut struktury tabela es_extended.jail
CREATE TABLE IF NOT EXISTS `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela s3653_baza.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.jobs: ~14 rows (około)
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'EMS', 1),
	('aod', 'Aod', 0),
	('arcade', 'Arcade', 0),
	('ballas', 'Ballas', 0),
	('burgershot', 'BurgerShot', 0),
	('dycha', 'Dycha', 0),
	('fisher', 'Rybak', 0),
	('flyingschool', 'Szkola Latania', 0),
	('foodtruck', 'Foodtruck', 0),
	('garcongarage', 'Garcon Garage', 0),
	('gsk', 'GSK', 0),
	('kurier', 'Kurier', 0),
	('mecano', 'Mechanik', 1),
	('offambulance', 'Medyk poza służbą', 1),
	('offpolice', 'LSPD poza służbą', 1),
	('piekarz', 'Piekarz', 0),
	('police', 'LSPD', 1),
	('rolnik', 'Rolnik', 0),
	('sadownik', 'Sadownik', 0),
	('scrap', 'Złomiarz', 0),
	('slaughter', 'Rzeźnik', 0),
	('unemployed', 'Bezrobotny', 0),
	('vanilla', 'Vanilla Unicorn', 0),
	('zakon', 'Zakszot', 0);

-- Zrzut struktury tabela s3653_baza.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.job_grades: ~42 rows (około)
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(0, 'piekarz', 0, 'recrue', 'Pracownik', 500, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(1, 'unemployed', 0, 'unemployed', 'Na Zasiłku', 70, '{}', '{}'),
	(2, 'police', 1, 'recruit', 'Kadet', 1000, '{}', '{}'),
	(3, 'police', 2, 'officer', 'Oficer I', 1200, '{}', '{}'),
	(4, 'police', 5, 'sergeant', 'Sierżant I', 1800, '{}', '{}'),
	(5, 'police', 8, 'lieutenant', 'Porucznik I', 2400, '{}', '{}'),
	(6, 'police', 17, 'boss', 'Szef Policji', 4500, '{}', '{}'),
	(7, 'police', 0, 'none', 'Rekrut', 800, '{}', '{}'),
	(8, 'police', 3, 'officer', 'Oficer II', 1400, '{}', '{}'),
	(9, 'police', 4, 'officer', 'Oficer III', 1600, '{}', '{}'),
	(10, 'police', 6, 'sergeant', 'Sierżant II', 2000, '{}', '{}'),
	(11, 'police', 7, 'sergeant', 'Sierżant III', 2200, '{}', '{}'),
	(12, 'police', 9, 'lieutenant', 'Porucznik I', 2600, '{}', '{}'),
	(13, 'police', 10, 'lieutenant', 'Porucznik II', 2800, '{}', '{}'),
	(14, 'police', 11, 'captain', 'Kapitan I', 3000, '{}', '{}'),
	(15, 'police', 12, 'captain', 'Kapitan II', 3200, '{}', '{}'),
	(16, 'police', 13, 'captain', 'Kapitan III', 3400, '{}', '{}'),
	(17, 'police', 14, 'boss', 'Zastępca Komendanta', 3600, '{}', '{}'),
	(18, 'police', 15, 'boss', 'Komendant', 3800, '{}', '{}'),
	(19, 'police', 16, 'boss', 'Zastępca Szefa Policji', 4000, '{}', '{}'),
	(20, 'ambulance', 5, 'boss', 'Dyrektor', 1700, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(21, 'ambulance', 0, 'Praktykant', 'Praktykant', 200, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(22, 'ambulance', 4, 'boss', 'Zastępca Dyrektora', 1500, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(23, 'ambulance', 3, 'chied_doctor', 'Chirurg', 400, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(24, 'ambulance', 1, 'ambulance', 'Ratownik', 250, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(25, 'ambulance', 2, 'doctor', 'Lekarz', 350, '{"ears_1":-1,"decals_1":0,"lipstick_2":0,"skin":0,"blush_3":0,"moles_2":0,"eye_color":0,"moles_1":0,"complexion_2":0,"helmet_1":-1,"beard_1":0,"sex":0,"hair_2":0,"eyebrows_1":0,"torso_1":2,"bags_2":0,"torso_2":0,"mask_2":0,"chest_1":0,"mask_1":0,"sun_1":0,"chain_1":126,"bproof_1":6,"eyebrows_2":0,"bracelets_2":0,"beard_3":0,"blush_2":0,"beard_4":0,"makeup_3":0,"hair_color_1":27,"makeup_4":0,"hair_color_2":0,"watches_1":-1,"pants_2":5,"bodyb_1":0,"bproof_2":0,"lipstick_3":0,"age_2":0,"shoes_1":76,"lipstick_4":0,"tshirt_2":0,"lipstick_1":0,"arms_2":0,"blemishes_1":0,"decals_2":0,"sun_2":0,"hair_1":2,"glasses_2":0,"makeup_1":0,"chest_2":0,"blush_1":0,"chest_3":0,"ears_2":0,"makeup_2":0,"shoes_2":3,"helmet_2":0,"eyebrows_4":0,"blemishes_2":0,"eyebrows_3":0,"pants_1":10,"bodyb_2":0,"bags_1":0,"bracelets_1":-1,"watches_2":0,"face":0,"chain_2":0,"glasses_1":0,"age_1":0,"arms":92,"tshirt_1":15,"complexion_1":0,"beard_2":0}', '{}'),
	(26, 'offambulance', 0, 'ambulance', 'Poza Służbą', 500, '{}', '{}'),
	(27, 'offambulance', 1, 'ambulance', 'Poza Służbą', 500, '{}', '{}'),
	(28, 'offambulance', 2, 'ambulance', 'Poza Służbą', 500, '{}', '{}'),
	(29, 'offambulance', 3, 'doctor', 'Poza Służbą', 500, '{}', '{}'),
	(30, 'offambulance', 4, 'doctor', 'Poza Służbą', 500, '{}', '{}'),
	(31, 'offambulance', 5, 'chief_doctor', 'Poza Służbą', 500, '{}', '{}'),
	(32, 'offambulance', 6, 'chief_doctor', 'Poza Służbą', 500, '{}', '{}'),
	(33, 'offambulance', 7, 'boss', 'Poza Służbą', 500, '{}', '{}'),
	(34, 'mecano', 0, 'recrue', 'Nowicjusz', 70, '{"tshirt_1":15,"tshirt_2":0,"shoes_1":63,"shoes_2":5,"torso_1":65,"torso_2":1,"pants_1":38,"pants_2":0,"arms":14}', '{}'),
	(35, 'mecano', 1, 'novice', 'Majster', 120, '{"tshirt_1":15,"tshirt_2":0,"shoes_1":63,"shoes_2":5,"torso_1":65,"torso_2":1,"pants_1":38,"pants_2":0,"arms":14}', '{}'),
	(36, 'mecano', 2, 'experimente', 'Brygadzista', 150, '{"tshirt_1":15,"tshirt_2":0,"shoes_1":63,"shoes_2":5,"torso_1":65,"torso_2":1,"pants_1":38,"pants_2":0,"arms":14}', '{}'),
	(37, 'mecano', 3, 'chief', 'Szef zmiany', 230, '{"tshirt_1":15,"tshirt_2":0,"shoes_1":63,"shoes_2":5,"torso_1":65,"torso_2":1,"pants_1":38,"pants_2":0,"arms":14}', '{}'),
	(38, 'mecano', 4, 'boss', 'Szef Zakładu', 250, '{"tshirt_1":15,"tshirt_2":0,"shoes_1":63,"shoes_2":5,"torso_1":65,"torso_2":1,"pants_1":38,"pants_2":0,"arms":14}', '{}'),
	(39, 'offmecano', 0, 'Poza służbą', 'Poza służbą', 50, '{}', '{}'),
	(40, 'offmecano', 1, 'Poza służbą', 'Poza służbą', 50, '{}', '{}'),
	(41, 'offmecano', 2, 'Poza służbą', 'Poza służbą', 50, '{}', '{}'),
	(42, 'offmecano', 3, 'Poza służbą', 'Poza służbą', 50, '{}', '{}'),
	(43, 'offmecano', 4, 'Poza służbą', 'Poza służbą', 50, '{}', '{}'),
	(44, 'offpolice', 0, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(45, 'offpolice', 1, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(46, 'offpolice', 2, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(47, 'offpolice', 3, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(48, 'offpolice', 4, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(49, 'offpolice', 5, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(50, 'offpolice', 6, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(51, 'offpolice', 7, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(52, 'offpolice', 8, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(53, 'offpolice', 9, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(54, 'offpolice', 10, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(55, 'offpolice', 11, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(56, 'offpolice', 12, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(57, 'offpolice', 13, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(58, 'offpolice', 14, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(59, 'offpolice', 15, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(60, 'offpolice', 16, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(61, 'offpolice', 17, 'none', 'Off-Duty', 1000, '{}', '{}'),
	(62, 'sadownik', 0, 'recrue', 'Pracownik', 600, '{"tshirt_1":15,"tshirt_2":0,"torso_1":5,"torso_2":1,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(63, 'kurier', 0, 'recrue', 'Pracownik', 500, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(64, 'scrap', 0, 'recrue', 'Pracownik', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(65, 'fisher', 0, 'recrue', 'Pracownik', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(66, 'slaughter', 0, 'recrue', 'Pracownik', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(67, 'rolnik', 0, 'recrue', 'Pracownik', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(68, 'burgershot', 0, 'recrue', 'Pracownik', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(69, 'burgershot', 1, 'recrue2', 'Kucharz', 120, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(70, 'burgershot', 2, 'recrue3', 'Szef Kuchni', 120, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(71, 'burgershot', 3, 'zboss', 'Zastępca Szefa', 150, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(72, 'burgershot', 4, 'boss', 'Szef', 150, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(73, 'flyingschool', 0, 'pracownik', 'Pracownik', 90, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(74, 'flyingschool', 1, 'pilot', 'Pilot', 110, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(75, 'flyingschool', 2, 'zboss', 'Zastępca Szefa', 150, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(76, 'flyingschool', 3, 'boss', 'Szef', 150, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(77, 'dycha', 0, 'praco', 'Pracownik', 70, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(78, 'dycha', 1, 'praco2', 'Majster', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(79, 'dycha', 2, 'praco3', 'Starszy Majster', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(80, 'dycha', 3, 'kierownik', 'Kierownik', 110, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(81, 'dycha', 4, 'zboss', 'Zastępca Dychy', 110, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(82, 'dycha', 5, 'boss', 'Dycha', 120, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(83, 'garcongarage', 0, 'praco', 'Pracownik', 70, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(84, 'garcongarage', 1, 'praco2', 'Majster', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(85, 'garcongarage', 2, 'praco3', 'Starszy Majster', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(86, 'garcongarage', 3, 'kierownik', 'Kierownik', 110, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(87, 'garcongarage', 4, 'zboss', 'Zastępca Garcona', 110, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(88, 'garcongarage', 5, 'boss', 'Garcon', 120, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(89, 'aod', 0, 'pracownik', 'Pracownik', 70, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(90, 'aod', 1, 'motorzysta', 'Motorzysta', 80, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(91, 'aod', 2, 'hoomie', 'Kierownik', 80, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(92, 'aod', 3, 'zastepca', 'Zastępca Szefa', 120, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(93, 'zakon', 0, 'ministrant', 'Ministrant', 80, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(94, 'zakon', 1, 'ksiadz', 'Ksiądz', 80, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(95, 'zakon', 2, 'ksiadz', 'Głowny Ksiądz', 80, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(96, 'zakon', 3, 'ksiadz', 'Pastor', 100, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(97, 'gsk', 0, 'rekrut', 'Rekrut', 0, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(98, 'gsk', 1, 'członek', 'Członek', 0, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(99, 'gsk', 2, 'zastpeca', 'Zastępca Szefa', 0, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(100, 'gsk', 3, 'boss', 'Szef', 0, '{"tshirt_1":57,"tshirt_2":0,"torso_1":17,"torso_2":5,"shoes_1":5,"shoes_2":0,"pants_1":6, "pants_2":0, "arms":67}', '{"tshirt_1":177,"tshirt_2":0,"torso_1":16,"torso_2":4,"shoes_1":5,"shoes_2":0,"pants_1":10, "pants_2":1, "arms":76}'),
	(101, 'ballas', 0, 'rekurt', 'Rekrut', 0, '{}', '{}'),
	(102, 'ballas', 1, 'hoomie', 'Hoomie', 0, '{}', '{}'),
	(103, 'ballas', 2, 'członek', 'Członek', 0, '{}', '{}'),
	(104, 'ballas', 3, 'zastepca', 'Zastępca OG', 0, '{}', '{}'),
	(105, 'ballas', 4, 'boss', 'OG', 0, '{}', '{}'),
	(106, 'foodtruck', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
	(107, 'foodtruck', 1, 'kucharz', 'Kucharz', 0, '{}', '{}'),
	(108, 'foodtruck', 2, 'zastepca', 'Zastępca Szefa', 0, '{}', '{}'),
	(109, 'foodtruck', 3, 'boss', 'Szef', 0, '{}', '{}'),
	(110, 'arcade', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
	(111, 'arcade', 1, 'manage', 'Manager', 0, '{}', '{}'),
	(112, 'arcade', 2, 'zastepca', 'Zastępca Szefa', 0, '{}', '{}'),
	(113, 'arcade', 3, 'boss', 'Szef', 0, '{}', '{}'),
	(114, 'vanilla', 0, 'rekrut', 'Pracownik', 0, '{}', '{}'),
	(115, 'vanilla', 1, 'barman', 'BarMan', 0, '{}', '{}'),
	(116, 'vanilla', 2, 'dziwka', 'Dziwka', 0, '{}', '{}'),
	(117, 'vanilla', 3, 'zastepca', 'Manager', 0, '{}', '{}'),
	(118, 'vanilla', 4, 'boss', 'Szef', 0, '{}', '{}');

-- Zrzut struktury tabela es_extended.kartoteka_notatki
CREATE TABLE IF NOT EXISTS `kartoteka_notatki` (
  `identifier` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Zrzut struktury tabela es_extended.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Zrzucanie danych dla tabeli es_extended.licenses: ~12 rows (około)
INSERT INTO `licenses` (`type`, `label`) VALUES
	('air', 'Licencja na Latanie'),
	('dmv', 'Code de la route'),
	('drive', 'Permis de conduire'),
	('drive_bike', 'Permis moto'),
	('drive_truck', 'Permis camion'),
	('ems_insurance', 'Medical insurance'),
	('oc_insurance', 'Vehicle insurance'),
	('police_air', 'Licencja AIR'),
	('police_ocean', 'Licencja OCEAN'),
	('police_seu', 'Licencja SERT'),
	('police_seuoffroad', 'Licencja SEU-OFFROAD'),
	('police_swat', 'Licencja SWAT'),
	('weapon', 'Licencja na Broń');

CREATE TABLE IF NOT EXISTS `kaiser_carid` (
  `plate` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `przebieg` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Zrzucanie danych dla tabeli es_extended.kaiser_carid: ~0 rows (około)

-- Zrzut struktury tabela es_extended.kaiser_ciuchy
CREATE TABLE IF NOT EXISTS `kaiser_ciuchy` (
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'current',
  `bag` int(11) NOT NULL DEFAULT 0,
  `bag2` int(11) NOT NULL DEFAULT 0,
  `tshirt` int(11) NOT NULL DEFAULT 0,
  `tshirt2` int(11) NOT NULL DEFAULT 0,
  `torso` int(11) NOT NULL DEFAULT 0,
  `torso2` int(11) NOT NULL DEFAULT 0,
  `legs` int(11) NOT NULL DEFAULT 0,
  `legs2` int(11) NOT NULL DEFAULT 0,
  `shoes` int(11) NOT NULL DEFAULT 0,
  `shoes2` int(11) NOT NULL DEFAULT 0,
  `arms` int(11) NOT NULL DEFAULT 0,
  `arms2` int(11) NOT NULL DEFAULT 0,
  `chain` int(11) NOT NULL DEFAULT 0,
  `chain2` int(11) NOT NULL DEFAULT 0,
  `mask` int(11) NOT NULL DEFAULT 0,
  `mask2` int(11) NOT NULL DEFAULT 0,
  `decals` int(11) NOT NULL DEFAULT 0,
  `decals2` int(11) NOT NULL DEFAULT 0,
  `hat` int(11) NOT NULL DEFAULT 0,
  `hat2` int(11) NOT NULL DEFAULT 0,
  `glasses` int(11) NOT NULL DEFAULT 0,
  `glasses2` int(11) NOT NULL DEFAULT 0,
  `watches` int(11) NOT NULL DEFAULT 0,
  `watches2` int(11) NOT NULL DEFAULT 0,
  `bracelets` int(11) NOT NULL DEFAULT 0,
  `bracelets2` int(11) NOT NULL DEFAULT 0,
  `bproof1` int(11) NOT NULL DEFAULT 0,
  `bproof2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzut struktury tabela s3653_baza.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.owned_properties: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(255) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `vehicleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.mcauto
CREATE TABLE IF NOT EXISTS `mcauto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzucanie danych dla tabeli es_extended.mcauto: ~0 rows (około)

-- Zrzut struktury tabela es_extended.numery
CREATE TABLE IF NOT EXISTS `numery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `callout` varchar(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.numery: ~0 rows (około)

-- Zrzut struktury tabela es_extended.opis
CREATE TABLE IF NOT EXISTS `opis` (
  `id` varchar(160) NOT NULL,
  `opis` varchar(160) NOT NULL,
  `label` varchar(160) NOT NULL,
  `owner` varchar(160) NOT NULL,
  `time` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.opis: ~0 rows (około)

-- Zrzut struktury tabela es_extended.org
CREATE TABLE IF NOT EXISTS `org` (
  `org` varchar(50) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `konto` tinyint(4) DEFAULT NULL,
  `exp` int(11) DEFAULT 0,
  `lvl` int(11) DEFAULT 0,
  `srodki` int(11) DEFAULT 0,
  `upgrade` int(11) DEFAULT 0,
  `btc` int(11) DEFAULT 0,
  `eth` int(11) DEFAULT 0,
  `xmr` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.orglast
CREATE TABLE IF NOT EXISTS `orglast` (
  `last` int(11) DEFAULT NULL,
  `cos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.orglast: ~0 rows (około)
INSERT INTO `orglast` (`last`, `cos`) VALUES
	(1, 1);

-- Zrzut struktury tabela es_extended.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `idSteam` varchar(255) NOT NULL,
  `dad` int(11) NOT NULL DEFAULT 0,
  `mum` int(11) NOT NULL DEFAULT 0,
  `dadmumpercent` int(11) NOT NULL DEFAULT 0,
  `skinton` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `acne` int(11) NOT NULL DEFAULT 0,
  `skinproblem` int(11) NOT NULL DEFAULT 0,
  `freckle` int(11) NOT NULL DEFAULT 0,
  `wrinkle` int(11) NOT NULL DEFAULT 0,
  `wrinkleopacity` int(11) NOT NULL DEFAULT 0,
  `eyebrow` int(11) NOT NULL DEFAULT 0,
  `eyebrowopacity` int(11) NOT NULL DEFAULT 0,
  `beard` int(11) NOT NULL DEFAULT 0,
  `beardopacity` int(11) NOT NULL DEFAULT 0,
  `beardcolor` int(11) NOT NULL DEFAULT 0,
  `hair` int(11) NOT NULL DEFAULT 0,
  `hairtext` int(11) NOT NULL DEFAULT 0,
  `torso` int(11) NOT NULL DEFAULT 0,
  `torsotext` int(11) NOT NULL DEFAULT 0,
  `leg` int(11) NOT NULL DEFAULT 0,
  `legtext` int(11) NOT NULL DEFAULT 0,
  `shoes` int(11) NOT NULL DEFAULT 0,
  `shoestext` int(11) NOT NULL DEFAULT 0,
  `accessory` int(11) NOT NULL DEFAULT 0,
  `accessorytext` int(11) NOT NULL DEFAULT 0,
  `undershirt` int(11) NOT NULL DEFAULT 0,
  `undershirttext` int(11) NOT NULL DEFAULT 0,
  `torso2` int(11) NOT NULL DEFAULT 0,
  `torso2text` int(11) NOT NULL DEFAULT 0,
  `prop_hat` int(11) NOT NULL DEFAULT 0,
  `prop_hat_text` int(11) NOT NULL DEFAULT 0,
  `prop_glasses` int(11) NOT NULL DEFAULT 0,
  `prop_glasses_text` int(11) NOT NULL DEFAULT 0,
  `prop_earrings` int(11) NOT NULL DEFAULT 0,
  `prop_earrings_text` int(11) NOT NULL DEFAULT 0,
  `prop_watches` int(11) NOT NULL DEFAULT 0,
  `prop_watches_text` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzut struktury tabela s3653_baza.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

-- Zrzucanie danych dla tabeli s3653_baza.phone_app_chat: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num refĂ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DĂ©fini si on est Ă  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;

-- Zrzucanie danych dla tabeli s3653_baza.phone_calls: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;

-- Zrzucanie danych dla tabeli s3653_baza.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Zrzut struktury tabela s3653_baza.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Zrzut struktury tabela es_extended.pixel_odznaka
CREATE TABLE IF NOT EXISTS `pixel_odznaka` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `callsign` varchar(255) NOT NULL,
  `odznaka` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `shops` (
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `Klucz` int(11) NOT NULL,
  PRIMARY KEY (`Klucz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzucanie danych dla tabeli es_extended.shops: ~42 rows (około)
INSERT INTO `shops` (`store`, `item`, `price`, `Klucz`) VALUES
	('Apteka', 'radio', 10000, 0),
	('TwentyFourSeven', 'bread', 3, 1),
	('TwentyFourSeven', 'water', 2, 2),
	('RobsLiquor', 'bread', 3, 3),
	('RobsLiquor', 'water', 2, 4),
	('LTDgasoline', 'bread', 3, 5),
	('LTDgasoline', 'water', 2, 6),
	('TwentyFourSeven', 'chocolate', 3, 7),
	('RobsLiquor', 'chocolate', 3, 8),
	('LTDgasoline', 'chocolate', 3, 9),
	('TwentyFourSeven', 'cocacola', 4, 13),
	('RobsLiquor', 'cocacola', 4, 14),
	('LTDgasoline', 'cocacola', 4, 15),
	('TwentyFourSeven', 'icetea', 4, 16),
	('RobsLiquor', 'icetea', 4, 17),
	('LTDgasoline', 'icetea', 4, 18),
	('TwentyFourSeven', 'coffe', 5, 19),
	('RobsLiquor', 'coffe', 5, 20),
	('LTDgasoline', 'coffe', 5, 21),
	('TwentyFourSeven', 'cigarett', 2, 23),
	('TwentyFourSeven', 'lighter', 4, 24),
	('Bar', 'beer', 30, 25),
	('Bar', 'cigarett', 2, 29),
	('Bar', 'lighter', 4, 30),
	('Apteka', 'phone', 800, 34),
	('LTDgasoline', 'blowpipe', 500, 35),
	('TwentyFourSeven', 'blowpipe', 500, 36),
	('RobsLiquor', 'blowpipe', 500, 37),
	('castorama', 'drill', 10000, 38),
	('Bar', 'handcuffs', 25000, 39),
	('mcdonald', 'hamburger', 9, 40),
	('mcdonald', 'cupcake', 3, 42),
	('coffe', 'coffe', 6, 45),
	('coffe', 'chocolate', 4, 46),
	('coffe', 'beer', 30, 47),
	('coffe', 'cupcake', 4, 49),
	('castorama', 'fixkit', 2500, 51),
	('LTDgasoline', 'fixkit', 2500, 52),
	('LTDgasoline', 'phone', 1000, 53),
	('castorama', 'handcuffs', 25000, 55),
	('castorama', 'clip', 10000, 56),
	('castorama', 'zarowki', 100000, 57);

-- Zrzut struktury tabela es_extended.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `society` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Zrzucanie danych dla tabeli es_extended.society_moneywash: ~0 rows (około)

-- Zrzut struktury tabela es_extended.tablet_notatki
CREATE TABLE IF NOT EXISTS `tablet_notatki` (
  `identifier` varchar(100) NOT NULL,
  `notatka` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.tablet_ogloszenia
CREATE TABLE IF NOT EXISTS `tablet_ogloszenia` (
  `ogloszenie` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.tablet_ogloszenia: ~0 rows (około)

-- Zrzut struktury tabela es_extended.tablet_ogloszenia_seen
CREATE TABLE IF NOT EXISTS `tablet_ogloszenia_seen` (
  `identifier` varchar(100) NOT NULL,
  `seen` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Zrzut struktury tabela es_extended.tablet_raporty
CREATE TABLE IF NOT EXISTS `tablet_raporty` (
  `identifier` varchar(100) NOT NULL,
  `raport` text NOT NULL,
  `policjant` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.society_moneywash: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.trunk_inventory: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


-- Zrzut struktury tabela s3653_baza.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Zrzucanie danych dla tabeli s3653_baza.twitter_likes: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzut struktury tabela s3653_baza.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(255) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `status` longtext DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela s3653_baza.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `license` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Zrzut struktury tabela es_extended.user_kartoteka
CREATE TABLE IF NOT EXISTS `user_kartoteka` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grzywna` int(11) DEFAULT NULL,
  `ilosc_lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzut struktury tabela s3653_baza.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8_polish_ci NOT NULL,
  `item` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1462 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Zrzut struktury tabela es_extended.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` varchar(160) NOT NULL,
  `type` varchar(160) NOT NULL,
  `label` varchar(160) NOT NULL,
  `owner` varchar(160) NOT NULL,
  `time` varchar(160) NOT NULL,
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.user_poszukiwania
CREATE TABLE IF NOT EXISTS `user_poszukiwania` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policjant` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powod` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pojazd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Zrzut struktury tabela es_extended.user_properties
CREATE TABLE IF NOT EXISTS `user_properties` (
  `userId` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  KEY `userId` (`userId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Zrzucanie danych dla tabeli es_extended.user_properties: ~0 rows (około)

-- Zrzut struktury tabela es_extended.user_sim
CREATE TABLE IF NOT EXISTS `user_sim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(555) NOT NULL,
  `label` varchar(555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.user_licenses: ~0 rows (około)

-- Zrzut struktury tabela es_extended.vb_ac
CREATE TABLE IF NOT EXISTS `vb_ac` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Zrzucanie danych dla tabeli es_extended.vb_ac: ~0 rows (około)

-- Zrzut struktury tabela s3653_baza.vs_aircrafts
CREATE TABLE IF NOT EXISTS `vs_aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_aircrafts: ~27 rows (około)
INSERT INTO `vs_aircrafts` (`name`, `model`, `price`, `category`) VALUES
	('Alpha Z1', 'alphaz1', 1121000, 'planes'),
	('Besra', 'besra', 1000000, 'planes'),
	('Buzzard', 'buzzard2', 500000, 'helis'),
	('Cuban 800', 'cuban800', 240000, 'planes'),
	('Dodo', 'dodo', 500000, 'planes'),
	('Duster', 'duster', 175000, 'planes'),
	('Frogger', 'frogger', 800000, 'helis'),
	('Havok', 'havok', 250000, 'helis'),
	('Howard NX25', 'howard', 975000, 'planes'),
	('Luxor', 'luxor', 1500000, 'planes'),
	('Luxor Deluxe ', 'luxor2', 1750000, 'planes'),
	('Mammatus', 'mammatus', 300000, 'planes'),
	('Maverick', 'maverick', 750000, 'helis'),
	('Ultra Light', 'microlight', 50000, 'planes'),
	('Nimbus', 'nimbus', 900000, 'planes'),
	('Rogue', 'rogue', 1000000, 'planes'),
	('Sea Breeze', 'seabreeze', 850000, 'planes'),
	('Sea Sparrow', 'seasparrow', 815000, 'helis'),
	('Shamal', 'shamal', 1150000, 'planes'),
	('Mallard', 'stunt', 250000, 'planes'),
	('SuperVolito', 'supervolito', 1000000, 'helis'),
	('SuperVolito Carbon', 'supervolito2', 1250000, 'helis'),
	('Swift', 'swift', 1000000, 'helis'),
	('Swift Deluxe', 'swift2', 1250000, 'helis'),
	('Velum', 'velum2', 450000, 'planes'),
	('Vestra', 'vestra', 950000, 'planes'),
	('Volatus', 'volatus', 1250000, 'helis');

-- Zrzut struktury tabela s3653_baza.vs_aircraft_categories
CREATE TABLE IF NOT EXISTS `vs_aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_aircraft_categories: ~2 rows (około)
INSERT INTO `vs_aircraft_categories` (`name`, `label`) VALUES
	('helis', 'Helicopters'),
	('planes', 'Planes');

-- Zrzut struktury tabela s3653_baza.vs_ambulance
CREATE TABLE IF NOT EXISTS `vs_ambulance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_ambulance: ~8 rows (około)
INSERT INTO `vs_ambulance` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Ambulance', 'ambulance', 500, 'ambulance'),
	(2, 'Fire Truck', 'firetruk', 750, 'ambulance'),
	(3, 'Ambulance', 'ambulance', 500, 'doctor'),
	(4, 'Fire Truck', 'firetruk', 750, 'doctor'),
	(5, 'Ambulance', 'ambulance', 500, 'chief_doctor'),
	(6, 'Fire Truck', 'firetruk', 750, 'chief_doctor'),
	(7, 'Ambulance', 'ambulance', 500, 'boss'),
	(8, 'Fire Truck', 'firetruk', 750, 'boss');

-- Zrzut struktury tabela s3653_baza.vs_ambulance_categories
CREATE TABLE IF NOT EXISTS `vs_ambulance_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_ambulance_categories: ~4 rows (około)
INSERT INTO `vs_ambulance_categories` (`name`, `label`) VALUES
	('ambulance', 'Jr. EMT'),
	('boss', 'EMT Supervisor'),
	('chief_doctor', 'Sr. EMT'),
	('doctor', 'EMT');

-- Zrzut struktury tabela s3653_baza.vs_boats
CREATE TABLE IF NOT EXISTS `vs_boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_boats: ~16 rows (około)
INSERT INTO `vs_boats` (`name`, `model`, `price`, `category`) VALUES
	('Dinghy 4Seat', 'dinghy', 25000, 'boats'),
	('Dinghy 2Seat', 'dinghy2', 20000, 'boats'),
	('Dinghy Yacht', 'dinghy4', 25000, 'boats'),
	('Jetmax', 'jetmax', 30000, 'boats'),
	('Marquis', 'marquis', 45000, 'boats'),
	('Seashark', 'seashark', 10000, 'boats'),
	('Seashark Yacht', 'seashark3', 10000, 'boats'),
	('Speeder', 'speeder', 40000, 'boats'),
	('Squalo', 'squalo', 32000, 'boats'),
	('Submarine', 'submersible', 29000, 'subs'),
	('Kraken', 'submersible2', 31000, 'subs'),
	('Suntrap', 'suntrap', 34000, 'boats'),
	('Toro', 'toro', 38000, 'boats'),
	('Toro Yacht', 'toro2', 38000, 'boats'),
	('Tropic', 'tropic', 27000, 'boats'),
	('Tropic Yacht', 'tropic2', 27000, 'boats');

-- Zrzut struktury tabela s3653_baza.vs_boat_categories
CREATE TABLE IF NOT EXISTS `vs_boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_boat_categories: ~2 rows (około)
INSERT INTO `vs_boat_categories` (`name`, `label`) VALUES
	('boats', 'Boats'),
	('subs', 'Submersibles');

-- Zrzut struktury tabela s3653_baza.vs_cars
CREATE TABLE IF NOT EXISTS `vs_cars` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_cars: ~240 rows (około)
INSERT INTO `vs_cars` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'supers'),
	('Akuma', 'akuma', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'supers'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'supers'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroads'),
	('Bifta', 'bifta', 12000, 'offroads'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscles'),
	('Blazer', 'blazer', 6500, 'offroads'),
	('Blazer Sport', 'blazer4', 8500, 'offroads'),
	('blazer5', 'blazer5', 1755600, 'offroads'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroads'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscles'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscles'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'supers'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'supers'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscles'),
	('Chino Luxe', 'chino2', 19000, 'muscles'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscles'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'supers'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscles'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroads'),
	('Dukes', 'dukes', 28000, 'muscles'),
	('Dune Buggy', 'dune', 8000, 'offroads'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'supers'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscles'),
	('Faction Rider', 'faction2', 30000, 'muscles'),
	('Faction XL', 'faction3', 40000, 'muscles'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'supers'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscles'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroads'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscles'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscles'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscles'),
	('Infernus', 'infernus', 180000, 'supers'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroads'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'supers'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroads'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscles'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'supers'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'supers'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'supers'),
	('Phoenix', 'phoenix', 12500, 'muscles'),
	('Picador', 'picador', 18000, 'muscles'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'supers'),
	('Radius', 'radi', 29000, 'suvs'),
	('Raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'supers'),
	('Rebel', 'rebel2', 35000, 'offroads'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('Riata', 'riata', 380000, 'offroads'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscles'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscles'),
	('Sabre GT', 'sabregt2', 25000, 'muscles'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroads'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'supers'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'supers'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscles'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'supers'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'supers'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscles'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroads'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroads'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'supers'),
	('Tyrus', 'tyrus', 600000, 'supers'),
	('Vacca', 'vacca', 120000, 'supers'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscles'),
	('Virgo', 'virgo', 14000, 'muscles'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'supers'),
	('Voltic', 'voltic', 90000, 'supers'),
	('Voltic 2', 'voltic2', 3830400, 'supers'),
	('Voodoo', 'voodoo', 7200, 'muscles'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscles'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'supers'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');

-- Zrzut struktury tabela s3653_baza.vs_car_categories
CREATE TABLE IF NOT EXISTS `vs_car_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_car_categories: ~11 rows (około)
INSERT INTO `vs_car_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motorcycles'),
	('muscles', 'Muscles'),
	('offroads', 'Off-Roads'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('supers', 'Supers'),
	('suvs', 'SUVs'),
	('vans', 'Vans');

-- Zrzut struktury tabela s3653_baza.vs_divisions
CREATE TABLE IF NOT EXISTS `vs_divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_divisions: ~1 rows (około)
INSERT INTO `vs_divisions` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Maverick', 'polmav', 1000, 'aviation');

-- Zrzut struktury tabela s3653_baza.vs_division_categories
CREATE TABLE IF NOT EXISTS `vs_division_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_division_categories: ~1 rows (około)
INSERT INTO `vs_division_categories` (`name`, `label`) VALUES
	('aviation', 'Aviation');

-- Zrzut struktury tabela s3653_baza.vs_mecano
CREATE TABLE IF NOT EXISTS `vs_mecano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_mecano: ~10 rows (około)
INSERT INTO `vs_mecano` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Flatbed', 'flatbed', 500, 'recrue'),
	(2, 'Tow Truck', 'towtruck2', 750, 'recrue'),
	(3, 'Flatbed', 'flatbed', 500, 'novice'),
	(4, 'Tow Truck', 'towtruck2', 750, 'novice'),
	(5, 'Flatbed', 'flatbed', 500, 'experimente'),
	(6, 'Tow Truck', 'towtruck2', 750, 'experimente'),
	(7, 'Flatbed', 'flatbed', 500, 'chief'),
	(8, 'Tow Truck', 'towtruck2', 750, 'chief'),
	(9, 'Flatbed', 'flatbed', 500, 'boss'),
	(10, 'Tow Truck', 'towtruck2', 750, 'boss');

-- Zrzut struktury tabela s3653_baza.vs_mecano_categories
CREATE TABLE IF NOT EXISTS `vs_mecano_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_mecano_categories: ~5 rows (około)
INSERT INTO `vs_mecano_categories` (`name`, `label`) VALUES
	('boss', 'Boss'),
	('chief', 'Chief'),
	('experimente', 'Experienced'),
	('novice', 'Novice'),
	('recrue', 'Recruit');

-- Zrzut struktury tabela s3653_baza.vs_police
CREATE TABLE IF NOT EXISTS `vs_police` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_police: ~10 rows (około)
INSERT INTO `vs_police` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Police Cruiser', 'police', 500, 'recruit'),
	(2, 'Police Cruiser', 'police2', 750, 'recruit'),
	(3, 'Police Cruiser', 'police', 500, 'officer'),
	(4, 'Police Cruiser', 'police2', 750, 'officer'),
	(5, 'Police Cruiser', 'police', 500, 'sergeant'),
	(6, 'Police Cruiser', 'police2', 750, 'sergeant'),
	(7, 'Police Cruiser', 'police', 500, 'lieutenant'),
	(8, 'Police Cruiser', 'police2', 750, 'lieutenant'),
	(9, 'Police Cruiser', 'police', 500, 'boss'),
	(10, 'Police Cruiser', 'police2', 750, 'boss');

-- Zrzut struktury tabela s3653_baza.vs_police_categories
CREATE TABLE IF NOT EXISTS `vs_police_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_police_categories: ~5 rows (około)
INSERT INTO `vs_police_categories` (`name`, `label`) VALUES
	('boss', 'Chief'),
	('lieutenant', 'Lieutenant'),
	('officer', 'Officer'),
	('recruit', 'Recruit'),
	('sergeant', 'Sergeant');

-- Zrzut struktury tabela s3653_baza.vs_trucks
CREATE TABLE IF NOT EXISTS `vs_trucks` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_trucks: ~28 rows (około)
INSERT INTO `vs_trucks` (`name`, `model`, `price`, `category`) VALUES
	('Airport Bus', 'airbus', 50000, 'trans'),
	('Benson', 'benson', 55000, 'box'),
	('Biff', 'biff', 30000, 'other'),
	('Boxville 1', 'boxville', 45000, 'box'),
	('Boxville 2', 'boxville2', 45000, 'box'),
	('Boxville 3', 'boxville3', 45000, 'box'),
	('Boxville 4', 'boxville4', 45000, 'box'),
	('Dozer', 'bulldozer', 20000, 'other'),
	('Bus', 'bus', 50000, 'trans'),
	('Dashound', 'coach', 50000, 'trans'),
	('Hauler', 'hauler', 100000, 'haul'),
	('Mixer 1', 'mixer', 30000, 'other'),
	('Mixer 2', 'mixer2', 30000, 'other'),
	('Mule 1', 'mule', 40000, 'box'),
	('Mule 2', 'mule2', 40000, 'box'),
	('Mule 3', 'mule3', 40000, 'box'),
	('Packer', 'packer', 100000, 'haul'),
	('Festival Bus', 'pbus2', 125000, 'trans'),
	('Phantom', 'phantom', 105000, 'haul'),
	('Phantom Custom', 'phantom3', 110000, 'haul'),
	('Pounder', 'pounder', 55000, 'box'),
	('Rental Bus', 'rentalbus', 35000, 'trans'),
	('Rubble', 'rubble', 30000, 'other'),
	('Scrap Truck', 'scrap', 10000, 'other'),
	('Tipper 1', 'tiptruck', 30000, 'other'),
	('Tipper 2', 'tiptruck2', 30000, 'other'),
	('Tour Bus', 'tourbus', 35000, 'trans'),
	('Field Master', 'tractor2', 15000, 'other');

-- Zrzut struktury tabela s3653_baza.vs_truck_categories
CREATE TABLE IF NOT EXISTS `vs_truck_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_truck_categories: ~4 rows (około)
INSERT INTO `vs_truck_categories` (`name`, `label`) VALUES
	('box', 'Boxed Trucks'),
	('haul', 'Haulers'),
	('other', 'Other Trucks'),
	('trans', 'Transport Trucks');

-- Zrzut struktury tabela s3653_baza.vs_vipboats
CREATE TABLE IF NOT EXISTS `vs_vipboats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_vipboats: ~1 rows (około)
INSERT INTO `vs_vipboats` (`name`, `model`, `price`, `category`) VALUES
	('Tropic Yacht', 'tropic2', 27000, 'boats');

-- Zrzut struktury tabela s3653_baza.vs_vipboat_categories
CREATE TABLE IF NOT EXISTS `vs_vipboat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_vipboat_categories: ~1 rows (około)
INSERT INTO `vs_vipboat_categories` (`name`, `label`) VALUES
	('boats', 'Boats');

-- Zrzut struktury tabela s3653_baza.vs_vips
CREATE TABLE IF NOT EXISTS `vs_vips` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_vips: ~1 rows (około)
INSERT INTO `vs_vips` (`name`, `model`, `price`, `category`) VALUES
	('Shotaro', 'shotaro', 30000, 'motorcycles');

-- Zrzut struktury tabela s3653_baza.vs_vip_categories
CREATE TABLE IF NOT EXISTS `vs_vip_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli s3653_baza.vs_vip_categories: ~1 rows (około)
INSERT INTO `vs_vip_categories` (`name`, `label`) VALUES
	('motorcycles', 'Motos');

-- Zrzut struktury tabela s3653_baza.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- Zrzut struktury tabela es_extended.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Zrzucanie danych dla tabeli es_extended.vehicle_sold: ~0 rows (około)

-- Zrzut struktury tabela es_extended.vehicle_tunings
CREATE TABLE IF NOT EXISTS `vehicle_tunings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `mods` text NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Zrzucanie danych dla tabeli es_extended.vehicle_tunings: ~0 rows (około)

-- Zrzut struktury tabela es_extended.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Zrzucanie danych dla tabeli s3653_baza.weashops: ~40 rows (około)
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 300),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
	(5, 'GunShop', 'WEAPON_MACHETE', 90),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
	(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
	(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
	(9, 'GunShop', 'WEAPON_BAT', 100),
	(10, 'BlackWeashop', 'WEAPON_BAT', 100),
	(11, 'GunShop', 'WEAPON_STUNGUN', 50),
	(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
	(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
	(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
	(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
	(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
	(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
	(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
	(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
	(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
	(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
	(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
	(25, 'GunShop', 'WEAPON_GRENADE', 500),
	(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
	(27, 'GunShop', 'WEAPON_BZGAS', 200),
	(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
	(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
	(31, 'GunShop', 'WEAPON_BALL', 50),
	(32, 'BlackWeashop', 'WEAPON_BALL', 50),
	(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
	(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
	(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
	(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
	(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
	(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
	(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
	(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);


-- Zrzut struktury tabela es_extended.yellow_pages_post
CREATE TABLE IF NOT EXISTS `yellow_pages_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;