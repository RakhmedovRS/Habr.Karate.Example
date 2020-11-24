Feature: Фича с примерами простейщих тестов API

  Background:
    * url 'https://reqres.in'

  Scenario: Тестирование доступности вэб сайта
    Given path '/'
    When method GET
    Then status 200

  Scenario: Запросим JSON с данными пользователя id = 2 и удостоверимся что нужная нам строка присутствует в ответе
    Given path '/api/users/2'
    When method GET
    Then status 200
    * def jsonData = response['data']
    * match jsonData contains
    """
    {
	  "last_name":"Weaver",
	  "id":2,
	  "avatar":"#ignore",
	  "first_name":"Janet",
	  "email":"janet.weaver@reqres.in"
	}
    """

  Scenario: Запросим JSON с данными несуществующего пользователя и убедимся что сервер возвращет 404 ошибку
    Given path '/api/users/23'
    When method GET
    Then status 404

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