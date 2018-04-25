# BI-SQL domácí úkoly a semestrální práce

## Úkol PostgreSQL 01 (bonusový)  až 7 bodů


 Úlohu 1 a 2 z části PL/SQL((https://edux.fit.cvut.cz/courses/BI-SQL/start#priklad_3_az_7_bodu)
) - tedy procedury, která naplní daty jednu obyčejnou a jednu vztahovou tabulku, přepište do PLPg/SQL a oddlaďte v PostgreSQL.

Řešení nechť sestává z těchto souborů:
  * tabulky.sql  - definice tabulek
  * procedury.sql - definice funkcí, které data vygenerují
  * otestuj.sql - vytvoří tabulky a funkce a provede otestování
  * protocol.X - přípona podle způsobu, jak vznikne (například .jpg, pokud budete dělat snímky obrazovky v grafickém nástroji, txt, pokud půjde o textový soubor, ...); soubor protocol musí demonstrovat, že se vám na postgreSQL podařilo tabulky vytvořit a naplnit daty, součástí bude i výsledek příkazů select count(*) from tab1; select count(*) from tab2.
  * zjednodušenou ukázku, ze které můžete vyjít, najdete přímo v tomto adresáři
  * soubor protokol.txt byl vytvořen spuštěním souboru otestuj.sql v psql nad databází jmenem ruzne timto zpusobem:

  ```psql -f otestuj.sql -a -b -e &> protokol.txt ruzne```

  * úlohu vyřešte přímo v tomto adresáři a vysledek odevzdejte do gitlabu standardním způsobem
    * nezapomeňte si pro řešení vyrobit správný branch `postgresql-ukol-01`
    * správně komentujte commit `git commit -m "postgresql-ukol-01 ...."`
    * nezapomeňte vytvořít **merge request** a přiřadit ho cvičícímu (tentokrát M. Valenta), aby věděl, že má vaše řešení zkontrolovat a ohodnotit
    * sledujte diskusi u vašeho merge requestu, abyste případně zapracovali připomínky a požadavky vyučujícího
    * že je úloha ohodnocená poznáte tak, že vyučující váš merge request uzavře
