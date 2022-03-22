# Test 01  - PL/SQL

## Cíle
  - v časovém limitu (90 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a získat body

## Popis databáze
  - V adresáři máte soubor krmeni.sql, to jsou vstupní data.
  - Je to jednoduchá databáze, ve které jsou **ošetřovatelé** (zaměstnanci), **zvířata** a informace o **krmení**. Krom toho může mít zvíře ještě **kmotra**, což je nějaký krmič.

## Zadání
### úloha 1

Napište a odlaďte PL/SQL proceduru **konzumace (jmeno_zvirete)**. Procedura dostane jméno zvířete a vypíše (do terminálu pomocí DBSMS_OUTPUT.PUT_LINE):
celkový přehled o jeho krmení:
 - časově setříděné krmení: čas, datum, typ krmiva, množství
 - sumy množství po jednotlivích typech krmiva

 Pokud procedura dostane jméno zvířete, které neexistuje, nechť vrátí výjimku: ORA-20001 : zvíře jménem <jmeno_zvirete> není v databázi.

 Otestujte postupně na těchto vstupních hodnotách: Amina, Pepík a Celestýn.

### úloha 2

Napište a odlaďte trigger nad tabulkou krmení, který zajistí, aby zvíře nedostalo žádný nový typ krmiva. Smí dostat jen takové krmivo, které už dostalo dříve.

Trigger zřejmě budete muset navrhnout buď jako "compound" a nebo použít stavové proměnné package.

Otestujte tak, že zvířeti Amina (číslo 19) zkusíte přidat dva záznamy do krmení:

- druh krmení kytka (projde)
- druh krmení celer (neprojde)

U nepovoleného druhu krmení, nechť systém vyvolá výjimku: ORA-20002 Nepovolený druh krmiva. Zvíře číslo <cislo_zvirete> smí dostat pouze tyto typy krmiva:  <výpis povolených typů krmiva>.


## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-test.log  s testováním (možno nahradit snímky z console DataGripu, je-li to pro vás pohodlnější)
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.log s testováním (možno nahradit snímky z console DataGripu, je-li to pro vás pohodlnější)

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

