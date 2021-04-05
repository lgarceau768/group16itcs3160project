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

# Business Rules <a name="3"></a> 
The system supports three actors, students, staff, and campus faculty. Staff will have a selection for AdminYorN and Position.
Students will have graduation year, major, and a selection for graduate or undergraduate. Campus faculty have title, highest degree
and degree college for keys. Locations need to have an ID, name, and address. Drivers must be classified as students and also need vehicle
information such as license plate number, date hired and ratings. Deliveries have a flat fee of $5 and each delivery is a one-to-one
between student and restaurant. Each delivery requires an ID. The rating system will be filtered according to vendors and drivers will
receive one or no ratings per delivery.

# EERD (full database) <a name="4"></a> 

## EERD Diagram
![EERD Diagram](/imgs/eerd.png)

# MySQL Queries <a name="5"></a>  
__Retrieve the drivers information__  
`select * from campus_eats_fall2020.driver as a
left join campus_eats_fall2020.person as b on a.driver_id = b.person_id;`


# Stored Procedure <a name="6"></a> 

# Description of Future Work / Implementation <a name="7"></a> 

# MySQL Dump <a name="8"></a>  

# Project Video <a name="9"></a> 
