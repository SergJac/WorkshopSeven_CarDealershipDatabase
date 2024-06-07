DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;

USE dealership_db;

CREATE TABLE `dealerships` (
    `dealership_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`dealership_id`)
);

CREATE TABLE `vehicles` (
    `VIN` VARCHAR(17) NOT NULL,
    `year` VARCHAR(4) NOT NULL,
    `make` VARCHAR(20) NOT NULL,
    `model` VARCHAR(20) NOT NULL,
    `type` VARCHAR(10) NOT NULL,
    `color` VARCHAR(10) NOT NULL,
    `odometer` VARCHAR(10) NOT NULL,
    `price` DECIMAL(10,4) DEFAULT 0,
    `SOLD` VARCHAR(3) NOT NULL,
    PRIMARY KEY (`VIN`)
);

CREATE TABLE `inventory` (
    `dealership_id` INT NOT NULL,
    `VIN` VARCHAR(17) NOT NULL
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

 CREATE TABLE `lease_contracts` (
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

INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES('1', 'Velocity Motors', '1234 Main Street Anytown, USA 54321', '(555)123-4567');
INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES('2', 'Summit Motors', '9012 Oak Street, Cityville, USA 67890', '(555) 456-7890');
INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES('3', 'Turbo Cars Inc.', '3456 Pine Road, Villagetown, USA 54321', '(555) 789-0123');



INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1GNEK13ZX3R314511', '2019', 'Toyota', 'Camry', 'Sedan', 'Black', '40,000', '22500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2T1BR32E74C300080', '2010', 'Toyota', 'Corolla', 'Sedan', 'Silver', '80,000', '9500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('3FAHP0GA1BR107007', '2011', 'Ford', 'Fusion', 'Sedan', 'Blue', '70,000', '8500.00', 'yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1HGCR2F3XHA070012', '2017', 'Honda', 'Accord', 'Sedan', 'White', '50,000', '18500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('5NPE34AF6HH492300', '2017', 'Hyundai', 'Sonata', 'Sedan', 'Red', '45,000', '17500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('JTDKN3DU6E0366914', '2014', 'Toyota', 'Prius', 'Hatchback', 'Green', '60,000', '13500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FADP3F24GL386608', '2016', 'Ford', 'Focus', 'Hatchback', 'Black', '55,000', '12500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2C4RDGBG0GR204315', '2016', 'Dodge', 'Grand Caravan', 'Minivan', 'Silver', '70,000', '14500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G4GB5G39EF161887', '2014', 'Buick', 'Regal', 'Sedan', 'Gray', '65,000', '15500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1C4RJFAG0EC429605', '2014', 'Jeep', 'Grand Cherokee', 'SUV', 'White', '90,000', '20500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1N4AL3AP1FN920029', '2015', 'Nissan', 'Altima', 'Sedan', 'Blue', '60,000', '13500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1GNSKHKCXGR343145', '2016', 'Chevrolet', 'Suburban', 'SUV', 'Black', '85,000', '28500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1C4RJEAG5FC644004', '2015', 'Jeep', 'Grand Cherokee', 'SUV', 'Red', '80,000', '24500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2HGES16542H600380', '2002', 'Honda', 'Civic', 'Sedan', 'Silver', '120,000', '4500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2G1WB58K979221350', '2007', 'Chevrolet', 'Impala', 'Sedan', 'Black', '100,000', '6500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FTEW1EF2HFB08747', '2017', 'Ford', 'F-150', 'Truck', 'White', '40,000', '30500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1C4RJEBG0HC946275', '2017', 'Jeep', 'Grand Cherokee', 'SUV', 'Silver', '50,000', '26500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('JH4CU2F69BC039831', '2011', 'Acura', 'TSX', 'Sedan', 'Blue', '90,000', '10500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F84FG120287', '2015', 'Ford', 'Taurus', 'Sedan', 'Black', '70,000', '15500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1JC6SH9F4227165', '2015', 'Chevrolet', 'Spark', 'Hatchback', 'Red', '55,000', '9500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1N6BD0CT5GN717168', '2016', 'Nissan', 'Frontier', 'Truck', 'Silver', '60,000', '20500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1HGCR2F55GA091547', '2016', 'Honda', 'Accord', 'Sedan', 'White', '45,000', '18500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('JTDKB20U397862804', '2009', 'Toyota', 'Prius', 'Hatchback', 'Green', '110,000', '7500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1PC5SH2B7110692', '2011', 'Chevrolet', 'Cruze', 'Sedan', 'Blue', '80,000', '9500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1HGCR2F81HA184054', '2017', 'Honda', 'Accord', 'Sedan', 'Red', '40,000', '19500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F82FG153170', '2015', 'Ford', 'Taurus', 'Sedan', 'Silver', '60,000', '16500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2C3CDZAG9JH321408', '2018', 'Dodge', 'Challenger', 'Coupe', 'Black', '30,000', '29500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2HGFB2F89DH546448', '2013', 'Honda', 'Civic', 'Sedan', 'Gray', '70,000', '11500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F81FG129149', '2015', 'Ford', 'Taurus', 'Sedan', 'Blue', '65,000', '17500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('3C4PDCAB0JT325025', '2018', 'Dodge', 'Journey', 'SUV', 'White', '35,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2GNFLFEK6F6100602', '2015', 'Chevrolet', 'Equinox', 'SUV', 'Silver', '55,000', '18500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SM3H7242539', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Red', '40,000', '21500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SM6H7119803', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Blue', '35,000', '21500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SMXH7200925', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Silver', '45,000', '21500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1HGCR2F55GA091549', '2016', 'Honda', 'Accord', 'Sedan', 'White', '45,000', '18500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('JTDKB20U397862805', '2009', 'Toyota', 'Prius', 'Hatchback', 'Green', '110,000', '7500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1PC5SH2B7110693', '2011', 'Chevrolet', 'Cruze', 'Sedan', 'Blue', '80,000', '9500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F81HA184054', '2017', 'Honda', 'Accord', 'Sedan', 'Red', '40,000', '19500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F82FG153171', '2015', 'Ford', 'Taurus', 'Sedan', 'Silver', '60,000', '16500.00', 'Yes');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2C3CDZAG9JH321409', '2018', 'Dodge', 'Challenger', 'Coupe', 'Black', '30,000', '29500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2HGFB2F89DH546449', '2013', 'Honda', 'Civic', 'Sedan', 'Gray', '70,000', '11500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FAHP2F81FG129148', '2015', 'Ford', 'Taurus', 'Sedan', 'Blue', '65,000', '17500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('3C4PDCAB0JT325026', '2018', 'Dodge', 'Journey', 'SUV', 'White', '35,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2GNFLFEK6F6100603', '2015', 'Chevrolet', 'Equinox', 'SUV', 'Silver', '55,000', '18500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SM3H7242530', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Red', '40,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SM6H7119805', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Blue', '35,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BE5SMXH7200927', '2017', 'Chevrolet', 'Volt', 'Hatchback', 'Silver', '45,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('3FA6P0LU2KR109114', '2019', 'Ford', 'Fusion', 'Sedan', 'Gray', '20,000', '21500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('5FNRL18932B096007', '2002', 'Honda', 'Odyssey', 'Minivan', 'Blue', '180,000', '4500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('2GTEK13M771513228', '2007', 'GMC', 'Sierra', 'Truck', 'Black', '130,000', '11500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1FVACWDT1CHFH0435', '2012', 'Freightliner', 'Cascadia', 'Semi-Truck', 'White', '400,000', '28500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1C4RJEAG9FC696057', '2015', 'Jeep', 'Grand Cherokee', 'SUV', 'Gray', '70,000', '25500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('5TDZK22C76S249139', '2006', 'Toyota', 'Sienna', 'Minivan', 'Silver', '150,000', '7500.00', 'No');
INSERT INTO vehicles(VIN, year, make, model, type, color, odometer, price, SOLD)
VALUES('1G1BC5SM8G7261402', '2016', 'Chevrolet', 'Volt', 'Hatchback', 'Blue', '50,000', '22500.00', 'No');



INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1GNEK13ZX3R314511');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '2T1BR32E74C300080');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '3FAHP0GA1BR107007');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1HGCR2F3XHA070012');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '5NPE34AF6HH492300');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', 'JTDKN3DU6E0366914');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1FADP3F24GL386608');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '2C4RDGBG0GR204315');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1G4GB5G39EF161887');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1C4RJFAG0EC429605');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1N4AL3AP1FN920029');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1GNSKHKCXGR343145');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '1C4RJEAG5FC644004');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '2HGES16542H600380');
INSERT INTO inventory(dealership_id, VIN)
VALUES('1', '2G1WB58K979221350');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1FTEW1EF2HFB08747');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1C4RJEBG0HC946275');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', 'JH4CU2F69BC039831');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1FAHP2F84FG120287');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1G1JC6SH9F4227165');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1N6BD0CT5GN717168');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1HGCR2F55GA091547');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', 'JTDKB20U397862804');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1G1PC5SH2B7110692');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1HGCR2F81HA184054');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1FAHP2F82FG153170');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '2C3CDZAG9JH321408');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '2HGFB2F89DH546448');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '1FAHP2F81FG129149');
INSERT INTO inventory(dealership_id, VIN)
VALUES('2', '3C4PDCAB0JT325025');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '2GNFLFEK6F6100602');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SM3H7242539');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SM6H7119803');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SMXH7200925');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1HGCR2F55GA091549');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', 'JTDKB20U397862805');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1PC5SH2B7110693');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1FAHP2F81HA184054');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1FAHP2F82FG153171');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '2C3CDZAG9JH321409');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '2HGFB2F89DH546449');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1FAHP2F81FG129148');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '3C4PDCAB0JT325026');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '2GNFLFEK6F6100603');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SM3H7242530');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SM6H7119805');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BE5SMXH7200927');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '3FA6P0LU2KR109114');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '5FNRL18932B096007');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '2GTEK13M771513228');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1FVACWDT1CHFH0435');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1C4RJEAG9FC696057');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '5TDZK22C76S249139');
INSERT INTO inventory(dealership_id, VIN)
VALUES('3', '1G1BC5SM8G7261402');


INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-10 14:20:00', 'John Doe', 'john.doe@example.com', 1500.00, 'Yes', '1HGCR2F3XHA070012');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-11 15:45:00', 'Jane Smith', 'jane.smith@example.com', 1200.00, 'No', '5NPE34AF6HH492300');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-12 16:10:00', 'Robert Johnson', 'robert.johnson@example.com', 1800.00, 'Yes', 'JTDKN3DU6E0366914');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-13 17:30:00', 'Emily Brown', 'emily.brown@example.com', 1600.00, 'No', '1FADP3F24GL386608');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-14 18:20:00', 'Michael Wilson', 'michael.wilson@example.com', 2000.00, 'Yes', '2C4RDGBG0GR204315');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-15 19:00:00', 'Sarah Martinez', 'sarah.martinez@example.com', 1750.00, 'Yes', '1FAHP2F84FG120287');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-16 20:15:00', 'Matthew Taylor', 'matthew.taylor@example.com', 1450.00, 'No', '1G1JC6SH9F4227165');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-17 21:30:00', 'Ashley Thomas', 'ashley.thomas@example.com', 1300.00, 'Yes', '1N6BD0CT5GN717168');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-18 22:45:00', 'Daniel Rodriguez', 'daniel.rodriguez@example.com', 1900.00, 'No', '1HGCR2F55GA091547');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-19 23:55:00', 'Taylor Anderson', 'taylor.anderson@example.com', 2200.00, 'Yes', 'JTDKB20U397862804');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-20 10:25:00', 'Emma Davis', 'emma.davis@example.com', 1700.00, 'Yes', '1HGCR2F55GA091549');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-21 11:35:00', 'Noah White', 'noah.white@example.com', 1950.00, 'No', 'JTDKB20U397862805');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-22 12:45:00', 'Olivia Brown', 'olivia.brown@example.com', 1400.00, 'Yes', '1G1PC5SH2B7110693');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES ('2024-06-23 13:55:00', 'Ethan Taylor', 'ethan.taylor@example.com', 2100.00, 'No', '1FAHP2F81HA184054');
INSERT INTO sales_contracts(date_of_contract, customer_name, customer_email, sales_tax_amount, financed, VIN)
VALUES('2024-06-24 14:45:00', 'Ava Wilson', 'ava.wilson@example.com', 2300.00, 'Yes', '1FAHP2F82FG153171');



INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-10 14:20:00', 'Michael Johnson', 'michael.johnson@example.com', 550.00, 275.00, '1GNEK13ZX3R314511');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-11 15:45:00', 'Emily Brown', 'emily.brown@example.com', 650.00, 325.00, '2T1BR32E74C300080');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-12 16:10:00', 'David Wilson', 'david.wilson@example.com', 750.00, 375.00, '3FAHP0GA1BR107007');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-13 17:30:00', 'Jessica Lee', 'jessica.lee@example.com', 800.00, 400.00, '1FTEW1EF2HFB08747');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-14 18:20:00', 'Christopher Davis', 'christopher.davis@example.com', 850.00, 425.00, '1C4RJEBG0HC946275');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-15 19:00:00', 'Sarah Martinez', 'sarah.martinez@example.com', 900.00, 450.00, 'JH4CU2F69BC039831');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-16 20:15:00', 'Matthew Taylor', 'matthew.taylor@example.com', 950.00, 475.00, '2GNFLFEK6F6100602');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-17 21:30:00', 'Ashley Thomas', 'ashley.thomas@example.com', 1000.00, 500.00, '1G1BE5SM3H7242539');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-18 22:45:00', 'Daniel Rodriguez', 'daniel.rodriguez@example.com', 1050.00, 525.00, '1G1BE5SM6H7119803');
INSERT INTO lease_contracts(date_of_contract, customer_name, customer_email, lease_fee, monthly_payment, VIN)
VALUES('2024-06-19 23:55:00', 'Taylor Anderson', 'taylor.anderson@example.com', 1100.00, 550.00, '1G1BE5SMXH7200925');

