Feature: US1014 Dynamic Elements

  @Dynamic
  Scenario: TC19 Dynamic Elements Tiklanabilmeli

    Given kullanici "DemoQaUrl" sayfasina gider
    Then Will enable 5 seconds butonunun enable olmasini bekler
    And Will enable 5 seconds butonunun enable oldugunu test eder