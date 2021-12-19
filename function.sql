CREATE OR REPLACE FUNCTION clean_no_place() RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN 
   DELETE FROM releases 
   WHERE releases.song_id IN 
      (SELECT releases.song_id from releases where releases.release_place is NULL);
END;
$$;
