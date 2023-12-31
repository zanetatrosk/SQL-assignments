declare
  cursor c_souroz (pcmv number, pcov number, pcv number) is
    select cv, jmeno
        from vydra
        where ((matka = pcmv and otec = pcov) and cv <> pcv);
  va number;        -- pomocna promenna
  vcv number := &cislo_vydry;  -- vydra, jejiz sourozence hledame
  vcm number;       -- cislo matky vydry
  vco number;       -- cislo otce vydry
  e_neznama exception;
begin
  select 1 into Va         -- vydra neni v tabulce vyder
  from vydra
  where cv = vcv;
  select matka             -- najdeme matku vydry
  into vcm
  from vydra
  where cv = vcv;
  if Vcm is null then raise e_neznama; end if;
  select otec             -- najdeme otce vydry
  into vco
  from vydra
  where cv = vcv;
  if Vco is null then raise e_neznama; end if;
  dbms_output.put_line('Vydra cislo '||vcv||' ma tyto sourozence:');
  for i in c_souroz (vcm, vco, vcv) loop
    dbms_output.put_line(i.jmeno);
  end loop;
exception
  when NO_DATA_FOUND then
    raise_application_error (-20001, 'Vydra '||vcv||' neni v tabulce vyder.');
  when e_neznama then
    raise_application_error (-20002, 'Informace o sourozencich vydry cislo '||vcv||' je neuplna.');
end;


select user from dual;

alter user valenta identified by michal;

select 6*7 from dual;


begin
  dbms_output.put_line('Přeji dobrý den, dnes je '||to_char(current_date,'day'));
end;

declare
  a varchar2(10) := &prvni_clen;
  b varchar2(10) := &druhy_clen;
  c integer;
begin
  c := to_number(a) + to_number(b);
  dbms_output.put_line('Soucet je '|| c );
end;

declare
  cursor c_souroz (pcmv number, pcov number, pcv number) is
    select cv, jmeno
        from vydra
        where ((matka = pcmv and otec = pcov) and cv <> pcv);
  va number;        -- pomocna promenna
  vcv number := &cislo_vydry;  -- vydra, jejiz sourozence hledame
  vcm number;       -- cislo matky vydry
  vco number;       -- cislo otce vydry
  e_neznama exception;
begin
  select 1 into Va         -- vydra neni v tabulce vyder
  from vydra
  where cv = vcv;
  select matka             -- najdeme matku vydry
  into vcm
  from vydra
  where cv = vcv;
  if Vcm is null then raise e_neznama; end if;
  select otec             -- najdeme otce vydry
  into vco
  from vydra
  where cv = vcv;
  if Vco is null then raise e_neznama; end if;
  dbms_output.put_line('Vydra cislo '||vcv||' ma tyto sourozence:');
  for i in c_souroz (vcm, vco, vcv) loop
    dbms_output.put_line(i.jmeno);
  end loop;
exception
  when NO_DATA_FOUND then
    raise_application_error (-20001, 'Vydra '||vcv||' neni v tabulce vyder.');
  when e_neznama then
    raise_application_error (-20002, 'Informace o sourozencich vydry cislo '||vcv||' je neuplna.');
end;


select user from dual;

alter user valenta identified by michal;

select 6*7 from dual;


begin
  dbms_output.put_line('Přeji dobrý den, dnes je '||to_char(current_date,'day'));
end;

declare
  a varchar2(10) := &prvni_clen;
  b varchar2(10) := &druhy_clen;
  c integer;
begin
  c := to_number(a) + to_number(b);
  dbms_output.put_line('Soucet je '|| c );
end;

alter user valenta identified by michal;

begin
  dbms_output.put_line('Přeji dobrý den, dnes je '||to_char(current_date,'day'));
end;

declare
  a varchar2(10) := &prvni_clen;
  b varchar2(10) := &druhy_clen;
  c integer;
begin
  c := to_number(a) + to_number(b);
  dbms_output.put_line('Soucet je '|| c );
end;