# Vydry 1 - PL/SQL blok

## Pokyny
  - soubor vydry.sql vyrobí ve vašem schématu potřebné tabulky a data
  - úlohu zpracujte dle pokynů níže
  - řešení odevzdejte v samostatném souboru uloha-1-reseni.sql
  - dle pokynů otestujte nad dodanými daty a výstup umístěte do souboru uloha-1-reseni.log

## Zadání
 Napište PL/SQL blok, který se dotáže na číslo vydry a vypíše jména všech jejích sourozenců lhostejno zda z matčiny nebo otcovi strany.

 Blok ať reauguje na následující nestandardní situace:
   - zadané číslo vydry není v tabulce vyder (uživatelem definovaná výjimka - 20001),
   - o sourozencích dané vydry nic nevíme, protože neznáme její rodiče  (uživatelem definovaná výjimka -20002).

## Testování
Svůj skript vyzkoušejte pro čísla vyder 4, 9 a 16. Výsledek testování přidejte ke svému řešení.
