@parallel2
Feature: US1002 Backgraund Ile Amazon Search Testi

  Background: Amazon Sayfasina Gidis
    Given kullanici amazon sayfasina gider
  # before method gibi calisir

  # wip: work in progress: su anda uzerinde calisilan dosyalar, son calistigimiz dosyayi yapariz,
  # dosya de3giatikce eskisinden wip i siler yenisine yazariz
  # artık runner'dan calistiracagim icin hepsini calistirmasin vergigim tag'i calistirsin diyoruz
  # tag ismine istedigimiz seyi yazailiriz, asel bile yazabilirsin, runner ayarlarinda
  # o tag varsa, aseller calistirilacaktir demektir

  @wip
  Scenario: TC02_Amazon iPhone Search Testi
    And iPhone icin arama yapar
    Then sonuclarin iPhone icerdigini test eder

  @wip
  Scenario: TC03_Amazon tea pot Search Testi
    And tea pot icin arama yapar
    Then sonuclarin tea pot icerdigini test eder

  Scenario: TC04_Amazon flower Search Testi
    And flower icin arama yapar
    Then sonuclarin flower icerdigini test eder