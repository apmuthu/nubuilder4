## References
* [List of NuBuilder 4 Videos by Steven Copley](https://www.youtube.com/c/StevenCopley/videos)

## [set_denied functionality](https://forums.nubuilder.com/viewtopic.php?f=19&t=10670)
```sql
UPDATE `zzzzsys_setup` SET `set_denied` = '0';
```
* On executing the above query, access is available to all the Form Properties and code used behind the system Forms like the Objects Form.
* All changes in these properties will be reset anytime the **Setup => Builders => Update** button is clicked.

## Workarounds
* When the `nuconfig.php` file is edited, the browser must be restarted.
* If the browser is removing cookies for 127.0.0.1 (or the site you are running nubuilder on), the browser needs to be restarted.
* Used different sundomains for different instances of nubuilder in the same server.
* [Step-by-Step Install Guide for NuBuilder4 on Ubuntu 18.04](https://forums.nubuilder.com/viewtopic.php?f=19&t=9751)

## Tutorials

### Pizza Delivery Software

1. 2:17 mins [Create Customer Table](https://www.youtube.com/watch?v=tVE0JgRWhhc)
1. 2:54 mins [Create Product Table](https://www.youtube.com/watch?v=XTjKqJl2sl8)
1. 4:54 mins [Create Invoice and Items Table](https://www.youtube.com/watch?v=40aWH3Gqn28)
1. 2:44 mins [Calculating Invoice Totals](https://www.youtube.com/watch?v=vf41VH7PgxE)
1. 4:10 mins [Print an Invoice](https://www.youtube.com/watch?v=sR_RqTkLO8k)

* [SQL of tables used](./nuBuilder4_Pizza_tables.sql)
* [ERD](./nuBuilder4_Tutorial_Pizza_ERD.png)

### Printing House Roster

1. 1:50 mins [Join Roster Data for Reporting](https://www.youtube.com/watch?v=3HIBSCcHjs4)
1. 5:08 mins [Create a House Roster Part 1](https://www.youtube.com/watch?v=50PBQf-XuN8)
1. 3:23 mins [Create a House Roster Part 2](https://www.youtube.com/watch?v=m9xF7kkKCzc)
1. 5:30 mins [Calculate Staff Hours](https://www.youtube.com/watch?v=GB-rH_VrL-0)
1. 5:06 mins [Print a Staff Roster](https://www.youtube.com/watch?v=VkW8NZzjFH8)

## Code Snippet Links
* [Print Button on Edit Form](https://forums.nubuilder.com/viewtopic.php?f=19&t=9438)
