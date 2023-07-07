SELECT staff_id FROM (
	SELECT staff_id, SUM(count_page) AS 'summa' FROM activity_staff GROUP BY staff_id
) AS t WHERE summa > 500;