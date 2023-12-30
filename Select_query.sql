#Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select * from city where population > 100000 and countrycode='USA' 

#Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select name from city where population>120000 and countrycode='USA'

#Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY  LENGTH(CITY), CITY LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;

#Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');

#Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10; 
ORDER BY employee_id ASC;