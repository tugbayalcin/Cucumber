@Editor
Feature: US1009 Scenario Outline Ile Editor Database Sayfasina Kayit


  Scenario Outline: TC14 Kullanici Yeni Kayit Ekleyebilmeli

  #Yeni bir feature file olusturun: US1007_kullanici_data_ekleyebilmeli
  #DataTableStepDefinition dosyasi ve gerekli step definition’lari olusturun ve 5 farkli kayit ekleyin

    When kullanici editor anasayfaya gider
    Then new butonuna basar
    And firstname olarak "<firstname>" yazar
    And lastname olarak "<lastname>" yazar
    And Position olarak "<position>" yazar
    And Office olarak "<office>" yazar
    And Extension olarak "<extension>" yazar
    And Start Date olarak "<startDate>" yazar
    And Salary olarak "<salary>" yazar
    And Create tusuna basar
    And 1 saniye bekler
    When kullanici "<firstname>" ile arama yapar
    Then isim bolumunde "<firstname>" oldugunu dogrular
    And 1 saniye bekler


    Examples:
    |firstname|lastname|position|office   |extension|startDate |salary|
    |Tugba    |Yalcin  |  QA    |Amsterdam|  SDET   |2020-01-01|25000 |
    |Zehra    |Nazli   |Tester  |Istanbul |PO       |2022-02-12|100000|