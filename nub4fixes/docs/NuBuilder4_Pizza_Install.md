# Pizza Tutorial Step-By-Step

## Install NuBuilder4

```bash
wget --no-check-certificate https://github.com/apmuthu/nubuilder4/archive/master.zip -O nubuilder4.zip
# 33.1 MB downloaded and unzip into a folder in the webroot
unzip nubuilder4.zip
# rm -rf nubuilder4.zip
mv -f nubuilder4-master /var/www/nubuilder4
cd /var/www/nubuilder4
mv -f core/* ./
rm -rf core
cp -rf nub4fixes/* ./
rm -rf nub4fixes
cd ..
# mv nubuilder4 webroot
# Create the nubuilder4 DB as utf8 / unicode and assign user / permissions
# Edit nuconfig.php with DB and Web access credentials
```

## Install the Pizza Tutorial Tables
Each time a table is entered using a MySQL client, it is necessary to logout and login again possibly with the exception of using the phpMyAdmin (nudb) client from within NuBuilder4.

### customer
```sql
CREATE TABLE `customer` (
  `customer_id` varchar(25) NOT NULL,
  `cus_name` varchar(1000) NOT NULL,
  `cus_address` text NULL,
  `cus_phone` varchar(1000) NULL,
  `cus_notes` text NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `customer` (`customer_id`, `cus_name`, `cus_address`, `cus_phone`, `cus_notes`) VALUES
('5d880729bb550cb', 'Ronald MacErnie', '3 Arch Tce\nPattyville', '0607888333', 'Deliver to back door.'),
('5d88076852e16a8', 'Terry Plot', '45 Tree St\nWoodville', '0980555333', 'Ring front door'),
('5d8807a3b558352', 'Peta Pepper', '1 Picked St\nPickleviille', '0987644333', ''),
('5d88082faf64a63', 'Thurston Ireland', '8 Uluua Rd\nRichland', '0965345833', '');

ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);
```

```
Fast Forms => Browse and Edit =>
	Text: Customer - cus_name
	TextArea: Address - cus_address
	Text: Phone - cus_phone
	TextArea: Notes - cus_notes (Browse unticked)

Forms
	=> Code: FF0 -> CUS
	=> Description: Customer
```

After the Customer Fast form is created and adjustments done, the following will be added to the DB:

