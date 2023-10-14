Feature: Sample API Tests

  Scenario: Testing the Sample GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

