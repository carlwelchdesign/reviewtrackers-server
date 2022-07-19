# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.38)
# Database: reviews_db
# Generation Time: 2022-07-19 07:39:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `comment` text,
  `review_id` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`,`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `published_at` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `content` text,
  `createdAt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `author`, `place`, `published_at`, `rating`, `content`, `createdAt`, `updatedAt`)
VALUES
	('5d707203015653f16822ac2f','Gillespie Lester','Big Johns Burgers','Thu Feb 18 2016 23:37:41 GMT-0600 (Central Standard Time)',5,'Cillum ad commodo duis eu. In adipisicing irure nisi veniam adipisicing consequat eu amet ut ex cupidatat excepteur pariatur. Ex consectetur culpa non sit. Do esse incididunt non irure. Id cillum sit do nostrud consectetur id in minim cillum. Lorem proident sit consequat labore irure culpa ea tempor labore.',NULL,NULL),
	('5d70720303cd3b949a024aa3','Lacey Grimes','Luckys','Wed Nov 06 1996 06:39:41 GMT-0600 (Central Standard Time)',4,'Sunt ut cupidatat ad fugiat velit reprehenderit velit ex deserunt. Culpa velit amet pariatur veniam. Deserunt ex ut non sit velit amet quis.',NULL,NULL),
	('5d7072030bef7a653b0b80a4','Tabitha Compton','Soup du Jour','Sun Apr 15 2018 05:47:56 GMT-0500 (Central Daylight Time)',1,'Do veniam magna duis proident. Veniam incididunt quis minim amet anim aliquip labore esse elit Lorem velit id magna aute. Pariatur culpa sit sit irure tempor nisi est exercitation excepteur laborum sunt. Consequat fugiat ut adipisicing consequat ipsum ea excepteur elit esse.',NULL,NULL),
	('5d70720314e8d1c12748aa17','Angelique Ware','Ice Scream','Mon Dec 06 1999 13:37:50 GMT-0600 (Central Standard Time)',5,'Incididunt ex cupidatat consectetur aliqua eu sunt elit non. Sunt cillum pariatur aliquip sunt. Et aute non esse et. Nulla esse magna cupidatat id ullamco cillum dolor adipisicing deserunt voluptate nostrud aute in. Quis minim mollit nisi enim id exercitation.',NULL,NULL),
	('5d7072031aa6b6ac2114a129','Laurel Holloway','Big Johns Burgers','Thu May 15 1980 19:12:34 GMT-0500 (Central Daylight Time)',2,'Elit nostrud proident amet est eiusmod fugiat qui consequat id amet. Labore esse nulla do minim ad. Eiusmod id quis consectetur eiusmod veniam duis esse do mollit laborum. Officia nostrud nisi consectetur aliquip aliquip excepteur ea.',NULL,NULL),
	('5d70720339cb3df28df914b2','Marguerite Luna','Soup du Jour','Thu Mar 20 1980 16:19:23 GMT-0600 (Central Standard Time)',2,'Ea aliquip amet nostrud cupidatat ad officia id cupidatat eiusmod culpa. Reprehenderit adipisicing veniam duis quis ipsum eiusmod mollit enim est veniam magna exercitation. Officia exercitation excepteur magna fugiat est tempor consequat anim nostrud incididunt sint velit esse do. Nisi pariatur consectetur labore consectetur esse voluptate aute magna occaecat commodo mollit. Sit culpa ullamco aliqua ad dolore proident ea occaecat ullamco ullamco culpa id commodo labore. Ullamco consequat esse reprehenderit incididunt. Enim Lorem velit esse sunt commodo quis laborum consequat adipisicing enim labore exercitation.',NULL,NULL),
	('5d707203485e374159791c3e','Graham Hoover','Luckys','Sat Aug 24 2019 11:30:30 GMT-0500 (Central Daylight Time)',2,'Exercitation occaecat cillum sunt ex elit nisi voluptate. Aliqua amet laboris id ex. Incididunt est Lorem ea eu voluptate. Velit nostrud eiusmod aliqua in laboris excepteur nulla magna irure eiusmod nostrud dolor. In esse velit nulla magna qui amet nulla reprehenderit eiusmod aliquip cillum id irure. Anim anim commodo veniam consequat officia culpa eu Lorem nulla.',NULL,NULL),
	('5d707203485eddf5c6c192f4','Mays Lucas','Big Johns Burgers','Tue Mar 30 1993 16:05:19 GMT-0600 (Central Standard Time)',2,'Aliqua Lorem dolore aliquip nulla eiusmod adipisicing esse Lorem eiusmod anim. Voluptate ea nisi ullamco elit incididunt. In minim ut esse aliquip occaecat ex reprehenderit eiusmod sunt non cillum proident eiusmod aliquip. Id ipsum irure pariatur sint dolor nisi officia. Eiusmod culpa culpa ea enim aliqua. Dolor commodo elit aliqua ea aliqua et eu consectetur culpa adipisicing.',NULL,NULL),
	('5d7072034b1f20e3e48afcc0','Doris Patrick','Ice Scream','Tue Feb 21 1978 10:13:53 GMT-0600 (Central Standard Time)',4,'Veniam sint Lorem laboris irure occaecat. Enim dolor minim dolore ut dolor cillum consequat. Commodo anim anim ea laborum labore.',NULL,NULL),
	('5d7072035e3b9ab65839a7a7','Burt Riddle','Soup du Jour','Fri Jan 18 1985 22:42:28 GMT-0600 (Central Standard Time)',5,'Cupidatat enim amet incididunt id minim consequat. Ex voluptate ut aute officia exercitation consectetur qui ipsum velit pariatur. In cupidatat nulla consequat nostrud consectetur reprehenderit in. Ipsum excepteur mollit anim culpa nulla. Incididunt tempor veniam elit qui consectetur nisi.',NULL,NULL),
	('5d7072036ea22796c07121f1','Ophelia Rivas','Ice Scream','Tue May 10 1988 17:29:46 GMT-0500 (Central Daylight Time)',2,'Ea laboris officia et amet minim qui exercitation laborum officia. Magna in minim duis officia minim reprehenderit laborum magna proident qui minim. Quis enim minim proident eiusmod. Labore exercitation occaecat fugiat commodo ad labore amet.',NULL,NULL),
	('5d70720394c459b987f5eff4','Hill Vaughn','Luckys','Fri Aug 30 2013 07:47:53 GMT-0500 (Central Daylight Time)',5,'Ullamco esse sunt commodo magna excepteur. Ex dolore adipisicing consectetur elit. Dolore officia enim mollit irure excepteur minim sit. Culpa esse tempor sit esse. Pariatur duis nisi consequat cupidatat voluptate veniam eu et dolor proident esse ullamco consequat labore. Irure qui ipsum sit sunt mollit culpa.',NULL,NULL),
	('5d707203ab3c204b8e132ede','Nelda Carlson','Luckys','Tue Feb 26 2008 20:52:20 GMT-0600 (Central Standard Time)',1,'Labore eiusmod esse reprehenderit ea et irure ipsum aliqua sit amet exercitation laboris ut est. Ex veniam id duis labore pariatur voluptate ipsum sunt laboris. Sit elit ipsum consectetur elit ipsum exercitation eu ullamco. Consequat ea ea sunt aliquip laboris excepteur consectetur duis. Pariatur ipsum laborum fugiat labore eiusmod laboris Lorem exercitation elit tempor nisi dolor eiusmod. Proident consequat eu ullamco amet quis sint velit nostrud.',NULL,NULL),
	('5d707203ac281ba7cb5ded76','Kelley Suarez','Ice Scream','Thu Jul 24 1986 04:16:06 GMT-0500 (Central Daylight Time)',2,'Ullamco ad consequat minim culpa quis sit id nulla. Ad sint do ea deserunt aliqua elit pariatur non quis aute Lorem dolore tempor. Eiusmod aliqua ut elit eiusmod tempor amet consequat nostrud incididunt. Ad ullamco aliquip dolor et ipsum in deserunt enim quis nisi et. Labore nulla ad culpa esse magna.',NULL,NULL),
	('5d707203b4e4ca8994afa7c0','Lenora Bartlett','Ice Scream','Tue Jan 01 2013 05:56:20 GMT-0600 (Central Standard Time)',4,'Duis magna ullamco esse aliqua consectetur. Nulla fugiat ex sit ex ex do duis officia fugiat duis. Dolore pariatur aliquip pariatur sint aliquip irure aliqua in magna sit. Ipsum labore nisi mollit minim mollit tempor. Duis ut anim fugiat incididunt ut ex minim sunt eu elit.',NULL,NULL),
	('5d707203b65083001e956f0a','Weeks Duran','Big Johns Burgers','Thu Jun 27 1974 11:46:39 GMT-0500 (Central Daylight Time)',5,'Ipsum mollit anim pariatur eu qui velit Lorem ea enim excepteur ut fugiat fugiat esse. Incididunt consectetur deserunt pariatur magna sit dolore voluptate. Minim cupidatat fugiat magna quis consectetur esse id esse adipisicing anim velit. Cillum mollit et nisi ex occaecat labore enim nulla cupidatat. Occaecat Lorem officia est sit enim amet commodo sunt occaecat reprehenderit Lorem culpa. Aute anim ullamco voluptate incididunt incididunt excepteur in irure.',NULL,NULL),
	('5d707203b93029c4fd555abd','Langley Berry','Soup du Jour','Thu May 24 2007 12:38:34 GMT-0500 (Central Daylight Time)',1,'Duis labore eiusmod commodo voluptate. Quis laborum magna laborum dolor anim ullamco enim officia nisi esse non. Nisi magna aute adipisicing tempor Lorem esse non minim aliqua aute. Pariatur cillum aliqua dolore dolore quis aute mollit commodo nisi velit laboris nulla magna. Aliquip anim est veniam nostrud excepteur.',NULL,NULL),
	('5d707203bf145ed5249de2ae','Juliette Richardson','Pizza place','Tue Jun 23 1998 02:12:58 GMT-0500 (Central Daylight Time)',5,'Sunt dolore eu anim ut irure laboris non eu ipsum nisi irure tempor irure dolor. Amet in nostrud magna anim eu in ex ipsum in elit voluptate consectetur occaecat deserunt. Nostrud ipsum Lorem aute ipsum minim amet laboris eiusmod duis do aliqua elit non. Do est dolore labore tempor sint commodo quis ex et tempor quis aliqua. Cupidatat dolore ex irure eiusmod dolore ullamco cillum enim.',NULL,NULL),
	('5d707203c1f674a904780352','Holden Alvarado','Luckys','Wed Apr 27 1983 14:15:48 GMT-0500 (Central Daylight Time)',5,'Sunt sit velit id esse et. Qui Lorem ipsum exercitation nostrud exercitation aute ex cillum pariatur do enim. Irure adipisicing laboris officia est culpa culpa et exercitation id esse enim dolore reprehenderit tempor.',NULL,NULL),
	('5d707203c45da95d0b5434e9','Cecelia Blake','Soup du Jour','Sun Jun 23 1985 06:06:42 GMT-0500 (Central Daylight Time)',2,'Consequat pariatur ipsum eiusmod nisi exercitation adipisicing veniam. Reprehenderit ea ullamco cupidatat ad esse dolore exercitation ea voluptate qui. Ea sit velit ex commodo nostrud irure aliqua incididunt. Pariatur consectetur nisi officia exercitation mollit exercitation fugiat. Elit adipisicing ex non ex labore incididunt sunt. Dolor aliqua non incididunt excepteur labore et nulla aute Lorem nostrud id proident pariatur. Officia consectetur quis aliquip et.',NULL,NULL),
	('5d707203cbaeac7faefeed02','Dona Ashley','Luckys','Fri Oct 06 1995 21:08:47 GMT-0500 (Central Daylight Time)',1,'Qui pariatur et do incididunt incididunt mollit minim elit ut in. Laborum id aliquip veniam amet dolor sint nostrud consequat velit Lorem esse ea excepteur. Eu laboris cillum dolore mollit sint dolore. Magna quis eu exercitation culpa id excepteur proident excepteur consequat.',NULL,NULL),
	('5d707203e3f9985700e111d3','Johnston Molina','Soup du Jour','Tue May 18 1976 04:00:47 GMT-0500 (Central Daylight Time)',2,'Proident fugiat elit ut excepteur ex. In minim ullamco occaecat laborum anim nisi tempor. Lorem et qui ullamco et do do ex. Nisi Lorem irure esse anim fugiat cillum exercitation nulla occaecat est dolore enim. Cupidatat fugiat cillum aliquip anim commodo eiusmod Lorem consectetur esse cupidatat quis irure. Proident velit mollit minim eiusmod est enim.',NULL,NULL),
	('5d707203e9589b3bc5d329c8','Doreen Brooks','Big Johns Burgers','Sat May 29 2004 16:31:24 GMT-0500 (Central Daylight Time)',4,'Labore non elit enim laborum nostrud laborum. Irure dolore consectetur laborum est consectetur. Do dolore enim cillum minim est occaecat eu Lorem pariatur mollit do.',NULL,NULL),
	('5d707203f1c60da307b00335','Everett Bender','Soup du Jour','Wed Apr 09 2003 01:15:36 GMT-0500 (Central Daylight Time)',2,'Occaecat ea est nulla dolore labore do cupidatat dolor laborum deserunt qui. Labore duis nisi sint in aliqua enim pariatur est nisi aliqua ullamco consequat id magna. Magna aliqua culpa sunt fugiat laboris enim aute sit. Sit nostrud quis Lorem culpa eu cupidatat est aliqua. Laboris voluptate exercitation proident aliquip ad voluptate do consectetur irure et. Eiusmod enim nostrud reprehenderit nulla cupidatat elit duis.',NULL,NULL),
	('5d707203f1d8615c2808e1ea','Elma Armstrong','Big Johns Burgers','Fri Nov 15 2002 22:44:01 GMT-0600 (Central Standard Time)',2,'Laboris culpa fugiat cillum cillum culpa commodo proident consectetur. Elit voluptate consectetur Lorem et anim est sunt voluptate officia minim nostrud reprehenderit. Quis Lorem amet laboris pariatur. Aliquip est ut amet nostrud quis ipsum dolore voluptate reprehenderit voluptate. Proident amet aliqua labore minim consequat sint ex reprehenderit anim labore cillum magna sunt. Aliquip ex aute laborum aute cillum culpa reprehenderit.',NULL,NULL);

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
