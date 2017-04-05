Feature: The user should be able to search for school by location

  @smoke_test
  Scenario: The system should provide Region, State, Zip filter and reset for the location  
    Given the user from Home Page navigate to School search Page
    When the user select region
    Then the region filter would be selected
    When the user select state
    Then the state filter would be selected
    When the user select zip code
    Then the zip code filter would be selected
    When the user select the location reset button
    Then the region, state, and zip filter should be unchecked

  @smoke_test
  Scenario: The system should provide Region as drop-down 
    Given the user from Home Page navigate to School search Page
    When the user select region
    Then the region drop-down would be displayed 
        """
        Far West
        Great Lakes
        Mid East
        New England
        Outlying areas
        Plains
        Rocky Mountains
        Southeast
        Southwest
        US Service schools
        """

  @smoke_test
  Scenario: The system should provide State as drop-down 
    Given the user from Home Page navigate to School search Page
    When the user select state
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
        Palau
        """
  
  @regression
  Scenario: The user should be able to filter by first region - Far West
    Given the user from Home Page navigate to School search Page
    When the user select "Far West" region
    Then the system display "Far West" on top left under search box

  @regression
  Scenario: The user should be able to filter by first state - Alabama
    Given the user from Home Page navigate to School search Page
    When the user select the state and choose "Alabama" form drop-down
    Then the system display "Alabama" on top left under search box


  Scenario Outline: The user should be able to filter the search by region - Far West
    Given the user from Home Page navigate to School search Page
    And the user select "Far West" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | American Career College-Los Angeles          |
    | Yuba College |
    

  Scenario Outline: The user should be able to filter the search by region - Great Lakes
    Given the user from Home Page navigate to School search Page
    And the user select "Great Lakes" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Bay de Noc Community College           |
    | Zane State College  |
    

  Scenario Outline: The user should be able to filter the search by region - Mid East
    Given the user from Home Page navigate to School search Page
    And the user select "Mid East" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Barnard College           |
    | Westminster College  |
  
  
  Scenario Outline: The user should be able to filter the search by region - New England
    Given the user from Home Page navigate to School search Page
    And the user select "New England" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Champlain College           |
    | Yale University  |


  Scenario Outline: The user should be able to filter the search by region - Outlying areas
    Given the user from Home Page navigate to School search Page
    And the user select "Outlying areas" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Dewey University-Carolina           |
    | ontifical Catholic University of Puerto Rico-Arecibo  |


  Scenario Outline: The user should be able to filter the search by region - Plains
    Given the user from Home Page navigate to School search Page
    And the user select "Plains" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Bryan College of Health Sciences           |
    | University of Sioux Falls  |


  Scenario Outline: The user should be able to filter the search by region - Rocky Mountains
    Given the user from Home Page navigate to School search Page
    And the user select "Rocky Mountains" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Dawson Community College            |
    | Salt Lake Baptist College  |
  
        
  Scenario Outline: The user should be able to filter the search by region - Southeast
    Given the user from Home Page navigate to School search Page
    And the user select "Southeast" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | Agnes Scott College            |
    | Welch College  |


  Scenario Outline: The user should be able to filter the search by region - Southwest
    Given the user from Home Page navigate to School search Page
    And the user select "Southwest" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "US Service schools" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | American Indian College Inc           |
    | St Philip's College  |


  Scenario Outline: The user should be able to filter the search by region - US Service schools
    Given the user from Home Page navigate to School search Page
    And the user select "US Service schools" region
    When the user search for "<Full name>" of the university
    Then the result will only show region school(s) by "<Full name>"
    When the user select "Great Lakes" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Mid East" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "New England" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Outlying areas" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Plains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Rocky Mountains" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southeast" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Southwest" region
    Then the result will not show region school(s) by "<Full name>"
    When the user select "Far West" region
    Then the result will not show region school(s) by "<Full name>"

  Examples: 
    | Full name                        |
    | United States Coast Guard Academy           |
    | United States Military Academy  |     
        

  Scenario: The user should be able to filter the search by region - Far West
    Given the user from Home Page navigate to School search Page
    When the user select "Far West" region
    Then the result will only show "Far West" region school(s)
      """
      AK CA HI NV OR WA 
      """


  Scenario: The user should be able to filter the search by region - Great Lakes
    Given the user from Home Page navigate to School search Page
    When the user select "Great Lakes" region
    Then the result will only show "Great Lakes" region school(s)
      """
      IL IN MI OH WI 
      """


  Scenario: The user should be able to filter the search by region - Mid East
    Given the user from Home Page navigate to School search Page
    When the user select "Mid East" region
    Then the result will only show "Mid East" region school(s)
      """
      DE DC MD NJ NY PA
      """


  Scenario: The user should be able to filter the search by region - New England
    Given the user from Home Page navigate to School search Page
    When the user select "New England" region
    Then the result will only show "New England" region school(s)
      """
      CT ME MA NH RI VT
      """


  Scenario: The user should be able to filter the search by region - Outlying areas
    Given the user from Home Page navigate to School search Page
    When the user select "Outlying areas" region
    Then the result will only show "Outlying areas" region school(s)
      """
      AS FM GU MH MP PR PW VI
      """
 

  Scenario: The user should be able to filter the search by region - Plains
    Given the user from Home Page navigate to School search Page
    When the user select "Plains" region
    Then the result will only show "Plains" region school(s)
      """
      IA KS MN MO NE ND SD
      """
 

  Scenario: The user should be able to filter the search by region - Rocky Mountains
    Given the user from Home Page navigate to School search Page
    When the user select "Rocky Mountains" region
    Then the result will only show "Rocky Mountains" region school(s)
      """
      CO ID MT UT WY
      """


  Scenario: The user should be able to filter the search by region - Southeast
    Given the user from Home Page navigate to School search Page
    When the user select "Southeast" region
    Then the result will only show "Southeast" region school(s)
      """
      AL AR FL GA KY LA MS NC SC TN VA WV
      """


  Scenario: The user should be able to filter the search by region - Southwest
    Given the user from Home Page navigate to School search Page
    When the user select "Southwest" region
    Then the result will only show "Southwest" region school(s)
      """
      AZ NM OK TX
      """


  Scenario: The user should be able to filter the search by region - US Service schools
    Given the user from Home Page navigate to School search Page
    When the user select "US Service schools" region
    Then the result will only show "US Service schools" region school(s)
      """
      OH CA CO CT NY MD
      """     


  Scenario Outline: The user should be able to filter the search by state
    Given the user from Home Page navigate to School search Page
    When the user select the state and choose one "<State>" form drop-down  
    Then the result will only show school(s) within the state - using "<State Abbreviation>"   

  Examples: 
    | State                | State Abbreviation |
    | Virginia             | VA                 |
    | Guam                 | GU                 |
    | Wyoming              | WY                 |
    | American Samoa       | AS                 |
    | District of Columbia | DC                 |
    | Puerto Rico          | PR                 |
    | Virgin Islands       | VI                 |


  Scenario Outline: The user should be able to filter the search by zip code
    Given the user from Home Page navigate to School search Page
    When the user select Zip and entry the "<Zip code>"
    Then the result will show schools in the zip code - using "<City list in the zip code>"   
 
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

    

