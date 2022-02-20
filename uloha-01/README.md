# uloha 01  - PL/SQL - procedury, funkce

## Cíle
  - oprášit svoji semestrálku z BI-DBS, připomenout si strukturu databáze
  - zdokumentovat ji - formou obrázku konceptuálního nebo relačního schématu
  - vyzkoušet si napsat procedury pro plnění daty pro dvě vhoně zvolené tabulky a jednu vztahovou mezi nimi

## Pokyny
  - do tohoto adresáře umístěte soubor **moje-schema.jpg**, ve kterém budue konceptuální schéma vaší semestrální práce (dá se převzít ze semestrálky z BI-DBS)
  - pokud se k semestrálce z BI-DBS již nedostanete nebo ji z jiných důvodů nemáte, pak:
    - pokud existuje ve vašem DB schématu Oracle, ke kterému jste připojeni, můžete použít funkci "Show visuzalization", kterou DataGrip poskytuje a namísto konceptuálního schématu ze semestrálky BI-DBS dodejte relační vizualizaci vytvořenou nástrojem DataGrip
    - pokud ve vašem DB schématu žádné tabulky, ze kterých byste mohli vyjít nejsou, pak si nějaké 3 vytvořte, není to příliš práce navíc...
    - bude vám to ale trochu chybět ještě v následující bodované úloze, nicméně i to se dá kreativně doplnit
  - do tohoto adresáře dále umístěte sql scripty, které vytovříte:
    - plnení_tabulka_1.sql
    - plneni_tabulka_2.sql
    - plneni_vztahova_tabulka.sql
  - do tohoto adresáře umístěte log soubory, které ukazují, že výše uvedené procedury fungují; každá procedura necnechť na výstupu ukáže, kolik řádek do tabulky vložila
    - plnení_tabulka_1.log
    - plneni_tabulka_2.log
    - plneni_vztahova_tabulka.log

## Zadání
  - ve svém schématu vytipujte dvě vhodné tabulky a mezi nimi jednu vztahovou
  - pro každou z nich napište a odlaďte proceduru, jejímž vstupním parametrem bude počet řádků, které mají být vloženy
  - při generování dat se inspirujte příklady ze cvičení, snažte se, aby data byla "psaudonáhodná", pro jejich generování používejte funkce pro generování náhodných čísel

## Testování
  - pro každou proceduru vytvořte log soubor, který umístíte do stejného adresáře (viz pokyny)
