# BI-SQL pisemka z PL/SQL

  * tento návod vychází z kopie souboru README.md, který máte jako hlavní nápovědu ve svých projektech
  * vypracovaný test odevzdáte stejným způsobem jako vypracovaný domácí úkol

### Pokud na stroji, na kterém vypracovávate test, dosud nemáte clon svého adresáře, pak:

1. Pokud ještě nemáte SSH public část klíče v GitLabu, nahrajte ji: https://gitlab.fit.cvut.cz/profile/keys.
2. Vyrobte si **lokální kopii** vašeho repository **origin** na svém stroji:

    ```sh
    git clone git@gitlab.fit.cvut.cz:BI-SQL/b172/{username}.git BI-SQL/homeworks  # pouzije spravný kod semestru a username
    cd BI-SQL/homeworks
    ```

Nyní máte prostředí připravené a dále můžete pracovat na testu

### Vypracování testu

1. Nejprve si aktualizujte zadání

   ```sh
   git checkout master
   git pull
   ```

2. Vytvořte si nový branch pro test nazvaný *test-01* a přepněte se na něj

    ```sh
    git branch test-01
    git checkout test-01
    ```

3. Nezapomeňte se přepnout do správného adresáře *test-01*, pokud se nevytvořil, tak ho vytvořte (`mkdir test-01`) a  test v něm vyřešte:

   ```sh
   cd test-01
   ```

4. Změny promítněte do vzdáleného repozitáře na GitLabu:

    ```sh
    git add --all
    git status  # zkontrolujte, zda necommitujete něco, co v repositáři být nemá
    git commit -m "test-01 - odevzdání "
    git push -u origin testl-01
    ```

5. V GitLabu vytvořte **merge request** mezi větví master a test-01 zadejte jej svému cvičícímu.
6. V GitLabu sledujte udělené body.


