Feature: The user with an account should be able to save profile data

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
        | Gender           | M                 |
        | Ethnicity        | Not Hispanic nor Latino  |
        | Race             | White                    |
    And the user select View Application


  @smoke_test
  Scenario: the system should provide below info under profile data
    When the "Personal" page will display 
    Then the system will display below information under Personal section   
      | profile data                              |
      | Personal                                  |
      | Next                                      |
      | First name                                |
      | Middle name                               |
      | Last name                                 |
      | Date of birth                             |
      | Gender                                    |
      | Female                                    |
      | Male                                      |
      | Race                                      |
      |                                           |
      | American Indian or Alaska Native          |
      | Asian                                     |
      | Black or African American                 |
      | Native Hawaiian or Other Pacific Islander |
      | White                                     |
      | Ethnicity                                 |
      |                                           |
      | Hispanic or Latino                        |
      | Not Hispanic nor Latino                   |
      | Save                                      |
      |                                           |
      | Next                                      |

    When the user click on "Address" link at Application page
    And the user delete all Address data record
    Then the system will display below information under Address section   
      | profile data                              |
      | Address                                   |
      | Next                                      |
      | Street Address                            |
      | City                                      |
      | State                                     |
      | ZIP Code                                  |
      | Previous                                  |
      |                                           |
      | Save                                      |
      | Next                                      |

    When the user click on "Contact" link at Application page
    And the user delete all Contact info record
    Then the system will display below information under Contact section   
      | profile data                              |
      | Contact                                   |
      | Next                                      |
      | Name                                      |
      | Phone                                     |
      | Email                                     |
      | Relation                                  |
      | Previous                                  |
      |                                           |
      | Save                                      |
      | Next                                      |

  @regression
  Scenario: the Save button should be disable until the user enter all required fields
    When the "Personal" page will display 
    Then the Save button would be disable 

    When the user click on "Address" link at Application page
    Then the Save button would be disable 

    When the user click on "Contact" link at Application page
    Then the Save button would be disable
  
  
  @regression
  Scenario: the user should be to change and save personal information
    Given the user delete all Personal info record
    When the user change the Personal info based on above info
    Then the Save button will be enable
    And the user will lose the personal info if navigate to any page before saving the data

    When the user change the Personal info based on above info
    And the user save the data 
    Then the system will save and display the personal info if the user navigate to any page and return  
    
  
  Scenario: the user personal information should be same as profile information
    When the user change the Personal info based on above info
    And the user save the data 
    Then the change will be reflected on profile information


  @regression
  Scenario: the user should be to enter, save, edit and delete the address
    Given the user click on "Address" link at Application page
    And the user delete all Address data record
    When the user enter the address based on below info
      | key             | Value           |
      | Street Address  | 123 Test St.    |
      | City            | CenterVille     |
      | State           | Virginia        |
      | Zip Code        | 20120           |
         
    Then the Save button will be enable
    And the user will lose the address if navigate to any page before saving the data

    When the user enter the address based on below info
      | key             | Value           |
      | Street Address  | 123 Test St.    |
      | City            | CenterVille     |
      | State           | Virginia        |
      | Zip Code        | 20120           |
    And the user save the data 
    Then the system will save and display the address if the user navigate to any page and return  
    
    When the user select Edit action 
    Then the address will be displayed in edit mode
      | key             | Value           |
      | Street Address  | 123 Test St.    |
      | City            | CenterVille     |
      | State           | Virginia        |
      | Zip Code        | 20120           |
    

    When the user edit the address based on below info
      | key             | Value           |
      | Street Address  | 1234 Test St.   |
      | City            | Centreville     |
      | State           | Virginia        |
      | Zip Code        | 20121           |
    Then the system will save and display the new address

    When the user select Delete action 
    Then the address has been deleted


  @regression
  Scenario: the user should be to enter, save, edit and delete the contact info
    Given the user click on "Contact" link at Application page
    And the user delete all Contact info record
    When the user enter the contact info based on below info
      | key             | Value           |
      | Name            | Lee             |
      | Phone           | (123) 456-7890  |
      | Email           | t@t.com         |
      | Relation        | father          |
         
    Then the Save button will be enable
    And the user will lose the contact info if navigate to any page before saving the data

    When the user enter the contact info based on below info
      | key             | Value           |
      | Name            | Lee             |
      | Phone           | (123) 456-7890  |
      | Email           | t@t.com         |
      | Relation        | father          |
    And the user save the data 
    Then the system will save and display the contact info if the user navigate to any page and return  
    
    When the user select Edit action 
    Then the contact info will be displayed in edit mode
      | key             | Value           |
      | Name            | Lee             |
      | Phone           | (123) 456-7890  |
      | Email           | t@t.com         |
      | Relation        | father          |
    

    When the user edit the contact info based on below info
      | key             | Value           |
      | Name            | Lee Ji          |
      | Phone           | (222) 333-4444  |
      | Email           | li@t.com        |
      | Relation        |                 |
    Then the system will save and display the new contact info

    When the user select Delete action 
    Then the contact info has been deleted
    And the user should be able to logout 




    


  