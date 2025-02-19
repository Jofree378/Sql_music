-- Задание 2
-- Название и продолжительность самого длительного трека
SELECT name, duration
FROM songs s
WHERE s.duration = (SELECT Max(duration)
					FROM songs);


-- Название треков, продолжительность которых не менее 3,5 минут
SELECT name, duration
FROM songs s
WHERE s.duration >= 3.5 * 60;


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name
FROM collections c
WHERE c.date_release BETWEEN 2018 AND 2020;


-- Исполнители, чьё имя состоит из одного слова
SELECT name
FROM musicians m
WHERE m.name NOT LIKE '% %';


-- Название треков, которые содержат слово «мой» или «my»
SELECT name
FROM songs s
WHERE lower(s.name) LIKE '%my%' or lower(s.name) LIKE '%мой%';



-- Задание 3
-- Количество исполнителей в каждом жанре
SELECT g.name, count(*) as count_musicians
FROM musicians_genre mg
JOIN genre g ON g.genre_id = mg.genre_id
GROUP BY g.name;


-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT count(*) as count_songs
FROM songs s
JOIN albums a ON s.album_id = a.album_id 
WHERE a.date_release BETWEEN 2019 AND 2020;


-- Средняя продолжительность треков по каждому альбому
SELECT a.name, avg(s.duration) as avg_duration
FROM songs s
JOIN albums a ON s.album_id = a.album_id 
GROUP BY a.name;


-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT m.name
FROM musicians m 
JOIN musicians_album ma ON m.musician_id = ma.musician_id
JOIN albums a ON a.album_id = ma.album_id
WHERE a.date_release != '2020';


-- Названия сборников, в которых присутствует конкретный исполнитель (Kordhell)
SELECT DISTINCT c.name
FROM collections c 
JOIN songs_collections sc ON c.collection_id = sc.collection_id
JOIN songs s ON s.song_id = sc.song_id
JOIN musicians_album ma ON s.album_id = ma.album_id
JOIN musicians m ON m.musician_id = ma.musician_id
WHERE m.name = 'Kordhell';



-- Задание 4
-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра
SELECT a1.name
FROM (SELECT a.name, count(*) AS g_count
	  FROM albums a 
	  JOIN musicians_album ma ON a.album_id = ma.album_id
	  JOIN musicians m ON ma.musician_id = m.musician_id
	  JOIN musicians_genre mg ON mg.musician_id = m.musician_id
	  JOIN genre g ON g.genre_id = mg.genre_id
	  GROUP BY a.name) a1
WHERE a1.g_count > 1;


-- Наименования треков, которые не входят в сборники
SELECT s.name
FROM songs s
LEFT JOIN songs_collections sc ON s.song_id = sc.song_id
WHERE sc.song_id IS NULL;


-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько
SELECT m.name
FROM musicians m
JOIN musicians_album ma ON m.musician_id = ma.musician_id
JOIN songs s ON s.album_id = ma.album_id
WHERE s.duration = (SELECT MIN(s2.duration)
					FROM songs s2 );


-- Названия альбомов, содержащих наименьшее количество треков
SELECT a.name
FROM albums a
JOIN songs s ON a.album_id = s.album_id
GROUP BY a.name
HAVING count(*) = (SELECT min(c2.s_count)
				   FROM (SELECT s.album_id, count(*) AS s_count
						 FROM songs s
						 GROUP BY s.album_id) c2)












