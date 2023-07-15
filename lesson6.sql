SELECT dater(seconds) AS 'DD:HH:MM' FROM date_it;

CREATE DEFINER=`root`@`localhost` FUNCTION `dater`(seconds INT) RETURNS char(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE days char(50);
  DECLARE hm char(50);
  DECLARE res char(50);
  SET days = FLOOR(HOUR(SEC_TO_TIME(seconds)) / 24);
  SET hm = TIME_FORMAT(SEC_TO_TIME(seconds % (24 * 60 * 60)), '%H:%i');
  SET res = CONCAT(days, ':', hm);
  RETURN (res);
END

-- line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line line
    
CALL dwos(35);

CREATE DEFINER=`root`@`localhost` PROCEDURE `dwos`(amountoftatas INT)
BEGIN
  CREATE TEMPORARY TABLE taleb (
  `tit` INT NOT NULL,
  PRIMARY KEY (`tit`));

  SET @toot = 2;
    
  loopie:
  WHILE @toot <= amountoftatas DO
      INSERT INTO `taleb` (`tit`) VALUES (@toot);
      SET @toot = @toot + 2;
  END WHILE loopie;
    
  SELECT * FROM taleb;
  DROP TABLE taleb;
    
END
