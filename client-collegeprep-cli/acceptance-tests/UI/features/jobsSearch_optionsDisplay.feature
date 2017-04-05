Feature: The system display the filters options and search results for jobs

  Scenario: The search table results should have header Job Name, Location, Pay and Posted 
    When the user from Home Page navigate to Jobs search Page
    Then the system will display jobs table header name
	    | header name     |
      | Job Name        |
      | Location        |   
      | Pay             |
      | Posted          |


  Scenario: The system should provide search filters  
    When the user from Home Page navigate to Jobs search Page
    Then the system will display jobs search filters
	    | Filters                        |
      | Reset                          |
      | Salary                         |
      | $                              |
      | Reset                          |
      | Required Education             |
      | Not Specified                  |
      | None                           |
      | High School                    |
      | Associate's Degree             |
      | Bachelor's Degree              |
      | Graduate Degree                |
      | Doctorate                      |
      | Reset                          |
      | Job Category                   |
      | Job Categories                 |
      | - select one or more -         |
      | Accounting                     |
      | Admin - Clerical               |
      | Automotive                     |
      | Banking                        |
      | Biotech                        |
      | Business Development           |
      | Business Opportunity           |
      | Construction                   |
      | Consultant                     |
      | Customer Service               |
      | Design                         |
      | Distribution - Shipping        |
      | Education                      |
      | Engineering                    |
      | Entry Level                    |
      | Executive                      |
      | Facilities                     |
      | Finance                        |
      | Franchise                      |
      | General Business               |
      | General Labor                  |
      | Government                     |
      | Government - Federal           |
      | Grocery                        |
      | Health Care                    |
      | Hospitality - Hotel            |
      | Human Resources                |
      | Information Technology         |
      | Installation - Maint - Repair  |
      | Insurance                      |
      | Inventory                      |
      | Legal                          |
      | Legal Admin                    |
      | Management                     |
      | Manufacturing                  |
      | Marketing                      |
      | Media - Journalism - Newspaper |
      | Nonprofit - Social Services    |
      | Nurse                          |
      | Other                          |
      | Pharmaceutical                 |
      | Professional Services          |
      | Purchasing - Procurement       |
      | QA - Quality Control           |
      | Real Estate                    |
      | Research                       |
      | Restaurant - Food Service      |
      | Retail                         |
      | Sales                          |
      | Science                        |
      | Skilled Labor - Trades         |
      | Strategy - Planning            |
      | Supply Chain                   |
      | Telecommunications             |
      | Training                       |
      | Transportation                 |
      | Veterinary Services            |
      | Warehouse                      |
      | Reset                          |
      | Location                       |
      | Zip                            |
      | City                           |
      | State                          |
      | Reset                          |
      | Employment Type                |
      | Full-Time                      |
      | Part-Time                      |
      | Contractor                     |
      | Intern                         |
      | Per Diem                       |
      | Reset                          |
      | Post Date Age                  |
      | Within 1 Day                   |
      | Last 3 Days                    |
      | This Week                      |
      | This Month                     |




  Scenario: The user should be able to reset the filters to default
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "IT"

    And the user search for "50000" minimum salary in job search
    
    And the user select "Accounting" from job category drop-down
    And the user select "Nurse" from job category drop-down

    And the user select "graduate degree" from Required Education

    And the user select zip code from location and entry the "20120"

    And the user select "Full-Time" from employment type

    And the user select "This Week" from post date age

    When the user select the reset button

    Then the salary text box should be cleared in job search
    And the job category filters should be unselected
    And the required education filters should be unselected
    And the location filters should be unselected
    And the employment type filters should be unselected
    And the post date age filters should be unselected


  

