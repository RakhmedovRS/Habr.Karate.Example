Feature: Фича с примером отдельного сценария проверки доступности сервиса

  Background:
    * url 'https://reqres.in'

  Scenario: Попытаемся залогинится и проверим успешность
    Given path '/api/login'
    And request
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "cityslicka"
    }
    """
    When method POST
    Then status 200