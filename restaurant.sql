-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2017 lúc 09:13 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `categoryID` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`, `flags`) VALUES
(1, 'Chevrolet', 1),
(2, 'Audi', 0),
(3, 'Ford', 0),
(4, 'Mercury', 1),
(5, 'GMC', 0),
(6, 'Honda', 0),
(7, 'Mitsubishi', 1),
(8, 'Dodge', 0),
(9, 'Nissan', 1),
(10, 'Suzuki', 1),
(11, 'Subaru', 0),
(12, 'Lincoln', 1),
(13, 'Hyundai', 0),
(14, 'Subaru', 1),
(15, 'Mitsubishi', 0),
(16, 'Volkswagen', 0),
(17, 'Volkswagen', 0),
(18, 'Ford', 0),
(19, 'Honda', 1),
(20, 'Chrysler', 1),
(21, 'Honda', 0),
(22, 'Mitsubishi', 1),
(23, 'Subaru', 1),
(24, 'Chevrolet', 1),
(25, 'Volkswagen', 0),
(26, 'BMW', 0),
(27, 'Mercedes-Benz', 0),
(28, 'Cadillac', 1),
(29, 'Chevrolet', 1),
(30, 'Mitsubishi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `custumerID` int(10) UNSIGNED NOT NULL,
  `customerName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `customerType` varchar(50) NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `date_cost`
--

