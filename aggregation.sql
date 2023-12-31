#Query the average population of all cities in CITY where District is California.
select avg(population) from city where district='California';

#Query the total population of all cities in CITY where District is California.
select sum(population) from city where district='California'