Feature: US1004 Parametre Ile Istenen Sayfaya Gitme

  Scenario: TC06 Eski Usul Amazona Gitme
    Given kullanici amazon sayfasina gider
    # Then kullanici techproeducation sayfasina gider

  Scenario: TC07 Parametre Ile Istenen Sayfaya Gitme
    Given kullanici "BestBuyUrl" sayfasina gider
    Then kullanici "TechproedUrl" sayfasina gider