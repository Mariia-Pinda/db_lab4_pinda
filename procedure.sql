CREATE OR REPLACE PROCEDURE get_songs(country_arg varchar(50)) 
LANGUAGE 'plpgsql'
AS $$
DECLARE record_name songs.song_name%TYPE;
DECLARE record_country performances.perf_place%TYPE;

BEGIN
    SELECT song_name, perf_place into record_name, record_country FROM songs join performances using(song_id) WHERE perf_place = country_arg;
    RAISE INFO 'Song_name: %,  Performance_country: %', TRIM(record_name), TRIM(record_country);
END;
$$;
