CREATE OR REPLACE PROCEDURE ret_family(v_name VARCHAR2, choice integer) IS
  checked integer;
  id_v integer;
   CURSOR emp_cursor (id_vydra integer, tp integer) IS
   SELECT cv, m, o, generation, JMENO, POHLAVI FROM (
  WITH Ancestor(cv, m, o,  generation) AS (
    SELECT cv, MATKA, OTEC, 0 FROM VYDRA WHERE cv = id_vydra
    UNION ALL
    SELECT v1.cv,
           v1.MATKA, v1.OTEC,
           generation + 1
    FROM VYDRA v1, Ancestor
    WHERE
        (tp = 1 and v1.cv = Ancestor.m)
        or
        (tp = 2 and  v1.cv = Ancestor.o)
          or
        (tp = 3 and ((v1.cv is not null and v1.cv = Ancestor.m) OR (v1.cv is not null and v1.cv = Ancestor.o)) )
  )
  SELECT distinct cv, m, o, generation, JMENO, POHLAVI FROM Ancestor join VYDRA using (cv) where generation != 0 ORDER BY generation
) emp_cursor;

BEGIN
    select count(*) into checked from VYDRA where JMENO=v_name;

    if checked = 0 then
            RAISE_APPLICATION_ERROR(-20001,'Vydra ' || v_name || ' se nenachazi v databazi');
    end if;
    select  VYDRA.CV into id_v from VYDRA where JMENO=v_name;

   FOR emp_record IN emp_cursor(id_v, choice)
    LOOP
     DBMS_OUTPUT.PUT_LINE( '-> ' || emp_record.JMENO
    ||'(' ||emp_record.generation ||')');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');

END;

