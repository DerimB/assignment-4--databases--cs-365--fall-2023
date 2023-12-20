INSERT INTO artist VALUES (1, "Dawn of Midi");
INSERT INTO artist VALUES (2, "Interpol");
INSERT INTO artist VALUES (3, "The Chrome Cranks");
INSERT INTO artist VALUES (4, "Melvins");
INSERT INTO artist VALUES (5, "Mogwai");
INSERT INTO artist VALUES (6, "Warpaint");

INSERT INTO album VALUES (1, 1, "Dysnomia");
INSERT INTO album VALUES (2, 2, "Turn on the Bright Lights");
INSERT INTO album VALUES (3, 3, "Dead Cool");
INSERT INTO album VALUES (4, 4, "Houdini");
INSERT INTO album VALUES (5, 5, "Come on Die Young");
INSERT INTO album VALUES (5, 6, "Every Country’s Sun");
INSERT INTO album VALUES (6, 7, "Heads Up");

INSERT INTO track VALUES (1, 1, 'Io', '6.03');
INSERT INTO track VALUES (1, 2, 'Sinope', '6.53');
INSERT INTO track VALUES (1, 3, 'Atlas', '6.37');
INSERT INTO track VALUES (1, 4, 'Nix', '3.39');
INSERT INTO track VALUES (1, 5, 'Moon', '5.04');
INSERT INTO track VALUES (1, 6, 'Ymir', '4.27');
INSERT INTO track VALUES (1, 7, 'Ijiraq', '5.22');
INSERT INTO track VALUES (1, 8, 'Algol', '4.16');
INSERT INTO track VALUES (1, 9, 'Dysnomia', '4.14');

INSERT INTO track VALUES (2, 10, 'Untitled', '3.57');
INSERT INTO track VALUES (2, 11, 'Obstacle 1', '4.11');
INSERT INTO track VALUES (2, 12, 'NYC', '4.20');
INSERT INTO track VALUES (2, 13, 'PDA', '5.00');
INSERT INTO track VALUES (2, 14, 'Say Hello to the Angels', '4.28');
INSERT INTO track VALUES (2, 15, 'Hands Away', '3.06');
INSERT INTO track VALUES (2, 16, 'Obstacle 2', '3.47');
INSERT INTO track VALUES (2, 17, 'Stella Was a Diver and She Was Always Down', '6.28');
INSERT INTO track VALUES (2, 18, 'Roland', '3.36');
INSERT INTO track VALUES (2, 19, 'The New', '6.07');
INSERT INTO track VALUES (2, 20, 'Leif Erikson', '4.00');

INSERT INTO track VALUES (3, 21, 'Dead Cool', '5.25');
INSERT INTO track VALUES (3, 22, 'Desperate Friend', '2.04');
INSERT INTO track VALUES (3, 23, 'Way-Out Lover', '3.08');
INSERT INTO track VALUES (3, 24, 'Down So Low', '3.55');
INSERT INTO track VALUES (3, 25, 'Bloodshot Eye', '3.54');
INSERT INTO track VALUES (3, 26, 'Nightmare in Pink', '2.06');
INSERT INTO track VALUES (3, 27, 'Shine It On', '4.15');
INSERT INTO track VALUES (3, 28, 'Burn Baby Burn', '6.13');

INSERT INTO track VALUES (4, 29, 'Hooch', '2.49');
INSERT INTO track VALUES (4, 30, 'Night Goat', '4.41');
INSERT INTO track VALUES (4, 31, 'Lizzy', '4.44');
INSERT INTO track VALUES (4, 32, 'Goin’ Blind', '4.33');
INSERT INTO track VALUES (4, 33, 'Honey Bucket', '3.01');
INSERT INTO track VALUES (4, 34, 'Hag Me', '7.06');
INSERT INTO track VALUES (4, 35, 'Set Me Straight', '2.25');
INSERT INTO track VALUES (4, 36, 'Sky Pup', '3.50');
INSERT INTO track VALUES (4, 37, 'Joan of Arc', '3.36');
INSERT INTO track VALUES (4, 38, 'Teet', '2.52');
INSERT INTO track VALUES (4, 39, 'Copache', '2.07');
INSERT INTO track VALUES (4, 40, 'Pearl Bomb', '2.46');
INSERT INTO track VALUES (4, 41, 'Spread Eagle Beagle', '10.14');

INSERT INTO track VALUES (5, 42, 'Punk Rock:', '2.09');
INSERT INTO track VALUES (5, 43, 'Cody', '6.33');
INSERT INTO track VALUES (5, 44, 'Helps Both Ways', '4.53');
INSERT INTO track VALUES (5, 45, 'Year 2000 Non-Compliant Cardia', '3.26');
INSERT INTO track VALUES (5, 46, 'Kappa', '4.53');
INSERT INTO track VALUES (5, 47, 'Waltz for Aidan', '3.44');
INSERT INTO track VALUES (5, 48, 'May Nothing But Happiness Come Through Your Door', '8.30');
INSERT INTO track VALUES (5, 49, 'Oh! How the Dogs Stack Up', '2.04');
INSERT INTO track VALUES (5, 50, 'Ex-Cowboy', '9.09');
INSERT INTO track VALUES (5, 51, 'Chocky', '9.23');
INSERT INTO track VALUES (5, 52, 'Christmas Steps', '10.39');
INSERT INTO track VALUES (5, 53, 'Punk Rock/Puff Daddy/Antichrist', '2.14');

