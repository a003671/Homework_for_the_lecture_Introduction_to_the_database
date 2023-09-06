INSERT INTO genres(genres_name) 
VALUES('hip-hop');

INSERT INTO genres(genres_name) 
VALUES('horror-punk');

INSERT INTO genres(genres_name) 
VALUES('rock');

INSERT INTO genres(genres_name) 
VALUES('foley-punk');

INSERT INTO genres(genres_name) 
VALUES('RnB');

INSERT INTO genres(genres_name) 
VALUES('soul');

INSERT INTO performers(name_performers) 
VALUES('50 Cent');

INSERT INTO performers(name_performers) 
VALUES('Король и Шут');

INSERT INTO performers(name_performers) 
VALUES('Destinys Child');

INSERT INTO performers(name_performers) 
VALUES('RZA');

INSERT INTO albums(name_album, date_) 
VALUES('The massacre', '2005-11-17');

INSERT INTO albums(name_album, date_) 
VALUES('бунт на карабле', '2004-05-12');

INSERT INTO albums(name_album, date_) 
VALUES('Survivir', '2001-12-12');

INSERT INTO albums(name_album, date_) 
VALUES('The world According to RZA', '2003-05-29');

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(1, 1);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(1, 3);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(1, 4);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(2, 2);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(3, 2);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(4, 2);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(5, 3);

INSERT INTO musical_genres(genres_id, performers_id) 
VALUES(6, 3);

INSERT INTO performers_album(albums_id, performers_id) 
VALUES(1, 1);

INSERT INTO performers_album(albums_id, performers_id) 
VALUES(2, 2);

INSERT INTO performers_album(albums_id, performers_id) 
VALUES(3, 3);

INSERT INTO performers_album(albums_id, performers_id) 
VALUES(4, 4);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('This is 50', '03:05', 1);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('Идол', '03:00', 2);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('Кукла колдуна', '03:24', 2);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('Emotion', '03:56', 3);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('Saian', '04:10', 4);

INSERT INTO track(name_track, lenght, albums_id) 
VALUES('Warning', '05:04', 4);

INSERT INTO collections(collections_name, date_) 
VALUES('RAP', '2022-12-12');

INSERT INTO collections(collections_name, date_) 
VALUES('Винегрет', '2023-12-31');

INSERT INTO collections(collections_name, date_) 
VALUES('Лучшее осень 2005', '2005-09-01');

INSERT INTO collections(collections_name, date_) 
VALUES('Для авто', '2023-09-04');

INSERT INTO collections_track(collections_id, track_id) 
VALUES(1, 1);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(1, 3);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(1, 4);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(2, 1);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(2, 2);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(2, 3);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(2, 4);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(3, 1);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(3, 3);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(4, 1);

INSERT INTO collections_track(collections_id, track_id) 
VALUES(4, 4);
