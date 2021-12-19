CREATE TABLE Genres
(
  genre_id      char(10)  NOT NULL ,
  genre_name    char(50)  NOT NULL ,
  CONSTRAINT pk_genres PRIMARY KEY (genre_id)
);

CREATE TABLE Songs
(
  song_id      char(10)  NOT NULL ,
  song_name    char(200)  NOT NULL ,
  CONSTRAINT pk_songs PRIMARY KEY (song_id)
);

CREATE TABLE Artists
(
  artist_id      char(10)  NOT NULL ,
  artist_name    char(50)  NOT NULL ,
  CONSTRAINT pk_artists PRIMARY KEY (artist_id)
);

CREATE TABLE Releases
(
  release_id      char(10)  NOT NULL ,
  genre_id        char(10)  NOT NULL REFERENCES genres(genre_id),
  song_id         char(10)  NOT NULL REFERENCES songs(song_id),
  release_date    date      NOT NULL ,
  release_time    time      NULL     ,
  release_place   char(50)  NULL     ,
  CONSTRAINT pk_releases PRIMARY KEY (release_id),
  CHECK (release_date >= '2010-01-01' and release_date <= '2019-12-31')
);

CREATE TABLE Performances
(
  perf_id        char(10)   NOT NULL ,
  artist_id      char(10)   NOT NULL REFERENCES artists(artist_id),
  song_id        char(10)   NOT NULL REFERENCES songs(song_id),
  perf_date      date       NOT NULL ,
  perf_time      time       NULL     ,
  perf_place     char(50)   NULL     ,
  CONSTRAINT pk_performances PRIMARY KEY (perf_id),
  CHECK (perf_date >= '2010-01-01' and perf_date <= '2019-12-31')
);