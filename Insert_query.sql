-- Заполнение таблицы Жанры
INSERT INTO genre (name)
VALUES ('Pop');

INSERT INTO genre (name)
VALUES ('Electronic');

INSERT INTO genre (name)
VALUES ('Hip-hop');

INSERT INTO genre (name)
VALUES ('Rock');

-- Заполнение таблицы Исполнители
INSERT INTO Musicians (name)
VALUES ('Billie Eilish');

INSERT INTO Musicians (name)
VALUES ('Adele');

INSERT INTO Musicians (name)
VALUES ('Kordhell');

INSERT INTO Musicians (name)
VALUES ('XXXTentacion');

INSERT INTO Musicians (name)
VALUES ('Kanye West');

INSERT INTO Musicians (name)
VALUES ('Imagine Dragons');

INSERT INTO Musicians (name)
VALUES ('Lil Wayne');

-- Заполнение отношения Жанры и Исполнители
INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (1, 1);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (2, 1);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (3, 2);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (4, 3);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (5, 3);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (6, 4);

INSERT INTO musicians_genre (musician_id, genre_id)
VALUES (7, 3);

-- Заполнение таблицы Альбомы
INSERT INTO Albums (name, date_release)
VALUES ('WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', 2019);

INSERT INTO Albums (name, date_release)
VALUES ('21', 2011);

INSERT INTO Albums (name, date_release)
VALUES ('A MILLION WAYS TO MURDER', 2023);

INSERT INTO Albums (name, date_release)
VALUES ('SKINS', 2018);

INSERT INTO Albums (name, date_release)
VALUES ('?', 2018);

INSERT INTO Albums (name, date_release)
VALUES ('Smack DVD', 2020);

INSERT INTO Albums (name, date_release)
VALUES ('Believer', 2019);

-- Заполнение отношения Альбомы и Исполнители
INSERT INTO musicians_album (musician_id, album_id)
VALUES (1, 1);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (2, 2);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (3, 3);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (4, 4);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (4, 5);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (5, 6);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (6, 7);

INSERT INTO musicians_album (musician_id, album_id)
VALUES (7, 7);

-- Заполнение таблицы Песни
INSERT INTO Songs (name, duration, album_id)
VALUES ('bad guy', 194, 1);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Rolling In The Deep', 228, 2);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Set Fire to the Rain', 242, 2);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Murder In My Mind', 145, 3);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Scopin', 101, 3);

INSERT INTO Songs (name, duration, album_id)
VALUES ('BAD!', 94, 4);

INSERT INTO Songs (name, duration, album_id)
VALUES ('I don`t let go', 121, 4);

INSERT INTO Songs (name, duration, album_id)
VALUES ('NUMB', 186, 5);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Smack DVD', 175, 6);

INSERT INTO Songs (name, duration, album_id)
VALUES ('Believer', 219, 7);


-- Заполнение таблицы Сборники
INSERT INTO collections (name, date_release)
VALUES ('hip-hop', 2021);

INSERT INTO collections (name, date_release)
VALUES ('in auto', 2019);

INSERT INTO collections (name, date_release)
VALUES ('fonk', 2024);

INSERT INTO collections (name, date_release)
VALUES ('quiet', 2020);


-- Заполнение отношения Песни и Сборники
INSERT INTO songs_collections (song_id, collection_id)
VALUES (6, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (7, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (8, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (9, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (2, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (4, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (5, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (8, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (4, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (5, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (1, 4);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (2, 4);
