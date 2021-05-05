# Campus Delivery Rating System  
This is Group 16's ITIS 3160 Project. The goal of this project was to take an existing relational database  
and load it with sample data, then create stored procedures that provide the highest and lowest ratings  
for drivers and for vendors as well. 

# Index
* [Introduction](#introduction)  
* [Use Case for Rating System](#2)  
* [Business Rules](#3)  
* [EERD (full database)](#4)  
* [MySQL Queries](#5)  
* [Stored Procedure](#6)  
* [Description of Future Work / Implementation](#7)  
* [MySQL Dump](#8)  
* [Project Video](#9)  

# Introduction  
Team 16 is made up of Luke Garceau, Karlos Isaac, and Jonathan Duffy. We will be using this page to upload and
display changes that we have made to a pre-existing database including the addition of data and procedures.
We will also use this page to add our queries and their optimizations.

# Use Case for Rating System <a name="2"></a>
![USES CASE Diagram](/imgs/usescases.png)

# Business Rules <a name="3"></a> 
The system supports three actors, students, staff, and campus faculty. Staff will have a selection for AdminYorN and Position.
Students will have graduation year, major, and a selection for graduate or undergraduate. Campus faculty have title, highest degree
and degree college for keys. Locations need to have an ID, name, and address. Drivers must be classified as students and also need vehicle
information such as license plate number, date hired and ratings. Deliveries have a flat fee of $5 and each delivery is a one-to-one
between student and restaurant. Each delivery requires an ID. The rating system will be filtered according to vendors and drivers will
receive one or no ratings per delivery. For the delivery and vendor ratings you are able to view the variables listed below.

### Driver Ratings
* driver_id 
* driver_name
* person_id
* rating
* description
* timestamp

### Vendor Rating
* vendor_id
* resturant_name
* person_id
* rating
* description
* timestamps

# EERD (full database) <a name="4"></a> 

## EERD Diagram
![EERD Diagram](/imgs/eerd.png)

# MySQL Queries <a name="5"></a>  
Also Found in the Folder [sql_commands](#https://github.com/lgarceau768/group16itcs3160project/tree/master/sql_commands)
__Retrieve the drivers information__  
`select * from campus_eats_fall2020.driver as a
left join campus_eats_fall2020.person as b on a.driver_id = b.person_id;`

__Retrieve vendor_ratings detailed info__  
`select * from campus_eats_fall2020.vendor_ratings as a
left join campus_eats_fall2020.person as b on a.person_id = b.person_id;`  

__Retrieve driver_ratings detailed info__  
`select * from campus_eats_fall2020.driver_ratings as a
left join campus_eats_fall2020.person as b on a.person_id = b.person_id;`  

## Data Table For the Vendor Ratings (random catchphrase text)
| resturant_id | person_id | rating | description                                  | timestamp           | resturant_name                |
|--------------|-----------|--------|----------------------------------------------|---------------------|-------------------------------|
| 52           | 30        | 2      | Streamlined leading edge data-warehouse      | 2021-01-03 10:07:18 | Hilpert, Von and Frami        |
| 80           | 74        | 1      | Distributed composite hub                    | 2020-09-14 1:01:33  | Predovic Group                |
| 28           | 35        | 4      | Down-sized intangible info-mediaries         | 2020-12-04 15:05:53 | Stanton-D'Amore               |
| 88           | 89        | 4      | Ameliorated mobile customer loyalty          | 2020-10-27 22:48:44 | Barrows Group                 |
| 68           | 2         | 3      | Re-contextualized directional framework      | 2020-06-22 21:47:31 | Bahringer, Herman and Lebsack |
| 86           | 13        | 4      | Multi-tiered dynamic hierarchy               | 2021-04-02 16:44:37 | Corwin Inc                    |
| 21           | 92        | 5      | Sharable neutral secured line                | 2020-09-10 14:05:51 | Cruickshank-Reilly            |
| 35           | 64        | 4      | Visionary responsive standardization         | 2021-01-02 15:52:40 | Rolfson LLC                   |
| 73           | 54        | 4      | Versatile eco-centric interface              | 2021-03-15 4:34:16  | Davis-Gottlieb                |
| 22           | 13        | 2      | Devolved global open system                  | 2020-07-14 6:22:08  | Eichmann-Casper               |
| 64           | 35        | 2      | Profound non-volatile instruction set        | 2020-10-16 21:36:28 | Greenfelder-Strosin           |
| 13           | 8         | 4      | Cloned multi-tasking artificial intelligence | 2020-04-13 14:52:55 | Ankunding Group               |
| 48           | 15        | 5      | Object-based 3rd generation attitude         | 2020-08-18 9:57:57  | McGlynn PLC                   |
| 14           | 63        | 4      | Reverse-engineered eco-centric core          | 2021-02-15 21:42:27 | Weber, Lehner and Mueller     |
| 12           | 61        | 1      | Vision-oriented asymmetric flexibility       | 2020-08-30 15:38:27 | Abbott-Schmitt                |
| 28           | 31        | 3      | Multi-layered incremental definition         | 2020-08-14 20:25:57 | Stanton-D'Amore               |
| 74           | 62        | 1      | Quality-focused 5th generation policy        | 2020-11-20 18:37:04 | Kuhic, DuBuque and Rutherford |
| 8            | 89        | 4      | Reduced zero tolerance approach              | 2020-07-15 18:35:25 | Kub, Borer and Ward           |
| 89           | 59        | 4      | Phased full-range projection                 | 2020-11-27 7:36:29  | Kub, Hoeger and Swaniawski    |
| 20           | 87        | 3      | Switchable heuristic customer loyalty        | 2020-04-16 20:52:52 | Smitham-Haley                 |

## Data Table for Driver Ratings (random lorem ipsum text)  
| driver_id | person_id | rating | description                                                             | timestamp           | driver_name           |
|-----------|-----------|--------|-------------------------------------------------------------------------|---------------------|-----------------------|
| 1         | 10        | 2      | Lorem ipsum dolor sit amet,                                             | 2075-01-13 08:36:41 | Keith Turner          |
| 1         | 86        | 2      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed | 2165-08-26 05:04:24 | Keith Turner          |
| 1         | 160       | 5      | Lorem ipsum dolor sit amet,                                             | 1950-12-10 20:53:43 | Keith Turner          |
| 2         | 1         | 3      | Lorem ipsum                                                             | 1906-10-11 19:54:12 | Ms. Antonette Keeling |
| 2         | 9         | 3      | Lorem ipsum dolor sit amet,                                             | 1902-02-06 14:14:14 | Ms. Antonette Keeling |
| 2         | 122       | 4      | Lorem ipsum dolor sit amet, consectetuer                                | 2017-09-30 21:41:29 | Ms. Antonette Keeling |
| 2         | 123       | 3      | Lorem ipsum dolor sit                                                   | 1970-10-31 04:40:26 | Ms. Antonette Keeling |
| 3         | 154       | 4      | Lorem ipsum dolor sit amet,                                             | 2084-07-28 05:32:57 | Miss Rosanna Connelly |
| 4         | 1         | 1      | Lorem ipsum                                                             | 1934-11-24 14:46:59 | Noel Emard            |
| 4         | 32        | 4      | Lorem ipsum dolor sit amet, consectetuer adipiscing                     | 2080-05-18 10:15:02 | Noel Emard            |
| 4         | 90        | 3      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur     | 2014-07-31 09:20:00 | Noel Emard            |
| 4         | 101       | 3      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur     | 1903-05-15 05:10:35 | Noel Emard            |
| 5         | 1         | 4      | Lorem ipsum dolor                                                       | 2068-07-17 08:00:35 | Trudie McClure Jr.    |
| 6         | 54        | 5      | Lorem ipsum dolor                                                       | 2095-04-05 20:29:20 | Dr. Velva Howe        |
| 7         | 100       | 5      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed | 2178-09-16 13:51:30 | Colby Stokes          |
| 2         | 1         | 3      | Lorem ipsum                                                             | 1906-10-11 19:54:12 | Ms. Antonette Keeling |
| 4         | 32        | 4      | Lorem ipsum dolor sit amet, consectetuer adipiscing                     | 2080-05-18 10:15:02 | Noel Emard            |
| 6         | 54        | 5      | Lorem ipsum dolor                                                       | 2095-04-05 20:29:20 | Dr. Velva Howe        |
| 1         | 86        | 2      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed | 2165-08-26 05:04:24 | Keith Turner          |
| 4         | 1         | 1      | Lorem ipsum                                                             | 1934-11-24 14:46:59 | Noel Emard            |
| 2         | 123       | 3      | Lorem ipsum dolor sit                                                   | 1970-10-31 04:40:26 | Ms. Antonette Keeling |
| 3         | 154       | 4      | Lorem ipsum dolor sit amet,                                             | 2084-07-28 05:32:57 | Miss Rosanna Connelly |
| 2         | 9         | 3      | Lorem ipsum dolor sit amet,                                             | 1902-02-06 14:14:14 | Ms. Antonette Keeling |
| 1         | 10        | 2      | Lorem ipsum dolor sit amet,                                             | 2075-01-13 08:36:41 | Keith Turner          |
| 5         | 1         | 4      | Lorem ipsum dolor                                                       | 2068-07-17 08:00:35 | Trudie McClure Jr.    |
| 7         | 100       | 5      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed | 2178-09-16 13:51:30 | Colby Stokes          |
| 4         | 101       | 3      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur     | 1903-05-15 05:10:35 | Noel Emard            |
| 2         | 122       | 4      | Lorem ipsum dolor sit amet, consectetuer                                | 2017-09-30 21:41:29 | Ms. Antonette Keeling |
| 1         | 160       | 5      | Lorem ipsum dolor sit amet,                                             | 1950-12-10 20:53:43 | Keith Turner          |
| 4         | 90        | 3      | Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur     | 2014-07-31 09:20:00 | Noel Emard            |
| 2         | 1         | 4      | Lorem                                                                   | 1923-07-05 21:48:41 | Ms. Antonette Keeling |
| 8         | 15        | 3      | Lorem ipsum dolor                                                       | 2196-05-08 07:00:12 | Rosie Shields V       |
| 4         | 49        | 2      | Lorem ipsum                                                             | 2107-12-03 19:24:53 | Noel Emard            |
| 2         | 60        | 4      | Lorem ipsum                                                             | 1914-12-28 21:02:17 | Ms. Antonette Keeling |
| 1         | 103       | 2      | Lorem ipsum dolor                                                       | 2098-06-19 00:15:56 | Keith Turner          |


# Stored Procedures <a name="6"></a> 
The below procedures allow an admin of the database to  
easily visualize the data. With these tools the admin  
is able to do a variety of things, some examples are  
- Find poor performing drivers
- Find poor performing vendors
- Isolate the issue of why an order got a bad review etc
- Can show a vendor and driver what there current rating is

## getAverageDriverRatings
```
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
```

## getAverageVendorRatings
```
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
```

## getHighestDriverRatings
```
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHighestDriverRatings`()
Begin
	select * from driver_ratings as ratings
	left join driver on 
	ratings.driver_id = driver.driver_id
	order by ratings.rating desc;
end$$
DELIMITER ;
```

## getHighestVendorRatings
```
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHighestVendorRatings`()
Begin
	select * from vendor_ratings as ratings
	left join restaurant on 
	ratings.resturant_id = restaurant.restaurant_id
	order by ratings.rating desc;
end$$
DELIMITER ;
```

## getLowestDriverRatings
```
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLowestDriverRatings`()
Begin
	select * from driver_ratings as ratings
	left join driver on 
	ratings.driver_id = driver.driver_id
	order by ratings.rating asc;
end$$
DELIMITER ;
```

## getLowestVendorRatings
```
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLowestVendorRatings`()
Begin
	select * from vendor_ratings as ratings
	left join restaurant on 
	ratings.resturant_id = restaurant.restaurant_id
	order by ratings.rating asc;
end$$
DELIMITER ;
```

# Description of Future Work / Implementation <a name="7"></a>
For future versions, we will like to be able to implement a timer that tracks customer wait times and delivery times and also allows for ID verifications when dealing with an order that has alcohol.
Also, we want to be able to keep all customer and drivers safe, so will be implementing two-factor authentication.
Hopefully will be able to achieve this when partnerships with local campuses arise.
The implementation would consist of creating a mobile application to make use of this database for ordering food and managing deliveries.


# MySQL Dump <a name="8"></a>  
A full folder dump is located in this [directory](/sql_dump)

`init_db.sql` is the file for creating the database found [here](/sql_commands/init_db.sql)  

# Project Video <a name="9"></a>  
[![Loading](http://www.wired.com/wp-content/uploads/2016/03/MIT-Web-Loading.jpg)](https://drive.google.com/file/d/1enNj_nksD2xT5F2ANQqtQAT9mDNF5qm0/view?usp=sharing)
