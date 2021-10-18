CREATE DATABASE ClientsOrders
USE ClientsOrders
CREATE TABLE tbl_Orders 
(
     [Order_ID] VARCHAR(32), 
	 [Customer_ID] VARCHAR(32) PRIMARY KEY,
	 [Products_group] VARCHAR(32)
)
CREATE TABLE tbl_Customers 
(
     [Customer_ID] VARCHAR(32),
	 [Customer_name] VARCHAR(32),
	 [Customer_age] INT,
	 [Job_title] VARCHAR(32),
	 [Phone_number] BIGINT,
	 [Email] VARCHAR(64),
	 FOREIGN KEY (Customer_ID) REFERENCES tbl_Orders 
)
INSERT INTO tbl_Orders(Order_ID, Customer_ID, Products_group)
VALUES 
('OR001', 'John01', 'Chairs'),
('OR002', 'Tony02', 'Tables'),
('OR003', 'Tom08', 'Kitchen'),
('OR004', 'Chris01', 'Rug'),
('OR005', 'Jack02', 'Stool'),
('OR006', 'Jack03', 'Chairs'),
('OR007', 'Tim02', 'Chairs'),
('OR008', 'Sam01', 'Tables'),
('OR009', 'Harry01', 'Kitchen'),
('OR010', 'Tony03', 'Tables')

select * from tbl_Orders
select * from tbl_Orders order by Order_ID ASC;

INSERT INTO tbl_Customers(Customer_ID, Customer_name, Customer_age, Job_title, Phone_number, Email)
VALUES 
('John01', 'John Black', 25, 'Designer', 0125868556,'john123@gmail.com'),
('Tony02', 'Tony Guide', 48, 'Architect', 0126668556,'tony123@gmail.com'),
('Tom08', 'Tom Abgrade', 42, 'CEO', 0155868556,'tom123@gmail.com'),
('Chris01', 'Chris Evans', 28, 'Senior Manager', 0125333456,'chris123@gmail.com'),
('Jack02', 'Jack Chin', 31, 'Designer', 0158868556,'jack123@gmail.com'),
('Jack03', 'Jack Oldman', 51, 'Architect', 0155864456,'jack1234@gmail.com'),
('Tim02', 'Tim Jones', 27, 'Designer', 015883336,'tim123@gmail.com'),
('Sam01', 'Sam Karslsson', 39, 'Developer', 0125468556,'sam123@gmail.com'),
('Harry01', 'Harry Charles', 32, 'Architect', 0150008556,'harry123@gmail.com'),
('Tony03', 'Tony Jackman', 22, 'Designer', 0448868556,'tony1234@gmail.com')

select * from tbl_Customers

update tbl_Customers set Job_title='CTO' where Customer_ID='Tom08'
delete from tbl_Customers where Customer_ID='Tony03'

SELECT tbl_Orders.Order_ID, tbl_Orders.Products_group, tbl_Orders.Customer_ID, tbl_Customers.Customer_name,
tbl_Customers.Customer_age, tbl_Customers.Job_title, tbl_Customers.Phone_number, tbl_Customers.Email  
FROM tbl_Orders
INNER JOIN tbl_Customers ON tbl_Orders.Customer_ID=tbl_Customers.Customer_ID;

SELECT * from tbl_Customers
SELECT * from tbl_Orders where Products_group in ('Chairs')
 
SELECT * from tbl_Customers order by Customer_age DESC;
SELECT * from tbl_Customers where Customer_age > 40;

