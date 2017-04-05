Feature: The user should be able to filter the search result by school type 

  @smoke_test
  Scenario: The system should provide Public and Private filter and reset for the school type  
    Given the user from Home Page navigate to School search Page
    When the user select public
    Then the public filter would be selected
    When the user select private
    Then the private filter would be selected
    When the user select the school type reset button
    Then the public and private filter should be unchecked

  @regression
  Scenario Outline: The user should be able to filter the search by public schools 
    Given the user from Home Page navigate to School search Page
    When the user select public
    And the user search for the university by "<Full name>"
    Then the result will only show public school(s) by "<Full name>"
    When the user select private
    Then the result will not show public school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Aims Community College           |
    | Baltimore City Community College |
    | Prairie State College            |
    | University of Mississippi        |


  Scenario Outline: The user should be able to filter the search by private schools 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    Then the result will only show private school(s) by "<Full name>"
    When the user select public
    Then the result will not show private school(s) by "<Full name>"

  Examples: 
    | Full name                |
    | Young Harris College     |
    | Wofford College          |
    | Vassar College           |
    | University of Evansville |
  

  Scenario Outline: The user should be able to filter the search by public and private schools 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public and private
    Then the result will show school(s) by "<Full name>"
    When the user select the school type reset button
    Then the result will show school(s) by "<Full name>"

  Examples: 
    | Full name                         | School type |
    | Whitworth University              | private    |
    | Valparaiso University             | private    |
    | Tusculum College                  | private    |
    | White Mountains Community College | public     |
    | State Fair Community College      | public     |
    | Murray State College              | public     |
