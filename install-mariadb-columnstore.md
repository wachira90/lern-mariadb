# install mariadb columnstore

## add repo 

nano  /etc/yum.repos.d/mariadb.repo

```
[mariadb]
name = MariaDB
baseurl = http://mirror.mariadb.org/yum/10.5/fedora35-amd64
module_hotfixes=1
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
```

## update and list repo

```
dnf update 

dnf list mariadb*
```

## install 

```
dnf install MariaDB-server MariaDB-columnstore-engine -y 
```

## service control 

```
systemctl status mariadb.service
systemctl start mariadb.service
systemctl enable mariadb.service

systemctl status mariadb-columnstore.service
systemctl start mariadb-columnstore.service
systemctl enable mariadb-columnstore.service
```

## show engines 


```
MariaDB [(none)]> SHOW ENGINES;
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
| Engine             | Support | Comment                                                                                         | Transactions | XA   | Savepoints |
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
| Columnstore        | YES     | ColumnStore storage engine                                                                      | YES          | NO   | NO         |
| MRG_MyISAM         | YES     | Collection of identical MyISAM tables                                                           | NO           | NO   | NO         |
| MEMORY             | YES     | Hash based, stored in memory, useful for temporary tables                                       | NO           | NO   | NO         |
| Aria               | YES     | Crash-safe tables with MyISAM heritage. Used for internal temporary tables and privilege tables | NO           | NO   | NO         |
| MyISAM             | YES     | Non-transactional engine with good performance and small data footprint                         | NO           | NO   | NO         |
| SEQUENCE           | YES     | Generated tables filled with sequential values                                                  | YES          | NO   | YES        |
| InnoDB             | DEFAULT | Supports transactions, row-level locking, foreign keys and encryption for tables                | YES          | YES  | YES        |
| PERFORMANCE_SCHEMA | YES     | Performance Schema                                                                              | NO           | NO   | NO         |
| CSV                | YES     | Stores tables as CSV files                                                                      | NO           | NO   | NO         |
+--------------------+---------+-------------------------------------------------------------------------------------------------+--------------+------+------------+
9 rows in set (0.000 sec)

MariaDB [(none)]>
```
