-- Drops the winery_db if it exists currently --
DROP DATABASE IF EXISTS winery_db;

-- Create and use winery_db
CREATE DATABASE winery_db;
USE winery_db;

-- Create tables for latitude and longitude data to be loaded into
CREATE TABLE coordinates (
  ID int(50) AUTO_INCREMENT,
  winery VARCHAR (100) CHARACTER SET utf8,
  latitude DECIMAL(20,5),
  longitude DECIMAL(20,5),
  primary KEY(ID)
);

SELECT `coordinates`.`ID`,
    `coordinates`.`winery`,
    `coordinates`.`latitude`,
    `coordinates`.`longitude`
FROM `winery_db`.`coordinates`;