CREATE TABLE `lesson2`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` VARCHAR(3) NOT NULL,
  `amount` DOUBLE NULL,
  `order_status` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC) VISIBLE);

INSERT INTO `lesson2`.`orders` (`employee_id`, `amount`, `order_status`) VALUES ('e03', '15', 'OPEN');
INSERT INTO `lesson2`.`orders` (`employee_id`, `amount`, `order_status`) VALUES ('e01', '25.5', 'OPEN');
INSERT INTO `lesson2`.`orders` (`employee_id`, `amount`, `order_status`) VALUES ('e05', '100.7', 'CLOSED');
INSERT INTO `lesson2`.`orders` (`employee_id`, `amount`, `order_status`) VALUES ('e02', '22.18', 'OPEN');
INSERT INTO `lesson2`.`orders` (`employee_id`, `amount`, `order_status`) VALUES ('e04', '9.5', 'CANCELLED');

SELECT
	id,
    order_status,
    CASE order_status
		WHEN 'OPEN' THEN 'Order is in open state'
        WHEN 'CLOSED' THEN 'Order is closed'
        WHEN 'CANCELLED' THEN 'Order is cancelled'
        ELSE 'N\A'
	END AS 'full_order_status'
FROM orders;