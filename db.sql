-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS winery_db;

-- Create and use winery_db
CREATE DATABASE winery_db;
USE winery_db;

-- Create tables for raw data to be loaded into
CREATE TABLE coordinates (
  ID int(50) AUTO_INCREMENT,
  winery TEXT (100),
  latitude DECIMAL(20,10),
  longitude DECIMAL(20,10),
  primary KEY(ID)
);

INSERT INTO coordinates(winery,latitude,longitude)
VALUES ("Nicosia", 35.1855659, 33.3822763999999),
("Quinta dos Avidagos", 41.3876897, -7.2768652);


SELECT `coordinates`.`ID`,
    `coordinates`.`winery`,
    `coordinates`.`latitude`,
    `coordinates`.`longitude`
FROM `winery_db`.`coordinates`;



