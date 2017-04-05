Feature: The user should be able to filter the search result by school size 

  @smoke_test
  Scenario: The system should provide Public and Private filter and reset for the total school size  
    Given the user from Home Page navigate to School search Page
    When the user select small
    Then the small filter would be selected
    When the user select medium
    Then the medium filter would be selected
    When the user select large
    Then the large filter would be selected
    When the user select the school size reset button
    Then the small, medium, and large filter should be unchecked

  Scenario Outline: The user should be able to filter the search by small 
    Given the user from Home Page navigate to School search Page
    When the user select small
    And the user search for the university by "<Full name>"
    Then the result will only show small school(s) by "<Full name>"
    And the undergrads should be less than "5000"
    When the user select medium
    Then the result will not show small school(s) by "<Full name>"
    When the user select large
    Then the result will not show small school(s) by "<Full name>"

  Examples: 
    | Full name                            |
    | Abraham Baldwin Agricultural College |
    | Oral Roberts University              |
    | Wittenberg university                |
    | Zane State College                   |


  Scenario Outline: The user should be able to filter the search by medium 
    Given the user from Home Page navigate to School search Page
    When the user select medium
    And the user search for the university by "<Full name>"
    Then the result will only show medium school(s) by "<Full name>"
    And the undergrads should be between "5000" to "20000"
    When the user select small
    Then the result will not show medium school(s) by "<Full name>"
    When the user select large
    Then the result will not show medium school(s) by "<Full name>"

  Examples: 
    | Full name                 |
    | Gaston College            |
    | Aims Community College    |
    | Blinn College             |
    | Delgado Community College |
    | Adelphi University        |


  Scenario Outline: The user should be able to filter the search by large
    Given the user from Home Page navigate to School search Page
    When the user select large
    And the user search for the university by "<Full name>"
    Then the result will only show large school(s) by "<Full name>"
    And the undergrads should be greater than "20000"
    When the user select small
    Then the result will not show large school(s) by "<Full name>"
    When the user select medium
    Then the result will not show large school(s) by "<Full name>" 

  Examples: 
    | Full name                                  |
    | American River College                     |
    | Broward College                            |
    | Northern Virginia Community College        |
    | Santa Monica College                       |


  Scenario Outline: The user should be able to filter the search by small and medium
    Given the user from Home Page navigate to School search Page
    When the user select small and medium
    And the user search for the university by "<Full name>"
    Then the result will only show small and medium school(s) by "<Full name>"
    When the user select large
    Then the result will not show small and medium school(s) by "<Full name>"
    

  Examples: 
    | Full name                          | School size |
    | St. Clair County Community College | small       |
    | Southeast Arkansas College         | small       |
    | Marywood University                | small       |
    | University of San Diego            | medium      |
    | Academy of Art University          | medium      |
    | Christopher Newport University     | medium      |

  
  Scenario Outline: The user should be able to filter the search by small and large
    Given the user from Home Page navigate to School search Page
    When the user select small and large
    And the user search for the university by "<Full name>"
    Then the result will only show small and large school(s) by "<Full name>"
    When the user select medium
    Then the result will not show small and large school(s) by "<Full name>"

  Examples: 
    | Full name                          | School size |
    | St Clair County Community College  | small       |
    | Southeast Arkansas College         | small       |
    | Marywood University                | small       |
    | Fresno City College                | large       |
    | Northern Arizona University        | large       |
    | University of Central Florida      | large       |


  Scenario Outline: The user should be able to filter the search by medium and large
    Given the user from Home Page navigate to School search Page
    When the user select medium and large
    And the user search for the university by "<Full name>"
    Then the result will only show medium and large school(s) by "<Full name>"
    When the user select small
    Then the result will not show medium and large school(s) by "<Full name>"

  Examples: 
    | Full name                          | School size |
    | University of San Diego            | medium      |
    | Academy of Art University          | medium      |
    | Christopher Newport University     | medium      |
    | Fresno City College                | large       |
    | Northern Arizona University        | large       |
    | University of Central Florida      | large       |


  Scenario Outline: The user should be able to filter the search by small, medium and large
    Given the user from Home Page navigate to School search Page
    When the user select small, medium and large
    And the user search for the university by "<Full name>"
    Then the result will only show small, medium and large school(s) by "<Full name>"
    When the user select the school size reset button
    Then the result will only show small, medium and large school(s) by "<Full name>"

  Examples: 
    | Full name                          | School size |
    | St Clair County Community College  | small       |
    | Southeast Arkansas College         | small       |
    | Marywood University                | small       |
    | University of San Diego            | medium      |
    | Academy of Art University          | medium      |
    | Christopher Newport University     | medium      |
    | Fresno City College                | large       |
    | Northern Arizona University        | large       |
    | University of Central Florida      | large       |
