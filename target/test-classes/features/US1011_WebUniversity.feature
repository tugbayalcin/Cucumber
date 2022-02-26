Feature: US1011 WebUniversity Window Handle

  @hatalicalisiyor
  Scenario Outline: TC16 Reusable Methods Ile Window Handle Testi

    Given kullanici "WebUniversityUrl" sayfasina gider
    And Login Portal'a  kadar asagi iner
    And Login Portal'a  tiklar
    Then acilan Diger window'a gecer
    And "<username>" ve  "<password>" kutularina deger yazdirin
    And 2 saniye bekler
    #
    #And Popup'ta cikan yazinin "validation failed" oldugunu test eder
    #Then Ok diyerek Popup'i kapatir
    #
    And WebUniversity Login butonuna basar
    And 5 saniye bekler
    And Popup'ta cikan yazinin "validation failed" oldugunu test eder
    Then Ok diyerek Popup'i kapatir
    And Ilk sayfaya geri doner
    And Ilk sayfaya donuldugunu test eder

    Examples:

      |username|password|
      |Mustafa |Donat   |

