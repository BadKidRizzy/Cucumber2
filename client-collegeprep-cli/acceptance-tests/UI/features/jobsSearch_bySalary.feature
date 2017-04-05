Feature: The user should be able to filter the search result by salary 


  Scenario: The user should be able to reset the salary filters to default
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "50000" minimum salary in job search
    Then the salary filter would be displayed "Minimum $50,000" in job search
    
    When the user select the salary reset button in job search
    Then the salary text box should be cleared in job search


  Scenario: The user should be able to search for minimum amount salary 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "250000" minimum salary in job search
    Then the result will only show jobs that offers at least "250000" in job search - check for "3" page(s)   

  Scenario: The user should be able to change salary filter 
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "Developer"
    When the user search for "50000" minimum salary in job search
    Then the result will only show jobs that offers at least "50000" in job search - check for "1" page(s)
    When the user change the minimum salary to "110000" in job search
    Then the result will only show jobs that offers at least "110000" in job search - check for "1" page(s)
    

  Scenario Outline: The user should be able to filter the search by job name and salary 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "150000" minimum salary in job search
    And the user search for a job by "<Job Name>"
    Then the result will display "<Job Name>" that offers at least "150000" - check for "3" page(s)
    
  Examples: 
    | Job Name     |
    | Accountant   |
    | Consultant   |
    | Real Estate  |
    | Developer    |

