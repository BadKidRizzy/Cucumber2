Feature: The user with an account should be able to apply for schools

  Background: The user with an account 
    Given the user navigate to Apply Page using belove info.
        | key              | Value             |
        | First name       | Jem               |
        | Last name        | Dell              |
        | Email address    | apply_t@gmail.com |
        | Birth Month      | June              |
        | Birth Day        | 22                |
        | Birth Year       | 2001              |
        | Password         | Test123456        |
        | Confirm Password | Test123456        |
        | TOS CheckBox     | True              |


  @smoke_test
  Scenario: the user should be able to select "View Application" from apply page
    When the user select View Application
    Then the system will display below information under Application section   
      | Application info.                         |
      | Application                               |
      | About Me                                  |
      | Personal                                  |
      | Address                                   |
      | Contact                                   |
      | Education                                 |
      | Tests                                     |
      | Other Activities                          |
      | Writing & Media                           |
      


  Scenario: the user info. should be display at "View Application"
    When the user select View Application
    Then the user first and last name and also date of birth will display on personal section 
  
  
  @smoke_test
  Scenario: the user should be able to move to the next page by using Next button
    When the user select View Application
    Then the "Personal" page will display
    And the Previous button will be invisible 

    When the user click on Next button at Application page
    Then the "Address" page will display
    And the Previous button will be visible

    When the user click on Next button at Application page
    Then the "Contact" page will display
    And the Previous button will be visible

    When the user click on Next button at Application page
    Then the "Education" page will display
    And the Previous button will be visible

    When the user click on Next button at Application page
    Then the "Tests" page will display
    And the Previous button will be visible

    When the user click on Next button at Application page
    Then the "Other Activities" page will display
    And the Previous button will be visible

    When the user click on Next button at Application page
    Then the "Writing & Media" page will display
    And the Previous button will be visible
    And the Next button will be invisible

  
  @smoke_test
  Scenario: the user should be able to move to the next page by click on the page name
    When the user select View Application
    Then the "Personal" page will display
    
    When the user click on "Other Activities" link at Application page
    Then the "Other Activities" page will display

    When the user click on "Education" link at Application page
    Then the "Education" page will display

  
  @smoke_test
  Scenario: the system should display asterisk for required fields and save 
    When the user select View Application
    Then the "Personal" page will display
    And the system will display asterisk for required fields 

    When the user click on Next button at Application page
    Then the "Address" page will display
    And the system will display asterisk for required fields

    When the user click on Next button at Application page
    Then the "Contact" page will display
    And the system will display asterisk for required fields

    When the user click on Next button at Application page
    Then the "Education" page will display
    And the system will display asterisk for required fields

    When the user click on Next button at Application page
    Then the "Tests" page will display
    And the system will display asterisk for required fields

    When the user click on Next button at Application page
    Then the "Other Activities" page will display
    And the system will display asterisk for required fields

    When the user click on Next button at Application page
    Then the "Writing & Media" page will display
    And the system will display asterisk for required fields
