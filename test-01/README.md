# BI-SQL pisemka z PL/SQL

  * tento návod vychází z kopie souboru README.md, který máte jako hlavní nápovědu ve svých projektech
  * vypracovaný test odevzdáte stejným způsobem jako vypracovaný domácí úkol

### Pokud na skolním pocítaci nemáte clon svého adresáře, pak:

1. Pokud ještě nemáte SSH public část klíče v GitLabu, nahrajte ji: https://gitlab.fit.cvut.cz/profile/keys.
2. Vyrobte si **lokální kopii** vašeho repository **origin** na svém stroji:

    ```sh
    git clone git@gitlab.fit.cvut.cz:BI-SQL/b172/{username}.git BI-SQL/homeworks  # pouzije spravný kod semestru a username
    cd BI-SQL/homeworks
    ```

Nyní máte prostředí připravené a dále můžete pracovat na testu

### Jednotlivé úkoly

1. Nejprve si aktualizujte zadání

   ```sh
   git checkout master
   git pull
   ```

2. Vytvořte si nový branch pro  test nazvaný test-01 a prepnete se na něj

    ```sh
    git branch test-01
    git checkout test-01
    ```

3. Nezapomeňte se přepdnout do správného adresáře  test vyřešte:

   ```sh
   cd test-01
   ```

4. Změny promítněte do vzdáleného repozitáře na GitLabu:

    ```sh
    git add --all
    git status  # zkontrolujte, zda necommitujete něco, co v repositáři být nemá
    git commit -m "test-01 - odevzdání "
    git push -u origin testl-1   # pouzijte spravne jmeno vetve
    ```

5. V GitLabu vytvořte **merge request** mezi větví master a ukol-01 a zadejte jej svému cvičícímu.
6. V GitLabu sledujte udělené body.


