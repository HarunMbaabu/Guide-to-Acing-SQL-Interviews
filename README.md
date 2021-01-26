# SQL Practice question


## From earthquake.csv file, what was the largest earthquick in 2010?

~~~SQL
SELECT *
FROM earthquick 
WHERE occured_on >= "2010-01-01" AND <= "2010-12-31"
ORDER BY magnitude DESC;

~~~

But this query will returns all data in 2010 but we needed only one row, hence we use LIMIT as shown below


~~~SQL
SELECT *
FROM earthquick 
WHERE occured_on >= "2010-01-01" AND <= "2010-12-31"
ORDER BY magnitude DESC
LIMIT 1;

~~~

Now the above queries will return only one row with the largest earthquick
