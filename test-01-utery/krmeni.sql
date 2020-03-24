--------------------------------------------------------
--  File created - Středa-prosince-04-2019   
--------------------------------------------------------
--------------------------------------------------------

--------------------------------------------------------
--   Mazání tabulek----
--------------------------------------------------------
CREATE OR REPLACE PROCEDURE "SMAZAT_KRMENI" AS
  tbl_zvire  PLS_INTEGER;
  tbl_osetrovatel  PLS_INTEGER;
  tbl_krmeni  PLS_INTEGER;

BEGIN

select count(*) into tbl_zvire from user_tables where table_name = 'ZVIRE';
select count(*)  into tbl_osetrovatel from user_tables where table_name = 'OSETROVATEL';
select count(*) into tbl_krmeni from user_tables where table_name = 'KRMENI';


if tbl_krmeni = 1 then
    execute immediate 'drop table krmeni';
end if;

if tbl_osetrovatel = 1 then
    execute immediate 'drop table osetrovatel';
end if;

if tbl_zvire = 1 then
    execute immediate 'drop table zvire';
end if;

END "SMAZAT_KRMENI";
/

EXEC "SMAZAT_KRMENI";

--------------------------------------------------------
--  DDL for Table KRMENI
--------------------------------------------------------

  CREATE TABLE "KRMENI" ("DATUM" DATE, "ID_OSETROVATELE" NUMBER, "ID_ZVIRETE" NUMBER, "TYP_KRMIVA" VARCHAR2(20), "MNOZSTVI" NUMBER, "CAS" VARCHAR2(8)) ;
--------------------------------------------------------
--  DDL for Table OSETROVATEL
--------------------------------------------------------

  CREATE TABLE "OSETROVATEL" ("ID_OSETROVATELE" NUMBER, "JMENO_OSETROVATELE" VARCHAR2(20), "ADRESA" VARCHAR2(20), "PLAT" NUMBER) ;
--------------------------------------------------------
--  DDL for Table ZVIRE
--------------------------------------------------------

  CREATE TABLE "ZVIRE" ("ID_ZVIRETE" NUMBER, "JMENO_ZVIRETE" VARCHAR2(20), "DRUH" VARCHAR2(20), "DATUM_NAROZENI" DATE, "ID_KMOTRA" NUMBER) ;
