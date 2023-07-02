--- 1068. Product Sales Analysis I ---

-- Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table. --

SELECT product_name, year, price
FROM Sales
INNER JOIN Product
  ON Sales.product_id = Product.product_id