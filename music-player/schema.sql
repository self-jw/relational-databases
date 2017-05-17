CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY,
    name TEXT,
    albums INTEGER,
    genre TEXT);

CREATE TABLE albums (
    album_id INTEGER PRIMARY KEY,
    name TEXT,
    FOREIGN KEY artist_id);

CREATE TABLE songs (
    song_id INTEGER PRIMARY KEY,
    name TEXT,
    FOREIGN KEY artist_id,
    FOREIGN KEY album_id, 
    length INTEGER);

CREATE TABLE playlists (
    playlist_id INTEGER PRIMARY KEY,
    name TEXT,
    FOREIGN KEY song_id);
