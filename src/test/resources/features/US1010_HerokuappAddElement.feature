Feature: US1010 Herokuapp Sayfasinda Add Butonu Testi

  Scenario: TC15 Sonradan Gorunen Elemanlar Calismali

  @Hero
  Scenario: TC15 sonradan gorunen elemanlar calismali

    Given kullanici "HerokuappAddElementUrl" sayfasina gider
    When Add Element butonuna basar
    Then Delete butonu gorununceye kadar bekler
    And Delete butonunun gorundgunu test eder
    Then Delete butonuna basarak butonu siler
    And 1 saniye bekler
    And sayfayi kapatir
