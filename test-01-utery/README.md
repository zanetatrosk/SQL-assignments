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

Spotřebu krmiva zobrazte nejprve po jednotlivých druzích zvířat a potom celkově.

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
```

**hint:** můžete použít PL/SQL proceduru s kurzory a/nebo rozšíření klauzule group by v SQL o operátory rollup a cube

### úloha 2

Napište PL/SQL proceduru, která na vstupu dostane dva parametry: **nazevdruhu** a **pocet_zaznamu**.

Procedura vygeneruje nové záznamy o krmení tímto způsobem:

 - nových záznamů o krmení bude tolik, kolik udává vstupní parametr **pocetzaznamu**
 - záznamy o krmení budou **pouze pro zvířata příslušného druhu** id zvířete z příslušného druhu volte **náhodně**
 - krmiče volte **náhodně** z existujících krmičů
 - pokuste se rovněž o vygenerování náhodného datumu (návody na stack overflow a jinde jsou)

Procedura nechť reaguje chybou ORA-20001: Od druhu **nazevdruhu** v ZOO nejsou žádná zvířata.

**hint:** pro náhodnou volbu z nějaké sady dat můžete použít konstrukci:

`select .... order by dbms_random.value fetch next 1 rows only;`

## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-vystup.*  s výstupem dotazu
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.sql obsahující komentovaný popis testování (včetně chybného vstupu)
 - soubor uloha2-vystup.  s vystupem testovacího skriptu

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

