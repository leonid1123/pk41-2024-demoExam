-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 25 2024 г., 08:36
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clientdata`
--
CREATE DATABASE IF NOT EXISTS `clientdata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `clientdata`;

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `FIO` varchar(55) NOT NULL,
  `msg` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `FIO`, `msg`, `time`) VALUES
(1, '', '13', '2024-05-26 16:28:44'),
(2, '', '123', '2024-05-26 17:03:45'),
(3, '', '12323123', '2024-05-26 17:03:47'),
(4, '', '12323123', '2024-05-26 17:03:47'),
(5, '', '12323123', '2024-05-26 17:03:47'),
(6, '', '12323123', '2024-05-26 17:03:47'),
(7, '', '12323123', '2024-05-26 17:03:47'),
(8, '', 'sdxfgc', '2024-06-08 16:39:06'),
(9, '', 'ntrser', '2024-06-10 10:27:24');

-- --------------------------------------------------------

--
-- Структура таблицы `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `fileName` varchar(60) NOT NULL,
  `fileContent` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `file`
--

INSERT INTO `file` (`id`, `fileName`, `fileContent`) VALUES
(1, 'новый 6.txt', 0x32372e3032202d20d181d183d180d0b0d0b2d0b5d0bdd0bad0bed0b220d0bfd0bed181d182d0b0d0b2d0b8d182d18c20d0b8d0bdd181d182d180d183d0bc2ed181d1802dd0b2d0b02037d0b920d181d0b5d0bcd0b5d181d182d180203328d183d0b4290d0a0d0ad0b7d0b0d0bad0b0d0b7d0b0d182d18c20d0b0d183d0bad18120d0b1d0bed0bbd18cd188d0bed0b92dd0bcd0b0d0bbd0b5d0bdd18cd0bad0b8d0b90d0ad0b7d0b0d0bad0b0d0b7d0b0d182d18c203320d0bdd0bed183d182d0b1d183d0bad0bad0b00d0a0d0a726561642037392e310d0a4163636573732033332e3933),
(2, 'новый 6.txt', 0x32372e3032202d20d181d183d180d0b0d0b2d0b5d0bdd0bad0bed0b220d0bfd0bed181d182d0b0d0b2d0b8d182d18c20d0b8d0bdd181d182d180d183d0bc2ed181d1802dd0b2d0b02037d0b920d181d0b5d0bcd0b5d181d182d180203328d183d0b4290d0a0d0ad0b7d0b0d0bad0b0d0b7d0b0d182d18c20d0b0d183d0bad18120d0b1d0bed0bbd18cd188d0bed0b92dd0bcd0b0d0bbd0b5d0bdd18cd0bad0b8d0b90d0ad0b7d0b0d0bad0b0d0b7d0b0d182d18c203320d0bdd0bed183d182d0b1d183d0bad0bad0b00d0a0d0a726561642037392e310d0a4163636573732033332e3933);

-- --------------------------------------------------------

--
-- Структура таблицы `registr`
--

CREATE TABLE `registr` (
  `id` int(11) NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `e-mail` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `registr`
--

INSERT INTO `registr` (`id`, `FIO`, `e-mail`, `password`) VALUES
(31, 'Русифиц Циффиру Руррик', 'rurik@gmail.com', '123'),
(32, '123', 'sdfsdfsdf@gmail.com', '123'),
(33, '1234', 'gigigigi@gmail.com', '1234'),
(34, '123456', 'wrxc@ruu.ru', '123456'),
(35, 'qwerty', 'qwerty@qwerty.ru', 'qwerty'),
(36, 'qwerty', 'qw@qw.ry', 'qwerty');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registr`
--
ALTER TABLE `registr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `registr`
--
ALTER TABLE `registr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- База данных: `goods`
--
CREATE DATABASE IF NOT EXISTS `goods` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `goods`;

-- --------------------------------------------------------

--
-- Структура таблицы `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `value1text` text NOT NULL,
  `value2float` double NOT NULL,
  `value3int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `list`
--

