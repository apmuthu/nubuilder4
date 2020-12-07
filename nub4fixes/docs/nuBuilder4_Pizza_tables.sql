--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(25) NOT NULL,
  `cus_name` varchar(1000) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_phone` varchar(1000) NOT NULL,
  `cus_notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `cus_name`, `cus_address`, `cus_phone`, `cus_notes`) VALUES
('5d880729bb550cb', 'Ronald MacErnie', '3 Arch Tce\nPattyville', '0607888333', 'Deliver to back door.'),
('5d88076852e16a8', 'Terry Plot', '45 Tree St\nWoodville', '0980555333', 'Ring front door'),
('5d8807a3b558352', 'Peta Pepper', '1 Picked St\nPickleviille', '0987644333', ''),
('5d88082faf64a63', 'Thurston Ireland', '8 Uluua Rd\nRichland', '0965345833', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` varchar(25) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_number` varchar(1000) NOT NULL,
  `inv_customer_id` varchar(25) NOT NULL,
  `inv_total` decimal(12,4) NOT NULL,
  `inv_tax` decimal(12,4) NOT NULL,
  `inv_grand_total` decimal(12,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `inv_date`, `inv_number`, `inv_customer_id`, `inv_total`, `inv_tax`, `inv_grand_total`) VALUES
('5d8c0739a0667db', '2019-09-26', '1002', '5d88082faf64a63', '58.0000', '5.8000', '63.8000'),
('5d8c2908b4f8a2a', '2019-09-27', '1003', '5d8807a3b558352', '34.4000', '3.4400', '37.8300'),
('5d8c2b25abb6f2a', '2019-09-27', '1004', '5d880729bb550cb', '130.4000', '13.0400', '143.4400');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(25) NOT NULL,
  `ite_invoice_id` varchar(25) NOT NULL,
  `ite_product_id` varchar(25) NOT NULL,
  `ite_price` decimal(12,4) NOT NULL,
  `ite_units` decimal(12,4) NOT NULL,
  `ite_total` decimal(12,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `ite_invoice_id`, `ite_product_id`, `ite_price`, `ite_units`, `ite_total`) VALUES
('5d8c0739a4f3d5d', '5d8c0739a0667db', '5d881afd0f7e7ea', '23.0000', '2.0000', '46.0000'),
('5d8c249bddbf302', '5d8c0739a0667db', '5d881bf6c772e79', '3.0000', '4.0000', '12.0000'),
('5d8c2908b7c208a', '5d8c2908b4f8a2a', '5d881a5cc309669', '15.9000', '1.0000', '15.9000'),
('5d8c2908b95a592', '5d8c2908b4f8a2a', '5d881ba8dd326a7', '15.5000', '1.0000', '15.5000'),
('5d8c2908bae3bdb', '5d8c2908b4f8a2a', '5d881be75552ac6', '3.0000', '1.0000', '3.0000'),
('5d8c2b25aeb7062', '5d8c2b25abb6f2a', '5d881a5cc309669', '15.9000', '1.0000', '15.9000'),
('5d8c2b25b082723', '5d8c2b25abb6f2a', '5d881ba8dd326a7', '15.5000', '1.0000', '15.5000'),
('5d8c2b25b237562', '5d8c2b25abb6f2a', '5d881be75552ac6', '3.0000', '33.0000', '99.0000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(25) NOT NULL,
  `pro_code` varchar(1000) NOT NULL,
  `pro_description` varchar(1000) NOT NULL,
  `pro_price` decimal(12,4) NOT NULL,
  `pro_group` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `pro_code`, `pro_description`, `pro_price`, `pro_group`) VALUES
('5d881a5cc309669', 'P1', 'Large Pineapple Pizza', '15.9000', 'Pizza'),
('5d881afd0f7e7ea', 'P2', 'Large Pizza wth the Lot', '23.0000', 'Pizza'),
('5d881b2d40b46ef', 'Prawn Pizza', 'Large Prawn Pizza', '27.5000', 'Pizza'),
('5d881ba8dd326a7', 'A2', 'Spaghetti and Meatballs', '15.5000', 'Pasta'),
('5d881be75552ac6', 'D1', 'Can of Coke', '3.0000', 'Drink'),
('5d881bf6c772e79', 'D1', 'Can of Pepsi', '3.0000', 'Drink');

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

-- --------------------------------------------------------
