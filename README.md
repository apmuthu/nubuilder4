# nuBuilder 4

* ***Name:*** nuBuilder 4 - Standalone
* ***This Fork:*** https://github.com/apmuthu/nubuilder4
* ***Contributors:*** Steven Copley, Ap.Muthu
* ***Donate link:*** https://www.nubuilder.com/#donate
* ***Requires PHP:*** 5.2.4 (Some parts will now or soon require PHP 7+)
* ***License:*** [GPLv3](https://www.gnu.org/licenses/old-licenses/gpl-3.0.html)
* ***Home Page:*** https://www.nubuilder.com
* ***Wiki:*** https://wiki.nubuilder.net/
* ***Forum:*** https://forums.nubuilder.com/

***nuBuilder*** is the world's best open-source, low-code application and report builder.

## Description

nuBuilder enables you to make any application that want or need with the least amount of effort / learning.

nuBuilder Forte is in it's 4th version of nuBuilder and is a browser-based tool created by ***nuSoftware*** for developing web-based database applications.

nuBuilder uses either ***MySQL*** or ***Maria DB*** databases and gives its users the ability to do database operations like: 
* Search
* Create
* Insert
* Read
* Update
* Delete

### Alternative to MS-Access
nuBuilder provides an ideal replacement/upgrade from **MS-Access**. It won't get slower and slower as you add more records, unlike **MS-Access**.

### Easy To Learn For End Users
nuBuilder uses an Uncluttered Interface which makes it very easy for new users to find there way around.

### Easy To Learn For Developers
nuBuilder is designed to be as easy as possible to get started with building **Forms** and **Search** Screens. With online videos and documentation, you have all the information you need to become a nuBuilder developer.

### Build Business Applications Fast
nuBuilder makes it affordable to build custom business solutions.

### Web Based
nuBuilder is fully web based which means you can use it anywhere and ***end users do not need to install anything***.

### Open Source
nuBuilder is free to download and install on your own web server with zero licence fees.

### Use your existing PHP and MySQL skills
nuBuilder is built upon industry standard technology stack and does not require you to learn any non-standard languages or templating systems.

### Single File Backup
nuBuilder stores all forms, reports, company data and PHP/JavaScript code in MySQL. You can backup your entire application within a single database file.

### Alternative to Oracle Application Express
nuBuilder is a enterprise level application builder but with no limitations on database size or CPU usage.

## Installation

If you are using nuBuilder as a standalone application, then follow these instructions:

1. Upload the unzipped nuBuilder files to your webroot 
1. Edit nuconfig.php to set you database credentials and globeadmin credentials

## Changelog
* [core CHANGELOG](https://github.com/apmuthu/nubuilder4/blob/master/core/CHANGELOG.txt)
* [nub4fixes CHANGELOG](https://github.com/apmuthu/nubuilder4/blob/master/nub4fixes/CHANGELOG_nub4fixes.txt)

## Documentation

### PDF instructions / Documentation to get started as a nuBuilder developer

* [nuBuilder-Forte-User-Guide](https://www.nubuilder.com/storage/pdf/nuBuilderForte_UserGuide.pdf)
* [nuBuilder-Forte-Wiki-Documentation](https://wiki.nubuilder.net/nubuilderforte/index.php/Main_Page)
* Use the files in the `nub4fixes` folder to overwrite their counterparts in the `core` folder and use the latter.
* [Javascript character Key Codes](https://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes) - case insensitive

### phpMyAdmin Workarounds for various versions

* NuBuilder4 uses `phpMyAdmin` located in the `nudb` folder. It sports [phpMyAdmin v5.0.2](https://codeload.github.com/phpmyadmin/phpmyadmin/tar.gz/RELEASE_5_0_2) which needs `PHP 7+` as it uses `declare(strict_types=1);` in `nudb/db_structure.php` line 8 and errors out in line 22.
* Replacing it with [phpMyAdmin v4.5.5.1](https://codeload.github.com/phpmyadmin/phpmyadmin/tar.gz/RELEASE_4_5_5_1) (using the same `config.inc.php` file) expects `PHP 5.5+` and can be operational (tested in `PHP 5.4.27`) if in file `nudb/libraries/common.inc.php` the line 46 is commented out:
```php
die('PHP 5.5+ is required');
```
* Replacing it with [phpMyAdmin v4.0.10.17 (2016-08-16)](https://codeload.github.com/phpmyadmin/phpmyadmin/tar.gz/RELEASE_4_0_10_17) works well with older PHP versions as it needs a minimum of `PHP v5.2+` only but the `config.inc.php` must include the lines below:
```php
/* Select mysql if your server does not have mysqli */
$cfg['Servers'][$i]['extension'] = 'mysqli';
```
### Language translation stats

```sql
SELECT trl_language, COUNT(*) AS translated_strings, 211-COUNT(*) AS ToTranslate 
FROM `zzzzsys_translate` GROUP BY trl_language ORDER BY translated_strings DESC, trl_language ASC;
```

