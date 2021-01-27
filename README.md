# nuBuilder 4

* ***Name:*** nuBuilder 4 - Standalone
* ***This Fork:*** https://github.com/apmuthu/nubuilder4
* ***Contributors:*** Steven Copley, Ap.Muthu, [smalos](https://github.com/smalos]
* ***Donate link:*** https://www.nubuilder.com/#donate
* ***License:*** [GPLv3](https://www.gnu.org/licenses/old-licenses/gpl-3.0.html)
* ***Home Page:*** https://www.nubuilder.com
* ***SourceForge:*** https://sourceforge.net/projects/nubuilder/
* ***Wiki:*** https://wiki.nubuilder.net/
* ***Github Wiki:*** https://github.com/smalos/nuBuilder4-Code-Library/wiki/Installing-nuBuilder
* ***Forum:*** https://forums.nubuilder.com/
* ***Blogs:*** https://nubuilder.blogspot.com/ | https://nubuilderforte.blogspot.com/

* ***Requires PHP:*** 5.4 (phpMyAdmin that is shipped with nuBuilder will require PHP 7.1+)
* ***Requires MySQL:*** 5.5. (or MariaDB)
* ***Requires a web server:*** (e.g. Apache or Nginx)

***nuBuilder*** is the world's best open-source, low-code application and report builder.

### nuManagement
* The original Author Steven Copley [has handed over the project](http://nubuilder.blogspot.com/2020/12/) for future development to ***@smalos*** (**kev1n** in the forum) and **Janus** (in the forum).
* @smalos has [his updated v4.5 fork](https://github.com/nuBuilder/nuBuilder-4.5) and new changes will arise there.
* [Discord Invite](https://discord.com/invite/KbHzgh3EbY) - [discussion channel](https://discord.com/channels/710460059359903804/710465287912292372) for NuBuilder (expects your birthdate!)

## Description

nuBuilder enables you to make any application that want or need with the least amount of effort and learning.

nuBuilder [expects you to be online](https://forums.nubuilder.com/viewtopic.php?f=19&t=10732) for using it's applications if Google Charts are used in it.

nuBuilder Forte is in its 4th version of nuBuilder and is a browser-based tool created by ***nuSoftware*** for developing web-based database applications.

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

1. Upload the unzipped nuBuilder files to your webroot
1. To use the fixes in this fork, overwrite the core folder files with those in the nub4fixes folder
1. Delete the `ace` folder and recreate the reduced fileset by unzipping the `docs/ace_reduced.zip`
1. Create a database (e.g. `nubuilder4`)
1. Edit `nuconfig.php` to set your *database* and *globeadmin* credentials
1. [Detailed installation instructions:](https://github.com/smalos/nuBuilder4-Code-Library/wiki/Installing-nuBuilder) for Upstream codebase

## Changelog
* [core CHANGELOG](https://github.com/apmuthu/nubuilder4/blob/master/core/CHANGELOG.txt)
* [nub4fixes CHANGELOG](https://github.com/apmuthu/nubuilder4/blob/master/nub4fixes/CHANGELOG_nub4fixes.txt)

## Documentation

### PDF instructions / Documentation to get started as a nuBuilder developer

* [nuBuilder-Forte-User-Guide](https://www.nubuilder.com/pdf/nubuilder-forte-user-guide.pdf)
* [nuBuilder-Forte-User-Guide 1](https://sourceforge.net/projects/nubuilder/files/nuBuilderForte_UserGuide_OLD.pdf/download)
* [nuBuilder-Forte-User-Guide 2](https://sourceforge.net/projects/nubuilder/files/nuBuilderForte_UserGuide.pdf/download)
* [nuBuilder-Forte-Wiki-Documentation](https://wiki.nubuilder.net/nubuilderforte/index.php/Main_Page)
* [nuBuilder PHP Functions Lookup Reference](https://wiki.nubuilder.net/nubuilderforte/index.php/PHP)
* [nuBuilder Javascript Functions Lookup Reference](https://wiki.nubuilder.net/nubuilderforte/index.php/Javascript)
* [nuBuilder Globeadmin to Delete Form Completely](https://github.com/smalos/nuBuilder4-Code-Library/tree/master/codelib/globeadmin_delete_form_and_data)
* [nuBuilder Audit Trail Logging](https://wiki.nubuilder.net/nubuilderforte/index.php/Logging_Activity) - JSON Timestamps for Add / View / Edit Activity per table
* [Javascript character Key Codes](https://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes) - case insensitive
* [Javascript Key decoder online](https://github.com/wesbos/keycodes) | [Live](https://keycode.info/)
* [JS Snippets](https://1loc.dev/)
* [JS Pivot in nubuilder4](https://cdn.discordapp.com/attachments/710465287912292372/785888555872419840/nuBuilder_Pivot_table.pdf)

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

### PHPMailer version

* By default NuBuilder v4 uses PHPMailer 6.0.2 released on 2017-11-02 and the current version in it's branch is 6.2.0 used in NuBuilder v4.5
* To support older versions of PHP 5 to 7, it is advisable to use [PHPMailer v5.2.28](https://github.com/PHPMailer/PHPMailer/archive/v5.2.28.tar.gz) released on 2020-03-19

### Language translation stats

```sql
SELECT trl_language, COUNT(*) AS translated_strings, 211-COUNT(*) AS ToTranslate 
FROM `zzzzsys_translate` GROUP BY trl_language ORDER BY translated_strings DESC, trl_language ASC;
```

