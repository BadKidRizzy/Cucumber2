Feature: The user should be able to login and edit the Settings

Background:
  Given the user information for registration
    | key              | Value           |
    | First name       | Jem             |
    | Last name        | Dell            |
    | Email address    | Settings@gmail.com |
    | Birth Month      | June            |
    | Birth Day        | 22              |
    | Birth Year       | 2002            |
    | Password         | Test123456      |
    | Confirm Password | Test123456      |
    | TOS CheckBox     | True            |

  Given the user reset password 
    | key              | Value           |
    | Password         | Test654321      |
    | Confirm Password | Test654321      |
  
 @smoke_test   
 Scenario: The user should be able to login and view settings page
    Given the user from Home Page navigate to Sign up Page
  	And the user register with above registration information and login
    And the system displayed the user name on the top right corner
    When the user select Settings from drop down
    Then the user will get to Settings Page
    And the user should be able to logout


Scenario: The user should be able to turn the Email and Text Notifications On or Off
    Given the user from Home Page navigate to Login Page
    And the user tries to login by providing Email address and password from above registration information
    And the system displayed the user name on the top right corner
    And the user select Settings from drop down
    When the user change and save the email and text notifications status
    And the user select Settings from drop down
    Then the system display the change of the email and text notifications status
    And the user should be able to logout
    

Scenario: The user should be able to disregard the change in the Settings
    Given the user from Home Page navigate to Login Page
    And the user tries to login by providing Email address and password from above registration information
    And the system displayed the user name on the top right corner
    And the user select Settings from drop down
    When the user change the email and text notifications but did not save it
    And the user select Settings from drop down
    Then the system will disregard the change in the Settings
    And the user should be able to logout


Scenario: The save button should be grayed out if there is no change made
    Given the user from Home Page navigate to Login Page
    And the user tries to login by providing Email address and password from above registration information
    And the system displayed the user name on the top right corner
    And the user select Settings from drop down
    When the user did not make any change in settings
    Then the save button will be grayed out
    And the user should be able to logout

@regression
Scenario: The user should be able to reset the password
    Given the user from Home Page navigate to Login Page
    And the user tries to login by providing Email address and password from above registration information
    And the system displayed the user name on the top right corner
    And the user select Settings from drop down
    When the user tries to reset the password using the above reset password
    And the user should be able to logout
    Then the user from Home Page navigate to Login Page
    And the user should be able to login with the new password
    And the system displayed the user name on the top right corner














  