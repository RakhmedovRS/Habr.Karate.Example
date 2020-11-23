Feature: Фича с примером отдельного сценария проверки доступности сервиса

  Background:
    * url 'https://reqres.in'

  Scenario: Попытаемся залогинится и проверим неуспешность
    Given path '/api/login'
    And request
    """
    {
      "email": "peter@klaven"
    }
    """
    When method POST
    Then status 400