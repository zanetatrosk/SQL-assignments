# BI-SQL domácí úkoly a semestrální práce

## Disclaimer
  * Způsob odevzdávání (nepovinných) domácích úkolů a semestrálek je inspirován postupem, který již některé programátorsky orientované předměty na FIT používají.
  * Konkrétně vycházíme z návodu  pro předmět MI-RUB: https://gitlab.fit.cvut.cz/mi-rub/mi-rub-hw/blob/master/README.adoc
  * Vše je založeno na technologiích [GIT](https://git-scm.com/) a [GitLab](https://about.gitlab.com/)
  * Pokud je neznáte, není potřeba propadat panice, podle níže uvedeného návodu to snadno zvládnete.

## Proč a jak - neformální vysvětlení celého procesu

### Proč
  * potřebujeme dát studentům možnost bezpečně a transparentně odevzdat jednotlivé úkoly (včetně informace o tom, kdy byl úkol odevzdán)
  * vyučující potřebuje studentovi dát efektivní zpětnou vazbu k odevzdané práci: co je dobře, kde je problém, co je třeba doplnit; případně nad tím iterovat bez přílišné agendy a ztráty kontextu
  * GitLab je nástroj, který mimo jiné, poskytuje prostředky pro takovou **revizi kódu** (**code revision**)

### Jak
  * úkoly budeme (postupně) zveřejňovat na v projektu https://gitlab.fit.cvut.cz:BI-SQL/homeworks
  * vaše řešení budete odevzdávat do svých soukromých projektů gitlab.fit.cvut.cz/BI-SQL/{semestr}/{user-name} například https://gitlab.fit.cvut.cz/BI-SQL/b172/valenta
  * **podstatný trik** pro to, aby proces odevzdání splňoval požadavky zmíněné v sekci "Proč", spočívá v těchto krocích, **které je potřeba pochopit a dodržovat**:
    * na začátku semestru do svého projektu nahrajete prázdný obsah, nicméně to bude první větev (branch), které se tradičně říká **master**
    * z projektu s domácímí úkoly (označujeme ho **upstream**) si do **lokální** verze svého projektu s řešeními stáhnete zadání a provedete operaci **merge**, tím se zajistí propagace i později zveřejněných případně opravených zadání
    * pro každý jednotlivý úkol, který budete odevzdávat, si vyrobíte **vlastní samostatnou** větev (**branch**), kterou vhondě nazvete (například "úkol-01"), do té se přepnete pomocí **checkout** a úkol vyřešíte
    * vyřešený úkol nahrajete do GitLabu (operace **push**) a poté v gitlabu vyrobíte požadavek na sjednocení (**merge request**) větví master a větve s odevzdaným úkolem; merge request **přiřadíte svému vyučujícímu**; tímto krokem zajistíte že:
      * vyučující uvidí, že jste práci odevzdali a chcete ji zkontrolovat ohodnotit
      * vyučují může v rámci merge request procesu provádět **revizi kódu** a **komentovat jednotlivé části**
      * vy to uvidíte, můžete na připomínky reagovat (přímo v gitlabu formou diskuse) a zároveň provádět požadované **opravy** a formou **commit**ů je propagovat do repozitáře
      * když je vyučující spokojen, může jednotlivé diskuse ke kódu uzavřit (**resolve**)a posléze celý merge přijmout (**accept**) a udělit vám příslušné body

## Co potřebuju instalovat a konfigurovat?
  * Nástroj GIT pro vaši platformu. Existuje pro všechny platformy a ovládá se pomocí příkazového řádku.
  * ČVUT username a login pro přístup na https://gitlab.fit.cvut.cz odkud budete čerpat zadání a kam budete odevzdávat úlohy a semestrálku.
  * SSH klíč, jehož private část budete mít u sebe a public část nahrajete na gitlab do svého profilu. Pro výrobu klíče lze použít open-source utilitu ssh-keygen, která je dosutpná pro všechny platformy. Stačí vám vyrobit si RSA klíč, jeho private část nebude chráněna heslem (heslo bude prázdné).
  * Existují různé grafické nadstavby pro práci s GITem, některé jsou i součástí různých vyvojářských prostředi (IDE). Praktiky nic z toho nepotřebujete, ale můžete s nimi experimentovat. Zkušenosti a doporučení můžeme na těchto stránkách později sdílet.

## Chcete-li vědět něco více o GITu
 * Předmět BI-GIT vyučovaný na FITu https://edux.fit.cvut.cz/courses/BI-GIT/ Pokud na něj máte přistup, najdete tam výborně zpracované slides v češtině.
 * Ze stránek předmětu jsou i následujícíc odkazy:
   * https://git-scm.com/doc - Dokumentace
   * https://git-scm.com/book/cs/v1 - Kniha „Pro Git“ (PDF, tisk)
   * http://pcottle.github.io/learnGitBranching - Zajímavý hravý tutoriál pro práci s větvemi
   * http://gitready.com - Hlubší informace o Gitu, informace o funkcionalitách nových verzí
   * http://firstaidgit.io - Rychlá odpověď na otázky týkající se Gitu, agregace ze Stack Overflow a dalších zdrojů
 * Ten výše uvedený "hravý tutoriál pro práci s větvemi" je opravdu super. Doporučuji.
