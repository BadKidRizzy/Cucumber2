Feature: The user should be able to search for school by all combination filters 
    
@regression
Scenario Outline: The user should be able to search for school by school type and award
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select bachelor
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                  |
  | University of West Alabama |
  | University of Arkansas     |


Scenario Outline: The user should be able to search for school by school type and award
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select advanced
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                      |
  | Auburn University              |
  | University of Colorado Boulder |

@regression
Scenario Outline: The user should be able to search for school by school type and size
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    And the user select medium
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                   |
  | Florida Career College-Miami|
  | DeVry University-California |
  

Scenario Outline: The user should be able to search for school by school type and size
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select large
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name              |
  | University of Arkansas |
  | Cerritos College       |


Scenario Outline: The user should be able to search for school by school type and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select "Rocky Mountains" region
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                               |
  | University of Colorado Colorado Springs |
  | Montana State University-Billings       |


Scenario Outline: The user should be able to search for school by school type and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    And the user select the state and choose one "California" form drop-down
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                        |
  | Interior Designers Institute     |
  | Everest College-City of Industry |


Scenario Outline: The user should be able to search for school by school type and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    And the user type the minimum "11779" for tuition
    And the user type the maximum "11805" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name               |
  | Bryan University        |
  | Philander Smith College |


@regression
Scenario Outline: The user should be able to search for school by school type and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select rural
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                  |
  | Troy University            |
  | Governors State University |

 
 Scenario Outline: The user should be able to search for school by school type and special mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    And the user select male
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Golf Academy of America-Farmers Branch |


Scenario Outline: The user should be able to search for school by school award and size
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select advanced
    And the user select small
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                                |
  | California Institute of Integral Studies |
  | Argosy University-Sarasota               |


Scenario Outline: The user should be able to search for school by school award and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select certificate
    And the user select "Plains" region
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Southeastern Community College |
  | Neosho County Community College |


Scenario Outline: The user should be able to search for school by school award and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select associate
    And the user type the minimum "17499" for tuition
    And the user type the maximum "17500" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Academy College  |
  | Presentation College |


Scenario Outline: The user should be able to search for school by school award and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select town
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Western State Colorado University |
  | University of Hawaii at Hilo |


Scenario Outline: The user should be able to search for school by school award and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Haskell Indian Nations University |
  | Northwest Indian College |


Scenario Outline: The user should be able to search for school by school size and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select small
    And the user select the state and choose one "Maryland" form drop-down
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Chesapeake College |
  | Yeshiva College of the Nations Capital |


Scenario Outline: The user should be able to search for school by school size and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select medium
    And the user type the maximum "16632" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | George C Wallace State Community College-Hanceville |
  | California State University-Bakersfield |


Scenario Outline: The user should be able to search for school by school size and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select large
    And the user select town
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Georgia Southern University |
  | Tennessee Technological University |


Scenario Outline: The user should be able to search for school by school size and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select small
    And the user select female
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Spelman College |
  | Bennett College |



Scenario Outline: The user should be able to search for school by school location and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select "Southwest" region
    And the user type the maximum "17500" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Amarillo College |
  | Wiley College |


Scenario Outline: The user should be able to search for school by school location and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select the state and choose one "California" form drop-down
    And the user select suburban
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | California State Polytechnic University-Pomona |
  | Los Medanos College |


Scenario Outline: The user should be able to search for school by school location and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select Zip and entry the "36701"
    And the user select HBCU
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Concordia College Alabama |
  | Selma University |
  


Scenario Outline: The user should be able to search for school by school tuition and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user type the minimum "8951" for tuition
    And the user type the maximum "28416" for tuition
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Heritage Christian University |
  | University of Arizona |



Scenario Outline: The user should be able to search for school by school tuition and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user type the minimum "13859" for tuition
    And the user type the maximum "30506" for tuition
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Spring Hill College |
  | Southern California Seminary |

  

Scenario Outline: The user should be able to search for school by school type and award and size
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select certificate
    And the user select large
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Phoenix College |
  | Los Angeles Mission College |

Scenario Outline: The user should be able to search for school by school type and award and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select "Southeast" region
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Gadsden State Community College |
  | North Arkansas College |

Scenario Outline: The user should be able to search for school by school type and award and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select bachelor
    And the user type the maximum "34098" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Alabama State University |
  | University of California-Riverside |

Scenario Outline: The user should be able to search for school by school type and award and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select advanced
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | University of Alabama in Huntsville |
  | Western Connecticut State University |

Scenario Outline: The user should be able to search for school by school type and award and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select advanced
    And the user select Hispanic-serving
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | San Diego State University |
  | The University of Texas at San Antonio |

  

Scenario Outline: The user should be able to search for school by school award and size and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select certificate
    And the user select small
    And the user select "Far West" region
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Barstow Community College |
  | Great Basin College |

Scenario Outline: The user should be able to search for school by school award and size and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select associate
    And the user select large
    And the user type the maximum "11520" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Arkansas State University-Main Campus |
  | Laney College |

Scenario Outline: The user should be able to search for school by school award and size and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select medium
    And the user select town
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Colorado Mountain College |
  | Truman State University |

Scenario Outline: The user should be able to search for school by school award and size and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select advanced
    And the user select medium
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Santa Clara University |
  | Gonzaga University |



Scenario Outline: The user should be able to search for school by school size and location and tuition  
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select small
    And the user select the state and choose one "Texas" form drop-down
    And the user type the maximum "33655" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Austin College |
  | Lincoln College of Technology-Grand Prairie |

Scenario Outline: The user should be able to search for school by school size and location and campus  
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select large
    And the user select the state and choose one "North Carolina" form drop-down
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | East Carolina University |
  | University of North Carolina Wilmington |


