SELECT name,
CASE
WHEN genre = 'romance' THEN 'Chill'
WHEN genre = 'comedy' THEN 'Chill'
ELSE 'Intense'
END AS 'Mood'
FROM movies;

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;
