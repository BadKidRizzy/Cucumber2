Feature: The user should be able to filter the search result by tuition 

  @regression
  Scenario Outline: The user should be able to filter the search result by the minimum amount for tuition
    Given the user from Home Page navigate to School search Page
    When the user type the minimum "<amount>" for tuition
    Then the search result will only show schools with tuition the same as or more than the minimum "<amount>"

  Examples: 
    | amount  |
    | 47913   |
    | 48800   |

  Scenario Outline: The user should be able to filter the search result by the maximum amount for tuition
    Given the user from Home Page navigate to School search Page
    When the user type the maximum "<amount>" for tuition
    Then the search result will only show schools with tuition the same as or less than the maximum "<amount>"

  Examples: 
    | amount  |
    | 500     |
    | 3330    |

  Scenario Outline: The user should be able to filter the search result by the minimum and maximum amount for tuition
    Given the user from Home Page navigate to School search Page
    When the user type the "<minimum>" and "<maximum>" amount for tuition
    Then the search result will only show schools with tuition range between the "<minimum>" and "<maximum>" amount

  Examples: 
    | minimum | maximum |
    | 46000   | 47000   |
    | 6500    | 7000    |

  Scenario Outline: The user should be able to filter the search by minimum and maximum amount for tuition 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    Then the result will show school(s) by "<Full name>"
    
    When the user type the minimum "49000" that not in the school tuition range 
    Then the result will not show school(s) by "<Full name>"
    
    When the user type the maximum "9000" that not in the school tuition range 
    Then the result will not show school(s) by "<Full name>"

  Examples: 
    | Full name         | 
    | Williams College  |
    | Vassar College    |


  Scenario Outline: The user should be able to filter the search by minimum and maximum amount for tuition 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    Then the result will show school(s) by "<Full name>"
    
    When the user type the minimum "1741" that not in the school tuition range 
    Then the result will not show school(s) by "<Full name>"
    
    When the user type the maximum "1739" that not in the school tuition range 
    Then the result will not show school(s) by "<Full name>"

  Examples: 
    | Full name               |
    | Aaniiih Nakoda College  |


  Scenario Outline: The user should be able to filter the search by minimum and maximum amount for tuition 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    Then the result will show school(s) by "<Full name>"

    When the user type the minimum "17501" that not in the school tuition range 
    Then the result will not show school(s) by "<Full name>"
    
    When the user type the minimum "17500" for tuition
    Then the result will show school(s) by "<Full name>"
    
    When the user type the maximum "17499" that not in the school tuition range
    Then the result will not show school(s) by "<Full name>"

    When the user type the maximum "17500" for tuition
    Then the result will show school(s) by "<Full name>"
    

  Examples: 
    | Full name        |
    | Academy College  |
    

Scenario Outline: The user should be able to filter the search by minimum and maximum amount for In State Tuition Fees 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    Then the result will show school(s) by "<Full name>"
    
    When the user type the "<minimum>" and "<maximum>" amount for tuition
    Then the result will show school(s) by "<Full name>"

  Examples: 
    | Full name                          | In State Tuition Fees | minimum | maximum |
    | University of California-Riverside | 13407                 | 13400   | 13500   |
    | Bay Mills Community College        | 2660                  | 2655    | 2665    |
    
