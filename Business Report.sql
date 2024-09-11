-- Business Report




CREATE VIEW Toyota_department_performance AS
SELECT
    d.deptCode,
    d.deptName,
    COUNT(e.empID) AS TotalEmployees,
    COUNT(s.saleID) AS TotalSales,
    AVG(s.quantitySold) AS AverageSalesPerEmployee
FROM
    Departments d
LEFT JOIN
    Employees e ON d.deptCode = e.deptCode
LEFT JOIN
    Sales s ON e.empID = s.empID
GROUP BY
    d.deptCode, d.deptName
ORDER BY
    TotalSales DESC;


/*
   This view provides an overview of each department's performance within Toyota.It includes the total number of employees in each department, 
   the total number of sales made by employees in each department, and the average quantity of products sold per employee. 
   This report helps the business assess the performance and efficiency of each department.
*/

CREATE VIEW Toyota_employee_productivity AS
SELECT
    e.empID,
    e.empFirstName || ' ' || e.empLastName AS EmployeeName,
    COUNT(s.saleID) AS TotalSales,
    SUM(s.quantitySold) AS TotalQuantitySold,
    AVG(s.quantitySold) AS AverageQuantitySoldPerSale
FROM
    Employees e
LEFT JOIN
    Sales s ON e.empID = s.empID
GROUP BY
    e.empID, e.empFirstName || ' ' || e.empLastName
ORDER BY
    TotalSales DESC;


/*
   This view provides statistics for each employee's productivity. It includes the total number of sales made by each employee, 
   the total quantity of products sold by each employee, and the average quantity of products sold per sale. This report helps 
   the business evaluate employee performance and productivity.
*/


CREATE VIEW Toyota_sales_performance AS
SELECT
    p.productID,
    p.productName,
    COUNT(s.saleID) AS TotalSales,
    SUM(s.quantitySold) AS TotalQuantitySold,
    AVG(s.quantitySold) AS AverageQuantitySoldPerProduct
FROM
    Products p
LEFT JOIN
    Sales s ON p.productID = s.productID
GROUP BY
    p.productID, p.productName
ORDER BY
    TotalSales DESC;


/*
    This view provides insights into the performance of each product sold by Toyota. 
    It includes the total number of sales for each product, the total quantity of each product sold, 
    and the average quantity sold per product. This report helps the business assess the popularity 
    and sales performance of each product.
*/


CREATE VIEW Toyota_customer_satisfaction AS
SELECT
    c.custID,
    c.custFirstName || ' ' || c.custLastName AS CustomerName,
    AVG(r.reviewRating) AS AverageReviewRating,
    COUNT(r.reviewID) AS TotalReviews,
    SUM(CASE WHEN r.reviewRating >= 4 THEN 1 ELSE 0 END) AS PositiveReviews
FROM
    Customers c
LEFT JOIN
    Reviews r ON c.custID = r.custID
GROUP BY
    c.custID, c.custFirstName || ' ' || c.custLastName
ORDER BY
    c.custID;


/*
    This view provides an overview of customer satisfaction based on reviews. 
    It includes the average review rating for each customer, the total number 
    of reviews received by each customer, and the number of positive reviews 
    (those with a rating of 4 or higher). This report helps the business assess 
    customer satisfaction and identify areas for improvement.
*/
