select * from releases
SELECT clean_no_place();
INSERT INTO Releases(release_id, genre_id, song_id, release_date, release_time, release_place) 
VALUES ('602o', '002', '6', to_date('2018-12-03', 'yyyy-mm-dd'), '20:00:00', NULL),
('901s', '001', '9', to_date('2018-11-08', 'yyyy-mm-dd'), '16:30:00', NULL);

CALL get_songs('USA');
CALL get_songs('UK');
CALL get_songs('Germany');
CALL get_songs('Spain');
select * from performances

INSERT INTO genres VALUES ('011', 'Jazz');
INSERT INTO genres VALUES ('012', 'ROCK');
DELETE FROM genres where genre_id = '011';
DELETE FROM genres where genre_id = '012';
select * from genres;