```sql
INSERT  INTO `zzzzsys_table`(`zzzzsys_table_id`) VALUES
('customer');

INSERT  INTO `zzzzsys_form`(`zzzzsys_form_id`,`sfo_type`,`sfo_code`,`sfo_description`,`sfo_table`,`sfo_primary_key`,`sfo_browse_redirect_form_id`,`sfo_browse_row_height`,`sfo_browse_rows_per_page`,`sfo_browse_sql`,`sfo_javascript`) VALUES
('5fd1016cbebc222','browseedit','CUS','Customer','customer','customer_id',NULL,NULL,NULL,'SELECT * FROM customer',NULL);

INSERT  INTO `zzzzsys_tab`(`zzzzsys_tab_id`,`syt_zzzzsys_form_id`,`syt_title`,`syt_order`,`syt_help`) VALUES
('5fd1016d07a1220','5fd1016cbebc222','Main',10,NULL);

INSERT  INTO `zzzzsys_browse`(`zzzzsys_browse_id`,`sbr_zzzzsys_form_id`,`sbr_title`,`sbr_display`,`sbr_align`,`sbr_format`,`sbr_order`,`sbr_width`) VALUES
('5fd1016dd97012a','5fd1016cbebc222','Customer','cus_name','l','',10,250),
('5fd1016ddd40a89','5fd1016cbebc222','Address','cus_address','l','',20,250),
('5fd1016de1113ab','5fd1016cbebc222','Phone','cus_phone','l','',30,250);

INSERT  INTO `zzzzsys_object`(`zzzzsys_object_id`,`sob_all_zzzzsys_form_id`,`sob_all_table`,`sob_all_type`,`sob_all_id`,`sob_all_label`,`sob_all_zzzzsys_tab_id`,`sob_all_order`,`sob_all_top`,`sob_all_left`,`sob_all_width`,`sob_all_height`,`sob_all_cloneable`,`sob_all_align`,`sob_all_validate`,`sob_all_access`,`sob_calc_formula`,`sob_calc_format`,`sob_run_zzzzsys_form_id`,`sob_run_filter`,`sob_run_method`,`sob_run_id`,`sob_display_sql`,`sob_select_multiple`,`sob_select_sql`,`sob_lookup_code`,`sob_lookup_description`,`sob_lookup_description_width`,`sob_lookup_autocomplete`,`sob_lookup_zzzzsys_form_id`,`sob_lookup_javascript`,`sob_lookup_php`,`sob_lookup_table`,`sob_subform_zzzzsys_form_id`,`sob_subform_foreign_key`,`sob_subform_add`,`sob_subform_delete`,`sob_subform_type`,`sob_subform_table`,`sob_input_count`,`sob_input_format`,`sob_input_type`,`sob_input_javascript`,`sob_html_code`,`sob_html_chart_type`,`sob_html_javascript`,`sob_html_title`,`sob_html_vertical_label`,`sob_html_horizontal_label`,`sob_image_zzzzsys_file_id`) VALUES
('5fd1016da7d8c61','5fd1016cbebc222','customer','input','cus_name','Customer','5fd1016d07a1220',10,88,152,300,20,'1','left','0','0','','','','','','','','','','','','','','','','','','','','','','','',0,'','text','','','','','','','',''),
('5fd1016db34a7a3','5fd1016cbebc222','customer','textarea','cus_address','Address','5fd1016d07a1220',20,118,152,300,64,'1','left','0','0','','','','','','','SELECT COUNT(*) FROM zzzzsys_debug','','','','','','','','','','','','','','','','',0,'N|$ 1,000.00','nuScroll','[\'North\',\'South\',\'East\',\'West\']','','','','','','',''),
('5fd1016dbebc299','5fd1016cbebc222','customer','input','cus_phone','Phone','5fd1016d07a1220',30,192,152,300,20,'1','left','0','0','','','','','','','','','','','','','','','','','','','','','','','',0,'','text','','','','','','','',''),
('5fd1016dca2ddb8','5fd1016cbebc222','customer','textarea','cus_notes','Notes','5fd1016d07a1220',40,222,152,300,64,'1','left','0','0','','','','','','','SELECT COUNT(*) FROM zzzzsys_debug','','','','','','','','','','','','','','','','',0,'N|$ 1,000.00','nuScroll','[\'North\',\'South\',\'East\',\'West\']','','','','','','',''),
('5fd1016de4e1c6b','nuuserhome','customer','run','ff5fd1016cbebc222','Customer','nufastforms',11,50,0,150,30,'0','center','0','0',NULL,NULL,'5fd1016cbebc222',NULL,'b','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
```

### product
```sql
CREATE TABLE `product` (
  `product_id` varchar(25) NOT NULL,
  `pro_code` varchar(1000) NOT NULL,
  `pro_description` varchar(1000) NOT NULL,
  `pro_price` decimal(12,4) NOT NULL,
  `pro_group` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `product` (`product_id`, `pro_code`, `pro_description`, `pro_price`, `pro_group`) VALUES
('5d881a5cc309669', 'P1', 'Large Pineapple Pizza', '15.9000', 'Pizza'),
('5d881afd0f7e7ea', 'P2', 'Large Pizza wth the Lot', '23.0000', 'Pizza'),
('5d881b2d40b46ef', 'Prawn Pizza', 'Large Prawn Pizza', '27.5000', 'Pizza'),
('5d881ba8dd326a7', 'A2', 'Spaghetti and Meatballs', '15.5000', 'Pasta'),
('5d881be75552ac6', 'D1', 'Can of Coke', '3.0000', 'Drink'),
('5d881bf6c772e79', 'D1', 'Can of Pepsi', '3.0000', 'Drink');

ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);
```

```
Fast Forms => Browse and Edit (Browse All) =>
	Text: Code - pro_code
	Text: Product - pro_description
	nuNumber: Price - pro_price
	Select: Group - pro_group

Forms
	=> Code: FF0 -> PRO
	=> Description: Product

User Home => Product => Add => Group (double click)
	=> Select => SQL or List => Pizza|Pizza|Pasta|Pasta|Drink|Drink => Save & Close
	=> Don't Save Product Record
```

