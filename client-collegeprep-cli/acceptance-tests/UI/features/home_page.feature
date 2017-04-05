Feature: The system will display some useful information in home page 
    
  @smoke_test
  Scenario: The home page should display Favorites, Assessments and Highlights
    When the user on the Home Page
    Then the Favorites section will display
    Then the Assessments section will display 
    Then the Highlights section will display 

  @smoke_test
  Scenario: The system should force the user to login if try to select Favorites
    When the user on the Home Page
    Then the favorites button should be disable
    
 
  Scenario: The user should be able to ignore any selection in Favorites section
    When the user on the Home Page
    Then the X button should be click-able

    When the user click X button in Favorites section
    Then the system will display new selection in Favorites section

  @smoke_test
  Scenario: The user should provide Schools, Majors and Occupations details in Favorites section
    When the user on the Home Page
    Then the "Schools" favorites should be click-able
    Then the "Majors" favorites should be click-able
    Then the "Occupations" favorites should be click-able
   

  Scenario: The user should be able to search for school if select Schools under Favorites section
    Given the user on the Home Page
    When the user select favorites "Schools"  
    Then the system display "You haven’t added any favorites yet. Click the next to any School you want to save." under Schools

    When the user select "Search Schools" button under Schools
    Then the system navigate the user to Search "Schools" page
    

  Scenario: The user should be able to search for majors if select Majors under Favorites section
    Given the user on the Home Page
    When the user select favorites "Majors"  
    Then the system display "You haven’t added any favorites yet. Click the next to any Major you want to save." under Majors

    When the user select "Search Majors" button under Majors
    Then the system navigate the user to Search "Majors" page

  
  Scenario: The user should be able to search for occupations if select Occupations under Favorites section
    Given the user on the Home Page
    When the user select favorites "Occupations" 
    Then the system display "You haven’t added any favorites yet. Click the next to any Occupation you want to save." under Occupations

    When the user select "Search Occupations" button under Occupations
    Then the system navigate the user to Search "Occupations" page
  
  
  @smoke_test
  Scenario: The system should force the user to login if try to select Assessments
    When the user on the Home Page
    Then the Start Now button should be disable


  Scenario: The system should provide some Highlights to the user
    When the user on the Home Page
    Then the system will display some Highlights
    And the system will display "Read more" link


  @regression
  Scenario: the user with an account should be able to select favorites Schools, Majors and/ or Occupations
    Given the user from Home Page navigate to Login Page
    And the user A register and login 
        | key              | Value           |
        | First name       | Jem             |
        | Last name        | Dell            |
        | Email address    | login_b1@gmail.com |
        | Birth Month      | June            |
        | Birth Day        | 22              |
        | Birth Year       | 2001            |
        | Password         | Test123456      |
        | Confirm Password | Test123456      |
        | TOS CheckBox     | True            |
    When the user select favorite from top right corner
    And user should be able to clear the favorite Schools, Majors and / or occupations
    
    When the user click 5 times on favorite button
    Then the system display it under favorite Schools, Majors or occupations
    And the user should be able to logout 




