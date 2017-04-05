Feature: The user should be able to filter the jobs search result by post date age


  Scenario: The system should provide some filters and a reset for post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Within 1 Day" from post date age
    Then the "Within 1 Day" filter would be selected from post date age

    When the user select "Last 3 Days" from post date age
    Then the "Last 3 Days" filter would be selected from post date age

    When the user select "This Week" from post date age
    Then the "This Week" filter would be selected from post date age

    When the user select "This Month" from post date age
    Then the "This Month" filter would be selected from post date age

    When the user select the post date age reset button
    Then the post date age filters should be unselected
    
  
  Scenario: The system should provide "Within 1 Day" filter for post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Within 1 Day" from post date age
    Then the system will display the Jobs name that posted within 1 day - check for "3" page(s)
       

  Scenario: The system should provide "Last 3 Days" filter for post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Last 3 Days" from post date age
    Then the system will display the Jobs name that posted in last 3 days - check for "3" page(s)
       

  Scenario: The system should provide "This Week" filter for post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "This Week" from post date age
    Then the system will display the Jobs name that posted in this week - check for "3" page(s)
        

  Scenario: The system should provide "This Month" filter for post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "This Month" from post date age
    Then the system will display the Jobs name that posted in this month - check for "3" page(s)


  Scenario: The user should be able to change post date age filter
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "Developer"
    When the user select "This Month" from post date age
    Then the system will display the Jobs name that posted in this month - check for "1" page(s)
    When the user select "Within 1 Day" from post date age
    Then the system will display the Jobs name that posted within 1 day - check for "1" page(s)
       
        
  Scenario Outline: The user should be able to filter the search by job name and "Within 1 Day"
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Within 1 Day" from post date age
    And the user search for a job by "<Job Name>"
    Then the result will display "<Job Name>" that posted within 1 day - check for "3" page(s)

    Examples: 
      | Job Name            |
      | IT Business Analyst |
      | Developer           |
      | Real Estate         |      
        

  Scenario Outline: The user should be able to filter the search by job name and "Last 3 Days"
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Last 3 Days" from post date age
    And the user search for a job by "<Job Name>"
    Then the result will display "<Job Name>" that posted in last 3 days - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Engineer            |
      | Technician          |
      | Construction        |
           

  Scenario Outline: The user should be able to filter the search by job name and "This Week"
    Given the user from Home Page navigate to Jobs search Page
    When the user select "This Week" from post date age
    And the user search for a job by "<Job Name>"
    Then the result will display "<Job Name>" that posted in this week - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Nurse               |
      | Therapist           |
      | Pharmacy            |
        


Scenario Outline: The user should be able to filter the search by job name and "This Month"
    Given the user from Home Page navigate to Jobs search Page
    When the user select "This Month" from post date age
    And the user search for a job by "<Job Name>"
    Then the result will display "<Job Name>" that posted in this month - check for "3" page(s)
    
    Examples: 
      | Job Name            |
      | Electrical          |
      | Driver              |
      | Technician          |
      | Manager             |      
      

 