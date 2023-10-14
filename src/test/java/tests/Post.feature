Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  Scenario: Get Demo 1
    Given path '/users'
    And request {  "name": "suayip", "job": "tester"}
    When method POST
    Then status 201
    And print response

#    Read from JSON file
  Scenario: Get Demo 2
    Given path '/users'
    And request {  "name": "suayip", "job": "tester"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

    #    Read from JSON file for request
  Scenario: Get Demo 3
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/request1.json'
    And def requestBody = filePath
    And request requestBody
    When method POST
    And match response == expectedOutput

  Scenario: Get Demo 3
    Given path '/users'
    And def reqBody = read("request.json")
    And set reqBody.job = "engineer"
    And request reqBody
    When method POST
    And match response == expectedOutput
