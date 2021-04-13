# Test 01  - PL/SQL - kombici 10.4. 2021

## Cíle
  - v časovém limitu (90 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a SQL a získat body

## Popis databáze
  - V adresáři máte soubor vydry.sql, to jsou vstupní data. Data jsou stejná jako v příkladu demo-01 a uloha-03.
  - Je to jednoduchá databáze, ve které jsou **vydry** a **revíry**, ve kterých vydry žijí.

## Zadání
### úloha 1

Napište PL/SQL blok (buď anonymní nebo proceduru), který se dotáže na číslo revíru vypíše jméno druhé nejstarší vydry v tomto revíru.

Blok ať reaguje na situace, kdy  zadané číslo  revíru není v tabulce (pomocí uživatelem definované výjimky **-20002**)  nebo je revír neobsazen, či je v něm pouze jedna vydra (pomocí uživatelem definované výjimky **-20001**).

Případ, kdy dvě nejstarší vydry v revíru mají stejné datum narození nemusíte do svého řešení zahrnovat. Vyzkoušejte svuj skript pro reviry 1, 5 a 6.

Výsledek testování přidejte ke svému řešení.

### úloha 2

Napište a odlaďte funkci **pocet_sester(cv) : number**, ktera dostane jako argument číslo vydry. Funkce vráti počet sester dané vydry. Počítáme i nevlastní sestry, tedy stačí, když dvě vydry - samice mají společného jednoho rodiče.

Pokud zadaná vydra neexistuje, nechť systém vyvolá uživatelskou výjimku :
**ORA-20001 "Vydra cislo  <cv>  neexistuje."**.
Pokud nelze zjistit sourozence z otcovy nebo  matčiny strany,  systém vyvolá uživatelskou výjimku:
**ORA-20001 "Informace o sourozencich  vydry cislo  <cv>  je neuplna."**.

Funkci ověřte pomocí následujícího PL/SQLbloku  postupně pro hodnoty 4, 9 a 16

## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-vystup.*  s výstupem dotazu
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.sql obsahující komentovaný popis testování
 - soubor uloha2-vystup.  s vystupem testovacího skriptu

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

