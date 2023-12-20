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
FROM compiles
JOIN artist ON compiles.artist_id = artist.artist_id
JOIN album ON compiles.album_id = album.album_id;

SELECT album.album_name, track.track_name
FROM contains
JOIN album ON contains.album_id = album.album_id
JOIN track ON contains.track_id = track.track_id;

SELECT track.track_name, wasplayedat.played
AS track_time
FROM wasplayedat
JOIN track ON wasplayedat.track_id = track.track_id;