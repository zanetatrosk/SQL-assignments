# Test 01  - PL/SQL - kombici 10.4. 2021

## Cíle
  - v časovém limitu (90 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a SQL a získat body

## Popis databáze
  - V adresáři máte soubor vydry.sql, to jsou vstupní data. Data jsou stejná jako v příkladu demo-01 a uloha-03.
  - Je to jednoduchá databáze, ve které jsou **vydry** a **revíry**, ve kterých vydry žijí.

## Zadání
### úloha 1
 Napište a odlaďte PL/SQL blok, ktery vypíše tabulku osidleni jednotlivých revírů.

Výstup bude mít formát:
Jméno revíru, počet vyder, teritorium na jednu vydru (plocha / pocet vyder).

Skript a výsledek testování přidejte ke svému řešení.

### úloha 2

Napište a odlaďte PL/SQL **funkci kam_vydru(cv) : varchar2**, která dostane jako argument číslo vydry. Funkce vrátí jméno reviru, do kterého lze danou vydru umístit. Pravidla pro nalezení vhodného reviru jsou následující:

- Vydra nesmí být umistěna ve stejném reviru jako její rodič. Pokud je znám pouze jeden rodič, pracujte s touto informací. Pokud není znám ani jeden rodič, vraťte výjimku 20002, viz dále.
- Revir, do kterého vydru umísťujeme by měl být co nejméně obsazen, uvažujte pouze počet vyder nikoliv rozlohu.

Funkce nechť v případech špatného vstupu signalizuje tyto výjimky:

- Pokud je zadané špatné číslo vydry: **ORA-20001 "Vydra cislo  <cv>  neexistuje."**.
- Pokud rodiče zadané vydry nejsou známi: **ORA-20002 "Rodiče vydry cislo  <cv>  jsou neznami."**.

Funkci ověřte na vstupech (číslech vyder): 11, 9 a 16.


## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-vystup.*  s výstupem dotazu
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.sql obsahující komentovaný popis testování
 - soubor uloha2-vystup.  s vystupem testovacího skriptu

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

