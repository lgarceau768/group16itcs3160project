DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHighestVendorRatings`()
Begin
	select * from vendor_ratings as ratings
	left join restaurant on 
	ratings.resturant_id = restaurant.restaurant_id
	order by ratings.rating desc;
end$$
DELIMITER ;
