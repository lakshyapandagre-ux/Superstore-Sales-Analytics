SELECT
    MIN(sales),
    MAX(sales),
    AVG(sales),
    STDDEV(sales)
FROM orders;


SELECT
    MIN(profit),
    MAX(profit),
    AVG(profit),
    STDDEV(profit)
FROM orders;


SELECT
    MIN(discount),
    MAX(discount),
    AVG(discount),
    STDDEV(discount)
FROM orders;

SELECT
    COUNT(*)
FROM orders
WHERE profit < 0;

SELECT
ROUND(
(
COUNT(
CASE
WHEN profit < 0
THEN 1
END
)::numeric
/
COUNT(*)
)*100,
2
) AS loss_percentage
FROM orders;

SELECT
CORR(sales, profit)
FROM orders;


SELECT
CORR(sales, discount)
FROM orders;



SELECT
CORR(profit, discount)
FROM orders;


SELECT
order_id,
sales
FROM orders
ORDER BY sal
es DESC
LIMIT 10;


SELECT
order_id,
profit
FROM orders
ORDER BY profit DESC
LIMIT 10;


SELECT
order_id,
profit
FROM orders
ORDER BY profit
LIMIT 10;


SELECT
ROUND(
STDDEV(sales)
/
AVG(sales),
2
)
AS sales_cv
FROM orders






-- Question 1: Who are the Top 10 Customers by Sales?

SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;



--Question 2: Who are the Top 10 Customers by Profit?

SELECT
    customer_id,
    SUM(profit) AS total_profit
FROM orders
GROUP BY customer_id
ORDER BY total_profit DESC
LIMIT 10;


-- Question 3: Which Customers Generate Losses?

-- SELECT
--     customer_id,
--     SUM(profit) AS total_profit
-- FROM orders
-- GROUP BY customer_id
-- HAVING SUM(profit) < 0
-- ORDER BY total_profit
-- limit(10);


-- Question 5: Which Products Generate the Highest Profit?

SELECT
    product_id,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_id
ORDER BY total_profit DESC
LIMIT 10;

-- Question 6: Which Products Generate the Biggest Losses?

SELECT
    product_id,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_id
ORDER BY total_profit
LIMIT 10;


--Question 7: Which Category Generates the Most Revenue?

SELECT
    p.category,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;



-- Question 8: Which Category Generates the Most Profit?

SELECT
    p.category,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;



-- Question 9: Which Sub-Categories Are Loss Making?

SELECT
    p.sub_category,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.sub_category
HAVING SUM(o.profit) < 0
ORDER BY total_profit;


-- Question 10: Which Region Generates the Highest Revenue?

SELECT
    region,
    SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;


-- Question 11: Which Region Generates the Highest Profit?

SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;


-- Question 12: Which States Generate Losses?

SELECT
    state,
    SUM(profit) AS total_profit
FROM orders
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit;


-- Question 13: What Are the Top 10 Most Frequently Ordered Products?

SELECT
    product_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY product_id
ORDER BY order_count DESC
LIMIT 10;


-- Question 14: Do 20% Products Generate 80% Revenue? (Pareto Analysis)

WITH revenue_cte AS (
    SELECT
        product_id,
        SUM(sales) AS revenue
    FROM orders
    GROUP BY product_id
)

SELECT *
FROM revenue_cte
ORDER BY revenue DESC;




-- Question 15: Rank Customers by Revenue

SELECT
    customer_id,
    SUM(sales) AS revenue,
    RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_rank
FROM orders
GROUP BY customer_id;


-- Question 16: Rank Products by Profit

SELECT
    product_id,
    SUM(profit) AS profit,
    DENSE_RANK() OVER(
        ORDER BY SUM(profit) DESC
    ) AS profit_rank
FROM orders
GROUP BY product_id;



-- Question 17: Identify the Highest Sale Order in Each Region

SELECT *
FROM (
    SELECT
        order_id,
        region,
        sales,
        ROW_NUMBER() OVER(
            PARTITION BY region
            ORDER BY sales DESC
        ) AS rn
    FROM orders
) t
WHERE rn = 1;



-- Question 18: Which Customers Contribute the Most Revenue Cumulatively?

SELECT
    customer_id,
    SUM(sales) AS revenue,
    SUM(SUM(sales))
    OVER(
        ORDER BY SUM(sales) DESC
    ) AS cumulative_revenue
FROM orders
GROUP BY customer_id;

-- Question 19: Which Segment Generates the Most Revenue?

SELECT
    c.segment,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_sales DESC;

-- Question 20: Which Segment Generates the Most Profit?

SELECT
    c.segment,
    SUM(o.profit) AS total_profit
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_profit DESC;


