Left Joins
What if we want to combine two tables and keep some of the un-matched rows?

SQL lets us do this through a command called LEFT JOIN. A left join will keep all rows from the first table, regardless of whether there is a matching row in the second table.

Consider the following animation:

Animation of a Left Join

The first and last rows have matching values of c2. The middle rows do not match. The final result will keep all rows of the first table but will omit the un-matched row from the second table.

This animation represents a table operation produced by the following command:

SELECT *
FROM table1
LEFT JOIN table2
  ON table1.c2 = table2.c2;
The first line selects all columns from both tables.
The second line selects table1 (the “left” table).
The third line performs a LEFT JOIN on table2 (the “right” table).
The fourth line tells SQL how to perform the join (by looking for matching values in column c2).
Instructions
1.
Let’s return to our newspaper and online subscribers.

Suppose we want to know how many users subscribe to the print newspaper, but not to the online.

Start by performing a left join of newspaper table and online table on their id columns and selecting all columns.

Remember to put newspaper first to keep all rows of newspaper:

SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id;
  
  Don’t remove your previous query.

In order to find which users do not subscribe to the online edition, we need to add a WHERE clause.

Add a second query after your first one that adds the following WHERE clause and condition:

WHERE online.id IS NULL
This will select rows where there was no corresponding row from the online table.

The second query should look like:

SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id
WHERE online.id IS NULL;
Remember, WHERE clause goes after the LEFT JOIN.

SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id;

  SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id
WHERE online.id IS NULL;
