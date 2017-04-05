Feature: The user should be able to search for jobs


  Scenario Outline: The user should be able to filters the job search by salary and job category
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "25000" minimum salary in job search
    And the user select "<Name>" from job category drop-down
    Then the system will display the jobs that offer "25000" minimum salary within the job Category "<Name>" - check for "1" page(s) 
      
    Examples: 
      | Name          |
      | Automotive    | 
      | Banking       | 
      | Nurse         | 
      

  Scenario Outline: The user should be able to filters the job search by salary and required education
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "30000" minimum salary in job search
    And the user select "<Level>" from Required Education
    Then the system will display the jobs that offer "30000" minimum salary with Required Education "<Level>" - check for "1" page(s) 
      
    Examples: 
      | Level               |
      | high school         | 
      | bachelor's degree   | 
      | doctorate           | 
      

  Scenario Outline: The user should be able to filters the job search by salary and location
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "20000" minimum salary in job search
    And the user select zip code from location and entry the "<Zip code>"
    Then the system will display the jobs that offer "20000" minimum salary in the "<City>" that is the zip code - check for "1" page(s) 
      
    Examples: 
      | Zip code | City                      |
      | 20120    | Centreville, VA           |
      | 92115    | San Diego, CA             |
      | 45440    | Kettering, OH             |


  Scenario Outline: The user should be able to filters the job search by salary and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user just select "<Type>" from employment type
    Then the system will display the jobs that offer "15000" minimum salary and the Employment "<Type>" - check for "1" page(s) 
      
    Examples: 
      | Type          |
      | Full-Time     | 
      | Contractor    | 
      | Part-Time     | 



  Scenario Outline: The user should be able to filters the job search by salary and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "35000" minimum salary in job search
    And the user select "<Date>" from post date age
    Then the system will display the jobs that offer "35000" minimum salary and posted within "<Date>" - check for "1" page(s) 
      
    Examples: 
      | Date          |
      | This Month    | 
      | Within 1 Day  | 
      | This Week     |



  Scenario Outline: The user should be able to filters the job search by job category and required education
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Name>" from job category drop-down
    And the user select "<Level>" from Required Education
    Then the system will display the jobs that in the job category "<Name>" with Required Education "<Level>" - check for "1" page(s)
      
    Examples: 
      | Name          | Level               |
      | Automotive    | high school         | 
      | Banking       | bachelor's degree   | 
      | Nurse         | doctorate           | 

  
  Scenario Outline: The user should be able to filters the job search by job category and location
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Name>" from job category drop-down
    And the user select the state from location and choose "<State Name>"
    Then the system will display the jobs that in the job category "<Name>" within the state - using "<State Abbreviation>" - check for "1" page(s) 
      
    Examples: 
      | Name          | State Name           | State Abbreviation |
      | Automotive    | Wyoming              | WY                 |
      | Banking       | Guam                 | GU                 |
      | Nurse         | American Samoa       | AS                 |
  
   

  Scenario Outline: The user should be able to filters the job search by job category and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Name>" from job category drop-down
    And the user just select "<Type>" from employment type
    Then the system will display the jobs that in the job category "<Name>" and the Employment "<Type>" - check for "1" page(s) 
      
    Examples: 
      | Name          | Type        |
      | Automotive    | Part-Time   |
      | Banking       | Contractor  | 
      | Nurse         | Full-Time   |



  Scenario Outline: The user should be able to filters the job search by job category and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Name>" from job category drop-down
    And the user select "Date" from post date age
    Then the system will display the jobs that in the job category "<Name>" and posted in "<Date>" - check for "1" page(s) 
      
    Examples: 
      | Name          | Date          |
      | Automotive    | This Month    |
      | Banking       | Within 1 Day  | 
      | Nurse         | This Month    |


  Scenario Outline: The user should be able to filters the job search by required education and location
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Level>" from Required Education
    And the user select zip code from location and entry the "<Zip code>"
    Then the system will display the jobs with required education "<Level>" within the "<City>" that is the zip code - check for "1" page(s) 
      
    Examples: 
      | Level               | Zip code | City                      |
      | high school         | 99645    | Palmer, AK                |
      | bachelor's degree   | 92115    | San Diego, CA             |
      | doctorate           | 45440    | Kettering, OH             |

  
  Scenario Outline: The user should be able to filters the job search by required education and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Level>" from Required Education
    And the user just select "<Type>" from employment type
    Then the system will display the jobs with required education "<Level>" and the Employment "<Type>" - check for "1" page(s) 
      
    Examples: 
      | Level               | Type          |
      | high school         | Part-Time     | 
      | bachelor's degree   | Contractor    | 
      | doctorate           | Full-Time     | 

  
  Scenario Outline: The user should be able to filters the job search by required education and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "<Level>" from Required Education
    And the user select "<Date>" from post date age
    Then the system will display the jobs with required education "<Level>" that posted in "<Date>" - check for "1" page(s) 
      
    Examples: 
      | Level               | Date          |
      | high school         | This Month    | 
      | bachelor's degree   | Within 1 Day  | 
      | doctorate           | This Week     |

  
  Scenario Outline: The user should be able to filters the job search by location and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select zip code from location and entry the "<Zip code>"
    And the user just select "<Type>" from employment type
    Then the system will display the jobs within the "<City>" that is the zip code and and the Employment "<Type>" - check for "1" page(s) 
      
    Examples: 
      | Zip code | City                      | Type          |
      | 99645    | Palmer, AK                | Full-Time     | 
      | 92115    | San Diego, CA             | Contractor    |
      | 45440    | Kettering, OH             | Part-Time     | 

  
  Scenario Outline: The user should be able to filters the job search by location and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select zip code from location and entry the "<Zip code>"
    And the user select "<Date>" from post date age
    Then the system will display the jobs within the "<City>" that is the zip code and that posted in "<Date>" - check for "1" page(s) 
      
    Examples: 
      | Zip code | City                      | Date          |
      | 99645    | Palmer, AK                | This Month    | 
      | 92115    | San Diego, CA             | Within 1 Day  | 
      | 45440    | Kettering, OH             | This Month    |


  Scenario: The user should be able to filters the job search by salary and required education and job category
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    Then the system will display the jobs that offer "15000" minimum salary and required "doctorate" within the job Category "Health Care" - check for "1" page(s) 

  Scenario: The user should be able to filters the job search by salary and required education and location
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select the state from location and choose "California"
    Then the system will display the jobs that offer "15000" minimum salary and required "doctorate" and located at "CA" - check for "1" page(s) 

  Scenario: The user should be able to filters the job search by salary and required education and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary and required "doctorate" and offer "Full-Time" job - check for "1" page(s) 

  Scenario: The user should be able to filters the job search by salary and required education and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary and required "doctorate" post within "This Month" - check for "1" page(s) 


  Scenario: The user should be able to filters the job search by salary, job category and location
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, located at "CA" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by salary, job category and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, offer "Full-Time" job - check for "1" page(s)

  Scenario: The user should be able to filters the job search by salary, job category and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, posted "This Month" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by salary, location and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary, located at "CA", offer "Full-Time" job - check for "1" page(s) 

  
  Scenario: The user should be able to filters the job search by salary, location and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, located at "CA", posted "This Month" - check for "1" page(s) 


  
  Scenario: The user should be able to filters the job search by salary, employment type and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, offer "Full-Time" job, posted "This Month" - check for "1" page(s)

 
  Scenario: The user should be able to filters the job search by required education, job category and location
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, located at "CA" - check for "1" page(s) 


  Scenario: The user should be able to filters the job search by required education, job category and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, offer "Full-Time" job - check for "1" page(s)



  Scenario: The user should be able to filters the job search by required education, job category and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, posted "This Month" - check for "1" page(s)



  Scenario: The user should be able to filters the job search by required education, location and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that required "doctorate", located at "CA", offer "Full-Time" job - check for "1" page(s)


  Scenario: The user should be able to filters the job search by required education, location and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", located at "CA", posted "This Month" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by required education, employment type and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", offer "Full-Time" job, posted "This Month" - check for "1" page(s)

    
  Scenario: The user should be able to filters the job search by job category, location and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that in "Health Care" job Category, located at "CA", offer "Full-Time" job - check for "1" page(s)


  Scenario: The user should be able to filters the job search by job category, location and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that in "Health Care" job Category, located at "CA", posted "This Month" - check for "1" page(s)



  Scenario: The user should be able to filters the job search by job category, employment type and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Health Care" from job category drop-down
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that in "Health Care" job Category, offer "Full-Time" job, posted "This Month" - check for "1" page(s)

  

  Scenario: The user should be able to filters the job search by salary, required education, job category and location
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, located at "CA" - check for "1" page(s) 

  
  Scenario: The user should be able to filters the job search by salary, required education, job category and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, offer "Full-Time" job - check for "1" page(s)

  
  Scenario: The user should be able to filters the job search by salary, required education, job category and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, posted "This Month" - check for "1" page(s)


  
  Scenario: The user should be able to filters the job search by salary, job category, location and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, located at "CA", offer "Full-Time" job - check for "1" page(s)


  
  Scenario: The user should be able to filters the job search by salary, job category, location and post date age
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, located at "CA", posted "This Month" - check for "1" page(s)


  
  Scenario: The user should be able to filters the job search by salary, location and employment type and post date age 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s)



  Scenario: The user should be able to filters the job search by required education, job category, location and employment type 
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, located at "CA", offer "Full-Time" job - check for "1" page(s)



  Scenario: The user should be able to filters the job search by required education, job category, location and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, located at "CA", posted "This Month" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by required education, location, employment type and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by job category, location, employment type and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that in "Health Care" job Category, located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s)


  Scenario: The user should be able to filters the job search by salary, required education, job category, location and employment type
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, located at "CA", offer "Full-Time" job - check for "1" page(s) 


   Scenario: The user should be able to filters the job search by salary, required education, job category, location and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, located at "CA", posted "This Month" - check for "1" page(s) 
     

  Scenario: The user should be able to filters the job search by salary, job category, location, employment type and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, in "Health Care" job Category, located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s) 
     

  Scenario: The user should be able to filters the job search by required education, job category, location, employment type and post date age  
    Given the user from Home Page navigate to Jobs search Page
    When the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that required "doctorate", in "Health Care" job Category, located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s) 
     

  Scenario: The user should be able to filters the job search by salary, required education, job category, location, employment type and post date age 
    Given the user from Home Page navigate to Jobs search Page
    When the user search for "15000" minimum salary in job search
    And the user select "doctorate" from Required Education
    And the user select "Health Care" from job category drop-down
    And the user select the state from location and choose "California"
    And the user just select "Full-Time" from employment type
    And the user select "This Month" from post date age
    Then the system will display the jobs that offer "15000" minimum salary, required "doctorate", in "Health Care" job Category, located at "CA", offer "Full-Time" job, posted "This Month" - check for "1" page(s) 

    
