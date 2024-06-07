-- 1) Get all dealerships
-- SELECT * FROM dealerships;

-- 2) Find all vehicles for a specific dealership
-- SELECT * 
-- 	FROM inventory
--     WHERE dealership_id = 1;

-- 3) Find a car by VIN
-- SELECT * 
-- 	FROM vehicles
-- 	WHERE VIN = '2HGFB2F89DH546449';

-- 4) Find the dealership where a certain car is located, by VIN
-- SELECT * 
-- 	FROM inventory
-- 	WHERE VIN = '1G1PC5SH2B7110692';

-- 5) Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
-- SELECT DISTINCT d.name
-- FROM dealerships AS d
-- JOIN inventory AS i
-- ON d.dealership_id = i.dealership_id
-- JOIN vehicles AS v
-- ON i.VIN = v.VIN
-- WHERE v.make = 'Ford'
--   AND v.model = 'Mustang'
--   AND v.color = 'Red';

-- 6) Get all sales information for a specific dealer for a specific date range
-- SELECT v.*
-- FROM vehicles AS v
-- JOIN inventory AS i 
-- 	ON v.VIN = i.VIN
-- JOIN dealerships AS d 
-- 	ON i.dealership_id = d.dealership_id
-- LEFT JOIN sales_contracts AS sc 
-- 	ON v.VIN = sc.VIN
-- LEFT JOIN lease_contracts AS lc 
-- 	ON v.VIN = lc.VIN
-- WHERE d.name = 'Summit Motors'
--   AND v.SOLD = 'Yes'
--   AND (
--     (sc.date_of_contract >= '2022-01-01' AND sc.date_of_contract <= '2024-05-29')
--     OR (lc.date_of_contract >= '2022-01-01' AND lc.date_of_contract <= '2024-05-29')
--   );