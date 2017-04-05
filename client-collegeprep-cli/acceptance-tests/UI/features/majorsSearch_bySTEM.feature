Feature: The user should be able to filter the major search by STEM discipline

  @smoke_test
  Scenario: The system should provide filters and reset for STEM discipline  
    Given the user from Home Page navigate to Majors search Page
    Then all STEM discipline filters should be unchecked by default 

    When the user select Science
    Then the Science filter would be selected

    When the user select Technology
    Then the Technology filter would be selected

    When the user select Engineering from STEM disciplinary
    Then the Engineering from STEM disciplinary filter would be selected

    When the user select Mathematics
    Then the Mathematics filter would be selected

    When the user select Multi-disciplinary 
    Then the Multi-disciplinary  filter would be selected

    When the user select the STEM discipline reset button
    Then all STEM discipline filters should be unchecked


  Scenario: The system should provide "Science" filters for STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Science
    Then the system will display the below major name for the selected STEM discipline
      | Major name                                                                        | School w/Major |
      | Optometry                                                                         | 11             |
      | Physical Science Technologies/Technicians                                         | 79             |
      | Molecular Medicine                                                                | 8              |
      | Biology Technician/Biotechnology Laboratory Technician                            | 95             |
      | Cell/Cellular Biology and Anatomical Sciences                                     | 164            |
      | Genetics                                                                          | 81             |
      | Advanced/Graduate Dentistry and Oral Sciences                                     | 55             |
      | Alternative and Complementary Medicine and Medical Systems                        | 24             |
      | Bioethics/Medical Ethics                                                          | 32             |
      | Movement and Mind-Body Therapies and Education                                    | 0              |
      | Podiatric Medicine/Podiatry                                                       | 4              |
      | Veterinary Biomedical and Clinical Sciences                                       | 35             |
      | Science Technologies/Technicians, General                                         | 5              |
      | Astronomy and Astrophysics                                                        | 109            |
      | Alternative and Complementary Medical Support Services                            | 3              |
      | Natural Resources Management and Policy                                           | 149            |
      | Zoology/Animal Biology                                                            | 113            |
      | Dental Support Services and Allied Professions                                    | 597            |
      | Health Services/Allied Health/Health Sciences, General                            | 79             |
      | Geological and Earth Sciences/Geosciences                                         | 517            |
      | Energy and Biologically Based Therapies                                           | 2              |
      | Ophthalmic and Optometric Support Services and Allied Professions                 | 66             |
      | Microbiological Sciences and Immunology                                           | 173            |
      | Allied Health Diagnostic, Intervention, and Treatment Professions                 | 1000           |
      | Biomathematics, Bioinformatics, and Computational Biology                         | 147            |
      | Wildlife and Wildlands Science and Management                                     | 90             |
      | Fishing and Fisheries Sciences and Management                                     | 31             |
      | Forestry                                                                          | 128            |
      | Osteopathic Medicine/Osteopathy                                                   | 12             |
      | Allied Health and Medical Assisting Services                                      | 1,000          |
      | Physiology, Pathology and Related Sciences                                        | 155            |
      | Medicine                                                                          | 112            |
      | Atmospheric Sciences and Meteorology                                              | 85             |
      | Materials Sciences                                                                | 46             |
      | Veterinary Medicine                                                               | 28             |
      | Health and Medical Administrative Services                                        | 1,000          |
      | Communication Disorders Sciences and Services                                     | 309            |
      | Practical Nursing, Vocational Nursing and Nursing Assistants                      | 848            |
      | Pharmacy, Pharmaceutical Sciences, and Administration                             | 141            |
      | Somatic Bodywork and Related Therapeutic Services                                 | 312            |
      | Rehabilitation and Therapeutic Professions                                        | 423            |
      | Chiropractic                                                                      | 11             |
      | Physical Sciences                                                                 | 206            |
      | Dentistry                                                                         | 56             |
      | Dietetics and Clinical Nutrition Services                                         | 230            |
      | Medical Illustration and Informatics                                              | 73             |
      | Medical Clinical Sciences/Graduate Medical Studies                                | 43             |
      | Pharmacology and Toxicology                                                       | 111            |
      | Botany/Plant Biology                                                              | 68             |
      | Nuclear and Industrial Radiologic Technologies/Technicians                        | 23             |
      | Chemistry                                                                         | 1,000          |
      | Biotechnology                                                                     | 225            |
      | Health/Medical Preparatory Programs                                               | 373            |
      | Biology, General                                                                  | 1,000          |
      | Registered Nursing, Nursing Administration, Nursing Research and Clinical Nursing | 1,000          |
      | Public Health                                                                     | 459            |
      | Biochemistry, Biophysics and Molecular Biology                                    | 613            |
      | Natural Resources Conservation and Research                                       | 891            |
      | Ecology, Evolution, Systematics, and Population Biology                           | 306            |
      | Neurobiology and Neurosciences                                                    | 223            |
      | Clinical/Medical Laboratory Science/Research and Allied Professions               | 642            |
      | Mental and Social Health Services and Allied Professions                          | 720            |
      | Physics                                                                           | 864            |
      | Health Aides/Attendants/Orderlies                                                 | 85             |


  Scenario: The system should provide "Technology" filters for STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Technology
    Then the system will display the below major name for the selected STEM discipline
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


  Scenario: The system should provide "Engineering" filters for STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering from STEM disciplinary
    Then the system will display the below major name for the selected STEM discipline
      | Major name                                                 | School w/Major |
      | Nuclear and Radiological Engineering                       | 36             |
      | Automotive Engineering Technology                          | 66             |
      | Nuclear and Radiological Engineering Technology            | 13             |
      | Industrial Engineering                                     | 151            |
      | Electrical and Electronics Engineering                     | 379            |
      | Safety Technology                                          | 95             |
      | Computer Engineering Technology                            | 278            |
      | Optics Engineering Technology                              | 14             |
      | Civil Engineering Technology                               | 164            |
      | Telecommunications Engineering                             | 19             |
      | Drafting and Design (General)                              | 580            |
      | Chemical, Biochemical, and Biomolecular Engineering        | 183            |
      | Architectural Engineering Technology                       | 103            |
      | Fire Protection Engineering                                | 0              |
      | Engineering Technology (General)                           | 9              |
      | Paper Science and Engineering                              | 5              |
      | Mining Engineering                                         | 18             |
      | Mining and Petroleum Technology                            | 48             |
      | Petroleum Engineering                                      | 26             |
      | Instrumentation and Control Systems Engineering Technology | 61             |
      | Telecommunications Engineering Technology                  | 59             |
      | Geological Engineering                                     | 24             |
      | Welding Engineering                                        | 0              |
      | Naval Architecture and Marine Engineering Technology       | 0              |
      | Optics Engineering                                         | 3              |
      | Chemical Engineering Technology                            | 34             |
      | Welding Engineering Technology                             | 10             |
      | Engineering Physics                                        | 102            |
      | Aerospace Engineering                                      | 78             |
      | Engineering Mechanics                                      | 25             |
      | Metallurgical Engineering                                  | 12             |
      | Architectural Engineering                                  | 26             |
      | Aeronautical Engineering Technology                        | 24             |
      | Naval Architecture and Marine Engineering                  | 15             |
      | Bioengineering and Biomedical Engineering Technology       | 95             |
      | Construction Engineering Technologies                      | 146            |
      | Surveying and Geomatics Engineering Technology             | 104            |
      | Software Engineering                                       | 97             |
      | Biological Engineering                                     | 10             |
      | Ceramic Engineering                                        | 5              |
      | Engineering Science                                        | 82             |
      | Surveying and Geomatics Engineering                        | 26             |
      | Environmental Engineering                                  | 132            |
      | Construction Engineering                                   | 31             |
      | Ocean Engineering                                          | 11             |
      | Materials Engineering                                      | 105            |
      | Engineering Management                                     | 132            |
      | Computer Engineering                                       | 274            |
      | Air Conditioning Engineering Technology                    | 118            |
      | Drafting and Design (Mechanical)                           | 156            |
      | Agricultural Engineering                                   | 48             |
      | Civil Engineering                                          | 269            |
      | Manufacturing Engineering                                  | 57             |
      | Systems Engineering                                        | 86             |
      | Nanotechnology                                             | 25             |
      | Fire Protection Engineering Technology                     | 0              |
      | Mechatronics, Robotics, and Automation Engineering         | 18             |
      | Manufacturing Engineering Technology                       | 253            |
      | Bioengineering and Biomedical Engineering                  | 181            |
      | Industrial Engineering Technology                          | 284            |
      | Electrical and Electronics Engineering Technology          | 564            |
      | General Engineering                                        | 620            |
      | Mechanical Engineering                                     | 345            |
      | Mechanical Engineering Technology                          | 251            |
      | Electromechanical Engineering Technology                   | 222            |
      | Environmental Engineering Technology                       | 357            |

  @regression
  Scenario: The system should provide "Mathematics" filters for STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Mathematics
    Then the system will display the below major name for the selected STEM discipline
      | Major name          | School w/Major |
      | Mathematics         | 1,000          |
      | Statistics          | 165            |
      | Applied Mathematics | 293            |


  Scenario: The system should provide "Multi-disciplinary" filters for STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Multi-disciplinary 
    Then the system will display the below major name for the selected STEM discipline 
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


  Scenario Outline: The user should be able to search for "Science" majors from STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Science
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline


  Examples: 
    | Major name                                                   |
    | Optometry                                                    |
    | Genetics                                                     |
    | Advanced/Graduate Dentistry and Oral Sciences                |
    | Biomathematics, Bioinformatics, and Computational Biology    |
    | Wildlife and Wildlands Science and Management                |
    | Fishing and Fisheries Sciences and Management                |
    | Forestry                                                     |
    
