CREATE or replace FUNCTION fill_owners(cnt INTEGER) RETURNS BOOLEAN AS $$
DECLARE
    id_count INTEGER := 0;
    zk INTEGER;
    test VARCHAR(36);
    name_person VARCHAR(21);
    result_rows INTEGER;
BEGIN
    BEGIN
        DELETE FROM userhorse;
        RAISE NOTICE 'Zaznamy z tabulky user smazany';
    END;

    WHILE id_count < cnt LOOP
        test := gen_random_uuid()::text;
        SELECT count(*) INTO zk FROM USERHORSE WHERE username = test;
        IF zk = 0 THEN
            name_person := 'Amalie'|| trim( to_char(123 + id_count, '999'));
            INSERT INTO USERHORSE (username, name, contact) VALUES (test, name_person, 'kontakt');
            id_count := id_count + 1;
        END IF;
    END LOOP;

    SELECT count(*) INTO result_rows FROM USERHORSE;
    RAISE NOTICE 'pocet novych zaznamu: %', result_rows;

    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;


select fill_owners(15);