Scenario Outline: The user should be able to search for school by school size and location and mission  
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select medium
    And the user select "Mid East" region
    And the user select HBCU
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Bowie State University |
  | Morgan State University |



Scenario Outline: The user should be able to search for school by school location and tuition and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select the state and choose one "New York" form drop-down
    And the user type the minimum "6170" for tuition
    And the user select town
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Cayuga County Community College |
  | SUNY Oneonta |

Scenario Outline: The user should be able to search for school by school location and tuition and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select "Plains" region
    And the user type the minimum "18399" for tuition
    And the user select female
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | College of Saint Benedict |
  | Cottey College |



Scenario Outline: The user should be able to search for school by school tuition and campus and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user type the minimum "7999" for tuition
    And the user select city
    And the user select male
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                              |
  | Talmudic College of Florida |
  | Yeshivah Gedolah Rabbinical College |



Scenario Outline: The user should be able to search for school by school type, award, size and location
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select small
    And the user select "Outlying areas" region
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Northern Marianas College |


Scenario Outline: The user should be able to search for school by school type, award, size and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select medium
    And the user type the minimum "1124" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                      |
  | University of Alaska Fairbanks |
  | Yuba College                   |


Scenario Outline: The user should be able to search for school by school type, award, size and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select private
    And the user select bachelor
    And the user select large
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Academy of Art University |
  | DeVry University-Illinois |


Scenario Outline: The user should be able to search for school by school type, award, size and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select advanced 
    And the user select small
    And the user select HBCU
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                       |
  | Grambling State University      |
  | South Carolina State University |



Scenario Outline: The user should be able to search for school by school award, size and location and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select certificate
    And the user select small
    And the user select the state and choose one "Alabama" form drop-down
    And the user type the minimum "3163" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                           |
  | Enterprise State Community College  |
  | Spring Hill College                 |


Scenario Outline: The user should be able to search for school by school award, size and location and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select associate
    And the user select medium
    And the user select the state and choose one "California" form drop-down
    And the user select rural
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name               | 
  | Imperial Valley College |
  | Las Positas College     |


Scenario Outline: The user should be able to search for school by school award, size and location and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Indiana" form drop-down
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                   |
  | Indiana Wesleyan University |
  | University of Notre Dame    |



Scenario Outline: The user should be able to search for school by school size and location, tuition and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select medium
    And the user select the state and choose one "Georgia" form drop-down
    And the user type the minimum "2127" for tuition
    And the user select rural
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                       |
  | West Georgia Technical College  |
  | Georgia Highlands College       |


Scenario Outline: The user should be able to search for school by school size and location, tuition and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select small
    And the user select the state and choose one "Arkansas" form drop-down
    And the user type the maximum "13400" for tuition
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                |
  | Central Baptist College  |
  | Williams Baptist College |



Scenario Outline: The user should be able to search for school by school location, tuition, campus and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select the state and choose one "Montana" form drop-down
    And the user type the minimum "1679" for tuition
    And the user select town
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                   |
  | Fort Peck Community College |

  

Scenario Outline: The user should be able to search for school by school type, award, size, location and tuition
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Alaska" form drop-down
    And the user type the minimum "15263" for tuition
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | University of Alaska Anchorage |


Scenario Outline: The user should be able to search for school by school type, award, size, location and campus 
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Georgia" form drop-down
    And the user select town
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Georgia Southern University |
  | University of North Georgia |


Scenario Outline: The user should be able to search for school by school type, award, size, location and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select small
    And the user select the state and choose one "Minnesota" form drop-down
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Fond du Lac Tribal and Community College |



Scenario Outline: The user should be able to search for school by school award, size, location, tuition and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Colorado" form drop-down
    And the user type the minimum "6023" for tuition
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | University of Colorado Denver |
  | University of Northern Colorado | 


Scenario Outline: The user should be able to search for school by school award, size, location, tuition and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Missouri" form drop-down
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Columbia College |
  | Saint Louis University |


Scenario Outline: The user should be able to search for school by school size, location, tuition, campus and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select large
    And the user select the state and choose one "Ohio" form drop-down
    And the user type the minimum "37229" for tuition
    And the user select city
    And the user select religious affiliation
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | University of Dayton |



Scenario Outline: The user should be able to search for school by school type, award, size, location, tuition and campus
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select bachelor
    And the user select large
    And the user select the state and choose one "Arizona" form drop-down
    And the user type the minimum "9219" for tuition
    And the user select city
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | University of Arizona |
  | Northern Arizona University |


Scenario Outline: The user should be able to search for school by school type, award, size, location, tuition and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select small
    And the user select the state and choose one "North Dakota" form drop-down
    And the user type the maximum "3600" for tuition
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Fort Berthold Community College |
  | Cankdeska Cikana Community College |


Scenario Outline: The user should be able to search for school by school award, size, location, tuition, campus and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select associate
    And the user select small
    And the user select the state and choose one "Montana" form drop-down
    And the user type the maximum "1680" for tuition
    And the user select town
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Fort Peck Community College |


Scenario Outline: The user should be able to search for school by school type, award, size, location, tuition, campus and mission
    Given the user from Home Page navigate to School search Page
    When the user search for the university by "<Full name>"
    And the user select public
    And the user select associate
    And the user select small
    And the user select the state and choose one "Michigan" form drop-down
    And the user type the maximum "2660" for tuition
    And the user select rural
    And the user select tribal
    Then the system will display the result(s) that exact match "<Full name>"

 Examples: 
  | Full name                 |
  | Bay Mills Community College |
  | Keweenaw Bay Ojibwa Community College |



