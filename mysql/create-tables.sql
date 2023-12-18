CREATE TABLE IF NOT EXISTS artist (
  artist_id   INT          NOT NULL,
  artist_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (artist_id)
);

CREATE TABLE IF NOT EXISTS album (
  artist_id  INT          NOT NULL,
  album_id   INT          NOT NULL AUTO_INCREMENT,
  album_name VARCHAR(128) NOT NULL,
  INDEX (artist_id),
  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS track (
  artist_id  INT          NOT NULL,
  album_id   INT          NOT NULL,
  track_id   INT          NOT NULL AUTO_INCREMENT,
  track_name VARCHAR(128) NOT NULL,
  time       DECIMAL(5,2) NOT NULL,
  INDEX (album_id),
  PRIMARY KEY (track_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS played (
  played     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  track_id   INT          NOT NULL,
  INDEX (track_id),
  PRIMARY KEY (played),
  FOREIGN KEY (track_id) REFERENCES track(track_id) ON DELETE CASCADE ON UPDATE CASCADE
);
