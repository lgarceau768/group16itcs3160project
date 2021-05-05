DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAverageVendorRatings`()
Begin
	select 
	restaurant.restaurant_id,
	restaurant.location,
	restaurant.restaurant_name,
	restaurant.schedule,
	restaurant.website,
	floor(coalesce(avg(vendor_ratings.rating), 0)) as average_rating,
	vendor_ratings.person_id,
	vendor_ratings.description,
	vendor_ratings.timestamp
	from restaurant
	left join vendor_ratings 
	on restaurant.restaurant_id = vendor_ratings.resturant_id
	where vendor_ratings.person_id is not NULL
	group by restaurant_id;
end$$
DELIMITER ;
