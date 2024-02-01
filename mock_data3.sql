

CREATE DATABASE mock_data3_db;
USE mock_data3_db;

CREATE TABLE MOCK_DATA(
trader_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
email VARCHAR(50),
country VARCHAR(50),
postal_code VARCHAR(50) NULL,
favorite_color VARCHAR(50),
purchase_price  DECIMAL(15,2),
sale_price DECIMAL(15,2),
profit  DECIMAL(15,2)
);

SELECT *
FROM 
	[MOCK_DATA]
WHERE 
	country = 'China';

SELECT *
FROM 
	[MOCK_DATA]
WHERE 
	postal_code = '9660' 
OR
	postal_code = '3078'
OR 
	postal_code = '6149' 
OR 
	postal_code = '2040';

--Вывести все у чего прибыль больше 5%

SELECT *
FROM 
	[MOCK_DATA]
WHERE 
	(((sale_price-purchase_price)/sale_price) * 100) > 5;
