DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHighestDriverRatings`()
Begin
	select * from driver_ratings as ratings
	left join driver on 
	ratings.driver_id = driver.driver_id
	order by ratings.rating desc;
end$$
DELIMITER ;
