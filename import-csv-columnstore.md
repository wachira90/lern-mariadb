# import csv columnstore

## import airlines.csv

```
LOAD DATA INFILE '/tmp/airlines.csv'
INTO TABLE airlines
FIELDS TERMINATED BY ','
-- TERMINATED BY '"\r\n';
```

## result 

```
LOAD DATA INFILE '/tmp/airlines.csv'
INTO TABLE airlines
FIELDS TERMINATED BY ','
-- TERMINATED BY '"\r\n';
> Affected rows: 30
> Time: 1.231s
```


## import airports.csv

```
LOAD DATA INFILE '/tmp/airports.csv'
INTO TABLE airports
FIELDS TERMINATED BY ','
-- TERMINATED BY '\r\n'
IGNORE 1 LINES;
```

## result 

```
LOAD DATA INFILE '/tmp/airports.csv'
INTO TABLE airports
FIELDS TERMINATED BY ','
-- TERMINATED BY '\r\n'
IGNORE 1 LINES
> Affected rows: 399
> Time: 1.222s
```
