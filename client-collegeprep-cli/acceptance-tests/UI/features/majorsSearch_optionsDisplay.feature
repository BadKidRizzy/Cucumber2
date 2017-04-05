@smoke_test
Feature: The system display the filters options and search results for majors
  
  Scenario: The search table results should have header Major Name and Schools w/ Major
    When the user from Home Page navigate to Majors search Page
    Then the system will display majors table header name
	    | header name          |  
      | Major Name           |
      | Schools with Majors  |      


  Scenario: The system should provide search filters  
    When the user from Home Page navigate to Majors search Page
    Then the system will display majors search filters
	    | Filters                                                  |
      | Reset                                                    |
      | Area of Study                                            |
      | Agriculture, Agriculture Operations and Related Sciences |
      | Biological and Biomedical Sciences                       |
      | Computer and Information Sciences and Support Services   |
      | Engineering                                              |
      | Engineering Technologies and Engineering-related Fields  |
      | Health Professions and Related Programs                  |
      | Mathematics and Statistics                               |
      | Multi/Interdisciplinary Studies                          |
      | Natural Resources and Conservation                       |
      | Physical Sciences                                        |
      | Science Technologies/Technicians                         |
      | Reset                                                    |
      | STEM Discipline                                          |
      | Science                                                  |
      | Technology                                               |
      | Engineering                                              |
      | Mathematics                                              |
      | Multi-disciplinary                                       |


  Scenario: The user should be able to reset the filters to default
    Given the user from Home Page navigate to Majors search Page
    When the user select Science
    And the user select Technology
    And the user select Engineering from STEM disciplinary

    And the user select Multi/Interdisciplinary Studies
    And the user select Natural Resources and Conservation

    And the user search for the majors by "Human Computer Interaction"

    And the user select the reset button

    Then all area of study filters should be unchecked
    And all STEM discipline filters should be unchecked
    And the system will reset search box to default 

  
  Scenario: The user should be able to reset the filters to default
    Given the user from Home Page navigate to Majors search Page
    When the user select Science Technologies/Technicians 
    And the user select Agriculture, Agriculture Operations and Related Sciences
    And the user select Biological and Biomedical Sciences
    And the user select Computer and Information Sciences and Support Services
    And the user select Engineering
    And the user select Engineering Technologies and Engineering-related Fields
    And the user select Health Professions and Related Programs
    And the user select Mathematics and Statistics
    And the user select Multi/Interdisciplinary Studies
    And the user select Natural Resources and Conservation
    And the user select Physical Sciences

    And the user select Engineering from STEM disciplinary
    And the user select Multi-disciplinary
    And the user select Science
    And the user select Technology
    And the user select Engineering from STEM disciplinary
    And the user select Mathematics

    And the user select the reset button

    Then all area of study filters should be unchecked
    And all STEM discipline filters should be unchecked
    And the system will reset search box to default 


  

