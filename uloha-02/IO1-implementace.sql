create or replace PACKAGE check_new_offer
authid definer
is
    procedure insert_offer( id_o integer, id_k integer, id_s integer, pr integer, bu in varchar2 );
    procedure update_offer( id_o integer, id_k integer, id_s integer, pr integer, bu in varchar2 );

end check_new_offer;

create or replace PACKAGE BODY check_new_offer
is

    procedure insert_offer( id_o integer, id_k integer, id_s integer, pr integer, bu in varchar2 )
     is
         id_konoch integer;
      begin
          select count(*) into id_konoch from HORSE_RIDER where ID_KUN = id_k;
          if id_konoch != 0 then
             insert into offer values (id_o, id_k, id_s, pr, bu);
          else
            RAISE_APPLICATION_ERROR(-20001, 'kun neni jezden zadnym jezdcem' );
          end if;

   end insert_offer;

    procedure update_offer ( id_o integer, id_k integer, id_s integer, pr integer, bu in varchar2 )
     is
         id_konoch integer;
      begin
          select count(*) into id_konoch from HORSE_RIDER where ID_KUN = id_k;
          if id_konoch != 0 then
              update offer set ID_KUN = id_k, SOLD = id_s, PRICE = pr, BUYER = bu where ID_OFFER = id_o;
          else
            RAISE_APPLICATION_ERROR(-20001, 'kun neni jezden zadnym jezdcem' );
          end if;

   end update_offer;
end check_new_offer;
