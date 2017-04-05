Feature: The user should be able to search for job by Job Category

  Scenario: The system should provide Job Category as drop-down 
    When the user from Home Page navigate to Jobs search Page
    Then the job category drop-down would be displayed 

        """
        - select one or more -
        Accounting
        Admin - Clerical
        Automotive
        Banking
        Biotech
        Business Development
        Business Opportunity
        Construction
        Consultant
        Customer Service
        Design
        Distribution - Shipping
        Education
        Engineering
        Entry Level
        Executive
        Facilities
        Finance
        Franchise
        General Business
        General Labor
        Government
        Government - Federal
        Grocery
        Health Care
        Hospitality - Hotel
        Human Resources
        Information Technology
        Installation - Maint - Repair
        Insurance
        Inventory
        Legal
        Legal Admin
        Management
        Manufacturing
        Marketing
        Media - Journalism - Newspaper
        Nonprofit - Social Services
        Nurse
        Other
        Pharmaceutical
        Professional Services
        Purchasing - Procurement
        QA - Quality Control
        Real Estate
        Research
        Restaurant - Food Service
        Retail
        Sales
        Science
        Skilled Labor - Trades
        Strategy - Planning
        Supply Chain
        Telecommunications
        Training
        Transportation
        Veterinary Services
        Warehouse
        """


  Scenario: The user should be able to reset the job category filters to default
    Given the user from Home Page navigate to Jobs search Page
    And the user select "Retail" from job category drop-down
    And the user select "Training" from job category drop-down

    When the user select the job category reset button
    
    Then the job category filters should be unselected
    


  Scenario: The user should be able to slect the first job category - Accounting
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Accounting" from job category drop-down 
    Then the system display selected job category "Accounting" on top left under search box 


  Scenario: The system should display 'Other' at beginning or end of job category selection 
    When the user from Home Page navigate to Jobs search Page
    Then the job category drop-down would displayed "Other" at the beginning or end of the selection    


  Scenario Outline: The user should be able to filter the search by job category 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Category Name>" from job category drop-down  
    Then the result will show Job(s) within the job "<Category Name>" - check for "1" page(s) 

  Examples: 
    | Category Name |
    | Automotive    | 
    | Banking       | 
    | Nurse         | 
    | Retail        | 
    | PTraining     | 
    | Warehouse     |


  Scenario Outline: The user should be able to filter the search by job name and category
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select "<Category Name>" from job category drop-down
    Then the system will display the "<Job Name>" within the job "<Category Name>" - check for "1" page(s) 
    
    Examples: 
      | Job Name            | Category Name          |
      | Electrical          | Construction           |
      | Nurse               | Health Care            |
      | Developer           | Information Technology |


