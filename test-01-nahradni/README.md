# Test 01  - PL/SQL

## Cíle
  - v časovém limitu (90 minut) pokud možno kompletně odladit dva níže zadané úkoly
  - tím dokázat, že jste se naučili něco z PL/SQL a získat body

## Popis databáze
  - V adresáři máte soubor krmeni.sql, to jsou vstupní data.
  - Je to jednoduchá databáze, ve které jsou **ošetřovatelé** (zaměstnanci), **zvířata** a informace o **krmení**. Krom toho může mít zvíře ještě **kmotra**, což je nějaký ošetřovatel.

## Zadání
### úloha 1

Napište a odlaďte PL/SQL proceduru, **spotreba**, která vypíše **spotřebu krmiva** (sum (mnozstvi)) agregovananou na základě všech kombinací těchto agregačních hledisek: typ_krmiva, druh_zvirete, id_zvirete. Namísto  procedury můžete vytvořit select ale nezapomeňte zajistit vhodný způsob prezentace (aby bylo jasné, která agregační hlediska jsou právě použita).

### úloha 2

Vstoupilo v platnost nové integritní omezení, které říká, že kmotrem zvířete může být jen takový ošetřovatel, který již někdy v minulosti krmil zvíře druhu jako je zvíře, jehož kmotrem se chce stát. Například: Zaměstnanec Rumcajs se schce stát kmotrem **opice** jménem Zuzana. Je potřeba provést kontrolu, zda zaměstnanec již někdy nějakou opici krmil.

Napište a odlaďte trigger nad tabulkou **zvire**, který toto integritní omezení zajistí. Kmotry, kteří už jsou v databázi uvedeni a toto IO nesplňují, neřešte. Vaše řešení nechť funguje pouze pro vložení nového kmotra (zvířeti, které ještě kmotra nemá) nebo pro změnu kmotra.

Na základě dat, navrhněte vhodné testovací scénáře a na nich své řešení oddladte.

Pokud není IO splněno, trigger vyvolá výjimku: ORA-20002 Zaměstnanec <Jméno_zamestnance>  nesmí být kmotrem  <jméno_zviřete>, protože dosud nekrmil žádné zvíře druhu <druh_zv95ete>.


## Očekávané výstupy
 - soubor uloha1-reseni.sql s resenim první ulohy
 - soubor uloha1-test.log  s testováním (možno nahradit snímky z console DataGripu, je-li to pro vás pohodlnější)
 - soubor uloha2-reseni.sql s resenim druhe ulohy
 - soubor uloha2-test.log s testováním (možno nahradit snímky z console DataGripu, je-li to pro vás pohodlnější)

## Bodování
  - uloha1 - až 7 bodů
  - uloha2 - až 13 bodů

