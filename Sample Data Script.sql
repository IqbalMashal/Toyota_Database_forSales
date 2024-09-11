-- Sample Data Script


-- DEPARTMENTS
INSERT ALL
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112233, 'Toyota Racing Development', 'Toyota City, Japan')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112234, 'Toyota Motorsport', 'Cologne, Germany')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112235, 'Toyota F1 Team', 'Enstone, UK')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112236, 'Toyota Racing', 'Toyota City, Japan')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112237, 'Toyota Motorsport GmbH', 'Cologne, Germany')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112238, 'Toyota Racing Development', 'Toyota City, Japan')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112239, 'Toyota Motorsport', 'Cologne, Germany')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112240, 'Toyota F1 Team', 'Enstone, UK')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112241, 'Toyota Racing', 'Toyota City, Japan')
INTO  DEPARTMENTS (deptCode, deptName, location)
VALUES (112242, 'Toyota Motorsport GmbH', 'Cologne, Germany')
SELECT * FROM dual;



-- LOCATIONS
INSERT ALL
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23456, 'Toyota City', '1-1 Toyota City, Japan', '100-0001', 'Japan', 'Toyota City', 1234567890)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23457, 'Toyota Cologne', 'Toyota Motorsport GmbH, Cologne, Germany', '50667', 'Germany', 'Cologne', 9876543210)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23458, 'Toyota Enstone', 'Toyota F1 Team, Enstone, UK', 'OX11 0PQ', 'UK', 'Enstone', 5551234567)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23459, 'Toyota Tokyo', 'Toyota Racing, Tokyo, Japan', '100-0002', 'Japan', 'Tokyo', 9998887777)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23460, 'Toyota Munich', 'Toyota Motorsport GmbH, Munich, Germany', '80331', 'Germany', 'Munich', 3332221111)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23461, 'Toyota London', 'Toyota F1 Team, London, UK', 'SW1A 1AA', 'UK', 'London', 4445556666)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23462, 'Toyota Tokyo', 'Toyota Racing, Tokyo, Japan', '100-0003', 'Japan', 'Tokyo', 7778889999)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23463, 'Toyota Munich', 'Toyota Motorsport GmbH, Munich, Germany', '80332', 'Germany', 'Munich', 2223334444)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23464, 'Toyota London', 'Toyota F1 Team, London, UK', 'SW1A 1AB', 'UK', 'London', 1112223333)
INTO LOCATIONS (locationID, locationName, locationAddress, postalcode, country, city, phone)
VALUES (23465, 'Toyota Tokyo', 'Toyota Racing, Tokyo, Japan', '100-0004', 'Japan', 'Tokyo', 8889990000)
SELECT * FROM dual;


-- EMPLOYEES
INSERT ALL
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (1234, 'Michael', 'Schumacher', TO_DATE('1991-08-25', 'YYYY-MM-DD'), 112233, 23456)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (2345, 'Ayrton', 'Senna', TO_DATE('1984-03-21', 'YYYY-MM-DD'), 112234, 23457)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (3456, 'Niki', 'Lauda', TO_DATE('1978-06-15', 'YYYY-MM-DD'), 112235, 23458)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (4567, 'Alain', 'Prost', TO_DATE('1980-09-12', 'YYYY-MM-DD'), 112236, 23459)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (5678, 'Juan', 'Manuel Fangio', TO_DATE('1950-07-01', 'YYYY-MM-DD'), 112237, 23460)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (6789, 'Jim', 'Clark', TO_DATE('1962-05-03', 'YYYY-MM-DD'), 112238, 23461)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (7890, 'Nigel', 'Mansell', TO_DATE('1985-12-10', 'YYYY-MM-DD'), 112239, 23462)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (8901, 'Emerson', 'Fittipaldi', TO_DATE('1972-02-28', 'YYYY-MM-DD'), 112240, 23463)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (9012, 'Graham', 'Hill', TO_DATE('1965-04-17', 'YYYY-MM-DD'), 112241, 23464)
INTO EMPLOYEES (empID, empFirstName, empLastName, dateHired, deptCode, locationID)
VALUES (1011, 'Jack', 'Brabham', TO_DATE('1955-10-04', 'YYYY-MM-DD'), 112242, 23465)
SELECT * FROM dual;




