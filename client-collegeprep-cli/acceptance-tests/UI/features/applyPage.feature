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
  Scenario: the system should provide "Compare" and "View Application" on apply page
    When Apply page will display 
    Then Compare button will display
    And View Application will display
    And the user should be able to logout  


  


