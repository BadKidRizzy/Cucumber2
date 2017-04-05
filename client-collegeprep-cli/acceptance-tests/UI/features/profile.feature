Feature: The user should be able to login and edit the Profile  

Background:
  Given the user information for registration
      | key              | Value           |
      | First name       | Kev             |
      | Last name        | Dell            |
      | Email address    | profile_b1@gmail.com |
      | Birth Month      | June            |
      | Birth Day        | 22              |
      | Birth Year       | 2001            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

  Given the user information for edittion  
      | key              | Value                    |
      | First name       | Kev                      |
      | Last name        | Delle                    |
      | High School      | Centreville              |
      | Gender           | M                        |
      | Citizenship      | United States            |
      | Ethnicity        | Not Hispanic nor Latino  |
      | Race             | White                    |
      | Birth Month      | June                     |
      | Birth Day        | 23                       |
      | Birth Year       | 2002                     |
      | Email address    | profile_b2@gmail.com         |
      | Phone Number     | (203) 444-5555           |
      | Password         | Test123456               |

  Given the user information for canceltion  
      | key              | Value                    |
      | First name       | Kev                      |
      | Last name        | Dellowr                  |
      | High School      | Centreville              |
      | Gender           | M                        |
      | Citizenship      | United States            |
      | Ethnicity        | Not Hispanic nor Latino  |
      | Race             | White                    |
      | Birth Month      | June                     |
      | Birth Day        | 21                       |
      | Birth Year       | 1999                     |
      | Email address    | profile_b3@gmail.com         |
      | Phone Number     | (203) 444-6666           |
      | Password         | Test123456               |

  Scenario: The user should be able to logout after create a new account 
    Given the user from Home Page navigate to Sign up Page
  	When the user register with above registration information
    Then the system displayed the user name - form above registration information - on the top right corner
    And the user should be able to logout 

  @smoke_test
  Scenario: The user should be able to login and logout if has an account 
    Given the user from Home Page navigate to Login Page
    When the user login by providing Email address and Password from above registration information
    Then the system displayed the user name - form above registration information - on the top right corner
    And the user should be able to logout 

  
  Scenario: The user should be able to view the profile after registered 
    Given the user from Home Page navigate to Login Page
    And the user login by providing Email address and Password from above registration information
    And the system displayed the user name - form above registration information - on the top right corner
    When the user select Profile from drop down
    Then the user will view 'Full Name', 'Email address' and 'Birth date' at the profile match with above registration information
    And the user should be able to logout 

  
  @regression
  Scenario: The user should be able to edit and save the profile after login 
    Given the user from Home Page navigate to Login Page
    And the user login by providing Email address and Password from above registration information
    And the system displayed the user name - form above registration information - on the top right corner
    When the user select Profile from drop down
    And the user edit and save the profile based on the above edition information
    Then the user will view the change that made based on the above edition information into the profile
    And the user should be able to logout

  # @regression
  # Scenario: The user should be able to login with updated email address
  #   Given the user from Home Page navigate to Login Page
  #   And the user login by providing Email address and Password from above edition information
  #   And the system displayed the user name - form above edition information - on the top right corner
  #   When the user select Profile from drop down
  #   Then the user will view the change that made based on the above edition information into the profile
  #   And the user should be able to logout 


  Scenario: The user should be able to disregard the change into the profile
    Given the user from Home Page navigate to Login Page
    And the user login by providing Email address and Password from above canceltion information
    And the system displayed the user name - form above edition information - on the top right corner
    When the user select Profile from drop down
    And the user edit the profile but did not save the information 
    Then the system should not make any change into the profile
    