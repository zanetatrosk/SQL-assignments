CREATE OR REPLACE TRIGGER insert_or_update_horserider
BEFORE INSERT OR UPDATE OF ID_KUN, ID_RIDER ON HORSE_RIDER
FOR EACH ROW
DECLARE
    t_age Integer;
BEGIN
   select age into t_age from HORSE where HORSE.ID_KUN = :new.ID_KUN;
   if t_age is not null and t_age < 3
       then
       RAISE_APPLICATION_ERROR(-20001, 'kun mladsi nez 3 let nemuze mit jezdce' );
   end if;

END;
CREATE OR REPLACE TRIGGER update_ridden_horse
BEFORE INSERT OR UPDATE OF ID_KUN, AGE ON HORSE
FOR EACH ROW
DECLARE
    is_there Integer;
BEGIN
   select count(*) into is_there from HORSE_RIDER where HORSE_RIDER.ID_KUN = :old.ID_KUN;
   DBMS_OUTPUT.PUT_LINE(:new.age);
   if is_there != 0 and :new.age is not null and :new.age < 3
       then
       RAISE_APPLICATION_ERROR(-20001, 'kun mladsi nez 3 let nemuze mit jezdce' );
   end if;

END;
