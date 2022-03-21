# Test 01  - PL/SQL

## Cíle
  - v časovém limitu (90 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a získat body

## Odevzdání

  - vypracovanou úlohu odezvdejte jako branch **test-01-pondeli** do svého projektového adresáře
  - výstupy nechť jsou v adresáři test-01-pondeli (tam, kde je i zadání úlohy)
  - nezapomeňte vyrobit merge request a přiřadit ho uživateli valenta, commit a merge request nazvěte rovněž **test-01-pondeli**
  - merge request musí být vyroben dříve než opustíte učebnu, to si můžete při odchodu z učebny ověřit u mě
  - řešení odevzdané mimo učebnu (z domova apod.) nepřijímám, poznám to podle prezence
  - pokud někdo nemohl dorazit a napsal nějakou (smysluplnou) omluvu, bude možnost napsat test v náhradním termínu, který stanovím nejpozdějí do následujícího pondělka (nejdříve posbírám všechny, kteří test nepsali z obou cvičení a pak teprve nějaký termín vyhlásím)

## Popis databáze
  - V adresáři máte soubor vydry.sql to jsou vstupní data.
  - Je to jednoduchá databáze, ve které jsou **vydry** a **revíry**, ve kterých jsou vydry umístěny.
## Zadání
### úloha 1

Napište a odlaďte PL/SQL **funkci kam_vydru(cv) : varchar2**, která dostane jako argument číslo vydry.

Funkce vrátí jméno regionu, do kterého lze danou vydru umístit. Pravidla pro nalezení vhodného regionu jsou následující:

 - Vydra nesmí být umistěna ve stejném regionu jako některý její rodič. V dalším příkladu je toto pravidlo odkazováno jako IO1.
 - Pokud rodiče zadané vydry nejsou známi (nebo není znám jeden z rodičů) nevadí, pracujte s informací, kterou máte.
 - Region, do kterého vydru umísťujeme by měl být co nejméně obsazen.

Pokud zadaná vydra neexistuje, nechť systém vyvolá uživatelskou výjimku :
ORA-20001 "Vydra cislo  <cv>  neexistuje.".

Funkci postupně otestujte pro hodnoty 11, 9 a 16 a odezvu přiložte do souboru uloha-1.log

### úloha 2

Napište a odlaďte trigger **kontrola_umisteni** nad tabulkou vydra, který v případě vložení nové vydry nebo přesunu vydry z jednoho regionu do druhého zajistí, aby nebylo porušeno integritní omezení IO1 z předchozího příkladu.

Poznámka: Situací, kdy IO1 v existujících datech v tabulce vydra již porušeno je, se nezabývejte.

 - funkci kam_vydru z předchozího případu můžete použít také tak, že v případě chybného vložení/přesunu vydry poradíte v rámci ošetření chybové hlášky uživateli, kam by bylo optimální vydru umístit.

 Otestujte na 4 případech užití:

 - přesun vydry - porušení IO1 z úlohy 1
 - přesun vydry - proběhne v pořádku (region nemusí být optimální, ale neporušuje IO1)
 - vložení nové vydry - porušení IO1 z úlohy 1
 - vložení nové vydry - proběhne v pořádku (region nemusí být optimální, ale neporušuje IO1)


## Očekávané výstupy
 - soubor uloha-1-reseni.sql obsahující navrženou funkci.
 - soubor uloha-1.log s výsledky testování. (případně lze dodat snímky z console data-gripu, je-li to pro vás jednodušší)
 - soubor uloha2-reseni.sql s triggerem, který řeší úlohu 2.
 - soubor uloha-2-.log s výsledky testování (případně lze dodat snímkky z console data-gripu, je-li to por vás jednodušší)

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

