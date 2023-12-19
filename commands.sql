SELECT CONCAT(artist_name, ' recorded ', album_name) AS Recording
FROM artist
JOIN album ON artist.artist_id = album.artist_id;

SELECT artist_name, album_name
FROM artist
JOIN album ON artist.artist_id = album.artist_id
WHERE artist.artist_id IN (
    SELECT artist_id
    FROM track
    JOIN album ON track.album_id = album.album_id
    WHERE artist.artist_id = album.artist_id
);

SELECT artist.artist_name, album.album_name
FROM artist
JOIN album ON artist.artist_id = album.artist_id;

SELECT album.album_name, track.track_name
FROM album
JOIN track ON album.album_id = track.album_id;

SELECT track.track_name, track.time
FROM track
JOIN played ON track.track_id = played.track_id;