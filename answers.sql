-- Question 1 Achieving 1NF (First Normal Form) 
-- customer table
CREATE TABLE Customer_1NF(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(100)
);
-- Table Products
CREATE TABLE Products_1NF(
product_1d INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
OrderID INT,
FOREIGN KEY(OrderID) REFERENCES Customer_1NF(OrderID)
);

-- populate the ProductDetail table with sample data
INSERT INTO Customer_1NF(OrderID,CustomerName)
VALUES
(101,"John Doe"),
(102,"Jane Smith"),
(103,"Emily Clark");

-- populate the Products table with sample data
INSERT INTO Products_1NF(name,OrderID)
VALUES
("Laptop",101),
("Mouse",101),
("Tablet",102),
("Keyboard",102),
("Mouse",102),
("Phone",103);

-- Question 2 Achieving 2NF (Second Normal Form)
-- order table
CREATE TABLE Orders_2NF(
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100)
);
-- order details table
CREATE TABLE OrderDetails_2NF(
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY(OrderID) REFERENCES Orders_2NF(OrderID)
);
-- populate the Orders_2NF table with sample data
INSERT INTO Orders_2NF(OrderID,CustomerName)
VALUES
(101,"John Doe"),
(102,"Jane Smith"),
(103,"Emily Clark");
-- populate the OrderDetails_2NF table with sample data
INSERT INTO OrderDetails_2NF(OrderID,Product,Quantity)
VALUES
(101,"Laptop",2),
(101,"Mouse",1),
(102,"Tablet",3),
(102,"Keyboard",1),
(102,"Mouse",2),
(103,"Phone",1);