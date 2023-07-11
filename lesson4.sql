SELECT shops.shopname, cats.name
FROM cats
INNER JOIN  shops ON cats.shops_id=shops.id;


