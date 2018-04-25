CREATE OR REPLACE FUNCTION insert_into_tab1(kolik INTEGER) RETURNS integer  AS $$
BEGIN
  for i in 1..kolik loop
    insert into tab1 values (i,'aaa');
  end loop;
  RETURN kolik;
END;
$$ LANGUAGE plpgsql ;