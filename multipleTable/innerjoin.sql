MULTIPLE TABLES
Inner Joins
Let’s revisit how we joined orders and customers. For every possible value of customer_id in orders, there was a corresponding row of customers with the same customer_id.

What if that wasn’t true?

For instance, imagine that our customers table was out of date, and was missing any information on customer 11. If that customer had an order in orders, what would happen when we joined the tables?

When we perform a simple JOIN (often called an inner join) our result only includes rows that match our ON condition.

Consider the following animation, which illustrates an inner join of two tables on table1.c2 = table2.c2:

Animation of an Inner Join

The first and last rows have matching values of c2. The middle rows do not match. The final result has all values from the first and last rows but does not include the non-matching middle row.

Instructions
1.
Suppose we are working for The Codecademy Times, a newspaper with two types of subscriptions:

print newspaper
online articles
Some users subscribe to just the newspaper, some subscribe to just the online edition, and some subscribe to both.

There is a newspaper table that contains information about the newspaper subscribers.

Count the number of subscribers who get a print newspaper using COUNT().

1.
Suppose we are working for The Codecademy Times, a newspaper with two types of subscriptions:

print newspaper
online articles
Some users subscribe to just the newspaper, some subscribe to just the online edition, and some subscribe to both.

There is a newspaper table that contains information about the newspaper subscribers.

Count the number of subscribers who get a print newspaper using COUNT().

Don’t remove your previous queries.

Join newspaper table and online table on their id columns (the unique ID of the subscriber).

How many rows are in this table?


Hint
Suppose we do:

SELECT *
FROM newspaper
LIMIT 10;
 
SELECT *
FROM online
LIMIT 10;
You will notice that both newspaper table and online table have an id column.

And we want to match these two columns:

newspaper.id
online.id
Your ON statement should look like this:

ON newspaper.id = online.id
Remember to use SELECT COUNT(*) to count the rows:

SELECT COUNT(*)
FROM newspaper
JOIN online
  ON newspaper.id = online.id;
  
  SELECT COUNT(*)
FROM newspaper;

SELECT COUNT(*)
FROM online;

SELECT COUNT(*)
FROM newspaper
JOIN online
	ON newspaper.id = online.id;