REM INSERTING into KRMENI
SET DEFINE OFF;
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('11.02.2004','DD.MM.YYYY'),'6','16','celer','28','16:02:47');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('04.02.2011','DD.MM.YYYY'),'5','12','olsak','39','03:39:38');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('05.10.2014','DD.MM.YYYY'),'3','5','bagr','23','16:14:55');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.08.2012','DD.MM.YYYY'),'5','7','koks','50','15:39:55');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('03.10.2000','DD.MM.YYYY'),'3','7','dort','10','16:26:25');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('27.08.2019','DD.MM.YYYY'),'3','16','hranolky','1028','21:15:45');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('09.09.2014','DD.MM.YYYY'),'4','9','granule','1011','21:53:39');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.12.2015','DD.MM.YYYY'),'4','5','rajce','20','13:27');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('25.12.2015','DD.MM.YYYY'),'1','18','boruvky','2000','21:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'4','9','banan','6','12:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('04.07.2015','DD.MM.YYYY'),'4','11','banan','5','12:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'6','7','piskoty','100','13:50');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('06.12.2015','DD.MM.YYYY'),'1','9','mrkev','2','14:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('06.12.2015','DD.MM.YYYY'),'2','10','dort','1','07:14');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('04.12.2019','DD.MM.YYYY'),'2','1','granule','120','08:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('29.11.2011','DD.MM.YYYY'),'1','2','mrkev','20','14:20');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('26.11.2011','DD.MM.YYYY'),'3','4','slama','30','17:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('29.12.2011','DD.MM.YYYY'),'3','5','rajce','20','18:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('29.11.2011','DD.MM.YYYY'),'1','4','kedlubna','1100','14:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('30.11.2011','DD.MM.YYYY'),'3','1','voda','1','15:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('30.11.2011','DD.MM.YYYY'),'1','5','rekvicka','20','09:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('30.11.2011','DD.MM.YYYY'),'3','2','uhli','2','06:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('30.11.2011','DD.MM.YYYY'),'3','3','koks','3','06:45');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.01.2012','DD.MM.YYYY'),'3','6','topol','1','10:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('05.11.2013','DD.MM.YYYY'),'4','8','zelí','20','13:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('05.11.2013','DD.MM.YYYY'),'3','8','tabák','11','18:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('04.11.2013','DD.MM.YYYY'),'3','7','bananek','20000','20:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'1','11','klacek','10','14:20');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'2','12','opice','4','08:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'3','13','veverka','3','11:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'1','14','hranolky','50','14:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'2','8','broucci','20','15:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('01.04.2015','DD.MM.YYYY'),'4','4','pomlazka','1','18:20');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.12.2015','DD.MM.YYYY'),'3','10','buraky','400','19:15');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.12.2015','DD.MM.YYYY'),'3','16','jablka','20','14:10');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.12.2015','DD.MM.YYYY'),'3','17','seno','10','07:18');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('24.12.2015','DD.MM.YYYY'),'2','8','zeli','30','14:45');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('02.08.2015','DD.MM.YYYY'),'1','4','seno','20','13:10');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('04.09.2015','DD.MM.YYYY'),'2','4','granule','30','14:20');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('10.10.2015','DD.MM.YYYY'),'4','4','celer','3','17:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('14.10.2015','DD.MM.YYYY'),'5','4','seno','10','12:50');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('18.11.2015','DD.MM.YYYY'),'6','4','salat','30','10:50');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('05.03.2015','DD.MM.YYYY'),'1','6','strom','2','07:00');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('07.03.2015','DD.MM.YYYY'),'2','6','sekvoj','1','09:10');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('10.03.2015','DD.MM.YYYY'),'3','6','palma','3','06:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('11.03.2015','DD.MM.YYYY'),'4','6','trava','5000','08:10');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('15.03.2015','DD.MM.YYYY'),'5','6','oresak','2','10:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('17.03.2015','DD.MM.YYYY'),'6','6','olsak','1','14:25');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('15.04.2013','DD.MM.YYYY'),'1','19','kytka','500','14:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('17.04.2013','DD.MM.YYYY'),'3','19','kytka','450','12:30');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('18.04.2013','DD.MM.YYYY'),'4','19','postel','2','17:20');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('20.04.2013','DD.MM.YYYY'),'5','19','bagr','1','16:10');
Insert into KRMENI (DATUM,ID_OSETROVATELE,ID_ZVIRETE,TYP_KRMIVA,MNOZSTVI,CAS) values (to_date('25.04.2013','DD.MM.YYYY'),'6','19','debagr','1','17:15');
REM INSERTING into OSETROVATEL
SET DEFINE OFF;
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('6','Manka','Raholec','12650');
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('1','Vlasta','Praha','12546');
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('4','Karel','Benesov','123');
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('2','Honza','Brno','14400');
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('3','Huml','Olomouc','18600');
Insert into OSETROVATEL (ID_OSETROVATELE,JMENO_OSETROVATELE,ADRESA,PLAT) values ('5','Rumcajs','Raholec','12750');
REM INSERTING into ZVIRE
SET DEFINE OFF;
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('9','Věrka','opice',to_date('03.12.2015','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('10','Zuzana','slon',to_date('10.12.2014','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('1','Anicka','oposum',to_date('26.11.2006','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('2','Karel','oposum',to_date('29.08.2009','DD.MM.YYYY'),'2');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('3','Rozárka','želva',to_date('29.11.2011','DD.MM.YYYY'),'4');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('4','Pajda','antilopa',to_date('29.06.2008','DD.MM.YYYY'),'2');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('5','Kopr','zebra',to_date('29.03.1999','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('6','Jiřík','žirafa',to_date('05.11.2000','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('8','Pepík','lasice',to_date('05.11.2013','DD.MM.YYYY'),'1');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('7','Zuzana','opice',to_date('22.03.2001','DD.MM.YYYY'),'2');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('11','Azor','opice',to_date('04.07.2015','DD.MM.YYYY'),'4');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('12','Azor','lev',to_date('04.06.2011','DD.MM.YYYY'),'2');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('13','Azor','opice',to_date('07.08.2003','DD.MM.YYYY'),'3');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('14','Azor','opice',to_date('03.04.1998','DD.MM.YYYY'),'4');
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('15','SssSSs','creeper',to_date('04.07.1962','DD.MM.YYYY'),null);
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('16','Bimbo','slon',to_date('10.11.2010','DD.MM.YYYY'),null);
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('17','Jumbo','slon',to_date('14.09.2012','DD.MM.YYYY'),null);
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('18','Odumbo','slon',to_date('09.12.2011','DD.MM.YYYY'),null);
Insert into ZVIRE (ID_ZVIRETE,JMENO_ZVIRETE,DRUH,DATUM_NAROZENI,ID_KMOTRA) values ('19','Amina','žirafa',to_date('07.10.1997','DD.MM.YYYY'),null);
--------------------------------------------------------
--  DDL for Index KRMENI_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "ZVIRE_PK" ON "ZVIRE" ("ID_ZVIRETE") ;
--------------------------------------------------------
--  DDL for Index OSETROVATEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OSETROVATEL_PK" ON "OSETROVATEL" ("ID_OSETROVATELE") ;

--------------------------------------------------------
--  Constraints for Table KRMENI
--------------------------------------------------------

  ALTER TABLE "KRMENI" ADD CONSTRAINT "KRMENI_PK" PRIMARY KEY ("DATUM", "ID_OSETROVATELE", "ID_ZVIRETE", "CAS") USING INDEX (CREATE UNIQUE INDEX "KRMENI_PK1" ON "KRMENI" ("DATUM", "ID_OSETROVATELE", "ID_ZVIRETE", "CAS") )  ENABLE;
  ALTER TABLE "KRMENI" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "KRMENI" MODIFY ("TYP_KRMIVA" NOT NULL ENABLE);
  ALTER TABLE "KRMENI" MODIFY ("ID_OSETROVATELE" NOT NULL ENABLE);
  ALTER TABLE "KRMENI" MODIFY ("ID_ZVIRETE" NOT NULL ENABLE);
  ALTER TABLE "KRMENI" MODIFY ("CAS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ZVIRE
--------------------------------------------------------

  ALTER TABLE "ZVIRE" MODIFY ("ID_ZVIRETE" NOT NULL ENABLE);
  ALTER TABLE "ZVIRE" MODIFY ("JMENO_ZVIRETE" NOT NULL ENABLE);
  ALTER TABLE "ZVIRE" ADD CONSTRAINT "ZVIRE_PK" PRIMARY KEY ("ID_ZVIRETE") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table OSETROVATEL
--------------------------------------------------------

  ALTER TABLE "OSETROVATEL" ADD CONSTRAINT "OSETROVATEL_PK" PRIMARY KEY ("ID_OSETROVATELE") USING INDEX  ENABLE;
  ALTER TABLE "OSETROVATEL" MODIFY ("ID_OSETROVATELE" NOT NULL ENABLE);
  ALTER TABLE "OSETROVATEL" MODIFY ("JMENO_OSETROVATELE" NOT NULL ENABLE);
  ALTER TABLE "OSETROVATEL" MODIFY ("ADRESA" NOT NULL ENABLE);
  ALTER TABLE "OSETROVATEL" MODIFY ("PLAT" NOT NULL ENABLE);