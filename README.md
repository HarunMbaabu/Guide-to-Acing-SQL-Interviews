# SQL Practice question


## From earthquake.csv file, what was the largest earthquick in 2010?

~~~SQL
SELECT *
FROM earthquick 
WHERE occured_on >= "2010-01-01" AND <= "2010-12-31"
ORDER BY magnitude DESC;

~~~
