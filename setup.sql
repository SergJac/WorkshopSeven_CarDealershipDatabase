DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;

USE dealership_db;

CREATE TABLE `dealerships` (
    `dealership_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(12) NOT NULL,
    PRIMARY KEY (`dealership_id`)
);

CREATE TABLE `vehicles` (
    `VIN` VARCHAR(17) NOT NULL,
    `year` VARCHAR(4) NOT NULL,
    `make` VARCHAR(10) NOT NULL,
    `model` VARCHAR(10) NOT NULL,
    `type` VARCHAR(10) NOT NULL,
    `color` VARCHAR(10) NOT NULL,
    `odometer` VARCHAR(10) NOT NULL,
    `price` DECIMAL(10,4) DEFAULT 0,
    `SOLD` VARCHAR(3) NOT NULL,
    PRIMARY KEY (`VIN`)
);

CREATE TABLE `inventory` (
    `dealership_id` INT NOT NULL AUTO_INCREMENT,
    `VIN` VARCHAR(17) NOT NULL,
    PRIMARY KEY (`dealership_id`)
    );
    
    CREATE TABLE `sales_contracts` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `date_of_contract` DATETIME,
    `customer_name` VARCHAR(30) NOT NULL,
	`customer_email` VARCHAR(50) NOT NULL,
    `sales_tax_amount` DECIMAL(10,4) DEFAULT 0,
    `financed` VARCHAR(3) NOT NULL,
    `VIN` VARCHAR(17) NOT NULL,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
	PRIMARY KEY (`id`)
);

 CREATE TABLE `leases_contracts` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `date_of_contract` DATETIME,
    `customer_name` VARCHAR(30) NOT NULL,
	`customer_email` VARCHAR(50) NOT NULL,
    `lease_fee` DECIMAL(10,4) DEFAULT 0,
    `monthly_payment` DECIMAL(10,4) DEFAULT 0,
    `VIN` VARCHAR(17) NOT NULL,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
	PRIMARY KEY (`id`)
);