INSERT INTO performer (name)
VALUES ('Ava Max'), ('Rammstein'), ('Evanescence'), ('Troye Sivan')

INSERT INTO genre (name)
VALUES ('Pop'), ('Rock'), ('Indie')

INSERT INTO album (name, created_at)
VALUES ('Best_Indie', '2017.02.10'),
('Best_Rock', '2020.04.12'),
('Best_Pop', '2019.09.22')

INSERT INTO track (name, duration, album_id)
VALUES ('Torniquet', '278', '1'),
('Deutschland', '322', '2'),
('Going Under', '215', '1'),
('So Am I', '183', '3'),
('My Baby Angel', '221', '3'),
('Take You to Hell', '165', '3')

INSERT INTO collection (name, created_at)
VALUES ('Best_Indie_Collection', '2023.02.10'),
('Best_Rock_Collection', '2021.04.12'),
('Best_Pop_Collection', '2019.09.22')

INSERT INTO trackcollection (collection_id, track_id)
VALUES ('1', '1'),
('1', '3'),
('2', '2'),
('3', '4'),
('3', '5'),
('3', '6')

INSERT INTO performergenre (performer_id, genre_id)
VALUES ('1', '1'),
('4', '1'),
('2', '2'),
('3', '3')

INSERT INTO performeralbum (performer_id, album_id)
VALUES ('1', '3'),
('4', '3'),
('2', '2'),
('3', '1')