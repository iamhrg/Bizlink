-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2017 at 02:32 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(3, 'admin', 'admin', '2017-11-04 17:11:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(2, 'Services', 'To render services to Customers', '2017-11-02 15:59:25', ''),
(3, 'Books', 'Books', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'Furniture', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', ''),
(7, 'Groceries', 'Food and other commodities', '2017-11-04 08:18:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 0, '2', 1, '2017-11-03 11:27:00', 'COD', NULL),
(8, 0, '3', 1, '2017-11-04 08:01:47', 'Debit / Credit card', NULL),
(9, 4, '1', 1, '2017-11-04 17:26:52', 'PayTM', NULL),
(10, 4, '2', 1, '2017-11-04 17:26:52', 'PayTM', NULL),
(11, 4, '15', 1, '2017-11-04 18:32:22', 'PayTM', NULL),
(12, 4, '16', 1, '2017-11-04 18:34:00', 'PayTM', NULL),
(13, 4, '16', 1, '2017-11-04 18:34:11', 'PayTM', NULL),
(14, 4, '16', 1, '2017-11-04 18:40:58', 'PayTM', NULL),
(15, 4, '16', 1, '2017-11-04 18:45:21', 'PayTM', NULL),
(16, 4, '16', 1, '2017-11-04 18:47:06', 'PayTM', NULL),
(17, 4, '2', 1, '2017-11-04 18:47:53', 'PayTM', NULL),
(18, 4, '3', 1, '2017-11-04 19:52:07', 'PayTM', NULL),
(19, 4, '2', 1, '2017-11-04 19:59:06', 'PayTM', NULL),
(20, 4, '3', 1, '2017-11-04 20:02:32', 'Internet Banking', NULL),
(21, 4, '2', 1, '2017-11-05 05:10:22', 'PayTM', NULL),
(22, 4, '1', 1, '2017-11-05 08:49:33', 'PayTM', NULL),
(23, 0, '25', 1, '2017-11-06 10:12:40', 'PayTM', NULL),
(24, 1, '3', 1, '2017-11-06 11:09:10', 'PayTM', NULL),
(25, 1, '27', 1, '2017-11-06 11:35:51', 'PayTM', NULL),
(26, 1, '23', 1, '2017-11-10 09:56:02', 'PayTM', NULL),
(27, 1, '2', 1, '2017-11-10 10:02:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 3, 5, 5, 5, 'Mandar Wani', 'AMAZZZING!', 'Wonderful!', '2017-11-03 11:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 39900, 42900, '<b>Sales Package</b>: \n1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support <br><br><b>\nModel Name</b>: 32T6175MHD <br><br><b>\nDisplay Size </b>:\n81 cm (32) <br><br>\n<b>Screen Type</b>:\nLED <br><br>\n<b>Resolution</b>:\nHD Ready <br><br> 1366 x 768<br>', 'Micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 11:24:35', ''),
(2, 4, 4, 'Apple iPhone 7(Silver, 16 GB)', 'Apple INC', 54100, 55999, '<b>1 GB RAM | 16 GB ROM <br><br>\n4.7 inch Retina HD Display <br><br>\n8MP Primary Camera | 1.2MP Front\n<br><br>Li-Ion Battery<br><br>\nA8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</b>', 'iphone.jpg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 11:29:00', ''),
(3, 4, 4, 'One Plus 5', 'One Plus 5', 37999, 38999, '<b><br>6 GB RAM | 128 GB ROM | Expandable Upto 256 GB <br><br>\n5.5 inch Full HD Display\n20MP Primary Camera | 16MP Front <br><br>\n4100 mAh Li-Polymer Battery<br><br>\nQualcomm Snapdragon 625 64-bit Processor </b>', 'one.jpg', '2.jpg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-03 22:33:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 10999, '<b>3 GB RAM | 32 GB ROM <br><br> Expandable Upto 128 GB<br><br>\n5 inch Full HD Display <br><br>\n13MP Primary Camera <br><br> 8MP Front <br><br>\n4000 mAh Li-Polymer Battery <br><br>\nQualcomm Snapdragon 430 Processor <br> </b>', 'lenevo.jpg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-03 22:34:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 13999, '<b>Ram: </b> 3 GB RAM | <b> <br><br></b> ROM:32 GB, Expandable Upto 128 GB \n<b> <br><br></b> Screen Size:\n5.5 inch Full HD Display <b><br><br></b> Camera: 13MP Primary Camera | 8MP Front <b> <br><br></b> Battery: \n3500 mAh Li-Ion Polymer\n<b> <br><br></b> Processor:\nHelio P10 64-bit Processor </b>', 'lenevo.jpg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-03 22:36:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 7999, '<br><b>3 GB RAM | 16 GB ROM <br><br>\n5.5 inch HD Display <br><br>\n13MP Primary Camera | 5MP Front <br><br>2500 mAh Battery\nMT6735 Processor <br> </b>', 'micromax.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-03 22:38:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 7490, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung.jpg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-03 22:40:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 15900, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-03 22:41:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 279, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-03 22:47:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 20999, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer.jpg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-03 22:56:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 11999, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax1.jpg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-03 22:58:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 42900, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp.jpg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-03 23:00:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 22990, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenevo.jpg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-03 23:02:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">The Wimpy Kid Do -It- Yourself Book</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-03 23:05:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 260, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-03 23:06:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 33666, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Induscraft Solid Wood King Bed With Storage</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'bed.jpg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-03 23:10:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 6999, '<span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">@home by Nilkamal Ursa Metal Queen Bed</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'bed1.jpg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-03 23:12:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 399, '<ul style="box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;"><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Colour: White, White</li><li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">Outer Material: Denim</li><li class="_1KuY3T row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;"><div class="vmXPri col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);"><br></div></li></ul>', 'shoes.jpg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 14:46:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, 'Weight\n200 g (per single Shoe) <br> Weight of the product may vary depending on size. <br><br>\nStyle\nPanel and Stitch Detail, Textured Detail <br> <br>\nTip Shape\nRound <br> <br>\nSeason\nAW16 <br><br>\nClosure\nLaced', 'adidas.jpg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 14:49:22', ''),
(22, 7, 13, 'Pepsi', 'PepsiCo', 25, 25, 'Refreshing, Carbonated Soft drink.', 'pepsi.jpg', '', '', 30, 'Available', '2017-11-04 02:55:34', ''),
(23, 7, 13, 'Tropicana Mixed Fruit Delight', 'Tropicana', 99, 109, '<span style="color: rgb(51, 51, 51); font-family: Celias, Arial; font-size: 14px;">Jammed with the natural goodness of carefully selected fruits</span><br style="color: rgb(51, 51, 51); font-family: Celias, Arial; font-size: 14px;"><span style="color: rgb(51, 51, 51); font-family: Celias, Arial; font-size: 14px;">Deliciously sumptuous, fresh and natural in taste.</span><br>', 'tropicana.jpg', 'Untitled-1.png', 'Untitled-1.png', 10, 'In Stock', '2017-11-04 04:15:17', ''),
(24, 4, 15, 'Canon EOS 750D', 'Canon', 44500, 46500, '24.2 Megapixels <br>\nCMOS sensor <br>\nDIGIC 6 image processor <br>\nUpto ISO 6400<br>', 'canon.jpg', 'canon_eos_750d_lcd.jpg', 'Canon-EOS-Rebel-T6i-Top-View.jpg', 0, 'In stock', '2017-11-04 04:42:56', ''),
(25, 2, 16, 'Refrigerator Repair', 'Electronix Fix it!', 1000, 1100, 'In case, you are looking for a place to store your excess food, then Refrigerator is the place.Now, if your fridge stops working, then nothing goes wrong than that. <br> <br>\nTo get your fridge repaired, call us. <br><br>\nPhone no: +141 100000', 'refrigerator-repairing-service-250x250.jpg', 'Refrigerator-service-in-delhi-refrigerator-repair-in-delhi-refrigerator-repairing-center-in-delhi-5440e6d266b8902b37cf.png', 'Untitled-1.png', 0, 'In Stock', '2017-11-06 04:12:40', ''),
(26, 2, 17, 'Dental Clinic Malviya Nagar', 'Dr Batra', 400, 500, 'Dr. Mathur''s Dental clinic and implant center is an ISO 9001:2015 certified dental clinic in Jaipur led by Dr. Abhishek Mathur and Dr. Prerna Bhandari Mathur. It is a multispeciality dental implants clinic conveniently located on main Calgary Road, Near J.L.N Marg, Malviya Nagar Jaipur.<br><br>\nPhone no: +91141276388', 'item1.jpg', 'shutterstock_127690178-4050x2700-2048x1229.jpg', 'Untitled-1.png', 0, 'In Stock', '2017-11-06 04:51:10', ''),
(27, 2, 18, 'BOSCH Car Service', 'BOSCH', 999, 1099, 'Bosch Car Service - the right address for expert maintenance, repair and retrofitting. Bosch Car Service workshops enjoy all the support of Bosch, one of the leading supplier of original automotive equipment. <br> <br>\nPhone no: 1800 200 3000', 'bcs_logo.png', 'Chevron-Bosch-Partnership5.jpg', 'Untitled-1.png', 0, 'In Stock', '2017-11-06 04:57:52', ''),
(28, 3, 19, 'The Handmaid''s Tale', 'BCD', 500, 600, 'The Handmaid''s Tale is a dystopian novel by Canadian author Margaret Atwood. The book was originally published in 1986. Set in a near-future New England, in a totalitarian, Christian theonomy that has overthrown the United States government.', '41aPpkv7ZjL.jpg', '820689.jpg', '0735253307.jpg', 30, 'In Stock', '2017-11-06 05:02:16', ''),
(29, 3, 19, 'The Martian', 'DFG', 800, 900, 'The Martian is a 2011 science fiction novel written by Andy Weir. It was his debut novel under his own name. It was originally self-published in 2011; Crown Publishing purchased the rights and re-released it in 2014.', 'The_Martian_2014.jpg', '512e-pP0zGL._SX315_BO1,204,203,200_.jpg', '81CZZznJ2ZL.jpg', 20, 'In Stock', '2017-11-06 05:04:46', ''),
(30, 3, 20, 'Frankenstein', 'GHJ', 500, 660, 'Frankenstein; or, The Modern Prometheus, is a novel written by English author Mary Shelley that tells the story of Victor Frankenstein, a young scientist who creates a grotesque but sapient creature in an unorthodox scientific experiment.', 'images (1).jpg', '4942943.jpg', '51VrJC1HQGL._SX302_BO1,204,203,200_.jpg', 20, 'In Stock', '2017-11-06 05:06:21', ''),
(31, 3, 20, 'The Shining', 'JHK', 750, 900, 'The Shining is a horror novel by American author Stephen King. Published in 1977, it is King''s third published novel and first hardback bestseller: the success of the book firmly established King as a preeminent author in the horror genre.', 'Shiningnovel.jpg', 'images.jpg', 'Untitled-1.png', 30, 'In Stock', '2017-11-06 05:07:34', ''),
(32, 7, 14, 'Fresho Apple', 'Fresho', 142, 171, 'Shimla Apples are cleanness, flavor and mild fragrance. These are essentially sourced from the farmers of Shimla who produce these at well-equipped hygienic farms. These are identified for their crunchy texture and sweet as well as slightly tasty flavor. <br>\r\nPrice mentioned is <b> per Kg </b><br>', 'apple1.jpg', '', '', 20, 'In Stock', '2017-11-10 11:51:56', ''),
(33, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenevo', 9999, 10999, '<b>3 GB RAM | 32 GB ROM <br><br> Expandable Upto 128 GB<br><br>\r\n5 inch Full HD Display <br><br>\r\n13MP Primary Camera <br><br> 8MP Front <br><br>\r\n4000 mAh Li-Polymer Battery <br><br>\r\nQualcomm Snapdragon 430 Processor <br> </b>', 'lenevo.jpg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-11-10 11:57:36', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'Beverages', '2017-11-04 08:19:13', ''),
(14, 7, 'Fruits and Vegetables', '2017-11-04 08:19:29', ''),
(15, 4, 'Camera', '2017-11-04 09:48:40', ''),
(16, 2, 'Electrical', '2017-11-06 09:32:33', ''),
(17, 2, 'Medical', '2017-11-06 09:48:17', ''),
(18, 2, 'Automobile Services', '2017-11-06 10:23:12', ''),
(19, 3, 'Science Fiction', '2017-11-06 10:30:08', ''),
(20, 3, 'Horror', '2017-11-06 10:30:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Kushal Kriplani', 'kushalkrip@gmail.com', 9983556873, 'kushal', 'C-715 Ashiana Greenwood Apartment Jaipur', 'Rajasthan', 'Jaipur', 302017, 'Jaipur', 'Rajasthan', 'Jaipur', 302017, '2017-02-04 14:00:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 11:51:22', ''),
(4, 'Arunabh Pandey', 'arunabhp75@gmail.com', 8875517770, 'qwerty', '', '', '', 0, '', '', '', 0, '2017-11-04 11:56:10', ''),
(5, 'Arunabh Pandey', 'arunabhp75@gmail.com', 8875517770, 'qwerty', '', '', '', 0, '', '', '', 0, '2017-11-04 11:56:19', ''),
(6, 'Harsh Gandhi', 'hrajiv@gmail.com', 9983543656, 'harsh', '', '', '', 0, '', '', '', 0, '2017-11-06 03:56:49', ''),
(7, 'Mandar', 'mandar@gmail.com', 9983556810, 'mandar', '', '', '', 0, '', '', '', 0, '2017-11-02 10:08:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 2, '2017-11-06 11:12:20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
