Feature: The user should be able to search for major


  Scenario: The user should be able to filters the major search by area of study and STEM discipline 
    Given the user from Home Page navigate to Majors search Page
    When the user select Computer and Information Sciences and Support Services
    And the user select Technology
    Then the system will display the below major name for the selected area of study and STEM discipline
      | Major name                                                    | 
      | Information Science/Studies                                   | 
      | Data Processing                                               |
      | Computer Programming                                          | 
      | Computer Systems Analysis                                     | 
      | Data Entry/Microcomputer Applications                         | 
      | Computer/Information Technology Administration and Management | 
      | Computer Science                                              | 
      | Computer Systems Networking and Telecommunications            | 
      | Computer Software and Media Applications                      | 
      | Computer and Information Sciences, General                    |

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline



  Scenario: The user should be able to filters the major search by area of study and STEM discipline 
    Given the user from Home Page navigate to Majors search Page
    When the user select Biological and Biomedical Sciences
    And the user select Science
    Then the system will display the below major name for the selected area of study and STEM discipline
      | Major name                                                | 
      | Molecular Medicine                                        |
      | Cell/Cellular Biology and Anatomical Sciences             |
      | Genetics                                                  |
      | Zoology/Animal Biology                                    | 
      | Microbiological Sciences and Immunology                   | 
      | Biomathematics, Bioinformatics, and Computational Biology | 
      | Physiology, Pathology and Related Sciences                | 
      | Pharmacology and Toxicology                               | 
      | Botany/Plant Biology                                      | 
      | Biotechnology                                             | 
      | Biology, General                                          | 
      | Biochemistry, Biophysics and Molecular Biology            | 
      | Ecology, Evolution, Systematics, and Population Biology   | 
      | Neurobiology and Neurosciences                            |

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline


  Scenario: The user should be able to filters the major search by area of study and STEM discipline 
    Given the user from Home Page navigate to Majors search Page
    When the user select Mathematics and Statistics
    And the user select Mathematics
    Then the system will display the below major name for the selected area of study and STEM discipline
      | Major name          | 
      | Mathematics         | 
      | Statistics          | 
      | Applied Mathematics | 

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline


  Scenario: The user should be able to filters the major search by area of study and STEM discipline 
    Given the user from Home Page navigate to Majors search Page
    When the user select Multi/Interdisciplinary Studies
    And the user select Multi-disciplinary
    Then the system will display the below major name for the selected area of study and STEM discipline
      | Major name                       | 
      | Accounting and Computer Science  |
      | Computational Science            |
      | Human Computer Interaction       | 
      | Gerontology                      | 
      | Marine Sciences                  |
      | Mathematics and Computer Science |
      | Nutrition Sciences               |
      | Behavioral Sciences              | 
      | Natural Sciences                 | 
      | Science, Technology and Society  |
      | Cognitive Science                | 
      | Biopsychology                    | 
      | Biological and Physical Sciences |
      | Human Biology                    |

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline



Scenario Outline: The user should be able to search by major name and filters by area of study and STEM discipline 
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering
    And the user select Engineering from STEM disciplinary
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

  Examples:
    | Major name                                          |  
    | Engineering Management                              |  
    | Computer Engineering                                |  
    | Agricultural Engineering                            |  
    | Civil Engineering                                   |  
    | Manufacturing Engineering                           |  


  Scenario Outline: The user should be able to search for "Health Professions and Related Programs" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Health Professions and Related Programs
    And the user select Science  
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display "<Major name>" for the selected area of study and STEM discipline
    
  Examples:
    | Major name                                                                        |  
    | Veterinary Biomedical and Clinical Sciences                                       |  
    | Alternative and Complementary Medical Support Services                            |  
    | Dental Support Services and Allied Professions                                    |  
    | Health Services/Allied Health/Health Sciences, General                            |  
    | Energy and Biologically Based Therapies                                           |  
    | Ophthalmic and Optometric Support Services and Allied Professions                 |  
      



