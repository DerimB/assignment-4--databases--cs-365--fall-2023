--The Concat function is used to generate the predicted outcome as stated in the README
SELECT CONCAT(artist_name, ' recorded ', album_name) AS Recording
FROM artist
JOIN album ON artist.artist_id = album.artist_id;

--The select statement was fixed to ensure the two attributed shown in the example output were given.
--Also the query was complete using a nested query.
SELECT artist_name, album_name
FROM artist
JOIN album ON artist.artist_id = album.artist_id
WHERE artist.artist_id IN (
    SELECT artist_id
    FROM track
    JOIN album ON track.album_id = album.album_id
    WHERE artist.artist_id = album.artist_id
);

--Uses the compiles relation between the artist and album tables, This gets the output of the artist_name and album_name attributes as requested/shown.
SELECT artist.artist_name, album.album_name
FROM artist
JOIN album ON artist.artist_id = album.artist_id;

--Uses the contains relation between the album table and the track table.
SELECT album.album_name, track.track_name
FROM album
JOIN track ON album.album_id = track.album_id;

--Uses the WasPlayedAt relation between the track table and the played table.
SELECT track.track_name, track.time
FROM track
JOIN played ON track.track_id = played.track_id;