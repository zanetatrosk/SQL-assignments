    DECLARE
        v_name VARCHAR2(20);
        linie integer := 1;
    BEGIN

        FOR Ancestor_rec IN (
            with Ancestor(cv, otec) as (
                Select cv, otec from VYDRA where cv = 10
                union all
                select v1.cv, v1.otec from VYDRA v1, Ancestor where v1.CV = Ancestor.otec
            )
            SELECT cv, otec FROM Ancestor
        ) LOOP
            if Ancestor_rec.otec is not null then
            select JMENO into v_name from VYDRA where CV=Ancestor_rec.otec;
            DBMS_OUTPUT.PUT_LINE('-> ' || v_name || '(' || linie || ')');
            linie := linie + 1;
            end if;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');
        linie := 1;
        FOR Ancestor_rec IN (
            with Ancestor(cv, matka) as (
                Select cv, matka from VYDRA where cv = 10
                union all
                select v1.cv, v1.MATKA from VYDRA v1, Ancestor where v1.CV = Ancestor.matka
            )
            SELECT cv, matka FROM Ancestor
        ) LOOP
            if Ancestor_rec.matka is not null then
            select JMENO into v_name from VYDRA where CV=Ancestor_rec.matka;
            DBMS_OUTPUT.PUT_LINE('-> ' || v_name || '(' || linie || ')');
            linie := linie + 1;
            end if;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');

        FOR Ancestor_rec IN (
            with Ancestor(cv, matka, otec, generation) as (
                Select cv, matka, otec, 1 from VYDRA where cv = 10
                union all
                select v1.cv, v1.MATKA, v1.OTEC, generation + 1 from VYDRA v1, Ancestor
                where (v1.cv is not null and v1.cv = Ancestor.matka) OR (v1.cv is not null and v1.cv = Ancestor.otec)
            )
            SELECT cv, matka, otec, generation FROM Ancestor
        ) LOOP
            if Ancestor_rec.matka is not null  then
            select JMENO into v_name from VYDRA where CV=Ancestor_rec.matka;
            DBMS_OUTPUT.PUT_LINE('-> ' || v_name || '(' || Ancestor_rec.generation || ')');
            end if;
            if Ancestor_rec.otec is not null  then
            select JMENO into v_name from VYDRA where CV=Ancestor_rec.otec;
            DBMS_OUTPUT.PUT_LINE('-> ' || v_name || '(' || Ancestor_rec.generation || ')');
            end if;
        END LOOP;

    end;
