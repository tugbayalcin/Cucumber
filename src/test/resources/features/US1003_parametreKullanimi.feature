@ParametreliTest  @parallel1
Feature: US1003 Parametre Ile Step Defination Olusturma


  Scenario: TC05_Parametre Kullanimi

    Given kullanici amazon sayfasina gider
    And "Java" icin arama yapar
    Then sonuclarin "Java" icerdigini test eder
    And sayfayi kapatir