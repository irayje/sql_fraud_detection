SELECT cc.cardholder_id, cc.card, tr.date, tr.amount, tr.id, tr.id_merchant, mer.id_merchant_category, mercat.name
FROM "CREDITCARD" cc
LEFT JOIN "TRANSACTIONS" tr
ON cc.card = tr.card
LEFT JOIN "MERCHANTS" mer
ON tr.id_merchant = mer.id
LEFT JOIN "MERCHANT_CATEGORY" mercat
ON mer.id_merchant_category = mercat.id  

-- How can you isolate (or group) the transactions of each cardholder?
SELECT name
FROM "MERCHANT_CATEGORY"
WHERE id IN
(
  SELECT id
  FROM 
  WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);

GROUP BY cardholder_id;


WHERE city_id IN
(
  SELECT city_id
  FROM city
  WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);






Consider the time period 7:00 a.m. to 9:00 a.m.

    What are the top 100 highest transactions during this time period?

    Do you see any fraudulent or anomalous transactions?

    If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

Some fraudsters hack a credit card by making several small payments (generally less than 2.00),𝑤ℎ𝑖𝑐ℎ𝑎𝑟𝑒𝑡𝑦𝑝𝑖𝑐𝑎𝑙𝑙𝑦𝑖𝑔𝑛𝑜𝑟𝑒𝑑𝑏𝑦𝑐𝑎𝑟𝑑ℎ𝑜𝑙𝑑𝑒𝑟𝑠.𝐶𝑜𝑢𝑛𝑡𝑡ℎ𝑒𝑡𝑟𝑎𝑛𝑠𝑎𝑐𝑡𝑖𝑜𝑛𝑠𝑡ℎ𝑎𝑡𝑎𝑟𝑒𝑙𝑒𝑠𝑠𝑡ℎ𝑎𝑛

2.00 per cardholder. Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

What are the top 5 merchants prone to being hacked using small transactions?

Once you have a query that can be reused, create a view for each of the previous queries.
