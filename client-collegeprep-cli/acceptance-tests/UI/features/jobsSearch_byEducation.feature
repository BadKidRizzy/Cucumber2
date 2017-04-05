Feature: The user should be able to filter the search result by required education

  Scenario: The system should provide "not specified", "none", "high school", "associate's degree", "bachelor's degree", "graduate degree", and "doctorate" filters and a reset for education 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "not specified" from Required Education
    Then the "not specified" filter would be selected from Required Education
    
    When the user select "none" from Required Education
    Then the "none" filter would be selected from Required Education
    
    When the user select "high school" from Required Education
    Then the "high school" filter would be selected from Required Education
    
    When the user select "associate's degree" from Required Education
    Then the "associate's degree" filter would be selected from Required Education
    
    When the user select "bachelor's degree" from Required Education
    Then the "bachelor's degree" filter would be selected from Required Education
    
    When the user select "graduate degree" from Required Education
    Then the "graduate degree" filter would be selected from Required Education
    
    When the user select "doctorate" from Required Education
    Then the "doctorate" filter would be selected from Required Education
    
    When the user select the required education reset button
    Then the required education filters should be unselected


  Scenario: The system should provide "not specified" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "not specified" from Required Education
    Then the system will display the Jobs name that not specified Req. Education - check for "3" page(s)


  Scenario: The system should provide "none" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "none" from Required Education
    Then the system will display the Jobs name that not required education - check for "3" page(s)


  Scenario: The system should provide "high school" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "high school" from Required Education
    Then the system will display the Jobs name that required high school diploma - check for "3" page(s)


  Scenario: The system should provide "associate degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "associate's degree" from Required Education
    Then the system will display the Jobs name that required associate degree - check for "3" page(s)


  Scenario: The system should provide "bachelor's degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "bachelor's degree" from Required Education
    Then the system will display the Jobs name that required bachelor's degree - check for "3" page(s)


  Scenario: The system should provide "graduate degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "graduate degree" from Required Education
    Then the system will display the Jobs name that required graduate degree - check for "3" page(s)


  Scenario: The system should provide "doctorate" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    Then the system will display the Jobs name that required doctorate degree - check for "3" page(s)


  Scenario: The user should be able to change Required Education filter
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "Developer"
    When the user select "bachelor's degree" from Required Education
    Then the system will display the "Developer" that required bachelor's degree - check for "3" page(s)
    When the user select "associate's degree" from Required Education
    Then the system will display the "Developer" that required associate degree - check for "3" page(s)
    

  Scenario Outline: The user should be able to search by job name and "not specified" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "not specified" from Required Education
    Then the system will display the "<Job Name>" that not specified requirement for education - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | General             |
      | Operator            |
             

  Scenario Outline: The user should be able to search by job name and "none" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "none" from Required Education
    Then the system will display the "<Job Name>" that not required education - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | HOLIDAY             |
      | SALES               |
           

  Scenario Outline: The user should be able to search by job name and "high school" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "high school" from Required Education
    Then the system will display the "<Job Name>" that required high school diploma - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Customer            |
      | Mechanic            |
      
        

  Scenario Outline: The user should be able to search by job name and "associate's degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "associate's degree" from Required Education
    Then the system will display the "<Job Name>" that required associate degree - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Electrical          |
      | NURSES              |
      
           

  Scenario Outline: The user should be able to search by job name and "bachelor's degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "bachelor's degree" from Required Education
    Then the system will display the "<Job Name>" that required bachelor's degree - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Software            |
      | Manager             | 
      


  Scenario Outline: The user should be able to search by job name and "graduate degree" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "graduate degree" from Required Education
    Then the system will display the "<Job Name>" that required graduate degree - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Health              | 
      | Nurse               |



  Scenario Outline: The user should be able to search by job name and "doctorate" filter for Required Education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "doctorate" from Required Education
    Then the system will display the "<Job Name>" that required doctorate degree - check for "1" page(s)
    
    Examples: 
      | Job Name            |
      | Manager             | 
      | Physician           |
