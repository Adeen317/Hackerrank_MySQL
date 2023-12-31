#Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

#Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select con.continent,floor(avg(city.population)) from city city,country con where city.countrycode=con.code group by con.continent;

#Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

#Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select sum(city.population) from country con,city city where city.countrycode=con.code and con.continent='Asia';

#Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

#Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT city.name
FROM COUNTRY COUNTRY, CITY city where COUNTRY.Code = city.CountryCode and COUNTRY.Continent='Africa';