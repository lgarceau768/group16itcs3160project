# Campus Delivery Rating System  
This is Group 16's ITIS 3160 Project. The goal of this project was to take an existing relational database  
and load it will sample data, then create stored procedures that provide the highest and lowest ratings  
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

# Use Case for Rating System <a name="2"></a>

# Business Rules <a name="3"></a> 

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