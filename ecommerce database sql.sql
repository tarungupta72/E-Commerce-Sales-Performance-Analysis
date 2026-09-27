select * from orders limit 10;

-- =====================================================
-- Q1. What is the total number of orders?
-- =====================================================

SELECT SUM("Net_Amount") AS total_sales
FROM orders;

-- =====================================================
-- Q2. What is the total sales generated?
-- =====================================================

SELECT SUM("Net Amount") AS total_sales
FROM orders;

-- =====================================================
-- Q3. Which products have the highest sales?
-- =====================================================

SELECT "Product",
    SUM("Net_Amount") AS total_sales
	FROM orders
	GROUP BY "Product"
	ORDER BY total_sales DESC;

-- =====================================================
-- Q4. Which cities have the highest sales?
-- =====================================================

SELECT "City",
    SUM("Net_Amount") AS total_sales
	FROM orders
	GROUP BY "City"
	ORDER BY total_sales DESC;

-- =====================================================
-- Q5. What are the total sales for each month?
-- =====================================================

SELECT "Product",
    SUM("Profit") AS total_profit
	FROM orders
	GROUP BY "Product"
	ORDER BY total_profit DESC;

-- =====================================================
-- Q6. Which products generate the highest profit?
-- =====================================================

SELECT "Product",
    SUM("Profit") AS Profit
	FROM orders
	GROUP BY "Product"
	ORDER BY Profit DESC;

-- =====================================================
-- Q7. What is the distribution of orders by payment mode?
-- =====================================================

SELECT "Payment_Mode",
    COUNT(*) AS total_orders
	FROM orders
	GROUP BY "Payment_Mode"
	ORDER BY total_orders DESC;


-- =====================================================
-- Q8. Which orders were cancelled?
-- =====================================================

SELECT COUNT(*) AS cancelled_orders
	FROM orders
	WHERE "Order_Status" = 'Cancelled';

