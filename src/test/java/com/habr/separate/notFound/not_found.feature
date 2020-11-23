Feature: Фича с примером отдельного сценария проверки 404 ошибки

  Background:
    * url 'https://reqres.in'

  Scenario: Запросим JSON с данными несуществующего пользователя и убедимся что сервер возвращет 404 ошибку
    Given path '/api/users/23'
    When method GET
    Then status 404