-- CUSTOMERS
INSERT ALL
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (123456, 'John', 'Smith', 'Toyota Camry', TO_DATE('2023-03-17', 'YYYY-MM-DD'), 1234)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (234567, 'Emily', 'Johnson', 'Toyota Corolla', TO_DATE('2023-05-05', 'YYYY-MM-DD'), 2345)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (345678, 'Michael', 'Williams', 'Toyota RAV4', TO_DATE('2023-07-22', 'YYYY-MM-DD'), 3456)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (456789, 'Jessica', 'Brown', 'Toyota Highlander', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 4567)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (567890, 'David', 'Davis', 'Toyota Prius', TO_DATE('2023-11-28', 'YYYY-MM-DD'), 5678)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (678901, 'Sarah', 'Taylor', 'Toyota Tacoma', TO_DATE('2024-02-14', 'YYYY-MM-DD'), 6789)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (789012, 'Matthew', 'Miller', 'Toyota Tundra', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 7890)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (890123, 'Jennifer', 'Wilson', 'Toyota 4Runner', TO_DATE('2024-06-19', 'YYYY-MM-DD'), 8901)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (901234, 'Andrew', 'Anderson', 'Toyota Camry Hybrid', TO_DATE('2024-08-07', 'YYYY-MM-DD'), 1011)
INTO CUSTOMERS (custID, custFirstName, custLastName, custPurchase, custPurchaseDate, empID)
VALUES (101112, 'Emma', 'Evans', 'Toyota Avalon', TO_DATE('2024-10-25', 'YYYY-MM-DD'), 1011)
SELECT * FROM dual;




-- INVENTORY
INSERT ALL
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (12345678, 'The Toyota Camry is a mid-size car that has been a top choice for buyers looking for reliability and comfort.', 98)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (23456789, 'The Toyota Corolla is a compact car known for its fuel efficiency and practicality.', 78)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (34567890, 'The Toyota RAV4 is a versatile crossover SUV perfect for both city driving and outdoor adventures.', 80)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (45678901, 'The Toyota Highlander is a family-friendly SUV with spacious seating and a smooth ride.', 24)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (56789012, 'The Toyota Prius is a hybrid car known for its exceptional fuel economy and eco-friendly features.', 70)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (67890123, 'The Toyota Tacoma is a rugged pickup truck designed for off-road adventures and everyday utility.', 63)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (78901234, 'The Toyota Tundra is a powerful full-size pickup truck built for towing and hauling.', 45)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (89012345, 'The Toyota 4Runner is a rugged SUV with off-road capabilities and a spacious interior.', 95)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (90123456, 'The Toyota Camry Hybrid offers the fuel efficiency of a hybrid with the comfort and reliability of the Camry sedan.', 56)
INTO INVENTORY (inventoryID, prodDesc, quanAvailable)
VALUES (10111213, 'The Toyota Avalon is a full-size sedan known for its luxurious features and smooth performance.', 87)
SELECT * FROM dual;


-- PRODUCTS
INSERT ALL
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (1234567890, 'Toyota Camry', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 25000, 12345678)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (2345678901, 'Toyota Corolla', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 18000, 23456789)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (3456789012, 'Toyota RAV4', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 25000, 34567890)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (4567890123, 'Toyota Highlander', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 30000, 45678901)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (5678901234, 'Toyota Prius', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 18000, 56789012)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (6789012345, 'Toyota Tacoma', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 20000, 67890123)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (7890123456, 'Toyota Tundra', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 25000, 78901234)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (8901234567, 'Toyota 4Runner', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 30000, 89012345)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (9012345678, 'Toyota Camry Hybrid', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 22000, 90123456)
INTO PRODUCTS (productID, productName, madeDate, price, inventoryID)
VALUES (1011121314, 'Toyota Avalon', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 28000, 10111213)
SELECT * FROM dual;



-- SALES
INSERT ALL
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1001, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 5, 1234567890, 1234)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1002, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 3, 2345678901, 2345)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1003, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 2, 3456789012, 3456)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1004, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 4, 4567890123, 4567)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1005, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 6, 5678901234, 5678)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1006, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 1, 6789012345, 6789)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1007, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 7, 7890123456, 7890)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1008, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 8, 8901234567, 8901)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1009, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 3, 9012345678, 9012)
INTO SALES (saleID, saleDate, quantitySold, productID, empID)
VALUES (1010, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 5, 1011121314, 1011)
SELECT * FROM dual;


