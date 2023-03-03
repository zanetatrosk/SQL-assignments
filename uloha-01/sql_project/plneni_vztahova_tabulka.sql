CREATE OR REPLACE PROCEDURE fill_liked AUTHID CURRENT_USER
IS
    TYPE T_USERNAME IS TABLE OF VARCHAR(13) index by BINARY_INTEGER;
    TYPE T_ID_OFFER IS TABLE OF INTEGER index by BINARY_INTEGER;
    username_list T_USERNAME;
    offer_list T_ID_OFFER;
    max_id INTEGER;
    start_id INTEGER;
    username_id varchar(12);
    my_id_offer INTEGER;
    check_val INTEGER;
begin
    EXECUTE IMMEDIATE 'DELETE FROM "LIKED"';
    COMMIT;
    SELECT USERNAME BULK COLLECT INTO username_list FROM USERHORSE;
    SELECT id_offer BULK COLLECT INTO offer_list FROM OFFER;
    max_id := 10;
    start_id := 1;
    DBMS_OUTPUT.PUT_LINE('nevim');

    while start_id < max_id loop
        my_id_offer := offer_list(FLOOR(DBMS_RANDOM.value(1, offer_list.COUNT)));
        username_id := username_list(FLOOR(DBMS_RANDOM.value(1, username_list.COUNT)));
        SELECT count(*) INTO check_val FROM LIKED WHERE username_id = username and my_id_offer = id_offer;
        if (check_val = 0) then
            DBMS_OUTPUT.PUT_LINE('nevim');
            insert into LIKED values (username_id, my_id_offer);
            start_id := start_id + 1;
        end if;
    end loop;
end fill_liked;

begin
    fill_liked();
end;
