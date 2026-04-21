SELECT title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT title, duration
FROM track
WHERE duration >= 210;

SELECT title, year
FROM compilation
WHERE year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE 

    title ILIKE 'my %'
    OR title ILIKE '% my'
    OR title ILIKE '% my %'
    OR title ILIKE 'my'
    OR title ILIKE 'мой %'
    OR title ILIKE '% мой'
    OR title ILIKE '% мой %'
    OR title ILIKE 'мой';



