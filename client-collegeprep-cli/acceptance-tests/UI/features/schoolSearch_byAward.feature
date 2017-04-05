Feature: The user should be able to filter the search result by award 

  @smoke_test
  Scenario: The system should provide certificate, associate, bachelor, and advanced filter and reset for the award  
    Given the user from Home Page navigate to School search Page
    When the user select certificate
    Then the certificate filter would be selected
    When the user select associate
    Then the associate filter would be selected
    When the user select bachelor
    Then the bachelor filter would be selected
    When the user select advanced
    Then the advanced filter would be selected
    When the user select the award reset button
    Then the certificate, associate, bachelor, and advanced filter should be unchecked


  Scenario Outline: The user should be able to filter the search by certificate 
    Given the user from Home Page navigate to School search Page
    When the user select certificate
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate by "<Full name>"
    
  Examples: 
    | Full name                           |
    | University of Alabama in Huntsville |
    | Pima Medical Institute-Tucson       |
    | University of Alaska Anchorage      |
    | Northeast Alabama Community College |


  Scenario Outline: The user should be able to filter the search by associate 
    Given the user from Home Page navigate to School search Page
    When the user select associate
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers associate by "<Full name>"
    
  Examples: 
    | Full name              |
    | Aaniiih Nakoda College |
    | Aquinas College        |
    | Ball State University  |
    | Cabrillo College       |

    
  Scenario Outline: The user should be able to filter the search by bachelor 
    Given the user from Home Page navigate to School search Page
    When the user select bachelor
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers bachelor by "<Full name>"

  Examples: 
    | Full name                      |
    | Babson College                 |
    | Adelphi University             |
    | Alaska Pacific University      |
    | Antioch University-Los Angeles |

    
  Scenario Outline: The user should be able to filter the search by advanced 
    Given the user from Home Page navigate to School search Page
    When the user select advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers advanced by "<Full name>"

  Examples: 
    | Full name                     |
    | Chatham University            |
    | Denver Seminary               |
    | Fontbonne University          |
    | Hope International University |



  Scenario Outline: The user should be able to filter the search by certificate and associate 
    Given the user from Home Page navigate to School search Page
    When the user select certificate and associate
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate and associate by "<Full name>"

  Examples:  
    | Full name                           |
    | University of Alabama in Huntsville |
    | Pima Medical Institute-Tucson       |
    | Aaniiih Nakoda College              |
    | Aquinas College                     |


  Scenario Outline: The user should be able to filter the search by certificate and bachelor 
    Given the user from Home Page navigate to School search Page
    When the user select certificate and bachelor
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate and bachelor by "<Full name>"

  Examples: 
    | Full name                           |
    | University of Alaska Anchorage      |
    | Northeast Alabama Community College |
    | Babson College                      |
    | Adelphi University                  |

  
  Scenario Outline: The user should be able to filter the search by certificate and advanced  
    Given the user from Home Page navigate to School search Page
    When the user select certificate and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate and advanced by "<Full name>"
    
  Examples: 
    | Full name                           |
    | University of Alabama in Huntsville |
    | Pima Medical Institute-Tucson       |
    | Chatham University                  |
    | Denver Seminary                     |


  Scenario Outline: The user should be able to filter the search by associate and bachelor 
    Given the user from Home Page navigate to School search Page
    When the user select associate and bachelor
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers associate and bachelor by "<Full name>"
    
  Examples: 
    | Full name                      |
    | Ball State University          |
    | Cabrillo College               |
    | Alaska Pacific University      |
    | Antioch University-Los Angeles |



  Scenario Outline: The user should be able to filter the search by associate and advanced 
    Given the user from Home Page navigate to School search Page
    When the user select associate and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers associate and advanced by "<Full name>"

  Examples: 
    | Full name                     |
    | Aaniiih Nakoda College        |
    | Aquinas College               |
    | Fontbonne University          |
    | Hope International University |

  
  Scenario Outline: The user should be able to filter the search by bachelor and advanced  
    Given the user from Home Page navigate to School search Page
    When the user select bachelor and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers bachelor and advanced by "<Full name>"
    
  Examples: 
    | Full name                      |
    | Alaska Pacific University      |
    | Antioch University-Los Angeles |
    | Fontbonne University           |
    | Hope International University  |


  Scenario Outline: The user should be able to filter the search by certificate, associate and bachelor 
    Given the user from Home Page navigate to School search Page
    When the user select certificate, associate and bachelor 
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate, associate and bachelor by "<Full name>"
    
  Examples: 
    | Full name                           |
    | University of Alaska Anchorage      |
    | Northeast Alabama Community College |
    | Ball State University               |
    | Cabrillo College                    |
    | Fontbonne University                |
    | Hope International University       |


  Scenario Outline: The user should be able to filter the search by certificate, associate and advanced 
    Given the user from Home Page navigate to School search Page
    When the user select certificate, associate and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate, associate and advanced by "<Full name>"
    
  Examples: 
    | Full name                           |
    | University of Alaska Anchorage      |
    | Northeast Alabama Community College |
    | Ball State University               |
    | Cabrillo College                    |
    | Fontbonne University                |
    | Hope International University       |


  Scenario Outline: The user should be able to filter the search by associate, bachelor and advanced  
    Given the user from Home Page navigate to School search Page
    When the user select associate, bachelor and advanced 
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers associate, bachelor and advanced by "<Full name>"

  Examples: 
    | Full name                 |
    | Ball State University     |
    | Cabrillo College          |
    | Adelphi University        |
    | Alaska Pacific University |
    | Denver Seminary           |
    | Fontbonne University      |


  Scenario Outline: The user should be able to filter the search by certificate, bachelor and advanced  
    Given the user from Home Page navigate to School search Page
    When the user select certificate, bachelor and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate, bachelor and advanced by "<Full name>"
    
  Examples: 
    | Full name                      |
    | Pima Medical Institute-Tucson  |
    | University of Alaska Anchorage |
    | Alaska Pacific University      |
    | Antioch University-Los Angeles |
    | Fontbonne University           |
    | Hope International University  |


  Scenario Outline: The user should be able to filter the search by certificate, associate, bachelor and advanced  
    Given the user from Home Page navigate to School search Page
    When the user select certificate, associate, bachelor and advanced
    And the user search for the university by "<Full name>"
    Then the result will only show school(s) that offers certificate, associate, bachelor and advanced by "<Full name>"
    When the user select the award reset button
    Then the result will only show school(s) that offers certificate, associate, bachelor and advanced by "<Full name>"

  Examples: 
    | Full name                           |
    | University of Alabama in Huntsville |
    | Pima Medical Institute-Tucson       |
    | Aaniiih Nakoda College              |
    | Aquinas College                     |
    | Babson College                      |
    | Adelphi University                  |
    | Chatham University                  |
    | Denver Seminary                     |


