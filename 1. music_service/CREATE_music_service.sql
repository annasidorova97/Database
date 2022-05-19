CREATE TABLE genre (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE artist (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE genre_artist (
genre_id INT REFERENCES genre(id),
artist_id INT REFERENCES artist(id),
CONSTRAINT genre_artist_pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE album (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
date DATE NOT NULL
);

CREATE TABLE album_artist (
album_id INT REFERENCES album(id),
artist_id INT REFERENCES artist(id),
CONSTRAINT album_artist_pk PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE song (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
duration INTERVAL NOT NULL,
album_id INT REFERENCES album(id)
);

CREATE TABLE collection (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
date DATE NOT NULL
);

CREATE TABLE song_collection (
song_id INT REFERENCES song(id),
collection_id INT REFERENCES collection(id),
CONSTRAINT song_collection_pk PRIMARY KEY (song_id, collection_id)
);