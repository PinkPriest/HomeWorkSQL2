CREATE TABLE genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE performer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	created_at DATE NOT NULL
);

CREATE TABLE track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	created_at DATE NOT NULL
);

CREATE TABLE performerGenre (
	performer_id INTEGER REFERENCES performer(id),
	genre_id INTEGER REFERENCES genre(id),
	CONSTRAINT pk PRIMARY KEY (performer_id, genre_id)
);

CREATE TABLE performerAlbum (
	performer_id INTEGER REFERENCES performer(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT pk1 PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE trackCollection (
	collection_id INTEGER REFERENCES collection(id),
	track_id INTEGER REFERENCES track(id),
	CONSTRAINT pk2 PRIMARY KEY (collection_id, track_id)
);