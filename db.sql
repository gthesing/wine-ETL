-- Drops the winery_db if it exists currently --
DROP DATABASE IF EXISTS winery_db;

-- Create and use winery_db
CREATE DATABASE winery_db ;
USE winery_db;

-- Create table for location
CREATE TABLE location (
    wine_id INT(20),
    winery VARCHAR(100),
    province VARCHAR(100),
    country VARCHAR(100),
    latitude DECIMAL(5,5),
    longitude DECIMAL(5,5)
);

-- Create table for review
CREATE TABLE review (
    wine_id INT(20),
    taster_name VARCHAR(100),
    points INT(20),
    description VARCHAR(2000),
    price INT(20)
);

-- Create table for id
CREATE TABLE bottle (
    wine_id INT(20),
    title VARCHAR(200),
    variety VARCHAR(100),
    winery VARCHAR(100)
);

ALTER DATABASE winery_db CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
ALTER TABLE bottle CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE review CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE location CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


