#P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

WITH RECURSIVE Pattern AS (
  SELECT 20 AS N
  UNION ALL
  SELECT N - 1 FROM Pattern WHERE N > 1
)
SELECT REPEAT('* ', N) FROM Pattern;