CREATE TABLE `lesson2`.`sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_date` DATE NOT NULL,
  `count_product` INT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO `lesson2`.`sales` (`order_date`, `count_product`) VALUES ('2022-01-01', '156');
INSERT INTO `lesson2`.`sales` (`order_date`, `count_product`) VALUES ('2022-01-02', '180');
INSERT INTO `lesson2`.`sales` (`order_date`, `count_product`) VALUES ('2022-01-03', '21');
INSERT INTO `lesson2`.`sales` (`order_date`, `count_product`) VALUES ('2022-01-04', '124');
INSERT INTO `lesson2`.`sales` (`order_date`, `count_product`) VALUES ('2022-01-05', '341');

SELECT
	id AS 'Номер заказа',
    count_product AS 'Количество',
    CASE
		WHEN count_product < 100 THEN 'Маленький заказ'
        WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
        WHEN count_product > 300 THEN 'Большой заказ'
        ELSE 'Заказ'
	END AS 'Тип заказа'
FROM sales;

