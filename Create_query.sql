CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) not NULL
);

CREATE TABLE IF NOT EXISTS Musicians (
	musician_id SERIAL PRIMARY KEY,
	name VARCHAR(60) not NULL
);

CREATE TABLE IF NOT EXISTS Musicians_Genre (
	musician_id INTEGER REFERENCES Musicians (musician_id), 
	genre_id INTEGER REFERENCES Genre (genre_id),
	constraint pk1 primary key (musician_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) not null,
	date_release integer not NULL 
	constraint date_release check (date_release > 1970 and date_release <= extract(year from NOW()))
);

CREATE TABLE IF NOT EXISTS Musicians_Album (
	musician_id INTEGER REFERENCES Musicians(musician_id), 
	album_id INTEGER REFERENCES Albums(album_id),
	constraint pk2 primary key (musician_id, album_id)
);

CREATE TABLE IF NOT EXISTS Songs (
	song_id SERIAL PRIMARY KEY,
	name VARCHAR(60) not null,
	duration INTEGER not null CHECK (duration > 0 and duration < 1000),
	album_id INTEGER not null REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) not null,
	date_release integer not null
	constraint date_release CHECK (date_release > 2000)
);

CREATE TABLE IF NOT EXISTS Songs_Collections (
	song_id INTEGER REFERENCES Songs(song_id), 
	collection_id INTEGER REFERENCES Collections(collection_id),
	constraint pk3 primary key (song_id, collection_id)
);






