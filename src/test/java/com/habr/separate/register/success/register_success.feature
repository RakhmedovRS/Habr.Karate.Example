Feature: Фича с примером отдельного сценария проверки регистрации

  Background:
    * url 'https://reqres.in'

  Scenario: Проверим успешный сценарий регистрации пользователя
    Given path '/api/register'
    And request
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
    }
    """
    When method POST
    Then status 200