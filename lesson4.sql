SELECT shops.shopname, cats.name
FROM cats
INNER JOIN  shops ON cats.shops_id=shops.id;

SELECT shopname
	FROM (
	    SELECT shops.shopname, cats.name
	    FROM cats
	    INNER JOIN  shops ON cats.shops_id=shops.id
	) AS T
WHERE name = 'Murzik';

SELECT shops.shopname, cats.name
FROM shops
JOIN cats
ON shops.id=cats.shops_id
WHERE cats.name = 'Murzik';

SELECT shops.shopname, cats.name
FROM shops
JOIN cats
ON shops.id=cats.shops_id
WHERE cats.name NOT IN ('Murzik', 'Zuza');

SELECT an_name, an_cost FROM analysis
JOIN orders ON analysis.an_id=orders.ord_an
WHERE DATE (orders.ord_datetime) BETWEEN '2020-02-05' AND '2020-02-05' + INTERVAL 1 WEEK
ORDER by orders.ord_datetime;