-- WARRANTY
INSERT ALL
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100001, 'Technical Issue', 2000, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 1001)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100002, 'Crash', 500, TO_DATE('2024-04-14', 'YYYY-MM-DD'), TO_DATE('2025-04-14', 'YYYY-MM-DD'), 1002)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100003, 'Engine Failure', 800, TO_DATE('2024-04-13', 'YYYY-MM-DD'), TO_DATE('2025-04-13', 'YYYY-MM-DD'), 1003)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100004, 'Collision', 1200, TO_DATE('2024-04-12', 'YYYY-MM-DD'), TO_DATE('2025-04-12', 'YYYY-MM-DD'), 1004)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100005, 'Retired', 1500, TO_DATE('2024-04-11', 'YYYY-MM-DD'), TO_DATE('2025-04-11', 'YYYY-MM-DD'), 1005)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100006, 'Hydraulics', 900, TO_DATE('2024-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), 1006)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100007, 'Accident', 700, TO_DATE('2024-04-09', 'YYYY-MM-DD'), TO_DATE('2025-04-09', 'YYYY-MM-DD'), 1007)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100008, 'Power Unit', 2000, TO_DATE('2024-04-08', 'YYYY-MM-DD'), TO_DATE('2025-04-08', 'YYYY-MM-DD'), 1008)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100009, 'Transmission', 1100, TO_DATE('2024-04-07', 'YYYY-MM-DD'), TO_DATE('2025-04-07', 'YYYY-MM-DD'), 1009)
INTO WARRANTY (warrantyID, warrantyType, warrantyAmount, warrantyStartDate, warrantyExpiryDate, salesID)
VALUES (100010, 'Gearbox', 1300, TO_DATE('2024-04-06', 'YYYY-MM-DD'), TO_DATE('2025-04-06', 'YYYY-MM-DD'), 1010)
SELECT * FROM dual;


-- PARTS
INSERT ALL
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10001, 'Engine', 'High-performance engine designed for racing cars.', 100001)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10002, 'Transmission', 'State-of-the-art transmission system for optimal power delivery.', 100002)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10003, 'Suspension System', 'Advanced suspension system for precise handling and stability.', 100003)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10004, 'Braking System', 'High-performance braking system designed for maximum stopping power.', 100004)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10005, 'Aerodynamics Kit', 'Specially engineered aerodynamics kit to improve downforce and airflow.', 100005)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10006, 'Exhaust System', 'High-flow exhaust system for improved engine performance and sound.', 100006)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10007, 'Fuel Injection System', 'Precision fuel injection system for optimal fuel delivery and efficiency.', 100007)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10008, 'Electrical System', 'Advanced electrical system for seamless integration and reliability.', 100008)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10009, 'Cooling System', 'Efficient cooling system to prevent engine overheating during races.', 100009)
INTO PARTS (partNumber, partName, partDesc, warrantyID)
VALUES (10010, 'Steering System', 'High-performance steering system for precise control and responsiveness.', 100010)
SELECT * FROM dual;


-- REVIEWS
INSERT ALL
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100001, 'Toyota Camry is one of the best cars I ever owned.', 1, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 4.7, 1234567890, 123456)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100002, 'I''m impressed with the performance of this transmission system.', 1, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 4.5, 2345678901, 234567)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100003, 'The suspension system provides excellent handling and stability.', 1, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 4.8, 3456789012, 345678)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100004, 'Braking system offers outstanding stopping power.', 1, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 4.9, 4567890123, 456789)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100005, 'The aerodynamics kit significantly improves airflow and downforce.', 1, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 4.6, 5678901234, 567890)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100006, 'The exhaust system enhances both performance and sound.', 1, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 4.8, 6789012345, 678901)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100007, 'Fuel injection system delivers fuel efficiently.', 1, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 4.7, 7890123456, 789012)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100008, 'The electrical system integrates seamlessly.', 1, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 4.6, 8901234567, 890123)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100009, 'Cooling system effectively prevents engine overheating.', 1, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 4.8, 9012345678, 901234)
INTO REVIEWS (reviewID, reviewDesc, reviewNumber, reviewDate, reviewRating, prodID, custID)
VALUES (100010, 'Steering system provides precise control and responsiveness.', 1, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 4.9, 1011121314, 101112)
SELECT * FROM dual;




