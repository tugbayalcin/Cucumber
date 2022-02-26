
@SO
Feature: US1008 ScenarioOutline Kullanarak Farkli Degerler Ile Negative Login Testi

  Scenario Outline: TC13 Farkli Kullanici Adi Ve Password
    Given kullanici "HMCUrl" sayfasina gider
    And login linkine tiklar
    # Then kullanici adi olarak {string} girer
    # Scenario Outline: ile bu satiri kullanamam cunku ben bu satırın definition'inda ConfigReader kullandim
    # yani veriyi config.properties den aliyor
    # example'dan almaz. bu yuzden yeni bir step definition yapmaliyim
    Then scenario outline'dan kullanici adi olarak "<username>" yazar
    And scenario outline'dan password olarak"<password>" yazar
    And Login butonuna basar
    Then giris yapilamadigini test eder


    Examples:
    |username |password  |
    |MANAGER  |MANAGER1  |
    |manager  |manager1  |
    |MANager  |MANager1  |
    |Man ager |Man ager1!|
