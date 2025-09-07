CREATE TABLE Customers (
    Customer_ID NUMBER PRIMARY KEY,
    Customer_Name VARCHAR2(100),
    Email VARCHAR2(100),
    Phone_Number VARCHAR2(20),
    Address VARCHAR2(200)
);

CREATE TABLE Products (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100),
    Price NUMBER(10, 2)
);

CREATE TABLE Sales (
    Sale_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER REFERENCES Customers(Customer_ID),
    Sale_Date DATE
);

CREATE TABLE Sales_Details (
    Sale_Detail_ID NUMBER PRIMARY KEY,
    Sale_ID NUMBER REFERENCES Sales(Sale_ID),
    Product_ID NUMBER REFERENCES Products(Product_ID),
    Quantity NUMBER,
    Total_Price NUMBER(10, 2)
);


INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (1, 'Nguy?n V?n A', 'nguyenvana@example.com', '0912345678', '123 ???ng Lê L?i, Qu?n 1, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (2, 'Tr?n Th? B', 'tranthib@example.com', '0987654321', '456 ???ng Tr?n H?ng ??o, Qu?n 5, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (3, 'Lê Minh C', 'leminhc@example.com', '0909123456', '789 ???ng Hoàng Hoa Thám, Qu?n Tân Bình, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (4, 'Ph?m Thùy D', 'phamthuyd@example.com', '0934567890', '321 ???ng Nguy?n Hu?, Qu?n 1, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (5, '?? Qu?c E', 'doquoce@example.com', '0945678901', '654 ???ng Cách M?ng Tháng Tám, Qu?n 3, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (6, 'V? Th? F', 'vuthif@example.com', '0923456789', '987 ???ng Phan Xích Long, Qu?n Phú Nhu?n, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (7, 'Hoàng V?n G', 'hoangvang@example.com', '0912456789', '111 ???ng Lê V?n S?, Qu?n 3, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (8, 'Bùi Th? H', 'buithih@example.com', '0935678912', '222 ???ng ?i?n Biên Ph?, Qu?n Bình Th?nh, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (9, 'Phan V?n I', 'phanvani@example.com', '0976543210', '333 ???ng Hai Bà Tr?ng, Qu?n 1, TP.HCM');

INSERT INTO Customers (Customer_ID, Customer_Name, Email, Phone_Number, Address) 
VALUES (10, 'Ngô Th? J', 'ngothij@example.com', '0967890123', '444 ???ng Nguy?n Th? Minh Khai, Qu?n 3, TP.HCM');


INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (1, 'Máy tính xách tay', 25000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (2, '?i?n tho?i thông minh', 15000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (3, 'Máy tính b?ng', 10000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (4, 'Tai nghe', 2000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (5, 'Bàn phím', 800000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (6, 'Chu?t máy tính', 500000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (7, 'Màn hình', 7000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (8, 'Máy in', 4000000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (9, 'Camera web', 1500000.00);

INSERT INTO Products (Product_ID, Product_Name, Price) 
VALUES (10, '? c?ng di ??ng', 2500000.00);


INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (1, 1, TO_DATE('2024-09-01', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (2, 2, TO_DATE('2024-09-02', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (3, 3, TO_DATE('2024-09-03', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (4, 4, TO_DATE('2024-09-04', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (5, 5, TO_DATE('2024-09-05', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (6, 6, TO_DATE('2024-09-06', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (7, 7, TO_DATE('2024-09-07', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (8, 8, TO_DATE('2024-09-08', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (9, 9, TO_DATE('2024-09-09', 'YYYY-MM-DD'));

INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date) 
VALUES (10, 10, TO_DATE('2024-09-10', 'YYYY-MM-DD'));


INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (1, 1, 1, 1, 25000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (2, 1, 5, 2, 1600000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (3, 2, 2, 1, 15000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (4, 2, 7, 1, 7000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (5, 3, 3, 1, 10000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (6, 4, 4, 3, 6000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (7, 5, 6, 1, 500000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (8, 6, 8, 1, 4000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (9, 7, 9, 2, 3000000.00);

INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Total_Price) 
VALUES (10, 8, 10, 1, 2500000.00);

--Khach hang da mua gi
SELECT 
    Customers.Customer_Name,
    Products.Product_Name,
    Sales_Details.Quantity,
    Sales_Details.Total_Price,
    Sales.Sale_Date
FROM 
    Customers
JOIN 
    Sales ON Customers.Customer_ID = Sales.Customer_ID
JOIN 
    Sales_Details ON Sales.Sale_ID = Sales_Details.Sale_ID
JOIN 
    Products ON Sales_Details.Product_ID = Products.Product_ID
ORDER BY 
    Sales.Sale_Date;
    
    
--hoa don mua hang
SELECT 
    Customers.Customer_Name,
    Customers.Email,
    Customers.Phone_Number,
    Products.Product_Name,
    Products.Price AS Unit_Price,
    Sales_Details.Quantity,
    Sales_Details.Total_Price,
    Sales.Sale_Date,
    SUM(Sales_Details.Total_Price) OVER (PARTITION BY Sales.Sale_ID) AS Invoice_Total
FROM 
    Customers
JOIN 
    Sales ON Customers.Customer_ID = Sales.Customer_ID
JOIN 
    Sales_Details ON Sales.Sale_ID = Sales_Details.Sale_ID
JOIN 
    Products ON Sales_Details.Product_ID = Products.Product_ID
ORDER BY 
    Sales.Sale_Date, Customers.Customer_Name;


--tong doanh thu
SELECT 
    SUM(Sales_Details.Total_Price) AS Total_Revenue
FROM 
    Sales_Details;

--san pham ban chay nhat
SELECT 
    Products.Product_Name,
    SUM(Sales_Details.Quantity) AS Total_Quantity_Sold
FROM 
    Products
JOIN 
    Sales_Details ON Products.Product_ID = Sales_Details.Product_ID
GROUP BY 
    Products.Product_Name
ORDER BY 
    Total_Quantity_Sold DESC
FETCH FIRST 1 ROWS ONLY;

--tong chi tieu khach hang
SELECT 
    Customers.Customer_Name,
    SUM(Sales_Details.Total_Price) AS Total_Spending
FROM 
    Customers
JOIN 
    Sales ON Customers.Customer_ID = Sales.Customer_ID
JOIN 
    Sales_Details ON Sales.Sale_ID = Sales_Details.Sale_ID
GROUP BY 
    Customers.Customer_Name
ORDER BY 
    Total_Spending DESC;

