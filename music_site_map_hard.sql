-- creating a music service database

CREATE TABLE IF NOT EXISTS genres (
    id SERIAL PRIMARY KEY,
    genres_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
    id SERIAL PRIMARY KEY,
    name_performers VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS musical_genres (
	genres_id INTEGER REFERENCES genres(id),
	performers_id INTEGER REFERENCES performers(id),
	CONSTRAINT pk PRIMARY KEY(genres_id, performers_id)
);

CREATE TABLE IF NOT EXISTS albums(
    id SERIAL PRIMARY KEY,
    name_album VARCHAR(40),
    date_ DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_album (
	albums_id INTEGER REFERENCES albums(id),
	performers_id INTEGER REFERENCES performers(id),
	CONSTRAINT pk1 PRIMARY KEY(albums_id, performers_id)
);

CREATE TABLE IF NOT EXISTS track (
    id SERIAL PRIMARY KEY,
    name_track VARCHAR(40) NOT NULL,
    lenght TIME(0) NOT NULL,
    albums_id INTEGER NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    collections_name VARCHAR(40) NOT NULL,
    date_ DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS collections_track (
	collections_id INTEGER REFERENCES collections(id),
	track_id INTEGER REFERENCES track(id),
	CONSTRAINT pk2 PRIMARY KEY(collections_id, track_id)
);