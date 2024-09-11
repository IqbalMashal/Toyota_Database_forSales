

-- Creation Script



-- TABLE DROP STATEMENTS 

SET ECHO OFF;
SET VERIFICATION OFF;

-- Error handling and table dropping for Departments table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Locations table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Locations CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Employees table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Customers table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Customers CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Inventory table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Inventory CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Products table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Products CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Sales table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Sales CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Warranty table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Warranty CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Parts table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Parts CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Error handling and table dropping for Reviews table
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Reviews CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Ignore if table does not exist
END;
/

-- Create Departments table
CREATE TABLE Departments (
    deptCode NUMBER(6,0) PRIMARY KEY,
    deptName VARCHAR2(50) NOT NULL,
    location VARCHAR2(50) NULL
);

-- Create Locations table
CREATE TABLE Locations (
    locationID NUMBER(5,0) PRIMARY KEY,
    locationName VARCHAR(50) NOT NULL,
    locationAddress VARCHAR(50) NOT NULL,
    postalCode VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone NUMBER(10,0) DEFAULT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    empID NUMBER(4,0) PRIMARY KEY,
    empFirstName VARCHAR(50),
    empLastName VARCHAR(50),
    dateHired DATE,
    locationID NUMBER(5,0),
    deptCode NUMBER (6,0),
    CONSTRAINT locationFK FOREIGN KEY (locationID) REFERENCES Locations(locationID),
    CONSTRAINT DEPARTMENTFK FOREIGN KEY (deptCode) REFERENCES Departments(deptCode)
);

-- Create Customers table
CREATE TABLE Customers (
    custID NUMBER(6,0) PRIMARY KEY,
    custFirstName VARCHAR(50) NOT NULL,
    custLastName VARCHAR(50) NOT NULL,
    custPurchase VARCHAR(50) NOT NULL,
    custPurchaseDate DATE NOT NULL,
    empID NUMBER(4,0),
    CONSTRAINT employeeFK FOREIGN KEY (empID) REFERENCES Employees(empID)
);

-- Create Inventory table
CREATE TABLE Inventory (
    inventoryID NUMBER(8,0) PRIMARY KEY,
    prodDesc VARCHAR(1000) DEFAULT NULL,
    quanAvailable INT CHECK (quanAvailable BETWEEN 1 AND 100) NOT NULL
);

-- Create Products table
CREATE TABLE Products (
    productID NUMBER(10,0) PRIMARY KEY,
    productName VARCHAR(50) NOT NULL,
    madeDate DATE DEFAULT NULL,
    price DECIMAL(9,2) NOT NULL,
    InventoryID NUMBER(8,0),
    CONSTRAINT inventoryFk FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);

-- Create Sales table
CREATE TABLE Sales (
    saleID NUMBER(4,0) PRIMARY KEY,
    productID NUMBER(10,0),
    empID NUMBER(4,0),
    saleDate DATE NOT NULL,
    quantitySold INT DEFAULT NULL CHECK (quantitySold BETWEEN 1 AND 99999),
    CONSTRAINT salesempFk FOREIGN KEY (empID) REFERENCES Employees(empID),
    CONSTRAINT sales2Fk FOREIGN KEY (productID) REFERENCES Products(productID)
);

-- Create Warranty table
CREATE TABLE Warranty (
    warrantyID NUMBER(6,0) PRIMARY KEY,
    warrantyType VARCHAR(50) DEFAULT NULL,
    warrantyAmount DECIMAL(9,2) NOT NULL,
    warrantyStartDate DATE NOT NULL,
    warrantyExpiryDate DATE NOT NULL,
    salesID NUMBER(4,0),
    CONSTRAINT salesFk FOREIGN KEY (salesID) REFERENCES Sales(saleID)
);

-- Create Parts table
CREATE TABLE Parts (
    partNumber NUMBER(5,0) PRIMARY KEY,
    partName VARCHAR(50) NOT NULL,
    partDesc VARCHAR(1000) NOT NULL,
    warrantyID NUMBER(6,0),
    CONSTRAINT warrantyFk FOREIGN KEY (warrantyID) REFERENCES Warranty(warrantyID)
);

-- Create Reviews table
CREATE TABLE Reviews (
    reviewID NUMBER(6,0) PRIMARY KEY,
    reviewDesc VARCHAR(2000) NOT NULL,
    reviewNumber INT NOT NULL,
    reviewDate DATE NOT NULL,
    reviewRating DECIMAL(5,2) DEFAULT NULL CHECK (reviewRating BETWEEN 1 AND 5),
    prodID NUMBER(10,0),
    custID NUMBER(6,0),
    CONSTRAINT productCustomerFK FOREIGN KEY (prodID) REFERENCES Products(productID),
    CONSTRAINT Review2FK FOREIGN KEY (custID) REFERENCES Customers(custID)
);
