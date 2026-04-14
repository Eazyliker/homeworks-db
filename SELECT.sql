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
WHERE title ILIKE '%мой%' OR title ILIKE '%my%';

SELECT g.name AS genre, COUNT(ag.artist_id) AS artist_count
FROM genre g
LEFT JOIN artist_genre ag ON g.id = ag.genre_id
GROUP BY g.name
ORDER BY artist_count DESC;

SELECT COUNT(t.id) AS track_count
FROM track t
JOIN album a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.title AS album, AVG(t.duration) AS avg_duration
FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.title
ORDER BY avg_duration DESC;

SELECT DISTINCT ar.name AS artist
FROM artist ar
WHERE ar.id NOT IN (
    SELECT aa.artist_id
    FROM artist_album aa
    JOIN album a ON aa.album_id = a.id
    WHERE a.year = 2020
);

SELECT DISTINCT c.title AS compilation
FROM compilation c
JOIN compilation_track ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN artist_album aa ON a.id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'The Beatles'
ORDER BY c.title;
