CREATE OR REPLACE PROCEDURE fill_horses (cnt INTEGER)
    IS
    TYPE T_USER IS TABLE OF VARCHAR(13) index by BINARY_INTEGER;
    TYPE T_State IS TABLE OF VARCHAR(20) index by BINARY_INTEGER;
    userList T_USER;
    user_state T_State;
    nw_username varchar(13);
    nw_state varchar(20);
    result_rows Integer;

begin
    EXECUTE IMMEDIATE 'DELETE FROM "HORSE"';
    EXECUTE IMMEDIATE 'DELETE FROM "OFFER"';
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Zaznamy z tabulky horse a offer smazany');
    select USERNAME BULK COLLECT INTO userList from USERHORSE;
    user_state(0) := 'Holandsko';
    user_state(1) := 'Cesko';
    user_state(2) := 'Slovensko';
    for I in 1..cnt loop
      nw_username := userList(floor(DBMS_RANDOM.value(1, userList.COUNT)));
      nw_state := user_state(floor(DBMS_RANDOM.value(0, user_state.COUNT)));
      insert into HORSE VALUES (I,nw_username, 'random ulice',nw_state,null,null,null, null);
    end loop;
    SELECT count(*) into result_rows from HORSE;
    DBMS_OUTPUT.PUT_LINE('pocet novych zaznamu: ' || result_rows);
    --rucni naplneni treti tabulky
    Insert into OFFER values (1, 3, 0, null, null);
    Insert into OFFER values (2, 6, 0, null, null);
    Insert into OFFER values (3, 1, 0, null, null);
    Insert into OFFER values (4, 8, 0, null, null);
    Insert into OFFER values (5, 10, 0, null, null);
end fill_horses;
begin
    fill_horses(15);
end;
