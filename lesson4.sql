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

SELECT shopname
	FROM (
	    SELECT shops.shopname, cats.name
	    FROM cats
	    INNER JOIN  shops ON cats.shops_id=shops.id
	) AS T
WHERE name != 'Murzik' AND name != 'Zuza';
