SELECT duration, name
FROM track
WHERE duration = (SELECT MAX(duration) FROM track)

SELECT name
FROM track
WHERE duration >= 210

SELECT name
FROM collection
WHERE '2018.01.01' < created_at AND created_at > '2021.01.01'

SELECT name
FROM performer
WHERE name NOT LIKE '% %'

SELECT name
FROM track
WHERE name LIKE '%Мой%' OR name LIKE '%My%'



SELECT COUNT(p.id), g."name" 
FROM performer p
JOIN performergenre pg ON p.id = pg.performer_id 
JOIN genre g ON pg.genre_id = g.id 
GROUP BY g.name

SELECT COUNT(t.id)
FROM track t
JOIN album a ON a.id = t.album_id 
where '2019.01.01' < a.created_at AND a.created_at < '2021.01.01'

SELECT AVG(duration), a."name" 
FROM track t 
JOIN album a ON t.album_id = a.id 
GROUP BY a.name

SELECT p."name" 
FROM performer p
JOIN performeralbum pa ON p.id = pa.performer_id 
JOIN album a ON a.id = pa.album_id 
WHERE '2020.01.01' > a.created_at OR a.created_at > '2021.01.01'

SELECT c."name" 
FROM collection c
JOIN trackcollection tc ON c.id = tc.collection_id
JOIN track t ON tc.track_id = t.id 
JOIN album a ON t.album_id = a.id 
JOIN performeralbum pa ON a.id = pa.album_id 
JOIN performer p ON pa.performer_id = p.id 
WHERE p."name" = 'Ava Max'

