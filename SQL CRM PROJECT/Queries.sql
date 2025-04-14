-- 1. Total sales by each rep
SELECT s.name, SUM(d.amount) AS total_sales
FROM Deals d
JOIN SalesReps s ON d.rep_id = s.rep_id
WHERE d.stage = 'Won'
GROUP BY s.name;

-- 2. Deal status distribution
SELECT stage, COUNT(*) AS count
FROM Deals
GROUP BY stage;

-- 3. Active deals (not closed)
SELECT * FROM Deals
WHERE closed_on IS NULL;

-- 4. Customers with most won deals
SELECT c.name, COUNT(*) AS won_deals
FROM Deals d
JOIN Customers c ON d.customer_id = c.customer_id
WHERE d.stage = 'Won'
GROUP BY c.name
ORDER BY won_deals DESC;
