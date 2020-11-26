Feature: Фича с примером отдельного сценария проверки ошибки при регистрации

  Background:
    * url 'https://reqres.in'

  Scenario: Проверим регистрацию пользователя вызвав сервис с некорректными параметрами
    Given path '/api/register'
    And request
    """
    {
      "email": "sydney@fife"
    }
    """
    When method POST
    Then status 400