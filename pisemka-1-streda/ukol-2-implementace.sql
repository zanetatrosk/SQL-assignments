create or replace TRIGGER zkontroluj_psp
BEFORE INSERT OR UPDATE OR DELETE ON PLAVBA_S_PRUVODCEM
FOR EACH ROW
DECLARE
    pocet_m integer;
    pocet_max integer;
    jmeno varchar2(20);
BEGIN
    pocet_max := 0;
    select POCET_MIST into pocet_m from LOD where LODID = :new.ID_LOD;
    DBMS_OUTPUT.PUT_LINE(pocet_m);
    select max(POCET_MIST) into pocet_max from LOD join POKRYTI using (LODID) where NID = :new.ZID;
    DBMS_OUTPUT.PUT_LINE(pocet_max);
    select JMENON into jmeno from NAMORNIK where NAMORNIK.NID = :new.NID;
    if pocet_max < pocet_m then
        RAISE_APPLICATION_ERROR(-20002, 'Pro tuto plavbu není námořník ' || jmeno || 'klasifikován');
    end if;
END zkontroluj_psp;
