# uloha 03  - rekurzivní dotazování a procedura

## Cíle
  - vyzkoušet si rekurzivní dotazování
  - výsledek "zabalit" do procedury a parametrizovat a otestovat

## Zadání
  - v adresáři máte soubor vydry.sql (už jste ho jednou použili), to jsou vstupní data
  - tabulka vydry obsahuje rekurzivní data: sloupce matka, otec jsou cizí klíče odkazující zpět do tabulky vyder na cv (číslo vydry)
  - navrhněte rekurzivní SQL dotaz, který zobrazí rodovou linii dané vydry, tedy děti této vydry, děti jejich dětí atd.
  - dotaz si můžete zjednodušit jen na mužskou nebo jen ženskou linii
  - kdo zvládne obě, dostane extra body
  - odladěný rekurzivní dotaz "zabalte" do procedury coby kurzur a paramterizujte ho číslem nebo jménem vydry, jejíž rodovou linii máte vypsat
  - procedura dostane jako parametr jméno nebo číslo vydry, proveďte standardní ošetření chybného vstupu a vhodným způsobem vypíše potomky příslušné vydry

## Očekávané výstupy
 - soubor dotaz.sql s dotazem (zde musíte použít nějaké pevné číslo vydry coby "kotvu" CTE
 - soubor dotaz.log, kde vyzkoušíte na několika příkladech funkčnost
 - soubor procedura.sql, kde bude požadovaná procedura
 - soubor test-procedura.sql se standardními testovacími scénaři a jejich popisem
 - soubor test-procedura.log s výsledky

## Bodování
  - rekurzivní SQL dotaz a jeho odladění - 5 bodů
  - procedura a její odladění - 7 bodů
  - zvládnutí obou linií (mužské i ženské) - extra 3 body

