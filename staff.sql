SELECT * FROM staff ORDER BY salary;
SELECT * FROM staff ORDER BY salary DESC;

SELECT * FROM staff ORDER BY salary DESC LIMIT 5;

SELECT post, SUM(salary) FROM staff GROUP BY post;

SELECT SUM(count) AS 'Количество рабочих в возрасте от 24 до 49 лет' FROM (
	SELECT
		post,
		age,
			CASE
				WHEN post = 'Рабочий' AND age BETWEEN 24 AND 49 THEN 1
				ELSE 0
			END AS 'count'
	FROM staff
) AS T;

SELECT COUNT(DISTINCT post) AS 'Количество должностей' FROM staff;