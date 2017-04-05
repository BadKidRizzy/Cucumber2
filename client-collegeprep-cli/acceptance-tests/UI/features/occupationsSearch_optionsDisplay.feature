@smoke_test
Feature: The system display the filters options and search results for occupations

  Scenario: The search table results should have header Occupation Name, Prep., Outlook and Average ​​​Salary 
    When the user from Home Page navigate to Occupations search Page
    Then the system will display occupations table header name
	    | header name     |
      | Occupation Name |
      | Prep.           |   
      | Outlook         |
      | Average Salary  |


  Scenario: The system should provide search filters  
    When the user from Home Page navigate to Occupations search Page
    Then the system will display occupations search filters
	    | Filters                                          |
      | Reset                                            |
      | Salary                                           |
      | Reset                                            |
      | $                                                |
      | Career Cluster                                   |
      | Career Clusters                                  |
      | - select one or more -                           |
      | Agriculture, Food and Natural Resources          |
      | Health Science                                   |
      | Science, Technology, Engineering and Mathematics |
      | Manufacturing                                    |
      | Information Technology                           |
      | Human Services                                   |
      | Education and Training                           |
      | Arts, Audio/Video Technology and Communications  |
      | Architecture and Construction                    |
      | Transportation, Distribution and Logistics       |
      | Law, Public Safety, Corrections and Security     |
      | Finance                                          |
      | Business, Management and Administration          |
      | Government and Public Administration             |
      | Hospitality and Tourism                          |
      | Reset                                            |
      | STEM Discipline                                  |
      | Science                                          |
      | Technology                                       |
      | Engineering                                      |
      | Mathematics                                      |
      | Multi-disciplinary                               |
      | Reset                                            |
      | Preparation Needed                               |
      | Reset                                            |
      | Outlook                                          |
      | Green Job                                        |
      | New and Emerging                                 |
      | Numerous Openings                                |
      | Rapid Growth                                     |
      

  Scenario: The user should be able to reset the filters to default
    Given the user from Home Page navigate to Occupations search Page
    And the user search for "50000" minimum salary
    
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    And the user select "Architecture and Construction" from career cluster
    
    And the user select "Engineering" from STEM discipline    
    And the user select "Mathematics" from STEM discipline

    And the user select "Medium preparation" from preparation needed
    And the user select "Considerable preparation" from preparation needed

    And the user select "Green Job" from outlook
    And the user select "New and Emerging" from outlook

    And the user search for an occupation by "Accountants"

    When the user select the reset button

    Then the salary text box should be cleared
    And the career cluster should be cleared
    And the science, technology, engineering, mathematics, and multi-disciplinary filters should be unchecked
    And the preparation needed filters should be unselected
    And the outlook filters should be unselected
    And the system will reset search box to default 
    
  
  


  

