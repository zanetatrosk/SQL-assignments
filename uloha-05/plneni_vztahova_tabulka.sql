CREATE OR REPLACE PROCEDURE fill_liked(cnt INTEGER)
LANGUAGE plpgsql
AS $$
DECLARE

    username_list TEXT[];
    offer_list INT[];
    start_id INTEGER;
    username_id VARCHAR;
    my_id_offer INTEGER;
    check_val INTEGER;
    result_rows INTEGER;
BEGIN
    DELETE FROM LIKED;
    RAISE NOTICE 'smazany data z tabulky liked';
    SELECT ARRAY_AGG(USERNAME) INTO username_list FROM USERHORSE;
    SELECT array_agg (id_offer ) INTO offer_list from offer;
    start_id := 1;

    WHILE start_id <= cnt LOOP
        my_id_offer := offer_list[FLOOR(RANDOM() * array_length(offer_list, 1)) + 1];
        username_id := username_list[FLOOR(RANDOM() * array_length(username_list, 1)) + 1];

        Raise notice '% %', my_id_offer, username_id;
        SELECT COUNT(*) INTO check_val FROM LIKED WHERE username = username_id AND id_offer = my_id_offer;

        IF (check_val = 0) THEN
            INSERT INTO LIKED VALUES (username_id, my_id_offer);
            start_id := start_id + 1;
        END IF;
    END LOOP;
    SELECT COUNT(*) INTO result_rows FROM LIKED;
    RAISE NOTICE 'pocet novych zaznamu: %', result_rows;
END;
$$;

CALL fill_liked(10);
