Feature: The user should be able to filter the search result by campus setting 

  @smoke_test
  Scenario: The system should provide city, suburban, town, rural, and reset for campus setting  
    Given the user from Home Page navigate to School search Page
    When the user select city
    Then the city filter be selected
    When the user select suburban
    Then the suburban filter be selected
    When the user select town
    Then the town filter be selected
    When the user select rural
    Then the rural filter be selected
    When the user select the campus setting reset button
    Then the city, suburban, town, and rural filter should be unchecked

  @smoke_test
  Scenario: The user should be able to close the filter by clicking on x 
    Given the user from Home Page navigate to School search Page
    When the user select city
    Then the city filter be selected
    When the user click on x 
    Then the city filter should be unchecked

    When the user select suburban
    Then the suburban filter be selected
    When the user click on x 
    Then the suburban filter should be unchecked

    When the user select town
    Then the town filter be selected
    When the user click on x 
    Then the town filter should be unchecked

    When the user select rural
    Then the rural filter be selected
    When the user click on x 
    Then the rural filter should be unchecked


  Scenario Outline: The user should be able to filter the search by city 
    Given the user from Home Page navigate to School search Page
    When the user select city
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) in the city by "<Full name>"

    When the user select suburban
    Then the result will not show school(s) in the suburban by "<Full name>"

    When the user select town
    Then the result will not show school(s) in the town by "<Full name>"

    When the user select rural
    Then the result will not show school(s) in the rural by "<Full name>"

    
  Examples: 
    | Full name                           |
    | University of Alabama at Birmingham |
    | South University-Montgomery         |
    | University of North Alabama         |
    | University of Alaska Anchorage      |

  Scenario Outline: The user should be able to filter the search by suburban 
    Given the user from Home Page navigate to School search Page
    When the user select suburban
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) in the suburb by "<Full name>"

    When the user select city
    Then the result will not show school(s) in the city by "<Full name>"

    When the user select town
    Then the result will not show school(s) in the town by "<Full name>"

    When the user select rural
    Then the result will not show school(s) in the rural by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Adelphi University               |
    | Barry University                 |
    | Yuba College                     |
    | Wheaton College                  |

  Scenario Outline: The user should be able to filter the search by town 
    Given the user from Home Page navigate to School search Page
    When the user select town
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) in the town by "<Full name>"

    When the user select city
    Then the result will not show school(s) in the city by "<Full name>"

    When the user select suburban
    Then the result will not show school(s) in the suburban by "<Full name>"

    When the user select rural
    Then the result will not show school(s) in the rural by "<Full name>"

   Examples: 
    | Full name                                 |
    | Abraham Baldwin Agricultural College      |
    | Brevard College                           |
    | Cedarville University                     |
    | Defiance College                          |

  Scenario Outline: The user should be able to filter the search by rural
    Given the user from Home Page navigate to School search Page
    When the user select rural
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) in the rural by "<Full name>"

    When the user select city
    Then the result will not show school(s) in the city by "<Full name>"

    When the user select suburban
    Then the result will not show school(s) in the suburban by "<Full name>"

    When the user select town
    Then the result will not show school(s) in the town by "<Full name>"

    Examples: 
    | Full name                        |
    | Ancilla College                  |
    | Butte College                    |
    | Cecil College                    |
    | Edgecombe Community College      |
