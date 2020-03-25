# Test 01  - PL/SQL

## Cíle
  - v časovém limitu (120 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a SQL a získat body

## Popis databáze
  - V adresáři máte soubor krmeni.sql, to jsou vstupní data.
  - Je to jednoduchá databáze, ve které jsou **ošetřovatelé** (zaměstnanci), **zvířata** a informace o **krmení**. Krom toho může mít zvíře ještě **kmotra**, což je nějaký krmič.

## Zadání
### úloha 1
Napište a odlaďte SQL nebo PL/SQL kód, který vygeneruje statistiky o spotřebách různých druhů krmení.
Očekávaný výstup má tento formát:

Typ_krmiva, druh_zvire, spotrebovano

Spotřebu krmiva agregujte podle typu krmiva a druhu zvířete, dále podle typu krmiva, další hledisko je druh zvířete a nakonec celková spotřeba krmva bez ohledu na druh zvířete a typ krmiva.

Výstup tedy bude vypadat takto (hodnoty jsou vymyšlené):

```
banany      opice     50
banany      slon      300
banany      nosorožec 100
seno        lama      500
seno        slon      40
...
banany                450
seno                  540
...
            slon      340
            lama      500
...
                      3000
```

**hint:** můžete použít PL/SQL proceduru s kurzory a/nebo rozšíření klauzule group by v SQL o operátory rollup a cube

### úloha 2

do schématu si přidejte tabulku **sponzor** definovanou títmto SQL příkazem:

```
create table sponzor(
   id_osetrovatele number not null constraint sponzor_osetrovatel_fk references osetrovatel,
   id_zvirete number not null constraint sponzor_zvire_fk references zvire,
   constraint sponzor_pk primary key (id_osetrovatele, id_zvirete));
```

Napište package **sponzor_pkg** ktery bude mít dvě procedury:
 - **kopiruj_kmotry**, která do tabulky sponzor doplní informace čerpané z tabulky zvíře. Každý kmotr zvířete je totiž sponzorem. Pro každé zvíře, které má kmotra, vložte tedy do tabulky sponzor dvojici (id_kmotra, id_zvirete)
 - **generuj_sponozry**, která dostane na vstupu parametr pocet_sponzorství a vygeneruje příšlušný počet záznamů v tabulce sponzor. Záznamy generujte náhodným výběrem z tabulek zvíře a sponzor. **POZOR** zaměstnanec může sponzorovat více zvířat a zvíře může mít více sponzorů, ale vzhledem k existenci prímárního klíče **sponzor_pk** nemůže konkrétní zaměstnanec sponozorovat konkrétní zvíře vícekrát než jednou. Vaše procedura proto musí umět ošetřit situaci, kdy se náhodným výběrem vygeneruje stejná dvojice (id_osetrovatele, id_zvirete), která v tabulce sponzor již existuje.

**hint:** pro náhodnou volbu z nějaké sady dat můžete použít konstrukci:

`select .... order by dbms_random.value fetch next 1 rows only;`

## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-vystup.*  s výstupem dotazu
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.sql obsahující komentovaný popis testování
 - soubor uloha2-vystup.  s vystupem testovacího skriptu

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

