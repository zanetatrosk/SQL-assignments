create or replace procedure drop_table(tbl varchar2)
is
begin
    begin
     execute immediate 'drop table '||tbl||' cascade constraints purge';
    exception
     when others then null;
   end;
end;
/

begin
drop_table ('PLAVBA_S_PRUVODCEM');
drop_table ('POKRYTI');
drop_table ('REZERVACE');
drop_table ('SPOJ');
drop_table ('LINKA');
drop_table ('LOD');
drop_table ('NAMORNIK');
drop_table ('ZAKAZNIK');
end;
/

--------------------------------------------------------
--  DDL for Table LINKA
--------------------------------------------------------
  CREATE TABLE "LINKA"
   (	"LID" INTEGER,
	    "STRT" VARCHAR2(20),
	     "CIL" VARCHAR2(20)
    ) ;
--------------------------------------------------------
--  DDL for Table LOD
--------------------------------------------------------
  CREATE TABLE "LOD"
   (	"LODID" INTEGER,
	     "JMENOL" VARCHAR2(20),
       "LTYP" VARCHAR2(20),
       "BARVA" VARCHAR2(20),
       "POCET_MIST" INTEGER
   ) ;
--------------------------------------------------------
--  DDL for Table NAMORNIK
--------------------------------------------------------
  CREATE TABLE "NAMORNIK"
   (	"NID" INTEGER,
      "JMENON" VARCHAR2(20),
      "VEK" INTEGER,
      "HODNOST" NUMBER(2,0),
      "PLAT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PLAVBA_S_PRUVODCEM
--------------------------------------------------------
  CREATE TABLE "PLAVBA_S_PRUVODCEM"
   (	"ZID" INTEGER,
	    "ID_LOD" INTEGER,
    	"NID" INTEGER,
    	"DATUM_PL" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SPOJ
--------------------------------------------------------
  CREATE TABLE "SPOJ"
   (	"LID" INTEGER,
	    "SPID" INTEGER,
      "SCAS" INTERVAL DAY (0) TO SECOND (0)
   ) ;
--------------------------------------------------------
--  DDL for Table POKRYTI
--------------------------------------------------------
  CREATE TABLE "POKRYTI"
   (	"LID" Integer,
      "NID" Integer,
      "SPID" Integer,
      "DATUM_POK" DATE,
      "LODID" Integer,
	   CONSTRAINT "POKRYTO_PK" PRIMARY KEY ("LID", "NID", "SPID", "DATUM_POK", "LODID") ENABLE
    ) ORGANIZATION INDEX NOCOMPRESS ;
--------------------------------------------------------
--  DDL for Table REZERVACE
--------------------------------------------------------
  CREATE TABLE "REZERVACE"
   (	"LODID" INTEGER,
	"ZID" INTEGER,
	"DATUM_RES" DATE,
	 CONSTRAINT "REZERVACE2_PK" PRIMARY KEY ("LODID", "ZID", "DATUM_RES") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS ;
--------------------------------------------------------
--  DDL for Table ZAKAZNIK
--------------------------------------------------------
  CREATE TABLE "ZAKAZNIK"
   (	"ZID" INTEGER,
	"JMENOZ" VARCHAR2(20),
	"ADRESA" VARCHAR2(20),
	"PRIJMENI" VARCHAR2(20),
	"CREDITLIMIT" NUMBER
   ) ;
set autocommit on
---------------------------------------------------
--   DATA FOR TABLE LOD
---------------------------------------------------
REM INSERTING into LOD
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (1,'Chloe','ponorka','žlutá',100);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (2,'Mariane','klipr','modrá',50);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (3,'Skyla','ponorka','černá',30);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (4,'Pooh','plachetnice','hnědá',20);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (5,'Shark','ponorka','pink',22);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (6,'Carmen','klipr','zelená',100);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (7,'Yeanifer','parník','černá',110);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (8,'Charibda','parník','modrá',145);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (9,'Anne',null,'zelená',100);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (10,'Lilien','klipr','modrá',10);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (11,'Anička','plachetnice','růžová',10);
Insert into LOD (LODID,JMENOL,LTYP,BARVA,POCET_MIST) values (12,'Janička','priklad_7','khaki',10);
Commit;
---------------------------------------------------
--   END DATA FOR TABLE LOD
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE ZAKAZNIK
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ZAKAZNIK
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (1,'Gerald','Fordovice 10','Ford',100);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (2,'Horace','Smithovice 10','Smith',110);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (3,'Toe','Blakeovice 10','Blake',120);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (4,'Allen','Allenovice 10','Ginsberg',300);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (5,'Harry','Wardovice 10','Ward-Leonard',310);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (6,'Martin','Martinovice 10','Stropnický',330);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (7,'Scott','Scottovice','McKenzie',400);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (8,'Joseph','Turnerovice','Turner',440);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (9,'Edward','Adamsovice','Adams',550);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (10,'James','Jamesovice','Bond',1000);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (11,'Iásón','Iólkos','Syn Krétheův',1500);
Insert into ZAKAZNIK (ZID,JMENOZ,ADRESA,PRIJMENI,CREDITLIMIT) values (12,'Odysseus','Ithaka 1','Laertiadés ',1700);
Commit;
---------------------------------------------------
--   END DATA FOR TABLE ZAKAZNIK
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE NAMORNIK
--   FILTER = none used
---------------------------------------------------
REM INSERTING into NAMORNIK
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (1,'Dustin',45,7,7000);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (2,'Lubber',55,8,3000);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (3,'Rusty',35,10,6000);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (4,'Yuppy',35,9,2000);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (5,'Guppy',35,5,4500);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (6,'Zorba',16,10,7500);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (7,'Horatio',35,7,2500);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (8,'Brutus',33,1,1350);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (9,'Marco',26,2,5200);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (10,'John',118,6,14000);
Insert into NAMORNIK (NID,JMENON,VEK,HODNOST,PLAT) values (11,'Charon',999,4,6800);
Commit;
--------------------------------------------------
--   END DATA FOR TABLE NAMORNIK
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE LINKA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into LINKA
Insert into LINKA (LID,STRT,CIL) values (1,'Horní Planá','Hůrka');
Insert into LINKA (LID,STRT,CIL) values (2,'Hůrka','Jestřabí');
Insert into LINKA (LID,STRT,CIL) values (3,'Karlovy Dvory','Radislav');
Insert into LINKA (LID,STRT,CIL) values (4,'Dolní Vlatavice','Kyselov');
Insert into LINKA (LID,STRT,CIL) values (5,'Hrustice','Větrník');
Insert into LINKA (LID,STRT,CIL) values (6,'Lipno','Nové Domky');
Insert into LINKA (LID,STRT,CIL) values (7,'Nová Pec','Hůrka');
Insert into LINKA (LID,STRT,CIL) values (8,'Kyselov','Kovářov');
Insert into LINKA (LID,STRT,CIL) values (9,'Jenišov','Bližší Lhota');
Insert into LINKA (LID,STRT,CIL) values (10,'Zadní Hamry','Olšina');
Commit;
---------------------------------------------------
--   END DATA FOR TABLE LINKA
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE SPOJ
--   FILTER = none used
---------------------------------------------------
REM INSERTING into SPOJ
Insert into SPOJ (LID,SPID,SCAS) values (1,1,'0 5:30:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (1,2,'0 7:50:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (1,3,'0 11:25:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (1,4,'0 15:50:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (1,5,'0 18:0:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (2,1,'0 12:0:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (2,2,'0 13:10:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (2,3,'0 22:20:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (3,1,'0 9:10:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (3,2,'0 18:45:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (3,3,'0 23:0:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (4,1,'0 2:10:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (4,2,'0 5:55:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (4,3,'0 19:35:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (5,1,'0 8:0:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (6,1,'0 9:20:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (7,1,'0 12:12:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (8,1,'0 19:35:0.0');
Insert into SPOJ (LID,SPID,SCAS) values (9,1,'0 23:59:0.0');
Commit;
---------------------------------------------------
--   END DATA FOR TABLE SPOJ
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE POKRYTI
--   FILTER = none used
---------------------------------------------------
REM INSERTING into POKRYTI
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,2,3,to_date('01.01.01','DD.MM.RR'),2);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,3,4,to_date('01.01.01','DD.MM.RR'),5);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,4,5,to_date('01.01.01','DD.MM.RR'),6);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,8,1,to_date('10.07.00','DD.MM.RR'),8);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,8,2,to_date('01.01.01','DD.MM.RR'),8);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,11,1,to_date('08.09.00','DD.MM.RR'),1);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,11,1,to_date('24.12.00','DD.MM.RR'),1);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (1,11,1,to_date('01.01.01','DD.MM.RR'),1);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (2,9,1,to_date('01.01.01','DD.MM.RR'),9);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (2,10,2,to_date('01.01.01','DD.MM.RR'),10);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (2,11,3,to_date('02.01.01','DD.MM.RR'),1);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (3,3,2,to_date('02.01.01','DD.MM.RR'),2);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (3,8,1,to_date('02.01.01','DD.MM.RR'),8);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (3,8,3,to_date('24.12.00','DD.MM.RR'),8);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (4,2,3,to_date('24.12.00','DD.MM.RR'),1);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (4,3,2,to_date('24.12.00','DD.MM.RR'),9);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (4,11,1,to_date('24.12.00','DD.MM.RR'),5);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (5,4,1,to_date('24.12.00','DD.MM.RR'),2);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (6,9,1,to_date('24.12.00','DD.MM.RR'),5);
Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (7,10,1,to_date('24.12.00','DD.MM.RR'),6);
-- Insert into POKRYTI (LID,NID,SPID,DATUM_POK,LODID) values (7,10,1,to_date('24.12.00','DD.MM.RR'),12);
Commit;
---------------------------------------------------
--   END DATA FOR TABLE POKRYTI
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE REZERVACE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into REZERVACE
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (1,6,to_date('24.12.00','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (1,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (2,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (2,9,to_date('24.12.00','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (3,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (4,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (5,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (5,7,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (7,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (7,7,to_date('24.12.00','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (8,1,to_date('24.12.00','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (8,1,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (8,6,to_date('01.01.01','DD.MM.RR'));
Insert into REZERVACE (LODID,ZID,DATUM_RES) values (10,6,to_date('01.01.01','DD.MM.RR'));
Commit;
---------------------------------------------------
--   END DATA FOR TABLE REZERVACE
---------------------------------------------------
---------------------------------------------------
--   DATA FOR TABLE PLAVBA_S_PRUVODCEM
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PLAVBA_S_PRUVODCEM
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('01.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('02.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('03.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('04.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('05.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('06.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (1,1,6,to_date('07.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (2,8,1,to_date('01.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (3,6,7,to_date('01.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (4,9,2,to_date('01.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (4,9,2,to_date('02.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (4,9,2,to_date('03.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (4,9,2,to_date('04.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (5,10,9,to_date('01.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (5,10,9,to_date('02.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (5,10,9,to_date('03.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (5,10,9,to_date('04.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (5,10,9,to_date('05.01.01','DD.MM.RR'));
Insert into PLAVBA_S_PRUVODCEM (ZID,ID_LOD,NID,DATUM_PL) values (6,2,3,to_date('01.01.01','DD.MM.RR'));
Commit;
---------------------------------------------------
--   END DATA FOR TABLE PLAVBA_S_PRUVODCEM
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table LINKA
--------------------------------------------------------
 ALTER TABLE "LINKA" ADD CONSTRAINT "LINKA_PK" PRIMARY KEY ("LID") ENABLE;
-------------------------------------------------------
--  Constraints for Table LOD
--------------------------------------------------------
  ALTER TABLE "LOD" ADD CONSTRAINT "LOD_PK" PRIMARY KEY ("LODID") ENABLE;
  ALTER TABLE "LOD" ADD CONSTRAINT "LOD_UK" UNIQUE ("JMENOL") ENABLE;
  ALTER TABLE "LOD" MODIFY ("JMENOL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NAMORNIK
--------------------------------------------------------
  ALTER TABLE "NAMORNIK" ADD CONSTRAINT "NAMORNIK_PK" PRIMARY KEY ("NID") ENABLE;
  ALTER TABLE "NAMORNIK" ADD CONSTRAINT "NAMORNIK_UK" UNIQUE ("JMENON") ENABLE;
  ALTER TABLE "NAMORNIK" MODIFY ("JMENON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAVBA_S_PRUVODCEM
--------------------------------------------------------
  ALTER TABLE "PLAVBA_S_PRUVODCEM" ADD CONSTRAINT "PLAVBA_VEDENA_PK" PRIMARY KEY ("ZID", "ID_LOD", "NID", "DATUM_PL") ENABLE;
--------------------------------------------------------
--  Constraints for Table POKRYTI
--------------------------------------------------------
  ALTER TABLE "POKRYTI" MODIFY ("LID" NOT NULL ENABLE);
  ALTER TABLE "POKRYTI" MODIFY ("NID" NOT NULL ENABLE);
  ALTER TABLE "POKRYTI" MODIFY ("SPID" NOT NULL ENABLE);
  ALTER TABLE "POKRYTI" MODIFY ("DATUM_POK" NOT NULL ENABLE);
  ALTER TABLE "POKRYTI" MODIFY ("LODID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZERVACE
--------------------------------------------------------
-- ALTER TABLE "REZERVACE" ADD CONSTRAINT "REZERVACE2_PK" PRIMARY KEY ("LODID", "ZID", "DATUM_RES") ENABLE;
--------------------------------------------------------
--  Constraints for Table SPOJ
--------------------------------------------------------
  ALTER TABLE "SPOJ" ADD CONSTRAINT "SPOJ_LID_SPID_PK" PRIMARY KEY ("LID","SPID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAKAZNIK
--------------------------------------------------------
  ALTER TABLE "ZAKAZNIK" ADD CONSTRAINT "ZAKAZNIK_PK" PRIMARY KEY ("ZID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPOJ
--------------------------------------------------------
  ALTER TABLE "SPOJ" ADD CONSTRAINT "SPOJ_FK" FOREIGN KEY ("LID")
	  REFERENCES "LINKA" ("LID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLAVBA_S_PRUVODCEM
--------------------------------------------------------
  ALTER TABLE "PLAVBA_S_PRUVODCEM" ADD CONSTRAINT "PLAVBA_VEDENA_FK1" FOREIGN KEY ("ZID")
	  REFERENCES "ZAKAZNIK" ("ZID") ENABLE;
  ALTER TABLE "PLAVBA_S_PRUVODCEM" ADD CONSTRAINT "PLAVBA_VEDENA_FK2" FOREIGN KEY ("ID_LOD")
	  REFERENCES "LOD" ("LODID") ENABLE;
  ALTER TABLE "PLAVBA_S_PRUVODCEM" ADD CONSTRAINT "PLAVBA_VEDENA_FK3" FOREIGN KEY ("NID")
	  REFERENCES "NAMORNIK" ("NID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POKRYTI
--------------------------------------------------------
  ALTER TABLE "POKRYTI" ADD CONSTRAINT "POKRYTI_LID_FK1" FOREIGN KEY ("LODID")
	  REFERENCES "LOD" ("LODID") ENABLE;
  ALTER TABLE "POKRYTI" ADD CONSTRAINT "POKRYTI_NID_FK" FOREIGN KEY ("NID")
	  REFERENCES "NAMORNIK" ("NID") ENABLE;
  ALTER TABLE "POKRYTI" ADD CONSTRAINT "POKRYTI_LID_SPID_FK" FOREIGN KEY ("LID","SPID")
	 REFERENCES "SPOJ" ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REZERVACE
--------------------------------------------------------
  ALTER TABLE "REZERVACE" ADD CONSTRAINT "REZERVACE_LID_FK1" FOREIGN KEY ("LODID")
	  REFERENCES "LOD" ("LODID") ENABLE;
  ALTER TABLE "REZERVACE" ADD CONSTRAINT "REZERVACE_ZID_FK2" FOREIGN KEY ("ZID")
	  REFERENCES "ZAKAZNIK" ("ZID") ENABLE;
--
-- popora optimalizátoru
BEGIN
  DBMS_STATS.GATHER_SCHEMA_STATS(ownname => USER, estimate_percent => 100); END;
/
----