INSERT INTO `list` (`id`, `name`, `quantity`, `description`, `value1text`, `value2float`, `value3int`) VALUES
(1, 'молоко', 200, 'молоко домик в деревне', 'синяя', 3.2, 1),
(2, 'что-то', 0, '', '', 0, 0),
(3, 'Сосиски', 2, 'Вкусные', 'Очень', 3.3, 11),
(4, 'Хлебушке', 1, 'Вкусновкусновкусно', 'ОчентОченьОчень', 5.5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(15) NOT NULL,
  `ram` int(11) NOT NULL,
  `core` int(11) NOT NULL,
  `usb_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `mobile`
--

INSERT INTO `mobile` (`id`, `name`, `quantity`, `description`, `color`, `ram`, `core`, `usb_type`) VALUES
(1, 'Samsung s1', 200, 'прикольный самсунг', 'синий', 256, 6, 'Type C'),
(2, 'Samsung s2', 400, 'забавный самсунг', 'белый', 512, 6, 'Type C'),
(3, 'Samsung A1', 600, 'смешной самсунг', 'красный', 256, 4, 'Type C'),
(4, 'Samsung B2', 300, 'легкий самсунг', 'розовый', 128, 2, 'Type C'),
(5, 'Samsung F4', 700, 'крутой самсунг', 'черный', 1024, 10, 'Type C'),
(6, 'Ксяоми', 1200, 'звонилка-пищалка', 'зеленый', 256, 7, 'Type C');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- База данных: `partners`
--
CREATE DATABASE IF NOT EXISTS `partners` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `partners`;

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`) VALUES
(1, 'мишка синий'),
(2, 'мишка серый'),
(3, 'мишка белый'),
(4, 'мишка коричневый');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `Id` int(11) NOT NULL,
  `Organization_Id` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Website` text NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Description` text NOT NULL,
  `Founded` int(11) NOT NULL,
  `Industry` varchar(45) NOT NULL,
  `Number_of_employees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`Id`, `Organization_Id`, `Name`, `Website`, `Country`, `Description`, `Founded`, `Industry`, `Number_of_employees`) VALUES
(2, '6A7EdDEA9FaDC52', 'Mckinney, Riley and Day', 'http://www.hall-buchanan.info/', 'Finland', 'User-centric system-worthy leverage', 2015, 'Glass / Ceramics / Concrete', 4952),
(3, '0bFED1ADAE4bcC1', 'Hester Ltd', 'http://sullivan-reed.com/', 'China', 'Switchable scalable moratorium', 1971, 'Public Safety', 5287),
(4, '2bFC1Be8a4ce42f', 'Holder-Sellers', 'https://becker.com/', 'Turkmenistan', 'De-engineered systemic artificial intelligence', 2004, 'Automotive', 921),
(5, '9eE8A6a4Eb96C24', 'Mayer Group', 'http://www.brewer.com/', 'Mauritius', 'Synchronized needs-based challenge', 1991, 'Transportation', 7870),
(6, 'cC757116fe1C085', 'Henry-Thompson', 'http://morse.net/', 'Bahamas', 'Face-to-face well-modulated customer loyalty', 1992, 'Primary / Secondary Education', 4914),
(7, '219233e8aFF1BC3', 'Hansen-Everett', 'https://www.kidd.org/', 'Pakistan', 'Seamless disintermediate collaboration', 2018, 'Publishing Industry', 7832),
(8, 'ccc93DCF81a31CD', 'Mcintosh-Mora', 'https://www.brooks.com/', 'Heard Island and McDonald Islands', 'Centralized attitude-oriented capability', 1970, 'Import / Export', 4389),
(9, '0B4F93aA06ED03e', 'Carr Inc', 'http://ross.com/', 'Kuwait', 'Distributed impactful customer loyalty', 1996, 'Plastics', 8167),
(10, '738b5aDe6B1C6A5', 'Gaines Inc', 'http://sandoval-hooper.com/', 'Uzbekistan', 'Multi-lateral scalable protocol', 1997, 'Outsourcing / Offshoring', 9698),
(11, 'AE61b8Ffebbc476', 'Kidd Group', 'http://www.lyons.com/', 'Bouvet Island (Bouvetoya)', 'Proactive foreground paradigm', 2001, 'Primary / Secondary Education', 7473),
(12, 'eb3B7D06cCdD609', 'Crane-Clarke', 'https://www.sandoval.com/', 'Denmark', 'Front-line clear-thinking encryption', 2014, 'Food / Beverages', 9011),
(13, '8D0c29189C9798B', 'Keller, Campos and Black', 'https://www.garner.info/', 'Liberia', 'Ameliorated directional emulation', 2020, 'Museums / Institutions', 2862),
(14, 'D2c91cc03CA394c', 'Glover-Pope', 'http://www.silva.biz/', 'United Arab Emirates', 'Persevering contextually-based approach', 2013, 'Medical Practice', 9079),
(15, 'C8AC1eaf9C036F4', 'Pacheco-Spears', 'https://aguilar.com/', 'Sweden', 'Secured logistical synergy', 1984, 'Maritime', 769),
(16, 'b5D10A14f7a8AfE', 'Hodge-Ayers', 'http://www.archer-elliott.com/', 'Honduras', 'Future-proofed radical implementation', 1990, 'Facilities Services', 8508),
(17, '68139b5C4De03B4', 'Bowers, Guerra and Krause', 'http://www.carrillo-nicholson.com/', 'Uganda', 'De-engineered transitional strategy', 1972, 'Primary / Secondary Education', 6986),
(18, '5c2EffEfdba2BdF', 'Mckenzie-Melton', 'http://montoya-thompson.com/', 'Hong Kong', 'Reverse-engineered heuristic alliance', 1998, 'Investment Management / Hedge Fund / Private ', 4589),
(19, 'ba179F19F7925f5', 'Branch-Mann', 'http://www.lozano.com/', 'Botswana', 'Adaptive intangible frame', 1999, 'Architecture / Planning', 7961),
(20, 'c1Ce9B350BAc66b', 'Weiss and Sons', 'https://barrett.com/', 'Korea', 'Sharable optimal functionalities', 2011, 'Plastics', 5984),
(21, '8de40AC4e6EaCa4', 'Velez, Payne and Coffey', 'http://burton.com/', 'Luxembourg', 'Mandatory coherent synergy', 1986, 'Wholesale', 5010),
(22, 'Aad86a4F0385F2d', 'Harrell LLC', 'http://www.frey-rosario.com/', 'Guadeloupe', 'Reverse-engineered mission-critical moratorium', 2018, 'Construction', 2185),
(23, '22aC3FFd64fD703', 'Eaton, Reynolds and Vargas', 'http://www.freeman.biz/', 'Monaco', 'Self-enabling multi-tasking process improvement', 2014, 'Luxury Goods / Jewelry', 8987),
(24, '5Ec4C272bCf085c', 'Robbins-Cummings', 'http://donaldson-wilkins.com/', 'Belgium', 'Organic non-volatile hierarchy', 1991, 'Pharmaceuticals', 5038),
(25, '5fDBeA8BB91a000', 'Jenkins Inc', 'http://www.kirk.biz/', 'South Africa', 'Front-line systematic help-desk', 2002, 'Insurance', 1215),
(26, 'dFfD6a6F9AC2d9C', 'Greene, Benjamin and Novak', 'http://www.kent.net/', 'Romania', 'Centralized leadingedge moratorium', 2012, 'Museums / Institutions', 4941),
(27, '4B217cC5a0674C5', 'Dickson, Richmond and Clay', 'http://everett.com/', 'Czech Republic', 'Team-oriented tangible complexity', 1980, 'Real Estate / Mortgage', 3122),
(28, '88b1f1cDcf59a37', 'Prince-David', 'http://thompson.com/', 'Christmas Island', 'Virtual holistic methodology', 1970, 'Banking / Mortgage', 1046),
(29, 'f9F7bBCAEeC360F', 'Ayala LLC', 'http://www.zhang.com/', 'Philippines', 'Open-source zero administration hierarchy', 2021, 'Legal Services', 7664),
(30, '7Cb3AeFcE4Ba31e', 'Rivas Group', 'https://hebert.org/', 'Australia', 'Open-architected well-modulated capacity', 1998, 'Logistics / Procurement', 4155),
(31, 'ccBcC32adcbc530', 'Sloan, Mays and Whitehead', 'http://lawson.com/', 'Chad', 'Face-to-face high-level conglomeration', 1997, 'Civil Engineering', 365),
(32, 'f5afd686b3d05F5', 'Durham, Allen and Barnes', 'http://chan-stafford.org/', 'Zimbabwe', 'Synergistic web-enabled framework', 1993, 'Mechanical or Industrial Engineering', 6135),
(33, '38C6cfC5074Fa5e', 'Fritz-Franklin', 'http://www.lambert.com/', 'Nepal', 'Automated 4thgeneration website', 1972, 'Hospitality', 4516),
(34, '5Cd7efccCcba38f', 'Burch-Ewing', 'http://cline.net/', 'Taiwan', 'User-centric 4thgeneration system engine', 1981, 'Venture Capital / VC', 7443),
(35, '9E6Acb51e3F9d6F', 'Glass, Barrera and Turner', 'https://dunlap.com/', 'Kyrgyz Republic', 'Multi-channeled 3rdgeneration open system', 2020, 'Utilities', 2610),
(36, '4D4d7E18321eaeC', 'Pineda-Cox', 'http://aguilar.org/', 'Bolivia', 'Fundamental asynchronous capability', 2010, 'Human Resources / HR', 1312),
(37, '485f5d06B938F2b', 'Baker, Mccann and Macdonald', 'http://www.anderson-barker.com/', 'Kenya', 'Cross-group user-facing focus group', 2013, 'Legislative Office', 1638),
(38, '19E3a5Bf6dBDc4F', 'Cuevas-Moss', 'https://dodson-castaneda.net/', 'Guatemala', 'Extended human-resource intranet', 1994, 'Music', 9995),
(39, '6883A965c7b68F7', 'Hahn PLC', 'http://newman.com/', 'Belarus', 'Organic logistical leverage', 2012, 'Electrical / Electronic Manufacturing', 3715),
(40, 'AC5B7AA74Aa4A2E', 'Valentine, Ferguson and Kramer', 'http://stuart.net/', 'Jersey', 'Centralized secondary time-frame', 1997, 'Non - Profit / Volunteering', 3585),
(41, 'decab0D5027CA6a', 'Arroyo Inc', 'https://www.turner.com/', 'Grenada', 'Managed demand-driven website', 2006, 'Writing / Editing', 9067),
(42, 'dF084FbBb613eea', 'Walls LLC', 'http://www.reese-vasquez.biz/', 'Cape Verde', 'Self-enabling fresh-thinking installation', 1989, 'Investment Management / Hedge Fund / Private ', 1678),
(43, 'A2D89Ab9bCcAd4e', 'Mitchell, Warren and Schneider', 'https://fox.biz/', 'Trinidad and Tobago', 'Enhanced intangible time-frame', 2021, 'Capital Markets / Hedge Fund / Private Equity', 3816),
(44, '77aDc905434a49f', 'Prince PLC', 'https://www.watts.com/', 'Sweden', 'Profit-focused coherent installation', 2016, 'Individual / Family Services', 7645),
(45, '235fdEFE2cfDa5F', 'Brock-Blackwell', 'http://www.small.com/', 'Benin', 'Secured foreground emulation', 1986, 'Online Publishing', 7034),
(46, '1eD64cFe986BBbE', 'Walton-Barnett', 'https://ashley-schaefer.com/', 'Western Sahara', 'Right-sized clear-thinking flexibility', 2001, 'Luxury Goods / Jewelry', 1746),
(47, 'CbBbFcdd0eaE2cF', 'Bartlett-Arroyo', 'https://cruz.com/', 'Northern Mariana Islands', 'Realigned didactic function', 1976, 'Civic / Social Organization', 3987),
(48, '49aECbDaE6aBD53', 'Wallace, Madden and Morris', 'http://www.blevins-fernandez.biz/', 'Germany', 'Persistent real-time customer loyalty', 2016, 'Pharmaceuticals', 9443),
(49, '7b3fe6e7E72bFa4', 'Berg-Sparks', 'https://cisneros-love.com/', 'Canada', 'Stand-alone static implementation', 1974, 'Arts / Crafts', 2073),
(50, 'c6DedA82A8aef7E', 'Gonzales Ltd', 'http://bird.com/', 'Tonga', 'Managed human-resource policy', 1988, 'Consumer Goods', 9069),
(51, '7D9FBF85cdC3871', 'Lawson and Sons', 'https://www.wong.com/', 'French Southern Territories', 'Compatible analyzing intranet', 2021, 'Arts / Crafts', 3527),
(52, '7dd18Fb7cB07b65', 'Mcguire, Mcconnell and Olsen', 'https://melton-briggs.com/', 'Korea', 'Profound client-server frame', 1988, 'Printing', 8445),
(53, 'EF5B55FadccB8Fe', 'Charles-Phillips', 'https://bowman.com/', 'Cote d\'Ivoire', 'Monitored client-server implementation', 2012, 'Mental Health Care', 3450),
(54, 'f8D4B99e11fAF5D', 'Odom Ltd', 'https://www.humphrey-hess.com/', 'Cote d\'Ivoire', 'Advanced static process improvement', 2012, 'Management Consulting', 1825),
(55, 'e24D21BFd3bF1E5', 'Richard PLC', 'https://holden-coleman.net/', 'Mayotte', 'Object-based optimizing model', 1971, 'Broadcast Media', 4942),
(56, 'B9BdfEB6D3Ca44E', 'Sampson Ltd', 'https://blevins.com/', 'Cayman Islands', 'Intuitive local adapter', 2005, 'Farming', 1418),
(57, '2a74D6f3D3B268e', 'Cherry, Le and Callahan', 'https://waller-delacruz.biz/', 'Nigeria', 'Universal human-resource collaboration', 2017, 'Entertainment / Movie Production', 7202),
(58, 'Bf3F3f62c8aBC33', 'Cherry PLC', 'https://www.avila.info/', 'Marshall Islands', 'Persistent tertiary website', 1980, 'Plastics', 8245),
(59, 'aeBe26B80a7a23c', 'Melton-Nichols', 'https://kennedy.com/', 'Palau', 'User-friendly clear-thinking productivity', 2021, 'Legislative Office', 8741),
(60, 'aAeb29ad43886C6', 'Potter-Walsh', 'http://thomas-french.org/', 'Turkey', 'Optional non-volatile open system', 2008, 'Human Resources / HR', 6923),
(61, 'bD1bc6bB6d1FeD3', 'Freeman-Chen', 'https://mathis.com/', 'Timor-Leste', 'Phased next generation adapter', 1973, 'International Trade / Development', 346),
(62, 'EB9f456e8b7022a', 'Soto Group', 'https://norris.info/', 'Vietnam', 'Enterprise-wide executive installation', 1988, 'Business Supplies / Equipment', 9097),
(63, 'Dfef38C51D8DAe3', 'Poole, Cruz and Whitney', 'https://reed.info/', 'Reunion', 'Balanced analyzing groupware', 1978, 'Marketing / Advertising / Sales', 2992),
(64, '055ffEfB2Dd95B0', 'Riley Ltd', 'http://wiley.com/', 'Brazil', 'Optional exuding superstructure', 1986, 'Textiles', 9315),
(65, 'cBfe4dbAE1699da', 'Erickson, Andrews and Bailey', 'https://www.hobbs-grant.com/', 'Eritrea', 'Vision-oriented secondary project', 2014, 'Consumer Electronics', 7829),
(66, 'fdFbecbadcdCdf1', 'Wilkinson, Charles and Arroyo', 'http://hunter-mcfarland.com/', 'United States Virgin Islands', 'Assimilated 24/7 archive', 1996, 'Building Materials', 602),
(67, '5DCb8A5a5ca03c0', 'Floyd Ltd', 'http://www.whitney.com/', 'Falkland Islands (Malvinas)', 'Function-based fault-tolerant concept', 2017, 'Public Relations / PR', 2911),
(68, 'ce57DCbcFD6d618', 'Newman-Galloway', 'https://www.scott.com/', 'Luxembourg', 'Enhanced foreground collaboration', 1987, 'Information Technology / IT', 3934),
(69, '5aaD187dc929371', 'Frazier-Butler', 'https://www.daugherty-farley.info/', 'Northern Mariana Islands', 'Persistent interactive circuit', 1972, 'Outsourcing / Offshoring', 5130),
(70, '902D7Ac8b6d476b', 'Newton Inc', 'https://www.richmond-manning.info/', 'Netherlands Antilles', 'Fundamental stable info-mediaries', 1976, 'Military Industry', 563),
(71, '32BB9Ff4d939788', 'Duffy-Levy', 'https://www.potter.com/', 'Guernsey', 'Diverse exuding installation', 1982, 'Wireless', 6146),
(72, 'adcB0afbE58bAe3', 'Wagner LLC', 'https://decker-esparza.com/', 'Uruguay', 'Reactive attitude-oriented toolset', 1987, 'International Affairs', 6874),
(73, 'dfcA1c84AdB61Ac', 'Mccall-Holmes', 'http://www.dean.com/', 'Benin', 'Object-based value-added database', 2009, 'Legal Services', 696),
(74, '208044AC2fe52F3', 'Massey LLC', 'https://frazier.biz/', 'Suriname', 'Configurable zero administration Graphical User Interface', 1986, 'Accounting', 5004),
(75, 'f3C365f0c1A0623', 'Hicks LLC', 'http://alvarez.biz/', 'Pakistan', 'Quality-focused client-server Graphical User Interface', 1970, 'Computer Software / Engineering', 8480),
(76, 'ec5Bdd3CBAfaB93', 'Cole, Russell and Avery', 'http://www.blankenship.com/', 'Mongolia', 'De-engineered fault-tolerant challenge', 2000, 'Law Enforcement', 7012),
(77, 'DDB19Be7eeB56B4', 'Cummings-Rojas', 'https://simon-pearson.com/', 'Svalbard & Jan Mayen Islands', 'User-centric modular customer loyalty', 2012, 'Financial Services', 7529),
(78, 'dd6CA3d0bc3cAfc', 'Beasley, Greene and Mahoney', 'http://www.petersen-lawrence.com/', 'Togo', 'Extended content-based methodology', 1976, 'Religious Institutions', 869),
(79, 'A0B9d56e61070e3', 'Beasley, Sims and Allison', 'http://burke.info/', 'Latvia', 'Secured zero tolerance hub', 1972, 'Facilities Services', 6182),
(80, 'cBa7EFe5D05Adaf', 'Crawford-Rivera', 'https://black-ramirez.org/', 'Cuba', 'Persevering exuding budgetary management', 1999, 'Online Publishing', 7805),
(81, 'Ea3f6D52Ec73563', 'Montes-Hensley', 'https://krueger.org/', 'Liechtenstein', 'Multi-tiered secondary productivity', 2009, 'Printing', 8433),
(82, 'bC0CEd48A8000E0', 'Velazquez-Odom', 'https://stokes.com/', 'Djibouti', 'Streamlined 6thgeneration function', 2002, 'Alternative Dispute Resolution', 4044),
(83, 'c89b9b59BC4baa1', 'Eaton-Morales', 'https://www.reeves-graham.com/', 'Micronesia', 'Customer-focused explicit frame', 1990, 'Capital Markets / Hedge Fund / Private Equity', 7013),
(84, 'FEC51bce8421a7b', 'Roberson, Pennington and Palmer', 'http://www.keith-fisher.com/', 'Cameroon', 'Adaptive bi-directional hierarchy', 1993, 'Telecommunications', 5571),
(85, 'e0E8e27eAc9CAd5', 'George, Russo and Guerra', 'https://drake.com/', 'Sweden', 'Centralized non-volatile capability', 1989, 'Military Industry', 2880),
(86, 'B97a6CF9bf5983C', 'Davila Inc', 'https://mcconnell.info/', 'Cocos (Keeling) Islands', 'Profit-focused dedicated frame', 2017, 'Consumer Electronics', 2215),
(87, 'a0a6f9b3DbcBEb5', 'Mays-Preston', 'http://www.browning-key.com/', 'Mali', 'User-centric heuristic focus group', 2006, 'Military Industry', 5786),
(88, '8cC1bDa330a5871', 'Pineda-Morton', 'https://www.carr.com/', 'United States Virgin Islands', 'Grass-roots methodical info-mediaries', 1991, 'Printing', 6168),
(89, 'ED889CB2FE9cbd3', 'Huang and Sons', 'https://www.bolton.com/', 'Eritrea', 'Re-contextualized dynamic hierarchy', 1981, 'Semiconductors', 7484),
(90, 'F4Dc1417BC6cb8f', 'Gilbert-Simon', 'https://www.bradford.biz/', 'Burundi', 'Grass-roots radical parallelism', 1973, 'Newspapers / Journalism', 1927),
(91, '7ABc3c7ecA03B34', 'Sampson-Griffith', 'http://hendricks.org/', 'Benin', 'Multi-layered composite paradigm', 1972, 'Textiles', 3881),
(92, '4e0719FBE38e0aB', 'Miles-Dominguez', 'http://www.turner.com/', 'Gibraltar', 'Organized empowering forecast', 1996, 'Civic / Social Organization', 897),
(93, 'dEbDAAeDfaed00A', 'Rowe and Sons', 'https://www.simpson.org/', 'El Salvador', 'Balanced multimedia knowledgebase', 1978, 'Facilities Services', 8172),
(94, '61BDeCfeFD0cEF5', 'Valenzuela, Holmes and Rowland', 'https://www.dorsey.net/', 'Taiwan', 'Persistent tertiary focus group', 1999, 'Transportation', 1483),
(95, '4e91eD25f486110', 'Best, Wade and Shepard', 'https://zimmerman.com/', 'Zimbabwe', 'Innovative background definition', 1991, 'Gambling / Casinos', 4873),
(96, '0a0bfFbBbB8eC7c', 'Holmes Group', 'https://mcdowell.org/', 'Ethiopia', 'Right-sized zero tolerance focus group', 1975, 'Photography', 2988),
(97, 'BA6Cd9Dae2Efd62', 'Good Ltd', 'http://duffy.com/', 'Anguilla', 'Reverse-engineered composite moratorium', 1971, 'Consumer Services', 4292),
(98, 'E7df80C60Abd7f9', 'Clements-Espinoza', 'http://www.flowers.net/', 'Falkland Islands (Malvinas)', 'Progressive modular hub', 1991, 'Broadcast Media', 236),
(99, 'AFc285dbE2fEd24', 'Mendez Inc', 'https://www.burke.net/', 'Kyrgyz Republic', 'User-friendly exuding migration', 1993, 'Education Management', 339),
(100, 'e9eB5A60Cef8354', 'Watkins-Kaiser', 'http://www.herring.com/', 'Togo', 'Synergistic background access', 2009, 'Financial Services', 2785);

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_goods` int(11) NOT NULL,
  `id_partner` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_of_sale` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`id`, `id_goods`, `id_partner`, `quantity`, `date_of_sale`) VALUES
(1, 1, 2, 22000, '2024-10-11'),
(2, 2, 2, 21000, '2024-10-12'),
(3, 3, 2, 12000, '2024-10-13'),
(4, 3, 2, 3200, '2024-10-13'),
(5, 2, 3, 7200, '2024-10-12'),
(6, 2, 3, 21000, '2024-10-12'),
(7, 3, 3, 6100, '2024-10-15'),
(8, 4, 3, 32000, '2024-10-15'),
(9, 1, 4, 26000, '2024-10-12'),
(10, 2, 4, 210, '2024-10-12'),
(11, 3, 4, 42000, '2024-10-15'),
(12, 4, 4, 31000, '2024-10-15'),
(13, 1, 5, 2800, '2024-10-11'),
(14, 1, 5, 2110, '2024-10-16'),
(15, 4, 5, 51000, '2024-10-17'),
(16, 4, 5, 21100, '2024-10-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_goods` (`id_goods`),
  ADD KEY `id_partner` (`id_partner`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_goods`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`id_partner`) REFERENCES `partners` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Дамп данных таблицы `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"partners\",\"table\":\"sales\"},{\"db\":\"partners\",\"table\":\"goods\"},{\"db\":\"partners\",\"table\":\"partners\"},{\"db\":\"pk31\",\"table\":\"arendator\"},{\"db\":\"pk31\",\"table\":\"arenda\"},{\"db\":\"goods\",\"table\":\"mobile\"},{\"db\":\"goods\",\"table\":\"list\"},{\"db\":\"pk41diplomstart\",\"table\":\"sotrudniki\"},{\"db\":\"pk31\",\"table\":\"samokat\"},{\"db\":\"test\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-25 06:25:48', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\",\"NavigationWidth\":216}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `pk31`
--
CREATE DATABASE IF NOT EXISTS `pk31` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pk31`;

-- --------------------------------------------------------

--
-- Структура таблицы `arenda`
--

CREATE TABLE `arenda` (
  `id` int(11) NOT NULL,
  `idSamokata` int(11) DEFAULT NULL,
  `idArendatora` int(11) DEFAULT NULL,
  `arendaStart` datetime DEFAULT NULL,
  `arendaStop` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `arenda`
--

INSERT INTO `arenda` (`id`, `idSamokata`, `idArendatora`, `arendaStart`, `arendaStop`) VALUES
(1, 1, 1, '2024-07-10 10:17:00', '2024-07-10 10:37:00'),
(2, 2, 2, '2024-10-21 09:20:00', '2024-10-21 09:30:00');

-- --------------------------------------------------------

--
-- Структура таблицы `arendator`
--

CREATE TABLE `arendator` (
  `id` int(11) NOT NULL,
  `FamilyName` varchar(45) DEFAULT NULL,
  `Pasport` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `arendator`
--

INSERT INTO `arendator` (`id`, `FamilyName`, `Pasport`, `Phone`, `DateOfBirth`) VALUES
(1, 'Андрианов', '2345 78659', '+74991237867', '2000-10-03'),
(2, 'Бахышов', '9876 56999', '+74992137878', '2000-09-04'),
(3, 'Богданов', '9870 43521', '+74955557877', '2000-11-07'),
(4, 'Семченкова', '8765643342', '+78907865098', '2005-07-15');

-- --------------------------------------------------------

--
-- Структура таблицы `samokat`
--

CREATE TABLE `samokat` (
  `id` int(11) NOT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `nomer` varchar(45) DEFAULT NULL,
  `probeg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `samokat`
--

INSERT INTO `samokat` (`id`, `mark`, `nomer`, `probeg`) VALUES
(1, 'whoosh', 'А65Т', 12000),
(2, 'moosh', 'А96G', 1000),
(3, 'choosh', 'Z96K', 99000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arenda`
--
ALTER TABLE `arenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSamokata` (`idSamokata`),
  ADD KEY `idArendatora` (`idArendatora`);

--
-- Индексы таблицы `arendator`
--
ALTER TABLE `arendator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `samokat`
--
ALTER TABLE `samokat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arenda`
--
ALTER TABLE `arenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `arendator`
--
ALTER TABLE `arendator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `samokat`
--
ALTER TABLE `samokat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `arenda`
--
ALTER TABLE `arenda`
  ADD CONSTRAINT `arenda_ibfk_1` FOREIGN KEY (`idSamokata`) REFERENCES `samokat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arenda_ibfk_2` FOREIGN KEY (`idArendatora`) REFERENCES `arendator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- База данных: `pk41diplomstart`
--
CREATE DATABASE IF NOT EXISTS `pk41diplomstart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pk41diplomstart`;

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudniki`
--

CREATE TABLE `sotrudniki` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `sname` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sotrudniki`
--

INSERT INTO `sotrudniki` (`id`, `email`, `name`, `fname`, `sname`, `login`, `password`) VALUES
(1, 'sobachka@soba.ka', 'Leonid', 'Kiselev', 'Aleksandrovich', 'sobachka', 'paswart'),
(2, 'hfbvjhas@jgjg.yu', 'Andrey', 'Yavorski', 'Sergeevich', 'hfbvjhas', 'YiAySh');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sotrudniki`
--
ALTER TABLE `sotrudniki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sotrudniki`
--
ALTER TABLE `sotrudniki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- База данных: `wiki`
--
CREATE DATABASE IF NOT EXISTS `wiki` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wiki`;

-- --------------------------------------------------------

--
-- Структура таблицы `shmotki`
--

CREATE TABLE `shmotki` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` float NOT NULL,
  `price` float NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shmotki`
--

INSERT INTO `shmotki` (`id`, `type`, `weight`, `price`, `name`) VALUES
(1, 1, 5.2, 70000, 'пушка'),
(2, 2, 0.7, 30.5, 'простые патроны');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'оружие'),
(2, 'патроны'),
(3, 'броня'),
(4, 'аптечки'),
(5, 'гранты');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `shmotki`
--
ALTER TABLE `shmotki`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `shmotki`
--
ALTER TABLE `shmotki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `shmotki`
--
ALTER TABLE `shmotki`
  ADD CONSTRAINT `shmotki_ibfk_1` FOREIGN KEY (`type`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
