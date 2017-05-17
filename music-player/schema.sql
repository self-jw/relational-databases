CREATE TABLE artists (
    id INTEGER,
    name TEXT,
    albums INTEGER,
    genre TEXT);

CREATE TABLE albums (
    id INTEGER,
    artist_id INTEGER,
    name TEXT);

CREATE TABLE songs (
    id INTEGER,
    artist_id INTEGER,
    album_id INTEGER,
    name TEXT,
    length INTEGER);

CREATE TABLE playlists (
    id INTEGER,
    song_id INTEGER,
    name TEXT);

ALTER TABLE ONLY artists 
     ADD CONSTRAINT artists_pkey PRIMARY KEY (id);

ALTER TABLE ONLY albums 
     ADD CONSTRAINT albums_pkey PRIMARY KEY (id);

ALTER TABLE ONLY songs
     ADD CONSTRAINT songs_pkey PRIMARY KEY (id);

ALTER TABLE ONLY playlists
     ADD CONSTRAINT playlists_pkey PRIMARY KEY (id);

ALTER TABLE ONLY albums
     ADD CONSTRAINT artists_id_fkey FOREIGN KEY (artist_id) REFERENCES artists(id);

ALTER TABLE ONLY songs
     ADD CONSTRAINT artists_id_fkey FOREIGN KEY (artist_id) REFERENCES artists(id);

ALTER TABLE ONLY songs
     ADD CONSTRAINT album_id_fkey FOREIGN KEY (album_id) REFERENCES albums(id);

ALTER TABLE ONLY playlists
     ADD CONSTRAINT song_id_fkey FOREIGN KEY (song_id) REFERENCES songs(id);
