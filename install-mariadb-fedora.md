# install mariadb fedora

## install 

```bash
dnf module -y install mariadb:10.5

nano /etc/my.cnf.d/mariadb-server.cnf

[mysqld]
character-set-server = utf8mb4

[client]
default-character-set = utf8mb4


systemctl enable  mariadb

systemctl start mariadb

mysql_secure_installation
```

## grant user

```
CREATE USER 'admininno'@'%' IDENTIFIED BY 'Innovisor#123';
GRANT ALL PRIVILEGES ON *.* TO  'admininno'@'%' IDENTIFIED BY 'Innovisor#123';

REVOKE ALL PRIVILEGES ON *.*  FROM  'admininno'@'%';
FLUSH PRIVILEGES;
```

## plugin

```
mysql> SHOW ENGINES;
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                                                         | Transactions | XA   | Savepoints |
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
| Aria               | YES     | Crash-safe tables with MyISAM heritage. Used for internal temporary tables and privilege tables | NO           | NO   | NO         |
| MRG_MyISAM         | YES     | Collection of identical MyISAM tables                                                           | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables                                       | NO           | NO   | NO         |
| BLACKHOLE          | YES     | /dev/null storage engine (anything you write to it disappears)                                  | NO           | NO   | NO         |
| MyISAM             | YES     | Non-transactional engine with good performance and small data footprint                         | NO           | NO   | NO         |
| CSV                | YES     | Stores tables as CSV files                                                                      | NO           | NO   | NO         |
| ARCHIVE            | YES     | gzip-compresses tables for a low storage footprint                                              | NO           | NO   | NO         |
| FEDERATED          | YES     | Allows one to access tables on other MariaDB servers, supports transactions and more            | YES          | NO   | YES        |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                                                              | NO           | NO   | NO         |
| InnoDB             | DEFAULT | Supports transactions, row-level locking, foreign keys and encryption for tables                | YES          | YES  | YES        |
| SEQUENCE           | YES     | Generated tables filled with sequential values                                                  | YES          | NO   | YES        |
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
11 rows in set (0.01 sec)

show plugins;

SELECT plugin_name, plugin_version, plugin_maturity FROM information_schema.plugins ORDER BY plugin_name;
```


