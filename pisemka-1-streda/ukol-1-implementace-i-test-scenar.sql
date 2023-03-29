create or replace FUNCTION pocty_mist_v_po(n_name VARCHAR2)
return integer
IS
    id integer;
    flag integer;
    res integer;
BEGIN
    Select count(*) into flag from NAMORNIK where NAMORNIK.JMENON=n_name;
    if not flag != 0
        then  RAISE_APPLICATION_ERROR(-20001, 'Námořník se jménem' || n_name || 'není registrovaným námořníkem' );
    end if;
    Select NID into id from NAMORNIK where NAMORNIK.JMENON=n_name;
    select SUM(POCET_MIST) into res from LOD join POKRYTI using (LODID) where NID = id;
    if res is null then
        return 0;
    end if;
    return res;

END;
DECLARE
    resultek integer;
begin
    resultek := pocty_mist_v_po('Lubber');
    DBMS_OUTPUT.PUT_LINE('Result is ' ||resultek);
     resultek := pocty_mist_v_po('Dustin');
    DBMS_OUTPUT.PUT_LINE('Result is ' || resultek);
     resultek := pocty_mist_v_po('Yoda');
    DBMS_OUTPUT.PUT_LINE('Result is ' || resultek);
end;
