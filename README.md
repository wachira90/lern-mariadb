# lern-mariadb
lerning mariadb

## gen password

```sql
SELECT PASSWORD('mariadb');
+-------------------------------------------+
| PASSWORD('mariadb')                       |
+-------------------------------------------+
| *54958E764CE10E50764C2EECBB71D01F08549980 |
+-------------------------------------------+
```

## create user

```sql
CREATE USER 'wachira'@'%' IDENTIFIED VIA mysql_native_password USING '*54958E764CE10E50764C2EECBB71D01F08549980';
REVOKE ALL PRIVILEGES ON *.* FROM 'wachira'@'%'; 
GRANT ALL PRIVILEGES ON *.* TO 'wachira'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
```
