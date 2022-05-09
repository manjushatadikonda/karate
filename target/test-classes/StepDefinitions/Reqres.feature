#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature: Karate Framework Demo

@checkstatus
Scenario: status code verification for single user
Given url 'https://reqres.in/api/users/2'
When method get
Then status 200

@checkstatus
Scenario: status code verification for single user not found
Given url 'https://reqres.in/api/users/23'
When method get
Then status 404




@checkstatus
Scenario: status code verification for list users
Given url 'https://reqres.in/api/users?page=2'
When method get
Then status 200
 
 @outlinegroup
Scenario Outline: Verify the responses
Given url "<url>"
When method get
Then status <status>

Examples:
|url|status|
|https://reqres.in/api/users/2|200|
|https://reqres.in/api/users?page=2|200|
|https://reqres.in/api/users/23|404|
|https://reqres.in/api/users?delay=3|200|