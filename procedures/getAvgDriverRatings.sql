DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAverageDriverRatings`()
Begin
	select 
	driver.driver_id,
	driver.student_id,
	driver.license_number,
	driver.date_hired,
	driver.rating as old_average_rating,
	floor(coalesce(avg(driver_ratings.rating), 0)) as current_average_rating
	from driver
	left join driver_ratings 
	on driver.driver_id = driver_ratings.driver_id
	where driver_ratings.driver_id is not NULL
	group by driver_id;
end$$
DELIMITER ;
