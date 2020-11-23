Feature: Фича с примером отдельного сценария проверки доступности сервиса

  Background:
    * url 'https://reqres.in'

  Scenario: Тестирование доступности вэб сайта в рамках отдельной фичи
    Given path '/'
    When method GET
    Then status 200