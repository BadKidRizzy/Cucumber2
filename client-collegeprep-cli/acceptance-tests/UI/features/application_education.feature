Feature: The user with an account should be able to save education data

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
        
    And the user select View Application

  @smoke_test
  Scenario: the system should provide below info under education data
    When the user click on "Education" link at Application page
    And the user delete all Education data record
    Then the system will display below information under Education section   
      | education data  |
      | Education       |
      | Previous        |
      | Next            |
      | Name            |
      | Subject         |
      | Description     |
      | Score           |
      | Start date      |
      | End date        |
      | Graduation date |
      | Save            |
      | Previous        |
      |                 |
      | Next            |


  @smoke_test
  Scenario: the Save button should be disable until the user enter all required fields
    When the user click on "Education" link at Application page
    Then the Save button would be disable 


  @regression
  Scenario: the user should be to enter, save, edit and delete the education data
    Given the user click on "Education" link at Application page
    And the user delete all Education data record
    When the user enter the education data based on below info
      | key             | Value          |
      | Name            | CH             |
      | Subject         | SAT            |
      | Description     |                |
      | Score           | 1250           |
      | Start date      | 06/2013        |
      | End date        | 07/2017        |
      | Graduation date | 07/2017        |
         
    Then the Save button will be enable
    And the user will lose the education data if navigate to any page before saving the data

    When the user enter the education data based on below info
      | key             | Value          |
      | Name            | CH             |
      | Subject         | SAT            |
      | Description     |                |
      | Score           | 1250           |
      | Start date      | 06/2013        |
      | End date        | 07/2017        |
      | Graduation date | 07/2017        |

    And the user save the data 
    Then the system will save and display the education data and display the below info if the user navigate to any page and return 
      | key             | Value          |
      | Name            | CH             |
      | Subject         | SAT            |
      | Score           | 1250           |
      | Graduation date | 07/2017        |
      | Action          | Edit           |
      | Action          | Delete         | 
    
    When the user select Edit action 
    Then the education data will be displayed in edit mode
      | key             | Value          |
      | Name            | CH             |
      | Subject         | SAT            |
      | Description     |                |
      | Score           | 1250           |
      | Start date      | June 2013      |
      | End date        | July 2017      |
      | Graduation date | July 2017      |
    

    When the user edit the education data based on below info
      | key             | Value          |
      | Name            | Adams          |
      | Subject         | SAT-1          |
      | Description     | test           |
      | Score           | 1350           |
      | Start date      | 07/2014        |
      | End date        | 08/2018        |
      | Graduation date | 08/2018        |

    Then the system will save and display the new education data
      | key             | Value          |
      | Name            | Adams          |
      | Subject         | SAT-1          |
      | Score           | 1350           |
      | Graduation date | 08/2018        |

    When the user select Delete action 
    Then the education data has been deleted
    And the user should be able to logout 




    


  