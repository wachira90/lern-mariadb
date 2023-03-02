DROP DATABASE IF EXISTS bts;

CREATE DATABASE bts;

USE bts;

CREATE TABLE airlines
  (
     iata_code VARCHAR(2),
     airline   VARCHAR(30)
  )
engine=columnstore
DEFAULT CHARACTER SET=utf8;

CREATE TABLE airports
  (
     iata_code VARCHAR(3),
     airport   VARCHAR(80),
     city      VARCHAR(30),
     state     VARCHAR(2),
     country   VARCHAR(30),
     latitude  DECIMAL(11, 4),
     longitude DECIMAL(11, 4)
  )
engine=columnstore
DEFAULT CHARACTER SET=utf8;

CREATE TABLE flights
  (
     year                SMALLINT,
     month               TINYINT,
     day                 TINYINT,
     day_of_week         TINYINT,
     fl_date             DATE,
     carrier             VARCHAR(2),
     tail_num            VARCHAR(6),
     fl_num              SMALLINT,
     origin              VARCHAR(5),
     dest                VARCHAR(5),
     crs_dep_time        VARCHAR(4),
     dep_time            VARCHAR(4),
     dep_delay           DEC(13,2),
     taxi_out            DEC(13,2),
     wheels_off          VARCHAR(4),
     wheels_on           VARCHAR(4),
     taxi_in             DEC(13,2),
     crs_arr_time        VARCHAR(4),
     arr_time            VARCHAR(4),
     arr_delay           DEC(13,2),
     cancelled           DEC(13,2),
     cancellation_code   VARCHAR(20),
     diverted            DEC(13,2),
     crs_elapsed_time    DEC(13,2),
     actual_elapsed_time DEC(13,2),
     air_time            DEC(13,2),
     distance            DEC(13,2),
     carrier_delay       DEC(13,2),
     weather_delay       DEC(13,2),
     nas_delay           DEC(13,2),
     security_delay      DEC(13,2),
     late_aircraft_delay DEC(13,2)
  )
engine=columnstore
DEFAULT CHARACTER SET=utf8; 
