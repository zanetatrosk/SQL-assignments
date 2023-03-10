declare
    idx INTEGER := 0;
begin
    --smazani dat z tabulek
    EXECUTE IMMEDIATE 'DELETE FROM "OFFER"';
    COMMIT;
    --priklad pridani kone ktery nema jezdce, tudiz nemuze byt na prodej
    CHECK_NEW_OFFER.INSERT_OFFER(idx,1, 0, null, null);
    --priklad pridani kone ktery ma jezdce, tudiz muze byt pridan do tabulky
    CHECK_NEW_OFFER.INSERT_OFFER(idx,15,0,null,null);
    -- priklad updatu offer na id kone co nema jezdce
    CHECK_NEW_OFFER.UPDATE_OFFER(idx,10,0,null, null);
    --priklad updatu offer co by se mel provest
    CHECK_NEW_OFFER.UPDATE_OFFER(idx,15,0,null, null);
end;