After the Product Fast form is created and adjustments done, the following will be added to the DB:

```sql
INSERT  INTO `zzzzsys_table`(`zzzzsys_table_id`) VALUES
('product');

INSERT  INTO `zzzzsys_form`(`zzzzsys_form_id`,`sfo_type`,`sfo_code`,`sfo_description`,`sfo_table`,`sfo_primary_key`,`sfo_browse_redirect_form_id`,`sfo_browse_row_height`,`sfo_browse_rows_per_page`,`sfo_browse_sql`,`sfo_javascript`) VALUES
('5fd1046f1ab3f37','browseedit','PRO','Product','product','product_id',NULL,NULL,NULL,'SELECT * FROM product',NULL);

INSERT  INTO `zzzzsys_tab`(`zzzzsys_tab_id`,`syt_zzzzsys_form_id`,`syt_title`,`syt_order`,`syt_help`) VALUES
('5fd1046f5b8d87a','5fd1046f1ab3f37','Main',10,NULL);

INSERT  INTO `zzzzsys_browse`(`zzzzsys_browse_id`,`sbr_zzzzsys_form_id`,`sbr_title`,`sbr_display`,`sbr_align`,`sbr_format`,`sbr_order`,`sbr_width`) VALUES
('5fd104702dc6cbd','5fd1046f1ab3f37','Code','pro_code','l','',10,250),
('5fd1047031975f0','5fd1046f1ab3f37','Product','pro_description','l','',20,250),
('5fd104703567e52','5fd1046f1ab3f37','Price','pro_price','l','',30,250),
('5fd104703938784','5fd1046f1ab3f37','Group','pro_group','l','',40,250);

INSERT  INTO `zzzzsys_object`(`zzzzsys_object_id`,`sob_all_zzzzsys_form_id`,`sob_all_table`,`sob_all_type`,`sob_all_id`,`sob_all_label`,`sob_all_zzzzsys_tab_id`,`sob_all_order`,`sob_all_top`,`sob_all_left`,`sob_all_width`,`sob_all_height`,`sob_all_cloneable`,`sob_all_align`,`sob_all_validate`,`sob_all_access`,`sob_calc_formula`,`sob_calc_format`,`sob_run_zzzzsys_form_id`,`sob_run_filter`,`sob_run_method`,`sob_run_id`,`sob_display_sql`,`sob_select_multiple`,`sob_select_sql`,`sob_lookup_code`,`sob_lookup_description`,`sob_lookup_description_width`,`sob_lookup_autocomplete`,`sob_lookup_zzzzsys_form_id`,`sob_lookup_javascript`,`sob_lookup_php`,`sob_lookup_table`,`sob_subform_zzzzsys_form_id`,`sob_subform_foreign_key`,`sob_subform_add`,`sob_subform_delete`,`sob_subform_type`,`sob_subform_table`,`sob_input_count`,`sob_input_format`,`sob_input_type`,`sob_input_javascript`,`sob_html_code`,`sob_html_chart_type`,`sob_html_javascript`,`sob_html_title`,`sob_html_vertical_label`,`sob_html_horizontal_label`,`sob_image_zzzzsys_file_id`) VALUES
('5fd1046fd97011f','5fd1046f1ab3f37','product','input','pro_code','Code','5fd1046f5b8d87a',10,67,148,90,20,'1','left','0','0','','','','','','','','','','','','','','','','','','','','','','','',0,'','text','','','','','','','',''),
('5fd1046fe4e1ce0','5fd1046f1ab3f37','product','input','pro_description','Product','5fd1046f5b8d87a',20,97,148,300,20,'1','left','0','0','','','','','','','','','','','','','','','','','','','','','','','',0,'','text','','','','','','','',''),
('5fd1046ff053791','5fd1046f1ab3f37','product','input','pro_price','Price','5fd1046f5b8d87a',30,127,148,90,20,'1','right','0','0','','','','','','','','','','','','','','','','','','','','','','','',0,'N|1000.00','nuNumber','','','','','','','',''),
('5fd104701312dfe','5fd1046f1ab3f37','product','select','pro_group','Group','5fd1046f5b8d87a',40,157,148,90,18,'1','left','0','0','','','','','','','','0','Pizza|Pizza|Pasta|Pasta|Drink|Drink','','','','','','','','','','','','','','',0,'','','','','','','','','',''),
('5fd104703d090cf','nuuserhome','product','run','ff5fd1046f1ab3f37','Product','nufastforms',11,100,50,150,30,'0','center','0','0',NULL,NULL,'5fd1046f1ab3f37',NULL,'b','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
```

