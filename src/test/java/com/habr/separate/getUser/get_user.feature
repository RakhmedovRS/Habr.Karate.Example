Feature: Фича с примером отдельного сценария get user

  Background:
    * url 'https://reqres.in'

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
	  "avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg",
	  "first_name":"Janet",
	  "email":"janet.weaver@reqres.in"
	}
    """