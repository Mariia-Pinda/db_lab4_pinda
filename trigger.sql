CREATE TRIGGER genre_name_insert 
AFTER INSERT ON genres
FOR EACH ROW EXECUTE FUNCTION lower_genre_name()

CREATE OR REPLACE FUNCTION lower_genre_name() RETURNS trigger AS
$$
     BEGIN
          UPDATE genres 
          SET genre_name = lower(genre_name) WHERE genres.genre_id = NEW.genre_id; 
      RETURN NULL; -- result is ignored since this is an AFTER trigger
     END;
$$ LANGUAGE 'plpgsql';
