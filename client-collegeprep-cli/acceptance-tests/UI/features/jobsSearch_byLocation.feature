Feature: The user should be able to search for job by location

  Scenario: The system should provide Zip, City and State filter and reset for the location  
    Given the user from Home Page navigate to Jobs search Page
    When the user select "zip code" from location
    Then the "zip code" filter would be selected from location

    When the user select "city" from location
    Then the "city" filter would be selected from location

    When the user select "state" from location
    Then the "state" filter would be selected from location
    
    When the user select the jobs location reset button
    Then the location filters should be unselected


  Scenario: The system should provide State as drop-down 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "state" from location
    Then the state drop-down would be displayed 

        """
        Alabama
        Alaska
        Arizona
        Arkansas
        California
        Colorado
        Connecticut
        Delaware
        Florida
        Georgia
        Hawaii
        Idaho
        Illinois
        Indiana
        Iowa
        Kansas
        Kentucky
        Louisiana
        Maine
        Maryland
        Massachusetts
        Michigan
        Minnesota
        Mississippi
        Missouri
        Montana
        Nebraska
        Nevada
        New Hampshire
        New Jersey
        New Mexico
        New York
        North Carolina
        North Dakota
        Ohio
        Oklahoma
        Oregon
        Pennsylvania
        Rhode Island
        South Carolina
        South Dakota
        Tennessee
        Texas
        Utah
        Vermont
        Virginia
        Washington
        West Virginia
        Wisconsin
        Wyoming
        American Samoa
        District of Columbia
        Guam
        Puerto Rico
        Virgin Islands
        """


  Scenario Outline: The user should be able to filter the search by zip code
    Given the user from Home Page navigate to Jobs search Page
    When the user select zip code from location and entry the "<Zip code>"
    Then the result will show Job(s) in the zip code - using "<City list in the zip code>" - check for "1" page(s)   
 
  Examples: 
    | Zip code | City list in the zip code |
    | 99645    | Palmer, AK                |
    | 92115    | San Diego, CA             |
    | 45440    | Kettering, OH             |
    | 60631    | Chicago, IL               |
    | 11201    | Brooklyn, NY              |
    | 17110    | Harrisburg, PA            |
    | 01609    | Worcester, MA             |
    | 03801    | Portsmouth, NH            |
    | 00716    | Ponce, PR                 |
    | 00641    | Utuado, PR                |
    | 55423    | Richfield, MN             |
    | 64129    | Kansas City, MO           |
    | 80014    | Aurora, CO                |
    | 82072    | Laramie, WY               |
    | 32803    | Orlando, FL               |
    | 40390    | Wilmore, KY               |
    | 77042    | Houston, TX               |
    | 74469    | Warner, OK                |
    | 80840    | USAFA, CO                 |

  
  Scenario Outline: The user should be able to filter the search by city
    Given the user from Home Page navigate to Jobs search Page
    When the user select city from location and entry the "<City Name>"
    Then the result will show Job(s) within the city - using "<City list in the state>" - check for "1" page(s)   
 
  Examples: 
    | City Name   | City list in the state |
    | Centreville | VA, MD, ILm AL, MS     |
    | Houston     | TX, MO, MS, AK, PA     |
    | Orlando     | FL, OK, NY, KS         |
    | Harrisburg  | PA, IL, NC, SD, AR     |
    | Aurora      | CO, IL, OH, NY, TX     |
    | Wilmore     | KY, KS, PA             |
    

  Scenario: The user should be able to filter by first state - Alabama
    Given the user from Home Page navigate to Jobs search Page
    When the user select the state from location and choose "Alabama"
    Then the system display "Alabama" on top left under search box  

  
  Scenario: The user should be able to change filter the location filter
    Given the user from Home Page navigate to Jobs search Page
    And the user search for a job by "Developer"
    When the user select the state from location and choose "Virginia"
    Then the result will show Job(s) within the state - using "VA" - check for "1" page(s)
    When the user select the state from location and choose "Puerto Rico"
    Then the result will show Job(s) within the state - using "PR" - check for "1" page(s)


  Scenario Outline: The user should be able to filter the search by state
    Given the user from Home Page navigate to Jobs search Page
    When the user select the state from location and choose "<State Name>"  
    Then the result will show Job(s) within the state - using "<State Abbreviation>" - check for "1" page(s) 

  Examples: 
    | State Name           | State Abbreviation |
    | Virginia             | VA                 |
    | Guam                 | GU                 |
    | Wyoming              | WY                 |
    | American Samoa       | AS                 |
    | District of Columbia | DC                 |
    | Puerto Rico          | PR                 |
    | Vermont              | VT                 |


    
  Scenario Outline: The user should be able to filter the search by job name and zip code
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select zip code from location and entry the "<Zip code>"
    Then the result will display "<Job Name>" in the zip code - using "<City list in the zip code>" - check for "1" page(s) 
    
    Examples: 
      | Job Name    | Zip code | City list in the zip code |
      | Business    | 60631    | Chicago, IL               |
      | Developer   | 80014    | Aurora, CO                |
      | Real Estate | 32803    | Orlando, FL               |



  Scenario Outline: The user should be able to filter the search by job name and city
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select city from location and entry the "<City Name>"
    Then the result will display "<Job Name>" within the city - using "<City list in the state>" - check for "1" page(s)   
 
  Examples: 
      | Job Name            | City Name   | City list in the state |
      | Electrical          | Centreville | VA, MD, ILm AL, MS     |
      | Driver              | Houston     | TX, MO, MS, AK, PA     |
      | Technician          | Aurora      | CO, IL, OH, NY, TX     |
      | Lead                | Wilmore     | KY, KS, PA             |  


   Scenario Outline: The user should be able to filter the search by job name and state
    Given the user from Home Page navigate to Jobs search Page
    When the user search for a job by "<Job Name>"
    And the user select the state from location and choose "<State Name>"  
    Then the result will display "<Job Name>" within the state - using "<State Abbreviation>" - check for "1" page(s)


  Examples: 
      | Job Name            | State Name           | State Abbreviation |
      | Nurse               | American Samoa       | AS                 |
      | Therapist           | Puerto Rico          | PR                 |
      | Pharmacy            | Guam                 | GU                 |

  