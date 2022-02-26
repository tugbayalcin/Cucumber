Feature: US1007 Scenario Outline Ile Amazon Search
  
  Scenario Outline: TC12 Amazonda Bir Listedeki Tum Elementleri Aratma
    Given kullanici "AmazonUrl" sayfasina gider
    Then "<aranacakEleman>" icin arama yapar
    And sonuclarin "<aranacakEleman>" icerdigini test eder
    
    
    
    
    
    
    
    Examples:
    |aranacakEleman|
    |Apple|
    |Java|
    |Samsung|
    |Armut|
    |Nutella|

