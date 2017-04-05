Feature: The user should be able to filter the jobs search result by employment type


  Scenario: The system should provide some filters and a reset for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Full-Time" from employment type
    Then the "Full-Time" filter would be selected from employment type

    When the user select "Part-Time" from employment type
    Then the "Part-Time" filter would be selected from employment type

    When the user select "Contractor" from employment type
    Then the "Contractor" filter would be selected from employment type

    When the user select "Intern" from employment type
    Then the "Intern" filter would be selected from employment type

    When the user select "Per Diem" from employment type
    Then the "Per Diem" filter would be selected from employment type

    When the user select the employment type reset button
    Then the employment type filters should be unselected
    
  
  Scenario: The system should provide "Full-Time" filter for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user just select "Full-Time" from employment type
    Then the system will display the Jobs name that offer "Full-Time" - check for "3" page(s)
        

  Scenario: The system should provide "Part-Time" filter for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user just select "Part-Time" from employment type
    Then the system will display the Jobs name that offer "Part-Time" - check for "3" page(s)
       

  Scenario: The system should provide "Contractor" filter for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user just select "Contractor" from employment type
    Then the system will display the Jobs name that offer "Contractor" - check for "3" page(s)
        

  Scenario: The system should provide "Intern" filter for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user just select "Intern" from employment type
    Then the system will display the Jobs name that offer "Intern" - check for "3" page(s)


  Scenario: The system should provide "Per Diem" filter for employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user just select "Per Diem" from employment type
    Then the system will display the Jobs name that offer "Per Diem" - check for "3" page(s)


  Scenario: The user should be able to change employment type filter
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "Developer"
    When the user just select "Full-Time" from employment type
    Then the system will display the Jobs name that offer "Full-Time" - check for "1" page(s)
    When the user just select "Contractor" from employment type
    Then the system will display the Jobs name that offer "Contractor" - check for "1" page(s)
      
        
  Scenario Outline: The user should be able to filter the search by job name and "Full-Time"
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "Full-Time" from employment type
    Then the system will display the "<Job Name>" that offer "Full-Time" - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | IT Business Analyst |
      | Developer           |
      | Real Estate         |      
        

  Scenario Outline: The user should be able to filter the search by job name and "Part-Time"
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "Part-Time" from employment type
    Then the system will display the "<Job Name>" that offer "Part-Time" - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Engineer            |
      | Technician          |
           

  Scenario Outline: The user should be able to filter the search by job name and "Contractor"
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "Contractor" from employment type
    Then the system will display the "<Job Name>" that offer "Contractor" - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Nurse               |
      | Therapist           |
      | Pharmacy            |
        


  Scenario Outline: The user should be able to filter the search by job name and "Intern"
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "Intern" from employment type
    Then the system will display the "<Job Name>" that offer "Intern" - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Electrical          |
      | Driver              |
      | Technician          |
           
      

  Scenario Outline: The user should be able to filter the search by job name and "Per Diem"
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "Per Diem" from employment type
    Then the system will display the "<Job Name>" that offer "Per Diem" - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Engineer            |
      | Manager             | 
      | Construction        |
 