Feature: US1013 Invalid Email Testi

  @Automation
  Scenario: TC18 Invalid Email Ile Giris Yapilamaz

  
   Given kullanici "AutomationPracticeUrl" sayfasina gider
   And user sign in linkine tiklar
   And email kutusuna @isareti olmayan email adresi yazar ve enter'a tiklar
   Then error mesajinin "Invalid email address."  oldugunu dogrulayin