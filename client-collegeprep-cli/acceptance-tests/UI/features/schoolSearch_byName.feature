Feature: The user should be able to search for school by School Name

@smoke_test
Scenario: The system should display 10 universities per page in ascending order by default 
	When the user from Home Page navigate to School search Page
	Then the system will display 10 universities per page in ascending order

 @regression   
 Scenario Outline: The user should be able to search for school by full name, partial name or abbreviation name
    Given the user from Home Page navigate to School search Page
    Then the system should display at least one school "<Full name>" that match for each search by "<Full name>"
    Then the system should display at least one school "<Full name>" that match for each search by "<Partial name>"
    Then the system should display at least one school "<Full name>" that match for each search by "<Abbreviation name>"
    
Examples: 
  | Full name                       | Partial name | Abbreviation name |
  | George Mason University         | Mason        | GMU               |
  | James Madison University        | Madison      | JMU               |
  | York College                    | York         | Yk                |
  | Bowling Green State University  | Green State  | BGSU              | 
  | Avila College                   |              | Avila             |

Scenario Outline: The system will display precise matching school name at the top if user search for school by full name 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    Then the system will display the result(s) that exact match "<Full name>"
    And the exact matching school by "<Full name>" will be at the top of the search result
    
Examples: 
  | Full name                                        |
  | American Indian College of the Assemblies of God |
  | Alabama A & M University                         |
  | Albany State University                          |
  | The Art Institute of Houston                     |
  | Baker College of Flint                           |
  | Baker University                                 |
  | Babson College                                   |
  | Bacone College                                   |


Scenario Outline: The system will display matching school name at the top if user search for school by partial name 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Partial name>"
    Then the system will display the matching school "<Partial name>" at the top of the search result(s)
    
Examples: 
  | Partial name                    |
  | California State                |
  | The art institute of california |
  | montgomery                      |


Scenario Outline: The system will display matching school name at the top if user search for school by abbreviation name 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Abbreviation name>"
    Then the system will display the result(s) that match "<Full name>"
    And the exact matching school by "<Full name>" will be at the top of the search result
    
Examples: 
  | Full name                          | Abbreviation name |
  | James Madison University           | 1JMU               |
  | Air University                     | AU                |
  | Bethesda Christian University      | BCU               |
  | Baltimore International College    | BIC               |
  | Columbus College of Art and Design   | CCAD              |
  | Dominican University of California | DOMINICAN         |
  | Huntington University              | HUNTINGTON        |


Scenario Outline: The system should display matching school name at the top even the user search for school by partial name that match majors or occupations
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Partial name>"
    Then the system will display the matching school "<Partial name>" at the top of the search result(s)
    
Examples: 
  | Partial name             |
  | Technological University |
  | Union                    |
  | Engineering              |
  | Science                  |
  | Albany                   |

#   Scenario Outline: The system should be able to handle small spelling mistakes after the user provide the first three letters  
#     Given the user from Home Page navigate to School search Page
#     When the user search for the university by "<Partial name>"
#     Then the system will display the result(s) that match "<Full name>"
#     And the matching school(s) will be at the top of the search result
    
# Examples: 
#   | Full name                | Partial name |
#   | George Mason University  | geo          |  
#   | James Madison University | jam          |



Scenario: The system should display 'Search by School Name' in place holder instead of 'Search' 
    When the user from Home Page navigate to School search Page
    Then the system will display "Search Schools"

























