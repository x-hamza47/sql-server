CREATE TABLE products (
    product_id INT PRIMARY KEY IDENTITY,
    product_name VARCHAR(100) NOT NULL,
    price MONEY,
    manufacture_date DATE
);


--- Difference Between VARCHAR and NVARCHAR

--1) [VARCHAR]
----i) Stores non-Unicode data.
---ii) Uses 1 byte per character.
--iii) Stores English text.

----Example:
DECLARE @name VARCHAR(50) = 'Laptop';
PRINT @name;

GO
--1) [NVARCHAR]
----i) Stores Unicode data.
---ii) Uses 2 bytes per character.
--iii) Store text in multiple languages.

----Example:

DECLARE @name NVARCHAR(50) = N'ハムザ';
PRINT @name;

