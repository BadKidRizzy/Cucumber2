Feature: The user should be able to filter the major search by area of study 

  @smoke_test
  Scenario: The system should provide filters and reset for area of study  
    Given the user from Home Page navigate to Majors search Page
    Then all area of study filters should be unchecked by default 

    When the user select Agriculture, Agriculture Operations and Related Sciences
    Then the Agriculture, Agriculture Operations and Related Sciences filter would be selected

    When the user select Biological and Biomedical Sciences
    Then the Biological and Biomedical Sciences filter would be selected

    When the user select Computer and Information Sciences and Support Services
    Then the Computer and Information Sciences and Support Services filter would be selected

    When the user select Engineering
    Then the Engineering filter would be selected

    When the user select Engineering Technologies and Engineering-related Fields
    Then the Engineering Technologies and Engineering-related Fields filter would be selected

    When the user select Health Professions and Related Programs  
    Then the Health Professions and Related Programs filter would be selected

    When the user select Mathematics and Statistics
    Then the Mathematics and Statistics filter would be selected

    When the user select Multi/Interdisciplinary Studies
    Then the Multi/Interdisciplinary Studies filter would be selected

    When the user select Natural Resources and Conservation
    Then the Natural Resources and Conservation filter would be selected

    When the user select Physical Sciences
    Then the Physical Sciences filter would be selected

    When the user select Science Technologies/Technicians 
    Then the Science Technologies/Technicians filter would be selected

    When the user select the area of study reset button
    Then all area of study filters should be unchecked


  Scenario: The system should provide "Agriculture, Agriculture Operations and Related Sciences" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will display the below major name for the selected area of study 
      | Major name                                               | School w/Major |
      | Soil Sciences                                            | 42             |
      | International Agriculture                                | 7              |
      | Food Science and Technology                              | 69             |
      | Animal Sciences                                          | 120            |
      | Plant Sciences                                           | 110            |
      | Agricultural Production Operations                       | 190            |
      | Applied Horticulture and Horticultural Business Services | 312            |
      | Agriculture, General                                     | 159            |

  Scenario: The system should provide "Biological and Biomedical Sciences" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Biological and Biomedical Sciences
    Then the system will display the below major name for the selected area of study 
      | Major name                                                | School w/Major |
      | Molecular Medicine                                        | 8              |
      | Cell/Cellular Biology and Anatomical Sciences             | 164            |
      | Genetics                                                  | 81             |
      | Zoology/Animal Biology                                    | 113            |
      | Microbiological Sciences and Immunology                   | 173            |
      | Biomathematics, Bioinformatics, and Computational Biology | 147            |
      | Physiology, Pathology and Related Sciences                | 155            |
      | Pharmacology and Toxicology                               | 111            |
      | Botany/Plant Biology                                      | 68             |
      | Biotechnology                                             | 225            |
      | Biology, General                                          | 1,000          |
      | Biochemistry, Biophysics and Molecular Biology            | 613            |
      | Ecology, Evolution, Systematics, and Population Biology   | 306            |
      | Neurobiology and Neurosciences                            | 223            |


  Scenario: The system should provide "Computer and Information Sciences and Support Services" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Computer and Information Sciences and Support Services
    Then the system will display the below major name for the selected area of study 
      | Major name                                                    | School w/Major |
      | Information Science/Studies                                   | 454            |
      | Data Processing                                               | 168            |
      | Computer Programming                                          | 526            |
      | Computer Systems Analysis                                     | 110            |
      | Data Entry/Microcomputer Applications                         | 140            |
      | Computer/Information Technology Administration and Management | 730            |
      | Computer Science                                              | 751            |
      | Computer Systems Networking and Telecommunications            | 623            |
      | Computer Software and Media Applications                      | 678            |
      | Computer and Information Sciences, General                    | 1,000          |


  Scenario: The system should provide "Engineering" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering
    Then the system will display the below major name for the selected area of study 
      | Major name                                          | School w/Major |
      | Nuclear and Radiological Engineering                | 36             |
      | Industrial Engineering                              | 151            |
      | Electrical and Electronics Engineering              | 379            |
      | Telecommunications Engineering                      | 19             |
      | Chemical, Biochemical, and Biomolecular Engineering | 183            |
      | Fire Protection Engineering                         | 0              |
      | Paper Science and Engineering                       | 5              |
      | Mining Engineering                                  | 18             |
      | Petroleum Engineering                               | 26             |
      | Geological Engineering                              | 24             |
      | Welding Engineering                                 | 0              |
      | Optics Engineering                                  | 3              |
      | Engineering Physics                                 | 102            |
      | Aerospace Engineering                               | 78             |
      | Engineering Mechanics                               | 25             |
      | Metallurgical Engineering                           | 12             |
      | Architectural Engineering                           | 26             |
      | Naval Architecture and Marine Engineering           | 15             |
      | Software Engineering                                | 97             |
      | Biological Engineering                              | 10             |
      | Ceramic Engineering                                 | 5              |
      | Engineering Science                                 | 82             |
      | Surveying and Geomatics Engineering                 | 26             |
      | Environmental Engineering                           | 132            |
      | Construction Engineering                            | 31             |
      | Ocean Engineering                                   | 11             |
      | Materials Engineering                               | 105            |
      | Engineering Management                              | 132            |
      | Computer Engineering                                | 274            |
      | Agricultural Engineering                            | 48             |
      | Civil Engineering                                   | 269            |
      | Manufacturing Engineering                           | 57             |
      | Systems Engineering                                 | 86             |
      | Mechatronics, Robotics, and Automation Engineering  | 18             |
      | Bioengineering and Biomedical Engineering           | 181            |
      | General Engineering                                 | 620            |
      | Mechanical Engineering                              | 345            |


  Scenario: The system should provide "Engineering Technologies and Engineering-related Fields" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
     When the user select Engineering Technologies and Engineering-related Fields
    Then the system will display the below major name for the selected area of study 
      | Major name                                                 | School w/Major |
      | Automotive Engineering Technology                          | 66             |
      | Nuclear and Radiological Engineering Technology            | 13             |
      | Safety Technology                                          | 95             |
      | Computer Engineering Technology                            | 278            |
      | Optics Engineering Technology                              | 14             |
      | Civil Engineering Technology                               | 164            |
      | Drafting and Design (General)                              | 580            |
      | Architectural Engineering Technology                       | 103            |
      | Engineering Technology (General)                           | 9              |
      | Mining and Petroleum Technology                            | 48             |
      | Instrumentation and Control Systems Engineering Technology | 61             |
      | Telecommunications Engineering Technology                  | 59             |
      | Naval Architecture and Marine Engineering Technology       | 0              |
      | Chemical Engineering Technology                            | 34             |
      | Welding Engineering Technology                             | 10             |
      | Aeronautical Engineering Technology                        | 24             |
      | Bioengineering and Biomedical Engineering Technology       | 95             |
      | Construction Engineering Technologies                      | 146            |
      | Surveying and Geomatics Engineering Technology             | 104            |
      | Air Conditioning Engineering Technology                    | 118            |
      | Drafting and Design (Mechanical)                           | 156            |
      | Nanotechnology                                             | 25             |
      | Fire Protection Engineering Technology                     | 0              |
      | Manufacturing Engineering Technology                       | 253            |
      | Industrial Engineering Technology                          | 284            |
      | Electrical and Electronics Engineering Technology          | 564            |
      | Mechanical Engineering Technology                          | 251            |
      | Electromechanical Engineering Technology                   | 222            |
      | Environmental Engineering Technology                       | 357            |

  Scenario: The system should provide "Health Professions and Related Programs" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Health Professions and Related Programs  
    Then the system will display the below major name for the selected area of study 
      | Major name                                                                        | School w/Major |
      | Optometry                                                                         | 11             |
      | Advanced/Graduate Dentistry and Oral Sciences                                     | 55             |
      | Alternative and Complementary Medicine and Medical Systems                        | 24             |
      | Bioethics/Medical Ethics                                                          | 32             |
      | Movement and Mind-Body Therapies and Education                                    | 0              |
      | Podiatric Medicine/Podiatry                                                       | 4              |
      | Veterinary Biomedical and Clinical Sciences                                       | 35             |
      | Alternative and Complementary Medical Support Services                            | 3              |
      | Dental Support Services and Allied Professions                                    | 597            |
      | Health Services/Allied Health/Health Sciences, General                            | 79             |
      | Energy and Biologically Based Therapies                                           | 2              |
      | Ophthalmic and Optometric Support Services and Allied Professions                 | 66             |
      | Allied Health Diagnostic, Intervention, and Treatment Professions                 | 1,000          |
      | Osteopathic Medicine/Osteopathy                                                   | 12             |
      | Allied Health and Medical Assisting Services                                      | 1000           |
      | Medicine                                                                          | 112            |
      | Veterinary Medicine                                                               | 28             |
      | Health and Medical Administrative Services                                        | 1,000          |
      | Communication Disorders Sciences and Services                                     | 309            |
      | Practical Nursing, Vocational Nursing and Nursing Assistants                      | 848            |
      | Pharmacy, Pharmaceutical Sciences, and Administration                             | 141            |
      | Somatic Bodywork and Related Therapeutic Services                                 | 312            |
      | Rehabilitation and Therapeutic Professions                                        | 423            |
      | Chiropractic                                                                      | 11             |
      | Dentistry                                                                         | 56             |
      | Dietetics and Clinical Nutrition Services                                         | 230            |
      | Medical Illustration and Informatics                                              | 73             |
      | Medical Clinical Sciences/Graduate Medical Studies                                | 43             |
      | Health/Medical Preparatory Programs                                               | 373            |
      | Registered Nursing, Nursing Administration, Nursing Research and Clinical Nursing | 1,000          |
      | Public Health                                                                     | 459            |
      | Clinical/Medical Laboratory Science/Research and Allied Professions               | 642            |
      | Mental and Social Health Services and Allied Professions                          | 720            |
      | Health Aides/Attendants/Orderlies                                                 | 85             |

  Scenario: The system should provide "Mathematics and Statistics" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Mathematics and Statistics
    Then the system will display the below major name for the selected area of study 
      | Major name          | School w/Major |
      | Mathematics         | 1,000          |
      | Statistics          | 165            |
      | Applied Mathematics | 293            |



  Scenario: The system should provide "Multi/Interdisciplinary Studies" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Multi/Interdisciplinary Studies
    Then the system will display the below major name for the selected area of study 
      | Major name                       | School w/Major |
      | Accounting and Computer Science  | 15             |
      | Computational Science            | 14             |
      | Human Computer Interaction       | 12             |
      | Gerontology                      | 165            |
      | Marine Sciences                  | 12             |
      | Mathematics and Computer Science | 81             |
      | Nutrition Sciences               | 90             |
      | Behavioral Sciences              | 76             |
      | Natural Sciences                 | 121            |
      | Science, Technology and Society  | 52             |
      | Cognitive Science                | 50             |
      | Biopsychology                    | 30             |
      | Biological and Physical Sciences | 344            |
      | Human Biology                    | 16             |


  Scenario: The system should provide "Natural Resources and Conservation" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Natural Resources and Conservation
    Then the system will display the below major name for the selected area of study 
      | Major name                                    | School w/Major |
      | Natural Resources Management and Policy       | 149            |
      | Wildlife and Wildlands Science and Management | 90             |
      | Fishing and Fisheries Sciences and Management | 31             |
      | Forestry                                      | 128            |
      | Natural Resources Conservation and Research   | 891            |


  Scenario: The system should provide "Physical Sciences" filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Physical Sciences
    Then the system will display the below major name for the selected area of study 
        | Major name                                | School w/Major |
        | Astronomy and Astrophysics                | 109            |
        | Geological and Earth Sciences/Geosciences | 517            |
        | Atmospheric Sciences and Meteorology      | 85             |
        | Materials Sciences                        | 46             |
        | Physical Sciences                         | 206            |
        | Chemistry                                 | 1,000          |
        | Physics                                   | 864            |

  
  @regression
  Scenario: The system should provide "Science Technologies/Technicians " filters for area of study 
    Given the user from Home Page navigate to Majors search Page
    When the user select Science Technologies/Technicians 
    Then the system will display the below major name for the selected area of study 
        
        | Major name                                                 | School w/Major |
        | Physical Science Technologies/Technicians                  | 79             |
        | Biology Technician/Biotechnology Laboratory Technician     | 95             |
        | Science Technologies/Technicians, General                  | 5              |
        | Nuclear and Industrial Radiologic Technologies/Technicians | 23             |



  Scenario Outline: The user should be able to search for "Agriculture, Agriculture Operations and Related Sciences" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Agriculture, Agriculture Operations and Related Sciences
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      
  Examples:    
    | Major name                                               |  
    | Soil Sciences                                            |  
    | International Agriculture                                |  
    | Agricultural Production Operations                       |  
    | Applied Horticulture and Horticultural Business Services | 
    | Agriculture, General                                     |  

  
  Scenario Outline: The user should be able to search for "Biological and Biomedical Sciences"" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Biological and Biomedical Sciences
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study  
      

  Examples:
    | Major name                                                |  
    | Molecular Medicine                                        |  
    | Biotechnology                                             |  
    | Biology, General                                          |  
    | Biochemistry, Biophysics and Molecular Biology            |  
    | Ecology, Evolution, Systematics, and Population Biology   |  
    | Neurobiology and Neurosciences                            |  


  Scenario Outline: The user should be able to search for "Computer and Information Sciences and Support Services" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Computer and Information Sciences and Support Services
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      

  Examples:
    | Major name                                                    |  
    | Information Science/Studies                                   | 
    | Data Processing                                               | 
    | Computer Science                                              |  
    | Computer Systems Networking and Telecommunications            |  
    | Computer Software and Media Applications                      |  
    | Computer and Information Sciences, General                    |  


  Scenario Outline: The user should be able to search for "Engineering" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      

  Examples:
    | Major name                                          |  
    | Engineering Management                              |  
    | Computer Engineering                                |  
    | Agricultural Engineering                            |  
    | Civil Engineering                                   |  
    | Manufacturing Engineering                           |  
   


  Scenario Outline: The user should be able to search for "Engineering Technologies and Engineering-related Fields" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering Technologies and Engineering-related Fields
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study  
      

  Examples:
    | Major name                                                 |  
    | Surveying and Geomatics Engineering Technology             |  
    | Air Conditioning Engineering Technology                    |  
    | Drafting and Design (Mechanical)                           |  
    | Nanotechnology                                             |  
    | Fire Protection Engineering Technology                     |  
    | Manufacturing Engineering Technology                       |  
    | Industrial Engineering Technology                          |  
      

  Scenario Outline: The user should be able to search for "Health Professions and Related Programs" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Health Professions and Related Programs  
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study


    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study  
      

  Examples:
    | Major name                                                                        |  
    | Veterinary Biomedical and Clinical Sciences                                       |  
    | Alternative and Complementary Medical Support Services                            |  
    | Dental Support Services and Allied Professions                                    |  
    | Health Services/Allied Health/Health Sciences, General                            |  
    | Energy and Biologically Based Therapies                                           |  
    | Ophthalmic and Optometric Support Services and Allied Professions                 |  
      

  Scenario Outline: The user should be able to search for "Mathematics and Statistics" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Mathematics and Statistics
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      

  Examples:
    | Major name          |  
    | Mathematics         |  
    | Statistics          |  
    | Applied Mathematics |  



  Scenario Outline: The user should be able to search for "Multi/Interdisciplinary Studies" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Multi/Interdisciplinary Studies
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      

  Examples:
    | Major name                       |  
    | Accounting and Computer Science  |  
    | Computational Science            |  
    | Human Computer Interaction       |  
    | Gerontology                      |  
    | Marine Sciences                  |  
      


  Scenario Outline: The user should be able to search for "Natural Resources and Conservation" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Natural Resources and Conservation
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
      

  Examples:
    | Major name                                    |  
    | Natural Resources Management and Policy       |  
    | Wildlife and Wildlands Science and Management | 
    | Fishing and Fisheries Sciences and Management | 
    | Forestry                                      |  
    | Natural Resources Conservation and Research   |  


  Scenario Outline: The user should be able to search for "Physical Sciences" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Physical Sciences
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study


    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Science Technologies/Technicians
    Then the system will not display the "<Major name>" for the selected area of study 
        

  Examples:
    | Major name                                |  
    | Astronomy and Astrophysics                |  
    | Materials Sciences                        |  
    | Physical Sciences                         |  
    | Chemistry                                 |  
       

  Scenario Outline: The user should be able to search for "Science Technologies/Technicians" majors from area of study
    Given the user from Home Page navigate to Majors search Page
    When the user select Science Technologies/Technicians 
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected area of study

    When the user select the area of study reset button
    And the user select Agriculture, Agriculture Operations and Related Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Biological and Biomedical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Computer and Information Sciences and Support Services
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Engineering Technologies and Engineering-related Fields
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Health Professions and Related Programs
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button 
    And the user select Mathematics and Statistics
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Multi/Interdisciplinary Studies
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Natural Resources and Conservation
    Then the system will not display the "<Major name>" for the selected area of study 

    When the user select the area of study reset button
    And the user select Physical Sciences
    Then the system will not display the "<Major name>" for the selected area of study 

  Examples:      
    | Major name                                                 |  
    | Physical Science Technologies/Technicians                  |  
    | Biology Technician/Biotechnology Laboratory Technician     |  
    | Science Technologies/Technicians, General                  |  
    | Nuclear and Industrial Radiologic Technologies/Technicians |  