CREATE TABLE `date_cost` (
  `departmentID` int(10) UNSIGNED NOT NULL,
  `dateOfCost` date NOT NULL,
  `typeOfCost` varchar(60) DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `date_revenue`
--

CREATE TABLE `date_revenue` (
  `departmentID` int(10) UNSIGNED NOT NULL,
  `dateOfRevenue` datetime NOT NULL,
  `typeOfRevenue` varchar(60) DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `departmentID` int(10) UNSIGNED NOT NULL,
  `departmentName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `numberOfTable` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`departmentID`, `departmentName`, `address`, `phoneNumber`, `numberOfTable`, `flags`) VALUES
(1, '3544343023129506', '61 Summit Parkway', '953-542-1046', 1, 1),
(2, '3550320209902006', '4 Norway Maple Avenue', '744-828-0167', 2, 1),
(3, '5242464224995360', '333 Rockefeller Hill', '871-439-1054', 3, 0),
(4, '5038235736385219', '52 Corscot Lane', '157-685-0110', 4, 0),
(5, '3549137653637415', '027 Sutteridge Alley', '133-635-5894', 5, 1),
(6, '3542565720928085', '019 Graceland Circle', '217-713-2345', 6, 1),
(7, '3587289665287920', '55415 Vermont Point', '913-596-5640', 7, 0),
(8, '6771012932677999', '43 Straubel Drive', '257-895-9069', 8, 0),
(9, '4905133290227195', '55 Utah Terrace', '422-992-8150', 9, 1),
(10, '5108752683369694', '532 Mallard Drive', '591-579-8612', 10, 1),
(11, '5100133510898775', '53 Kedzie Center', '275-733-0656', 11, 1),
(12, '201496800462654', '4 Little Fleur Place', '285-325-5848', 12, 1),
(13, '3539899630589603', '2 Goodland Parkway', '357-204-1031', 13, 0),
(14, '5020709159974170', '5411 Ryan Hill', '409-784-8691', 14, 0),
(15, '30221199224086', '12082 Red Cloud Park', '787-983-0944', 15, 1),
(16, '3550129804476369', '8200 Johnson Trail', '572-831-3505', 16, 0),
(17, '3581207175365198', '2988 Pankratz Way', '545-349-7426', 17, 1),
(18, '3569810532861951', '5 Red Cloud Lane', '820-861-8198', 18, 0),
(19, '0604351982424978248', '5807 Goodland Trail', '291-260-1339', 19, 1),
(20, '3531719114016246', '451 Waxwing Avenue', '277-536-3787', 20, 1),
(21, '5568594508046948', '4311 Huxley Court', '938-819-8683', 21, 1),
(22, '3564880167487666', '51 Bonner Alley', '907-475-3657', 22, 1),
(23, '3558868431132315', '348 Harbort Trail', '399-938-1454', 23, 1),
(24, '6761355818299954', '506 Sachs Drive', '598-437-5491', 24, 0),
(25, '3545571492494543', '55 Emmet Way', '633-627-3449', 25, 1),
(26, '5048370621911411', '91 David Street', '492-404-1370', 26, 1),
(27, '201646905334535', '4 Northwestern Street', '858-971-3016', 27, 0),
(28, '201589135300555', '50 Spaight Junction', '251-550-6748', 28, 1),
(29, '4405625642522525', '82 Hauk Terrace', '849-513-1278', 29, 0),
(30, '3542697642131074', '0 Walton Trail', '386-148-9861', 30, 0),
(31, '30329941486042', '816 Twin Pines Circle', '671-879-2713', 31, 0),
(32, '3588807087330827', '0417 Scofield Circle', '864-408-5534', 32, 1),
(33, '30475851663359', '17588 Coleman Parkway', '248-979-5399', 33, 0),
(34, '3587434229098641', '95 Anniversary Trail', '666-209-8385', 34, 1),
(35, '6387550502509957', '6 Union Trail', '506-539-7920', 35, 0),
(36, '3548690060701464', '4 Becker Junction', '818-676-4812', 36, 0),
(37, '3561038387972685', '0191 Macpherson Park', '179-695-7971', 37, 0),
(38, '5602259719422431', '70995 Loeprich Road', '937-337-6582', 38, 1),
(39, '5578380625577017', '7 Fieldstone Road', '706-239-0837', 39, 0),
(40, '5602237187683510', '01 Knutson Street', '708-708-1977', 40, 1),
(41, '5100144507707879', '0 Anzinger Drive', '572-230-4649', 41, 0),
(42, '3553714225658526', '73 Bashford Drive', '710-275-9067', 42, 1),
(43, '0604453659440441', '45 Blackbird Point', '671-522-6465', 43, 1),
(44, '5257051342704154', '40244 Ohio Hill', '563-587-1745', 44, 0),
(45, '3546685143795642', '06 Tennessee Avenue', '141-138-6097', 45, 1),
(46, '5007660259052184', '95 Northview Hill', '178-653-4243', 46, 0),
(47, '675901888284585780', '3 Bultman Way', '893-487-8802', 47, 1),
(48, '3538254536033093', '69 Dawn Hill', '429-530-3096', 48, 1),
(49, '5100177404079307', '61893 8th Parkway', '881-176-2965', 49, 0),
(50, '3539992774907598', '2208 Dixon Junction', '171-727-6407', 50, 0),
(51, '3579767944817963', '7831 Gale Crossing', '437-332-8750', 51, 1),
(52, '3570952083436663', '6059 Cottonwood Place', '792-715-4762', 52, 0),
(53, '3536432719314967', '525 La Follette Avenue', '799-425-5816', 53, 0),
(54, '4026660763083428', '47 Lien Pass', '297-599-9631', 54, 1),
(55, '3579151834053809', '9889 Marquette Park', '152-567-0608', 55, 0),
(56, '6387782866965570', '92491 Oakridge Court', '173-792-1924', 56, 1),
(57, '3563557113890059', '65130 Del Sol Plaza', '740-226-3392', 57, 0),
(58, '6398109451402149', '3 Northridge Pass', '906-650-2727', 58, 0),
(59, '3542291104722107', '7097 Hermina Alley', '708-639-1724', 59, 0),
(60, '3532772576010073', '90359 Nelson Terrace', '314-706-8190', 60, 0),
(61, '201587385070894', '16103 Lyons Parkway', '718-314-1379', 61, 0),
(62, '6709509993160058261', '892 Monica Center', '566-398-9055', 62, 1),
(63, '5641823820778512667', '1783 Clyde Gallagher Alley', '422-463-1965', 63, 0),
(64, '5100143171808252', '36 Surrey Hill', '642-652-3608', 64, 1),
(65, '3545896159603841', '534 Veith Circle', '257-462-6492', 65, 1),
(66, '5010125453592828', '94 Sundown Trail', '938-729-4934', 66, 0),
(67, '3531716523116831', '325 Myrtle Circle', '594-747-4482', 67, 0),
(68, '502085969477523442', '8118 Arrowood Plaza', '625-345-9117', 68, 0),
(69, '5288945726414699', '38307 Thierer Center', '844-900-2417', 69, 1),
(70, '4026309475619166', '7765 Ronald Regan Drive', '405-439-8648', 70, 0),
(71, '3566482698653730', '03021 Menomonie Hill', '562-226-1454', 71, 1),
(72, '3537205054660908', '016 Banding Crossing', '945-343-5096', 72, 0),
(73, '5020206789508890', '511 Twin Pines Plaza', '735-318-3160', 73, 1),
(74, '3557914752654676', '4064 Ridge Oak Trail', '620-985-1844', 74, 0),
(75, '3577590508608715', '20660 Ruskin Crossing', '603-734-9776', 75, 0),
(76, '3539907141114686', '212 Redwing Center', '755-214-9036', 76, 1),
(77, '50203179908375720', '330 Harper Drive', '209-188-7516', 77, 0),
(78, '6389807848865404', '43 Gulseth Street', '519-933-6371', 78, 0),
(79, '3582542268220051', '699 Fuller Crossing', '928-242-1749', 79, 0),
(80, '4026473542074084', '77 School Way', '338-222-7769', 80, 1),
(81, '3541255287807804', '13609 Roxbury Park', '861-146-7837', 81, 1),
(82, '5411132213661476', '08 Cambridge Park', '938-332-8321', 82, 0),
(83, '201452862920139', '9563 Lakewood Junction', '974-176-2911', 83, 1),
(84, '5100171920789812', '9987 Canary Point', '556-315-7371', 84, 0),
(85, '5535705294736217', '0785 Eagan Plaza', '310-879-5899', 85, 1),
(86, '060478174604435412', '59089 Spaight Pass', '860-260-2710', 86, 0),
(87, '676376317717999776', '6 Carberry Trail', '877-824-1173', 87, 1),
(88, '3554520845071399', '87 Portage Lane', '764-407-3850', 88, 0),
(89, '3578648817758040', '4 Sachs Drive', '328-410-6634', 89, 1),
(90, '3582732080302720', '65110 Dexter Alley', '272-464-7147', 90, 0),
(91, '5602228673640353', '51 Independence Way', '345-401-7318', 91, 0),
(92, '560223071889755422', '9288 Kinsman Drive', '368-437-3121', 92, 0),
(93, '5610656667236582', '338 Hanover Point', '306-200-1579', 93, 1),
(94, '5597693460502446', '686 Cardinal Center', '631-474-3674', 94, 1),
(95, '6771241995684622', '41 Nobel Way', '292-842-6083', 95, 1),
(96, '374622448997113', '0 Anderson Center', '387-434-2594', 96, 1),
(97, '30548497630386', '82 Rigney Lane', '330-940-7004', 97, 1),
(98, '201910915247693', '72978 Parkside Lane', '470-408-0679', 98, 1),
(99, '36069952119462', '0 7th Plaza', '390-308-8650', 99, 1),
(100, '374288905451596', '318 Hoffman Alley', '450-261-3960', 100, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `foodID` int(10) UNSIGNED NOT NULL,
  `foodName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryID` int(10) UNSIGNED NOT NULL,
  `image` varchar(120) NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `food`
--

INSERT INTO `food` (`foodID`, `foodName`, `categoryID`, `image`, `flags`) VALUES
(1, 'Cua Ngâm Rượu', 2, 'g1.jpg', 0),
(2, 'Cua Ngâm Muối', 2, 'g2.jpg', 0),
(3, 'Cua Ngâm Rượu', 1, 'g3.jpg', 0),
(4, 'Cua Ngâm Tiêu', 2, 'g4.jpg', 0),
(5, 'Cua Ngâm Siting', 3, 'g5.jpg', 0),
(6, 'Cua Ngâm 7Up', 3, 'g6.jpg', 0),
(7, 'Cua Ngâm Tỏi', 1, 'g7.jpg', 0),
(8, 'Cua Ngâm Cocacola', 2, 'g8.jpg', 0),
(9, 'Cua Ngâm Pepsi', 1, 'g9.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_department`
--

CREATE TABLE `menu_department` (
  `departmentID` int(10) UNSIGNED NOT NULL,
  `foodID` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `menu_department`
--

INSERT INTO `menu_department` (`departmentID`, `foodID`, `price`, `flags`) VALUES
(1, 2, 500000, 1),
(1, 7, 500000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `month_cost`
--

CREATE TABLE `month_cost` (
  `departmentID` int(10) UNSIGNED NOT NULL,
  `monthOfCost` varchar(10) NOT NULL,
  `typeOfCost` varchar(60) DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `orderID` int(10) UNSIGNED NOT NULL,
  `foodID` int(10) UNSIGNED NOT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL,
  `status` varchar(60) DEFAULT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_food`
--

CREATE TABLE `order_food` (
  `orderID` int(10) UNSIGNED NOT NULL,
  `departmentID` int(10) UNSIGNED NOT NULL,
  `customerID` int(10) UNSIGNED NOT NULL,
  `orderType` enum('onsite','take_away') DEFAULT NULL,
  `status` varchar(60) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateDelivery` datetime DEFAULT NULL,
  `addressDelivery` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(10) UNSIGNED NOT NULL,
  `orderID` int(10) UNSIGNED NOT NULL,
  `totalPrice` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) DEFAULT NULL,
  `dateOfCreated` datetime NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `tableID` int(10) UNSIGNED NOT NULL,
  `tableNumber` int(10) UNSIGNED NOT NULL,
  `tableStatus` enum('empty','ordered') NOT NULL,
  `departmentID` int(10) UNSIGNED NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `staffID` int(10) UNSIGNED NOT NULL,
  `staffName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `staffType` varchar(50) NOT NULL,
  `salary` int(10) UNSIGNED NOT NULL,
  `departmentID` int(10) UNSIGNED NOT NULL,
  `flags` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custumerID`);

--
-- Chỉ mục cho bảng `date_cost`
--
ALTER TABLE `date_cost`
  ADD PRIMARY KEY (`departmentID`,`dateOfCost`);

--
-- Chỉ mục cho bảng `date_revenue`
--
ALTER TABLE `date_revenue`
  ADD PRIMARY KEY (`departmentID`,`dateOfRevenue`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Chỉ mục cho bảng `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`);

--
-- Chỉ mục cho bảng `menu_department`
--
ALTER TABLE `menu_department`
  ADD PRIMARY KEY (`departmentID`,`foodID`);

--
-- Chỉ mục cho bảng `month_cost`
--
ALTER TABLE `month_cost`
  ADD PRIMARY KEY (`departmentID`,`monthOfCost`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderID`,`foodID`);

--
-- Chỉ mục cho bảng `order_food`
--
ALTER TABLE `order_food`
  ADD PRIMARY KEY (`orderID`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Chỉ mục cho bảng `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`tableID`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `custumerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `date_cost`
--
ALTER TABLE `date_cost`
  MODIFY `departmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `date_revenue`
--
ALTER TABLE `date_revenue`
  MODIFY `departmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `departmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `month_cost`
--
ALTER TABLE `month_cost`
  MODIFY `departmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_food`
--
ALTER TABLE `order_food`
  MODIFY `orderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `restaurant_table`
--
ALTER TABLE `restaurant_table`
  MODIFY `tableID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
