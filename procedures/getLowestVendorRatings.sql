DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLowestVendorRatings`()
Begin
	select * from vendor_ratings as ratings
	left join restaurant on 
	ratings.resturant_id = restaurant.restaurant_id
	order by ratings.rating asc;
end$$
DELIMITER ;
