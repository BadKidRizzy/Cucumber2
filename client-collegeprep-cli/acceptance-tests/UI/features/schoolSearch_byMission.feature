Feature: The user should be able to filter the search result by special mission 

  @smoke_test
  Scenario: The system should provide HBCU, Hispanic-Serving, tribal, religious affiliation, single sex-male, single sex-female and reset for special mission 
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    Then the HBCU filter be selected
    When the user select Hispanic-serving
    Then the Hispanic-serving filter be selected
    When the user select tribal
    Then the tribal filter be selected
    When the user select religious affiliation
    Then the religious affiliation filter be selected
    When the user select male
    Then the male filter be selected
    When the user select female
    Then the female filter be selected
    When the user select the special mission reset button
    Then the HBCU, Hispanic-serving, tribal, religious affiliation, male, and female filter should be unchecked

  @regression
  Scenario: The user should be able to close the filter by clicking on x 
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    Then the HBCU filter be selected
    When the user click on x 
    Then the HBCU filter should be unchecked

    When the user select Hispanic-serving
    Then the Hispanic-serving filter be selected
    When the user click on x 
    Then the Hispanic-serving filter should be unchecked

    When the user select tribal
    Then the tribal filter be selected
    When the user click on x 
    Then the tribal filter should be unchecked

    When the user select religious affiliation
    Then the religious affiliation filter be selected
    When the user click on x 
    Then the religious affiliation filter should be unchecked

    When the user select male
    Then the male filter be selected
    When the user click on x 
    Then the male filter should be unchecked

    When the user select female
    Then the female filter be selected
    When the user click on x 
    Then the female filter should be unchecked

  
  Scenario Outline: The user should be able to filter the search by HBCU
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select Hispanic-serving with other filter 
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select tribal with other filter
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select religious affiliation with other filter
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select male with other filter
    Then the result will only show school(s) with HBCU mission by "<Full name>"
    
    When the user select female with other filter
    Then the result will only show school(s) with HBCU mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Alabama A & M University         |
    | Benedict College                 |
    | Clinton College                  |
    | Fisk University                  |

  
  Scenario Outline: The user should be able to filter the search by Hispanic-serving
    Given the user from Home Page navigate to School search Page
    When the user select Hispanic-serving
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select HBCU with other filter 
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select tribal with other filter
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select religious affiliation with other filter
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select male with other filter
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"
    
    When the user select female with other filter
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Azusa Pacific University         |
    | Barry University                 |
    | Cerritos College                 |
    | Galveston College                |

  
  Scenario Outline: The user should be able to filter the search by tribal
    Given the user from Home Page navigate to School search Page
    When the user select tribal
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with tribal mission by "<Full name>"

    When the user select HBCU with other filter 
    Then the result will only show school(s) with tribal mission by "<Full name>"

    When the user select Hispanic-serving with other filter
    Then the result will only show school(s) with tribal mission by "<Full name>"

    When the user select religious affiliation with other filter
    Then the result will only show school(s) with tribal mission by "<Full name>"

    When the user select male with other filter
    Then the result will only show school(s) with tribal mission by "<Full name>"
    
    When the user select female with other filter
    Then the result will only show school(s) with tribal mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Aaniiih Nakoda College           |
    | Bay Mills Community College      |
    | Chief Dull Knife College         |
    | Dine College                     |

  
  Scenario Outline: The user should be able to filter the search by religious affiliation
    Given the user from Home Page navigate to School search Page
    When the user select religious affiliation
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select HBCU with other filter 
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select tribal with other filter
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select Hispanic-serving with other filter
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select male with other filter
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"
    
    When the user select female with other filter
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Abilene Christian University     |
    | Barry University                 |
    | Baptist Bible College            |
    | Young Harris College             |


  Scenario Outline: The user should be able to filter the search by male
    Given the user from Home Page navigate to School search Page
    When the user select male
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with male mission by "<Full name>"
    
    When the user select HBCU with other filter 
    Then the result will only show school(s) with male mission by "<Full name>"

    When the user select tribal with other filter
    Then the result will only show school(s) with male mission by "<Full name>"

    When the user select religious affiliation with other filter
    Then the result will only show school(s) with male mission by "<Full name>"

    When the user select Hispanic-serving with other filter
    Then the result will only show school(s) with male mission by "<Full name>"
    
    When the user select female with other filter
    Then the result will only show school(s) with male mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Bais Medrash Elyon               |
    | Beth Medrash Govoha              |
    | Rabbinical College Telshe        |
    | Yeshivath Viznitz                |

  
  Scenario Outline: The user should be able to filter the search by female
    Given the user from Home Page navigate to School search Page
    When the user select female
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with female mission by "<Full name>"
    
    When the user select HBCU with other filter 
    Then the result will only show school(s) with female mission by "<Full name>"

    When the user select tribal with other filter
    Then the result will only show school(s) with female mission by "<Full name>"

    When the user select religious affiliation with other filter
    Then the result will only show school(s) with female mission by "<Full name>"

    When the user select male with other filter
    Then the result will only show school(s) with female mission by "<Full name>"
    
    When the user select Hispanic-serving with other filter
    Then the result will only show school(s) with female mission by "<Full name>"
    
  Examples: 
    | Full name               |
    | Barnard College         |
    | Cottey College          |
    | Spelman College         |



  Scenario Outline: The system should not display opposite gender based on sex selected - male
    Given the user from Home Page navigate to School search Page
    When the user select male
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with male mission by "<Full name>"
    When the user select female
    Then the result will not show school(s) with male mission by "<Full name>"
    
  Examples: 
    | Full name                        |
    | Bais Medrash Elyon               |
    | Beth Medrash Govoha              |
    | Rabbinical College Telshe        |
    | Yeshivath Viznitz                |

  
  Scenario Outline: The system should not display opposite gender based on sex selected - female
    Given the user from Home Page navigate to School search Page
    When the user select female
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with female mission by "<Full name>"
    When the user select male
    Then the result will not show school(s) with female mission by "<Full name>"
    
  Examples: 
    | Full name               |
    | Barnard College         |
    | Cottey College          |
    | Spelman College         |


  Scenario Outline: The user should be able to filter the search by HBCU and Hispanic-serving when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select Hispanic-serving
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

  Examples: 
    | Full name                 |
    | Meharry Medical College   |
    | St Philip's College       |


  Scenario Outline: The user should be able to filter the search by HBCU and religious affiliation when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select religious affiliation
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

  Examples: 
    | Full name         |
    | Talladega College |
    | Voorhees College  |


  Scenario Outline: The user should be able to filter the search by HBCU and male when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select male
    Then the result will only show school(s) with male mission by "<Full name>"

  Examples: 
    | Full name           |
    | Morehouse College   |


  Scenario Outline: The user should be able to filter the search by HBCU and female when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select female
    Then the result will only show school(s) with female mission by "<Full name>"

  Examples: 
    | Full name       |
    | Spelman College |
    | Bennett College |
    

  Scenario Outline: The user should be able to filter the search by Hispanic-serving and religious affiliation when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select Hispanic-serving
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select religious affiliation
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

  Examples: 
    | Full name       |
    | Azusa Pacific University |
    | Saint Mary's College of California |
    | Saint Edward's University |

  
  Scenario Outline: The user should be able to filter the search by religious affiliation and male when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select religious affiliation
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select male
    Then the result will only show school(s) with male mission by "<Full name>"

  Examples: 
    | Full name                   |
    | Talmudic College of Florida |
    | United Talmudical Seminary  |
    | Beis Medrash Heichal Dovid  |


  Scenario Outline: The user should be able to filter the search by religious affiliation and female when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select religious affiliation
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select female
    Then the result will only show school(s) with female mission by "<Full name>"

  Examples: 
    | Full name                                                 |
    | Saint Mary's College                                      |
    | Bennett College                                           |
    | Alegent Creighton Health School of Radiologic Technology  |


 Scenario Outline: The user should be able to filter the search by HBCU, Hispanic-serving, and religious affiliation when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select Hispanic-serving
    Then the result will only show school(s) with Hispanic-serving mission by "<Full name>"

    When the user select religious affiliation
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

  Examples: 
    | Full name       |
    | Meharry Medical College |   


 Scenario Outline: The user should be able to filter the search by HBCU, religious affiliation and female when it's offer them
    Given the user from Home Page navigate to School search Page
    When the user select HBCU
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) with HBCU mission by "<Full name>"

    When the user select religious affiliation
    Then the result will only show school(s) with religious affiliation mission by "<Full name>"

    When the user select female
    Then the result will only show school(s) with female mission by "<Full name>"

  Examples: 
    | Full name       |
    | Bennett College |   

