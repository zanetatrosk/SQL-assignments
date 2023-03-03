CREATE OR REPLACE PROCEDURE fill_owners
IS
id_count INTEGER := 0;
zk Integer;
test Varchar(10);
name_person Varchar(21);
begin
EXECUTE IMMEDIATE 'DELETE FROM "USERHORSE"';
COMMIT;
DBMS_OUTPUT.PUT_LINE('Zaznamy z tabulky user smazany');
WHILE id_count < 15 LOOP

       test := DBMS_RANDOM.STRING('x', 10);
       SELECT count(*) INTO zk FROM USERHORSE WHERE test = username;
       if (zk = 0) then
            name_person := 'Amalie '||to_char(123+id_count);
            INSERT INTO USERHORSE VALUES (test, name_person, 'kontakt');
            id_count := id_count + 1;
       end if;
    end loop;



end fill_owners;


begin
    fill_owners;
end;
/