Scenario Outline: The user should be able to search for "Technology" majors from STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Technology
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

  Examples:
    | Major name                                                    | 
    | Information Science/Studies                                   |
    | Data Processing                                               |
    | Computer Programming                                          |
    | Computer Systems Analysis                                     |
    | Data Entry/Microcomputer Applications                         |
    | Computer/Information Technology Administration and Management |
    | Computer Science                                              |
      

  Scenario Outline: The user should be able to search for "Engineering" majors from STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Engineering from STEM disciplinary
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

  Examples:
    | Major name                                                 |  
    | Nuclear and Radiological Engineering                       |  
    | Automotive Engineering Technology                          |  
    | Nuclear and Radiological Engineering Technology            |  
    | Industrial Engineering                                     |  
    | Electrical and Electronics Engineering                     |  
      

  Scenario Outline: The user should be able to search for "Mathematics" majors from STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Mathematics
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Multi-disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline
  
  Examples:   
    | Major name          | 
    | Mathematics         | 
    | Statistics          | 
    | Applied Mathematics | 


  Scenario Outline: The user should be able to search for "Multi-disciplinary" majors from STEM discipline
    Given the user from Home Page navigate to Majors search Page
    When the user select Multi-disciplinary
    And the user search for the majors by "<Major name>"
    Then the system will display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Science
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Technology
    Then the system will not display the "<Major name>" for the selected STEM discipline
    
    When the user select the STEM discipline reset button
    And the user select Engineering from STEM disciplinary
    Then the system will not display the "<Major name>" for the selected STEM discipline

    When the user select the STEM discipline reset button
    And the user select Mathematics
    Then the system will not display the "<Major name>" for the selected STEM discipline


  Examples:
    | Major name                       | 
    | Accounting and Computer Science  | 
    | Computational Science            | 
    | Human Computer Interaction       | 
    | Gerontology                      | 
    | Marine Sciences                  | 
