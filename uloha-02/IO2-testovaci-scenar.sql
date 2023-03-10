begin
    --smazani dat z tabulek
    EXECUTE IMMEDIATE 'DELETE FROM "RIDER"';
    EXECUTE IMMEDIATE 'DELETE FROM "HORSE_RIDER"';

end;

    -- vlozeni jezdce
    insert into Rider values (1, 'mno');
    -- update kone na vek kdy je moc mlady aby ho nekdo jezdil
    update HORSE SET age=2 where ID_KUN=15;
    -- snaha o to pridat jezdci moc mladeho kone
    insert into HORSE_RIDER values (15, 1);
    -- update kone na vek kdy je vhodny k jezdeni
    update HORSE SET age=4 where ID_KUN=15;
    -- opetovne vlozeni ktere se ma povest
    insert into HORSE_RIDER values (15, 1);
    -- update kone na moc mlady vek
     update HORSE SET age=1 where ID_KUN=15;
