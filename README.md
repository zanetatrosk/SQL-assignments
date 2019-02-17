# BI-SQL domácí úkoly a semestrální práce

## Disclaimer

  * Způsob odevzdávání (nepovinných) domácích úkolů a semestrálek je inspirován postupem, který již některé programátorsky orientované předměty na FIT používají.
  * Konkrétně vycházíme z [návodu pro předmět MI-RUB](https://gitlab.fit.cvut.cz/mi-rub/exercises/blob/master/README.adoc)
  * Vše je založeno na technologiích [Git](https://git-scm.com/) a [GitLab](https://about.gitlab.com/)
  * Pokud je neznáte, není potřeba propadat panice, podle níže uvedeného návodu to snadno zvládnete.


## Proč a jak - neformální vysvětlení celého procesu

### Proč

  * Potřebujeme dát studentům možnost bezpečně a transparentně odevzdat jednotlivé úkoly (včetně informace o tom, kdy byl úkol odevzdán).
  * Vyučující potřebuje studentovi dát efektivní zpětnou vazbu k odevzdané práci: co je dobře, kde je problém, co je třeba doplnit; případně nad tím iterovat bez přílišné agendy a ztráty kontextu.
  * GitLab je nástroj, který mimo jiné, poskytuje prostředky pro takovou **revizi kódu** (**code revision**).

### Jak

  * Úkoly budeme (postupně) zveřejňovat v projektu https://gitlab.fit.cvut.cz/BI-SQL/homeworks; dále bude označován jako **upstream**.
  * Vaše řešení budete odevzdávat do svých soukromých projektů gitlab.fit.cvut.cz/BI-SQL/{semestr}/{user-name} například https://gitlab.fit.cvut.cz/BI-SQL/B182/valenta; tento projekt bude dále označován **origin**.
  * **Podstatný trik** pro to, aby proces odevzdání splňoval požadavky zmíněné v sekci „Proč“, spočívá v těchto krocích, **které je potřeba pochopit a dodržovat**:
    * Na začátku semestru máte ve svém projektu (origin) první větev (branch), které se tradičně říká **master**. Tuto větev nemůžete upravovat, je zamčená. V ní je čerstvá kopie projektu homeworks (upstream). Její obsah se automaticky aktualizuje, když změníme nebo přidáme nějaké zadání.
    * Naklonujete si (příkaz git clone) tento projekt na svůj lokální počítač a tím máte inicializované prostředí s čertvými variantami zadání.
    * Pro každý jednotlivý úkol, který budete odevzdávat, již máte před-vytvořenou (nebo si vyvytvoříte) **vlastní samostatnou** větev (**branch**), kterou nazvete `ukol-NN`, kde `NN`  je číslo úkolu (například `ukol-01`) respektive `semestralni-prace`, do té se přepnete pomocí **checkout** a úkol vyřešíte.
    * Vyřešený úkol nahrajete do GitLabu (operace **push**) a poté v GitLabu vyrobíte požadavek na sjednocení (**merge request**) větví master a větve s odevzdaným úkolem; merge request **přiřadíte svému vyučujícímu**; tímto krokem zajistíte, že:
      * Vyučující uvidí, že jste práci odevzdali a chcete ji zkontrolovat a ohodnotit.
      * Vyučující může v rámci merge request procesu provádět **revizi kódu** a **komentovat jednotlivé části**.
      * Vy to uvidíte, můžete na připomínky reagovat (přímo v GitLabu formou diskuse) a zároveň provádět požadované **opravy** a formou **commit**ů je propagovat do repozitáře.
      * Když je vyučující spokojen, může jednotlivé diskuse ke kódu uzavřít (**resolve**), merge uzavřít [^1] (**close**) a udělit vám příslušné body.


## Co potřebuji instalovat a konfigurovat?

  * Nástroj Git pro vaši platformu. Existuje pro všechny platformy a ovládá se pomocí příkazového řádku (pokud používáte Windows, může se vám hodit návod [How to use terminal on Windows without going crazy…](https://gist.github.com/jirutka/99d57c82fa8981f56fb5)).
  * ČVUT username a heslo pro přístup na https://gitlab.fit.cvut.cz odkud budete čerpat zadání a kam budete odevzdávat úlohy a semestrálku.
  * SSH klíč, jehož private část budete mít u sebe a public část nahrajete na GitLab do svého profilu. Pro výrobu klíče lze použít open-source utilitu ssh-keygen, která je dostupná pro všechny platformy.
  * Existují různé grafické nadstavby pro práci s Gitem (např. [GitHub Desktop](https://desktop.github.com/)), některé jsou i součástí různých vývojářských prostředí (IDE). Praktiky nic z toho nepotřebujete, ale můžete s nimi experimentovat. Zkušenosti a doporučení můžeme na těchto stránkách později sdílet.


## Příkazy pro realizaci

Zde uvádíme pouze sekvence příkazů, které budete pro odevzdávání práce potřebovat. Jedná se o [zjednodušený a upravený návod pro studenty předmětu MI-RUB](https://gitlab.fit.cvut.cz/mi-rub/exercises/blob/master/README.adoc) bez ambice na vysvětlení. Nezbytné je pochopení těchto kroků popsané v sekci „Jak“. Pro větší porozumění je níže uvedená sekce s odkazy na dostupnou dokumentaci a návody.

### Začátek semestru - inicializace projektu

1. Pokud ještě nemáte SSH public část klíče v GitLabu, nahrajte ji: https://gitlab.fit.cvut.cz/profile/keys.
2. Vyrobte si **lokální kopii** vašeho repository **origin** na svém stroji (v adresáři, ve kterém spustíte příkaz, vznikne podadresář s vaším uživatelským jménem):

    ```sh
    git clone git@gitlab.fit.cvut.cz:BI-SQL/B182/{username}.git # pouzije spravný kod semestru a username
    cd {username}
    ```

Nyní máte prostředí připravené a dále můžete pracovat na jednotlivých úkolech.

### Jednotlivé úkoly

1. Nejprve si aktualizujte zadání (pokud došlo k nějakým změnám)

   ```sh
   git checkout master
   git pull
   ```

2. Vytvořte si nový branch pro úkol (například) ukol-01 a přepněte se na něj:

    ```sh
    git branch ukol-01
    git checkout ukol-01
    ```

3. Nezapomeňte se přepdnout do správného adresáře `ukol-NN` resp. `semestralni-prace` a úkol vyřešte.
4. Změny promítněte do vzdáleného repozitáře na GitLabu:

    ```sh
    git add --all
    git status  # zkontrolujte, zda necommitujete něco, co v repositáři být nemá
    git commit -m "ukol-1: První iterace"  # napište smyslupný komentář v podobném stylu
    git push -u origin ukol-01   # pouzijte spravne jmeno vetve
    ```

5. V GitLabu vytvořte **merge request** mezi větví master a ukol-01 a zadejte jej svému cvičícímu.
6. V GitLabu sledujte vývoj komentářů, odpovídejte na ně, případně doplňujte kód a propagujte jej na GitLab (krok 4).


## Chcete-li vědět něco více o Gitu

 * Předmět BI-GIT vyučovaný na FITu https://courses.fit.cvut.cz/BI-GIT/ Pokud na něj máte přístup, najdete tam výborně zpracované slides v češtině.
 * Ze stránek předmětu jsou i následující odkazy:
   * https://git-scm.com/doc - Dokumentace
   * https://git-scm.com/book/cs/v1 - Kniha „Pro Git“ (PDF, tisk).
   * http://pcottle.github.io/learnGitBranching - Zajímavý hravý tutoriál pro práci s větvemi.
   * http://gitready.com - Hlubší informace o Gitu, informace o funkcionalitách nových verzí.
   * http://firstaidgit.io - Rychlá odpověď na otázky týkající se Gitu, agregace ze Stack Overflow a dalších zdrojů.
 * Ten výše uvedený „hravý tutoriál pro práci s větvemi“ je opravdu super. Doporučuji.

[^1]: Merge requesty není nutné mergovat do hlavní větve. Naopak to není doporučováno, neb tím mohou vznikat zbytečné komplikace s konflikty.