### invoice
```sql
CREATE TABLE `invoice` (
  `invoice_id` varchar(25) NOT NULL,
  `inv_date` date NOT NULL,
  `inv_number` bigint(20) unsigned NOT NULL,
  `inv_customer_id` varchar(25) NOT NULL,
  `inv_total` decimal(12,4) NOT NULL,
  `inv_tax` decimal(12,4) NOT NULL,
  `inv_grand_total` decimal(12,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `invoice` (`invoice_id`, `inv_date`, `inv_number`, `inv_customer_id`, `inv_total`, `inv_tax`, `inv_grand_total`) VALUES
('5d8c0739a0667db', '2019-09-26', '1002', '5d88082faf64a63', '58.0000', '5.8000', '63.8000'),
('5d8c2908b4f8a2a', '2019-09-27', '1003', '5d8807a3b558352', '34.4000', '3.4400', '37.8300'),
('5d8c2b25abb6f2a', '2019-09-27', '1004', '5d880729bb550cb', '130.4000', '13.0400', '143.4400');

ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);
```

* Where the Lookup Code and Lookup Description are the same, the latter an be suppressed by [setting it's width to 0](./images/Zero_Width_of_Description.png)

### item
The `item` table is created by `nubuilder4` itself when the `item_sf` subform for `invoice` is created.

The data can be taken from the schema / data set here:
```sql
CREATE TABLE `item` (
  `item_id` varchar(25) NOT NULL,
  `ite_invoice_id` varchar(25) NOT NULL,
  `ite_product_id` varchar(25) NOT NULL,
  `ite_price` decimal(12,4) NOT NULL,
  `ite_units` decimal(12,4) NOT NULL,
  `ite_total` decimal(12,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `item` (`item_id`, `ite_invoice_id`, `ite_product_id`, `ite_price`, `ite_units`, `ite_total`) VALUES
('5d8c0739a4f3d5d', '5d8c0739a0667db', '5d881afd0f7e7ea', '23.0000', '2.0000', '46.0000'),
('5d8c249bddbf302', '5d8c0739a0667db', '5d881bf6c772e79', '3.0000', '4.0000', '12.0000'),
('5d8c2908b7c208a', '5d8c2908b4f8a2a', '5d881a5cc309669', '15.9000', '1.0000', '15.9000'),
('5d8c2908b95a592', '5d8c2908b4f8a2a', '5d881ba8dd326a7', '15.5000', '1.0000', '15.5000'),
('5d8c2908bae3bdb', '5d8c2908b4f8a2a', '5d881be75552ac6', '3.0000', '1.0000', '3.0000'),
('5d8c2b25aeb7062', '5d8c2b25abb6f2a', '5d881a5cc309669', '15.9000', '1.0000', '15.9000'),
('5d8c2b25b082723', '5d8c2b25abb6f2a', '5d881ba8dd326a7', '15.5000', '1.0000', '15.5000'),
('5d8c2b25b237562', '5d8c2b25abb6f2a', '5d881be75552ac6', '3.0000', '33.0000', '99.0000');

ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);
```
* [Lookup Prices and Assume default Quantity](./images/LookupPricesDefaultUnits.png) (Units) in the Items subform (AfterBrowse PHP):
```php
$lu = nuLookupRecord();

nuSetFormValue('ite_price', $lu->pro_price);
nuSetFormValue('ite_units', 1);
```
* This results in the following tables entries:

```sql
INSERT INTO `zzzzsys_php` VALUES
('5ff087f8e8643b4_AB','5ff087f8e8643b4_AB','System PHP','nubuilder','$lu = nuLookupRecord();\n\nnuSetFormValue(\'ite_price\', $lu->pro_price);\nnuSetFormValue(\'ite_units\', 1);\n',NULL,NULL,'1',NULL);
```