INSERT INTO track VALUES (6, 54, 'Coolverine', '6.17');
INSERT INTO track VALUES (6, 55, 'Party in the Dark', '4.02');
INSERT INTO track VALUES (6, 56, 'Brain Sweeties', '4.44');
INSERT INTO track VALUES (6, 57, 'Crossing the Road Material', '6.58');
INSERT INTO track VALUES (6, 58, 'aka 47', '4.16');
INSERT INTO track VALUES (6, 59, '20 Size', '4.44');
INSERT INTO track VALUES (6, 60, '1000 Foot Face', '4.31');
INSERT INTO track VALUES (6, 61, 'Don’t Believe the Fife', '6.24');
INSERT INTO track VALUES (6, 62, 'Battered at a Scramble', '4.03');
INSERT INTO track VALUES (6, 63, 'Old Poisons', '4.30');
INSERT INTO track VALUES (6, 64, 'Every Country’s Sun', '5.38');

INSERT INTO track VALUES (7, 65, 'Whiteout', '4.42');
INSERT INTO track VALUES (7, 66, 'By Your Side', '4.32');
INSERT INTO track VALUES (7, 67, 'New Song', '4.16');
INSERT INTO track VALUES (7, 68, 'The Stall', '4.56');
INSERT INTO track VALUES (7, 69, 'So Good', '5.59');
INSERT INTO track VALUES (7, 70, 'Don’t Wanna', '3.43');
INSERT INTO track VALUES (7, 71, 'Don’t Let Go', '4.22');
INSERT INTO track VALUES (7, 72, 'Dre', '3.59');
INSERT INTO track VALUES (7, 73, 'Heads Up', '4.57');
INSERT INTO track VALUES (7, 74, 'Above Control', '5.06');
INSERT INTO track VALUES (7, 75, 'Today Dear', '4.49');

INSERT INTO played VALUES ("20060814102103", (SELECT track_id FROM track WHERE album_id = 1 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814102522", (SELECT track_id FROM track WHERE album_id = 2 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814103025", (SELECT track_id FROM track WHERE album_id = 3 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814103654", (SELECT track_id FROM track WHERE album_id = 4 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814104143", (SELECT track_id FROM track WHERE album_id = 5 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814104337", (SELECT track_id FROM track WHERE album_id = 6 ORDER BY track_id LIMIT 1));
INSERT INTO played VALUES ("20060814104721", (SELECT track_id FROM track WHERE album_id = 7 ORDER BY track_id LIMIT 1));

INSERT INTO compiles (artist_id, album_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 7);

  INSERT INTO contains (album_id, track_id)
VALUES
  (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9),
  (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20),
  (3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27), (3, 28),
  (4, 29), (4, 30), (4, 31), (4, 32), (4, 33), (4, 34), (4, 35), (4, 36), (4, 37), (4, 38), (4, 39), (4, 40), (4, 41),
  (5, 42), (5, 43), (5, 44), (5, 45), (5, 46), (5, 47), (5, 48), (5, 49), (5, 50), (5, 51), (5, 52), (5, 53),
  (6, 54), (6, 55), (6, 56), (6, 57), (6, 58), (6, 59), (6, 60), (6, 61), (6, 62), (6, 63), (6, 64),
  (7, 65), (7, 66), (7, 67), (7, 68), (7, 69), (7, 70), (7, 71), (7, 72), (7, 73), (7, 74), (7, 75);

INSERT INTO wasplayedat (played, track_id)
VALUES
  ("20060814102103", (SELECT track_id FROM track WHERE album_id = 1 ORDER BY track_id LIMIT 1)),
  ("20060814102522", (SELECT track_id FROM track WHERE album_id = 2 ORDER BY track_id LIMIT 1)),
  ("20060814103025", (SELECT track_id FROM track WHERE album_id = 3 ORDER BY track_id LIMIT 1)),
  ("20060814103654", (SELECT track_id FROM track WHERE album_id = 4 ORDER BY track_id LIMIT 1)),
  ("20060814104143", (SELECT track_id FROM track WHERE album_id = 5 ORDER BY track_id LIMIT 1)),
  ("20060814104337", (SELECT track_id FROM track WHERE album_id = 6 ORDER BY track_id LIMIT 1)),
  ("20060814104721", (SELECT track_id FROM track WHERE album_id = 7 ORDER BY track_id LIMIT 1));