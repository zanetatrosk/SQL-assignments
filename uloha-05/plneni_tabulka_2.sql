CREATE OR REPLACE FUNCTION fill_horses(cnt INTEGER)
RETURNS VOID AS $$
DECLARE
    userList TEXT[];
    user_state TEXT[];
    nw_username varchar;
    nw_state varchar;
    result_rows Integer;
BEGIN
    DELETE FROM HORSE;
    DELETE FROM OFFER;
    RAISE NOTICE 'Zaznamy z tabulky horse a offer smazany';
    SELECT array_agg(USERNAME) INTO userList from USERHORSE;
    user_state := ARRAY['Holandsko', 'Cesko', 'Slovensko'];
    FOR I IN 1..cnt LOOP
        nw_username := userList[trunc(random() * array_length(userList, 1)) + 1];
        nw_state := user_state[trunc(random() * array_length(user_state, 1)) + 1];
        INSERT INTO HORSE VALUES (I,nw_username, 'random ulice',nw_state,null, null, null);
    END LOOP;
    SELECT count(*) INTO result_rows FROM HORSE;
    RAISE NOTICE 'pocet novych zaznamu: %', result_rows;
    --rucni naplneni treti tabulky
    INSERT INTO OFFER VALUES (1, 3, 0, null, null);
    INSERT INTO OFFER VALUES (2, 6, 0, null, null);
    INSERT INTO OFFER VALUES (3, 1, 0, null, null);
    INSERT INTO OFFER VALUES (4, 8, 0, null, null);
    INSERT INTO OFFER VALUES (5, 10, 0, null, null);
END;
$$ LANGUAGE plpgsql;


SELECT fill_horses(15);


