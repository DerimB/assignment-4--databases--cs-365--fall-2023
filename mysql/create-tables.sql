CREATE TABLE IF NOT EXISTS artist (
  artist_id   INT          NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (artist_id),
  INDEX index_artist_id (artist_id)
);

CREATE TABLE IF NOT EXISTS album (
  artist_id  INT          NOT NULL,
  album_id   INT          NOT NULL AUTO_INCREMENT,
  album_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE ON UPDATE CASCADE,
  INDEX index_album_id (album_id)
);

CREATE TABLE IF NOT EXISTS track (
  album_id   INT          NOT NULL,
  track_id   INT          NOT NULL,
  track_name VARCHAR(128) NOT NULL,
  time       DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (track_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE ON UPDATE CASCADE,
  INDEX index_track_id (track_id)
);

CREATE TABLE IF NOT EXISTS played (
  played     TIMESTAMP    NOT NULL,
  track_id   INT          NOT NULL,
  PRIMARY KEY (played),
  FOREIGN KEY (track_id) REFERENCES track(track_id) ON DELETE CASCADE ON UPDATE CASCADE,
  INDEX index_played (played)
);