Scenario Outline: The user should be able to filter the search by certificate, associate, bachelor and advanced  
    Given the user from Home Page navigate to School search Page
    And the user search for "<Full name>" of the university
    When the user select certificate
    Then the result will show school if the school offers "<Certificate>" degree 
    When the user select associate
    Then the result will show school if the school offers "<Associate>" degree 
    When the user select bachelor
    Then the result will show school if the school offers "<Bachelor>" degree 
    When the user select advanced
    Then the result will show school if the school offers "<Advanced>" degree 

  Examples: 
    | Full name                                | Certificate | Associate | Bachelor | Advanced |
    | Northern Virginia Community College      | true        | true      | false    | false    |
    | Anna Maria College                       | false       | false     | true     | true     |
    | Yeshiva Shaar Hatorah                    | false       | false     | true     | true     |
    | White Earth Tribal and Community College | false       | true      | false    | false    |
    | Western Dakota Technical Institute       | false       | true      | false    | false    |
    | Villa Maria College                      | false       | true      | true     | false    |
    | Vet Tech Institute                       | false       | true      | false    | false    |
    | Urbana University                        | false       | true      | true     | true     |
    | Trocaire College                         | false       | true      | true     | false    |
    | Herzing University-Birmingham            | true        | true      | true     | true     |





