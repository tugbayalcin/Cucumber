Feature: US1006 Negative Login Testi

  #@negative
  Scenario: TC09 Yanlis Username, Dogru Sifre Ile Giris Yapilamaz
    Given kullanici "HMCUrl" sayfasina gider
    Then login linkine tiklar
    And kullanici adi olarak "HMCWrongUsername" girer
    And password olarak "HMCValidPassword" girer
    Then Login butonuna basar
    And giris yapilamadigini test eder
    And sayfayi kapatir

  #@negative
  Scenario: TC10 Dogru Username, Yanlis Sifre Ile Giris Yapilamaz
    Given kullanici "HMCUrl" sayfasina gider
    Then login linkine tiklar
    And kullanici adi olarak "HMCValidUsername" girer
    And password olarak "HMCWrongPassword" girer
    Then Login butonuna basar
    And giris yapilamadigini test eder
    And sayfayi kapatir

  #@negative
  Scenario: TC11 YanlisUsername, Yanlis Sifre Ile Giris Yapilamaz
    Given kullanici "HMCUrl" sayfasina gider
    Then login linkine tiklar
    And kullanici adi olarak "HMCWrongUsername" girer
    And password olarak "HMCWrongPassword" girer
    Then Login butonuna basar
    And giris yapilamadigini test eder
    And sayfayi kapatir