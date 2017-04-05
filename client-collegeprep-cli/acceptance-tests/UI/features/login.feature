Feature: The user should be able to login with valid email address and password

Background:
  Given the user A information for registration
    | key              | Value           |
    | First name       | Jem             |
    | Last name        | Dell            |
    | Email address    | login_b111@gmail.com |
    | Birth Month      | June            |
    | Birth Day        | 22              |
    | Birth Year       | 2001            |
    | Password         | Test123456      |
    | Confirm Password | Test123456      |
    | TOS CheckBox     | True            |

  Given the user B information for registration
    | key              | Value           |
    | First name       | Bob             |
    | Last name        | Zad             |
    | Email address    | login_b2@gmail.com|
    | Birth Month      | June            |
    | Birth Day        | 22              |
    | Birth Year       | 2001            |
    | Password         | Test654321      |
    | Confirm Password | Test654321      |
    | TOS CheckBox     | True            |

  @smoke_test  
  Scenario: The user A should be able to login and logout after create a new account 
    Given the user from Home Page navigate to Login Page
    When the user A register and login with above registration information
    Then the system displayed the user A name on the top right corner
    And the user should be able to logout 

  @regression
  Scenario: The user B should be able to login and logout after create a new account 
    Given the user from Home Page navigate to Login Page
    When the user B register and login with above registration information
    Then the system displayed the user B name on the top right corner
    And the user should be able to logout 

  Scenario: The email address should not be case sensitive
    Given the user from Home Page navigate to Login Page
    When the user A tries to login by typing his Email address in capital letter and password
    Then the system displayed the user A name on the top right corner
    And the user should be able to logout 

  @regression
  Scenario: The user A should not be able to login by using the user B password 
    Given the user from Home Page navigate to Login Page
    When the user A tries to login by providing his Email address and user B password
    Then the system will not allowed user A to login


  Scenario: The user A should not be able to login by providing just email address
    Given the user from Home Page navigate to Login Page
    When the user A tries to login by just providing his Email address
    Then the system will not allowed user A to login


  Scenario: The user B should not be able to login by providing just password
    Given the user from Home Page navigate to Login Page
    When the user B tries to login by just providing his password
    Then the system will not allowed user B to login 

  @regression
  Scenario: The system should ignore the extra space after email address 
    Given the user from Home Page navigate to Login Page
    When the user A tries to login using email address with extra empty space
    Then the system should not display error message  


  