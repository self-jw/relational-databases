SELECT * 
    FROM artists 
    WHERE name='Chicago';

SELECT * 
    FROM songs 
    LIMIT 5;

SELECT * 
    FROM songs 
    ORDER BY name;

SELECT * 
    FROM artists
    WHERE name LIKE '%all%';

SELECT * 
    FROM playlists
    WHERE name='Jamz' and id=2;

SELECT * 
    FROM playlists
    WHERE name='Chill' or name='The Feelz';    

SELECT COUNT(playlist_id), name
    FROM playlists
    GROUP BY name
    HAVING COUNT(id) > 2;

SELECT * 
    FROM songs
    WHERE id IN (1, 2);

SELECT songs.name
    FROM songs
    INNER JOIN playlists ON songs.id=playlists.song_id
