Feature: The user should be able to search for occupations

  @regression
  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "63000" minimum salary
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                               |
      | Aquacultural Managers                         |
      | Animal Scientists                             |
      | Agricultural Sciences Teachers, Postsecondary |
      | Natural Sciences Managers                     |
      | Food Scientists and Technologists             |
      | Farm and Ranch Managers                       |
      | Environmental Compliance Inspectors           |
      | Nursery and Greenhouse Managers               |
      | Environmental Engineers                       |
      | Veterinarians                                 |
      | Occupational Health and Safety Specialists    |


  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "190054" minimum salary
    And the user select "Health Science" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                 |
      | Radiologists                                    |
      | Oral and Maxillofacial Surgeons                 |
      | Hospitalists                                    |
      | Orthodontists                                   |
      | Urologists                                      |
      | Psychiatrists                                   |
      | Pathologists                                    |
      | Dermatologists                                  |
      | Preventive Medicine Physicians                  |
      | Obstetricians and Gynecologists                 |
      | Allergists and Immunologists                    |
      | Neurologists                                    |
      | Physical Medicine and Rehabilitation Physicians |
      | Nuclear Medicine Physicians                     |
      | Anesthesiologists                               |
      | Ophthalmologists                                |
      | Surgeons                                        |



  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "104100" minimum salary
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                                |
      | Aerospace Engineers                                            |
      | Architectural and Engineering Managers                         |
      | Physicists                                                     |
      | Petroleum Engineers                                            |
      | Mathematicians                                                 |
      | Astronomers                                                    |
      | Water Resource Specialists                                     |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Computer Hardware Engineers                                    |



  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "54100" minimum salary
    And the user select "Manufacturing" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                    |
      | Photonics Technicians                              |
      | Chemical Plant and System Operators                |
      | Methane/Landfill Gas Generation System Technicians |
      | Nuclear Power Reactor Operators                    |
      | Hydroelectric Plant Technicians                    |
  

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "90120" minimum salary
    And the user select "Information Technology" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                              |
      | Computer and Information Research Scientists |
      | Software Developers, Systems Software        |
      | Telecommunications Engineering Specialists   |
      | Information Security Analysts                |
      | Computer Network Architects                  |
      | Software Developers, Applications            |
      | Computer and Information Systems Managers    |

   

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "30120" minimum salary
    And the user select "Human Services" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                    |
      | Massage Therapists                                 |
      | Industrial-Organizational Psychologists            |
      | Mental Health Counselors                           |
      | Rehabilitation Counselors                          |
      | Substance Abuse and Behavioral Disorder Counselors |
      | Healthcare Social Workers                          |
      | Marriage and Family Therapists                     |
   

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "30120" minimum salary
    And the user select "Education and Training" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                                        |
      | Mathematical Science Teachers, Postsecondary                           |
      | Environmental Science Teachers, Postsecondary                          |
      | Computer Science Teachers, Postsecondary                               |
      | Chemistry Teachers, Postsecondary                                      |
      | Physics Teachers, Postsecondary                                        |
      | Psychology Teachers, Postsecondary                                     |
      | Graduate Teaching Assistants                                           |
      | Nursing Instructors and Teachers, Postsecondary                        |
      | Engineering Teachers, Postsecondary                                    |
      | Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary |
      | School Psychologists                                                   |
      | Biological Science Teachers, Postsecondary                             |
      | Forestry and Conservation Science Teachers, Postsecondary              |
      | Health Specialties Teachers, Postsecondary                             |
   

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "46900" minimum salary
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                     |
      | Graphic Designers                   |
      | Commercial and Industrial Designers |
      | Multimedia Artists and Animators    |

   

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "49260" minimum salary
    And the user select "Architecture and Construction" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name               |
      | Civil Engineering Technicians |
      | Cost Estimators               |
      | Mechanical Drafters           |
      | Surveyors                     |
      | Construction Managers         |
      | Civil Engineers               |
   

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "58370" minimum salary
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                                           |
      | Ship Engineers                                                            |
      | Aviation Inspectors                                                       |
      | Transportation Planners                                                   |
      | Aircraft Mechanics and Service Technicians                                |
      | Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation |
      | Aerospace Engineering and Operations Technicians                          |
      | Industrial Safety and Health Engineers                                    |

  

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "31980" minimum salary
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                    |
      | Fire Investigators                                 |
      | Emergency Medical Technicians and Paramedics       |
      | Municipal Fire Fighting and Prevention Supervisors |
      | Security Management Specialists                    |
      | Forensic Science Technicians                       |
  


  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "66670" minimum salary
    And the user select "Finance" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                 |
      | Financial Quantitative Analysts |
      | Actuaries                       |
      | Risk Management Specialists     |
  

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "33040" minimum salary
    And the user select "Business, Management and Administration" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                        |
      | Auditors                                               |
      | Computer Operators                                     |
      | Biomass Power Plant Managers                           |
      | Operations Research Analysts                           |
      | Administrative Services Managers                       |
      | Medical and Health Services Managers                   |
      | Accountants                                            |
      | Brownfield Redevelopment Specialists and Site Managers |
      | Medical Secretaries                                    |
      | Energy Auditors                                        |
      | Biofuels Production Managers                           |
      | Hydroelectric Production Managers                      |
  

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "0" minimum salary
    And the user select "Government and Public Administration" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name           |
      |  Coroners                 |
      |  Climate Change Analysts  |

  

  Scenario: The user should be able to filters the occupation search by salary and career cluster
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "0" minimum salary
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                       |
      |  Museum Technicians and Conservators  |

  

  Scenario: The user should be able to filters the occupation search by salary and STEM discipline 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "121500" minimum salary
    And the user select "Science" from STEM discipline
    Then the system will display the below occupation for the selected salary and career cluster
      
      | Occupation Name                                 |
      | Radiologists                                    |
      | Dentists, General                               |
      | Oral and Maxillofacial Surgeons                 |
      | Architectural and Engineering Managers          |
      | Hospitalists                                    |
      | Orthodontists                                   |
      | Urologists                                      |
      | Psychiatrists                                   |
      | Pathologists                                    |
      | Dermatologists                                  |
      | Preventive Medicine Physicians                  |
      | Obstetricians and Gynecologists                 |
      | Pharmacists                                     |
      | Allergists and Immunologists                    |
      | Neurologists                                    |
      | Physical Medicine and Rehabilitation Physicians |
      | Nuclear Medicine Physicians                     |
      | Pediatricians, General                          |
      | Anesthesiologists                               |
      | Ophthalmologists                                |
      | Family and General Practitioners                |
      | Surgeons                                        |
      | Sports Medicine Physicians                      |
      | Internists, General                             |
      | Nurse Anesthetists                              |
  

  Scenario: The user should be able to filters the occupation search by salary and STEM discipline 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "74840" minimum salary
    And the user select "Technology" from STEM discipline
    Then the system will display the below occupation for the selected salary and career cluster

      | Occupation Name                                     |
      | Geographic Information Systems Technicians          |
      | Computer and Information Research Scientists        |
      | Software Developers, Systems Software               |
      | Information Technology Project Managers             |
      | Business Intelligence Analysts                      |
      | Database Administrators                             |
      | Telecommunications Engineering Specialists          |
      | Computer Systems Analysts                           |
      | Web Administrators                                  |
      | Data Warehousing Specialists                        |
      | Computer Programmers                                |
      | Information Security Analysts                       |
      | Computer Network Architects                         |
      | Software Developers, Applications                   |
      | Computer Science Teachers, Postsecondary            |
      | Document Management Specialists                     |
      | Computer Systems Engineers/Architects               |
      | Informatics Nurse Specialists                       |
      | Software Quality Assurance Engineers and Testers    |
      | Computer and Information Systems Managers           |
      | Database Architects                                 |
      | Network and Computer Systems Administrators         |
      | Geospatial Information Scientists and Technologists |


  Scenario: The user should be able to filters the occupation search by salary and STEM discipline 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "94041" minimum salary
    And the user select "Engineering" from STEM discipline
    Then the system will display the below occupation for the selected salary and career cluster

      | Occupation Name                                                |
      | Aerospace Engineers                                            |
      | Architectural and Engineering Managers                         |
      | Physicists                                                     |
      | Software Developers, Systems Software                          |
      | Petroleum Engineers                                            |
      | Telecommunications Engineering Specialists                     |
      | Microsystems Engineers                                         |
      | Water Resource Specialists                                     |
      | Software Developers, Applications                              |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Clinical Research Coordinators                                 |
      | Natural Sciences Managers                                      |
      | Photonics Engineers                                            |
      | Engineering Teachers, Postsecondary                            |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Computer Hardware Engineers                                    |
      | Brownfield Redevelopment Specialists and Site Managers         |
      | Radio Frequency Identification Device Specialists              |
      | Nanosystems Engineers                                          |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Chemical Engineers                                             |
      | Electronics Engineers, Except Computer                         |
      | Nuclear Engineers                                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |



  Scenario: The user should be able to filters the occupation search by salary and STEM discipline 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "97070" minimum salary
    And the user select "Mathematics" from STEM discipline
    Then the system will display the below occupation for the selected salary and career cluster

      | Occupation Name                |
      | Mathematicians                 |
      | Water Resource Specialists     |
      | Environmental Economists       |
      | Clinical Research Coordinators |
      | Actuaries                      |
      | Natural Sciences Managers      |


  Scenario: The user should be able to filters the occupation search by salary and STEM discipline 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "61220" minimum salary
    And the user select "multi-disciplinary" from STEM discipline
    Then the system will display the below occupation for the selected salary and career cluster

      | Occupation Name                                     |
      | Counseling Psychologists                            |
      | Information Technology Project Managers             |
      | Business Intelligence Analysts                      |
      | Remote Sensing Scientists and Technologists         |
      | Web Administrators                                  |
      | Data Warehousing Specialists                        |
      | Auditors                                            |
      | Transportation Planners                             |
      | Technical Writers                                   |
      | Water Resource Specialists                          |
      | Bioinformatics Scientists                           |
      | Neuropsychologists and Clinical Neuropsychologists  |
      | Biochemists and Biophysicists                       |
      | Clinical Research Coordinators                      |
      | Climate Change Analysts                             |
      | Industrial-Organizational Psychologists             |
      | Natural Sciences Managers                           |
      | Medical Scientists, Except Epidemiologists          |
      | Biological Science Teachers, Postsecondary          |
      | Geoscientists, Except Hydrologists and Geographers  |
      | Accountants                                         |
      | Video Game Designers                                |
      | Anthropologists                                     |
      | Environmental Restoration Planners                  |
      | Database Architects                                 |
      | Geospatial Information Scientists and Technologists |
      | Molecular and Cellular Biologists                   |


  Scenario: The user should be able to filters the occupation search by salary and preparation needed 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "86110" minimum salary
    And the user select "Some preparation" from preparation needed
    Then the system will display the below occupation for the selected salary and preparation needed

      | Occupation Name                            |
      | Telecommunications Engineering Specialists |
      | Administrative Services Managers           |
      | Nuclear Power Reactor Operators            |
      | Hydroelectric Production Managers          |


  Scenario: The user should be able to filters the occupation search by salary and preparation needed 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "93110" minimum salary
    And the user select "Medium preparation" from preparation needed
    Then the system will display the below occupation for the selected salary and preparation needed

      | Occupation Name                                                    |
      | Aerospace Engineers                                                |
      | Marine Engineers                                                   |
      | Software Developers, Systems Software                              |
      | Petroleum Engineers                                                |
      | Biomass Power Plant Managers                                       |
      | Biochemical Engineers                                              |
      | Computer Network Architects                                        |
      | Water Resource Specialists                                         |
      | Software Developers, Applications                                  |
      | Biofuels/Biodiesel Technology and Product Development Managers     |
      | Clinical Research Coordinators                                     |
      | Actuaries                                                          |
      | Photonics Engineers                                                |
      | Mechatronics Engineers                                             |
      | Wind Energy Engineers                                              |
      | Marine Architects                                                  |
      | Computer Hardware Engineers                                        |
      | Quality Control Systems Managers                                   |
      | Brownfield Redevelopment Specialists and Site Managers             |
      | Computer and Information Systems Managers                          |
      | Radio Frequency Identification Device Specialists                  |
      | Solar Energy Systems Engineers                                     |
      | Validation Engineers                                               |
      | Biofuels Production Managers                                       |
      | Chemical Engineers                                                 |
      | Electronics Engineers, Except Computer                             |
      | Mining and Geological Engineers, Including Mining Safety Engineers |
      | Nuclear Engineers                                                  |
      | Energy Engineers                                                   |
      | Manufacturing Engineers                                            |
      | Robotics Engineers                                                 |


  Scenario: The user should be able to filters the occupation search by salary and preparation needed 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "95900" minimum salary
    And the user select "Considerable preparation" from preparation needed
    Then the system will display the below occupation for the selected salary and preparation needed

      | Occupation Name                                 |
      | Radiologists                                    |
      | Computer and Information Research Scientists    |
      | Dentists, General                               |
      | Oral and Maxillofacial Surgeons                 |
      | Optometrists                                    |
      | Architectural and Engineering Managers          |
      | Physicists                                      |
      | Hospitalists                                    |
      | Orthodontists                                   |
      | Urologists                                      |
      | Anesthesiologist Assistants                     |
      | Prosthodontists                                 |
      | Psychiatrists                                   |
      | Podiatrists                                     |
      | Remote Sensing Scientists and Technologists     |
      | Microsystems Engineers                          |
      | Pathologists                                    |
      | Mathematicians                                  |
      | Astronomers                                     |
      | Environmental Economists                        |
      | Dermatologists                                  |
      | Preventive Medicine Physicians                  |
      | Obstetricians and Gynecologists                 |
      | Pharmacists                                     |
      | Natural Sciences Managers                       |
      | Physician Assistants                            |
      | Allergists and Immunologists                    |
      | Neurologists                                    |
      | Physical Medicine and Rehabilitation Physicians |
      | Nuclear Medicine Physicians                     |
      | Pediatricians, General                          |
      | Anesthesiologists                               |
      | Ophthalmologists                                |
      | Family and General Practitioners                |
      | Surgeons                                        |
      | Sports Medicine Physicians                      |
      | Nanosystems Engineers                           |
      | Internists, General                             |
      | Nurse Anesthetists                              |
      | Nurse Practitioners                             |


  Scenario: The user should be able to filters the occupation search by salary and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "85240" minimum salary
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected salary and outlook

      | Occupation Name                                                |
      | Geographic Information Systems Technicians                     |
      | Aerospace Engineers                                            |
      | Architectural and Engineering Managers                         |
      | Software Developers, Systems Software                          |
      | Remote Sensing Scientists and Technologists                    |
      | Microsystems Engineers                                         |
      | Atmospheric and Space Scientists                               |
      | Biomass Power Plant Managers                                   |
      | Electrical Engineers                                           |
      | Biochemical Engineers                                          |
      | Materials Scientists                                           |
      | Water Resource Specialists                                     |
      | Environmental Economists                                       |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Natural Sciences Managers                                      |
      | Photonics Engineers                                            |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Nuclear Power Reactor Operators                                |
      | Geoscientists, Except Hydrologists and Geographers             |
      | Brownfield Redevelopment Specialists and Site Managers         |
      | Nanosystems Engineers                                          |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Biofuels Production Managers                                   |
      | Hydroelectric Production Managers                              |
      | Construction Managers                                          |
      | Geospatial Information Scientists and Technologists            |
      | Chemical Engineers                                             |
      | Electronics Engineers, Except Computer                         |
      | Nuclear Engineers                                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |


  Scenario: The user should be able to filters the occupation search by salary and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "93940" minimum salary
    And the user select "New and Emerging" from outlook
    Then the system will display the below occupation for the selected salary and outlook

      | Occupation Name                                                |
      | Radiologists                                                   |
      | Hospitalists                                                   |
      | Urologists                                                     |
      | Anesthesiologist Assistants                                    |
      | Remote Sensing Scientists and Technologists                    |
      | Telecommunications Engineering Specialists                     |
      | Microsystems Engineers                                         |
      | Pathologists                                                   |
      | Biomass Power Plant Managers                                   |
      | Water Resource Specialists                                     |
      | Environmental Economists                                       |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Dermatologists                                                 |
      | Preventive Medicine Physicians                                 |
      | Neuropsychologists and Clinical Neuropsychologists             |
      | Clinical Research Coordinators                                 |
      | Allergists and Immunologists                                   |
      | Neurologists                                                   |
      | Photonics Engineers                                            |
      | Physical Medicine and Rehabilitation Physicians                |
      | Nuclear Medicine Physicians                                    |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Ophthalmologists                                               |
      | Quality Control Systems Managers                               |
      | Brownfield Redevelopment Specialists and Site Managers         |
      | Sports Medicine Physicians                                     |
      | Radio Frequency Identification Device Specialists              |
      | Nanosystems Engineers                                          |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Biofuels Production Managers                                   |
      | Hydroelectric Production Managers                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |
      | Anesthesiologist Assistants |


  Scenario: The user should be able to filters the occupation search by salary and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "40550" minimum salary
    And the user select "Numerous Openings" from outlook
    Then the system will display the below occupation for the selected salary and outlook

      | Occupation Name                                        |
      | Radiologists                                           |
      | Software Developers, Systems Software                  |
      | Hospitalists                                           |
      | Aquacultural Managers                                  |
      | Urologists                                             |
      | Registered Nurses                                      |
      | Computer Systems Analysts                              |
      | Auditors                                               |
      | Computer Programmers                                   |
      | Pathologists                                           |
      | Software Developers, Applications                      |
      | Dermatologists                                         |
      | Licensed Practical and Licensed Vocational Nurses      |
      | Preventive Medicine Physicians                         |
      | Machinists                                             |
      | Cost Estimators                                        |
      | Advanced Practice Psychiatric Nurses                   |
      | Pharmacists                                            |
      | Allergists and Immunologists                           |
      | Neurologists                                           |
      | Physical Medicine and Rehabilitation Physicians        |
      | Nuclear Medicine Physicians                            |
      | Security Management Specialists                        |
      | Medical and Health Services Managers                   |
      | Informatics Nurse Specialists                          |
      | Computer User Support Specialists                      |
      | Ophthalmologists                                       |
      | Farm and Ranch Managers                                |
      | Accountants                                            |
      | Refrigeration Mechanics and Installers                 |
      | Brownfield Redevelopment Specialists and Site Managers |
      | Energy Auditors                                        |
      | Sports Medicine Physicians                             |
      | Dental Hygienists                                      |
      | Physical Therapists                                    |
      | Acute Care Nurses                                      |
      | Transportation Engineers                               |
      | Nursery and Greenhouse Managers                        |
      | Construction Managers                                  |
      | Network and Computer Systems Administrators            |
      | Civil Engineers                                        |
      | Critical Care Nurses                                   |
      | Clinical Nurse Specialists                             |


  Scenario: The user should be able to filters the occupation search by salary and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "67480" minimum salary
    And the user select "Rapid Growth" from outlook
    Then the system will display the below occupation for the selected salary and outlook

      | Occupation Name                                 |
      | Audiologists                                    |
      | Optometrists                                    |
      | Diagnostic Medical Sonographers                 |
      | Petroleum Engineers                             |
      | Nurse Midwives                                  |
      | Anesthesiologist Assistants                     |
      | Podiatrists                                     |
      | Computer Systems Analysts                       |
      | Clinical Data Managers                          |
      | Information Security Analysts                   |
      | Operations Research Analysts                    |
      | Mathematicians                                  |
      | Statisticians                                   |
      | Occupational Therapists                         |
      | Software Developers, Applications               |
      | Biostatisticians                                |
      | Industrial-Organizational Psychologists         |
      | Actuaries                                       |
      | Physician Assistants                            |
      | Logistics Engineers                             |
      | Radiation Therapists                            |
      | Nursing Instructors and Teachers, Postsecondary |
      | Medical and Health Services Managers            |
      | Anesthesiologists                               |
      | Informatics Nurse Specialists                   |
      | Surgeons                                        |
      | Magnetic Resonance Imaging Technologists        |
      | Dental Hygienists                               |
      | Physical Therapists                             |
      | Genetic Counselors                              |
      | Biomedical Engineers                            |
      | Health Specialties Teachers, Postsecondary      |
      | Nurse Anesthetists                              |
      | Nurse Practitioners                             |
      | Computer Systems Analysts                       |
      | Software Developers, Applications               |
      | Medical and Health Services Managers            |
      | Dental Hygienists                               |
      | Physical Therapists                             |
      | Informatics Nurse Specialists                   |
      | Anesthesiologist Assistants                     |
      | Clinical Data Managers                          |
      | Biostatisticians                                |
      | Logistics Engineers                             |
      | Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists |



  Scenario: The user should be able to filters the occupation search by career cluster and STEM discipline
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Agriculture, Food and Natural Resources" from career cluster
    And the user select "Engineering" from STEM discipline
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                             |
      |  Geological Sample Test Technicians                         |
      |  Service Unit Operators, Oil, Gas, and Mining               |
      |  Geophysical Data Technicians                               |
      |  Cartographers and Photogrammetrists                        |
      |  Natural Sciences Managers                                  |
      |  Environmental Engineering Technicians                      |
      |  Water and Wastewater Treatment Plant and System Operators  |
      |  Environmental Engineers                                    |
      |  Occupational Health and Safety Specialists                 |


  Scenario: The user should be able to filters the occupation search by career cluster and STEM discipline
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Information Technology" from career cluster
    And the user select "multi-disciplinary" from STEM discipline
    Then the system will display the below occupation for the selected filters

      | Occupation Name                           |
      |  Information Technology Project Managers  |
      |  Business Intelligence Analysts           |
      |  Web Administrators                       |
      |  Data Warehousing Specialists             |
      |  Video Game Designers                     |
      |  Database Architects                      |

  @regression
  Scenario: The user should be able to filters the occupation search by career cluster and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Science, Technology, Engineering and Mathematics" from career cluster
    And the user select "Medium preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                             |
      | Geographic Information Systems Technicians  |
      | Aerospace Engineers                         |
      | Marine Engineers                            |
      | Bioinformatics Technicians                  |
      | Remote Sensing Technicians                  |
      | Petroleum Engineers                         |
      | Electromechanical Engineering Technologists |
      | Electrical Engineering Technologists        |
      | Manufacturing Engineering Technologists     |
      | Chemists                                    |
      | Atmospheric and Space Scientists            |
      | Geodetic Surveyors                          |
      | Electrical Engineers                        |
      | Technical Writers                           |
      | Biochemical Engineers                       |
      | Water Resource Specialists                  |
      | Hydrologists                                |
      | Biological Technicians                      |
      | Product Safety Engineers                    |
      | Logistics Engineers                         |
      | Agricultural Engineers                      |
      | Photonics Engineers                         |
      | Park Naturalists                            |
      | Mechatronics Engineers                      |
      | Wind Energy Engineers                       |
      | Marine Architects                           |
      | Computer Hardware Engineers                 |
      | Quality Control Systems Managers            |
      | Automotive Engineers                        |
      | Architectural Drafters                      |
      | Industrial Engineering Technologists        |
      | Solar Energy Systems Engineers              |
      | Transportation Engineers                    |
      | Validation Engineers                        |
      | Chemical Engineers                          |
      | Electronics Engineers, Except Computer      |
      | Water/Wastewater Engineers                  |
      | Fire-Prevention and Protection Engineers    |
      | Industrial Engineers                        |
      | Materials Engineers                         |
      | Mechanical Engineers                        |
      | Nuclear Engineers                           |
      | Energy Engineers                            |
      | Manufacturing Engineers                     |
      | Robotics Engineers                          |
      |  Geoscientists, Except Hydrologists and Geographers   |
      |  Radio Frequency Identification Device Specialists    |
      |  Geospatial Information Scientists and Technologists  |
      |  Biofuels/Biodiesel Technology and Product Development Managers       |
      |  Mining and Geological Engineers, Including Mining Safety Engineers   |



  Scenario: The user should be able to filters the occupation search by career cluster and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Business, Management and Administration" from career cluster
    And the user select "New and Emerging" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                     |
      |  Biomass Power Plant Managers       |
      |  Energy Auditors                    |
      |  Biofuels Production Managers       |
      |  Hydroelectric Production Managers  |
      |  Brownfield Redevelopment Specialists and Site Managers  |


  Scenario: The user should be able to filters the occupation search by STEM discipline and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Technology" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                     |
      | Geographic Information Systems Technicians          |
      | Software Developers, Systems Software               |
      | Information Technology Project Managers             |
      | Graphic Designers                                   |
      | Business Intelligence Analysts                      |
      | Computer Network Support Specialists                |
      | Database Administrators                             |
      | Computer Systems Analysts                           |
      | Computer Programmers                                |
      | Information Security Analysts                       |
      | Technical Writers                                   |
      | Computer Network Architects                         |
      | Software Developers, Applications                   |
      | Document Management Specialists                     |
      | Computer Systems Engineers/Architects               |
      | Security Management Specialists                     |
      | Informatics Nurse Specialists                       |
      | Software Quality Assurance Engineers and Testers    |
      | Multimedia Artists and Animators                    |
      | Computer and Information Systems Managers           |
      | Database Architects                                 |
      | Network and Computer Systems Administrators         |
      | Geospatial Information Scientists and Technologists |



  Scenario: The user should be able to filters the occupation search by STEM discipline and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Mathematics" from STEM discipline
    And the user select "Considerable preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                              |
      | Mathematical Science Teachers, Postsecondary |
      | Mathematicians                               |
      | Statisticians                                |
      | Environmental Economists                     |
      | Bioinformatics Scientists                    |
      | Biostatisticians                             |
      | Natural Sciences Managers                    |
      | Graduate Teaching Assistants                 |
      | Survey Researchers                           |
      | Molecular and Cellular Biologists            |


  Scenario: The user should be able to filters the occupation search by STEM discipline and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Engineering" from STEM discipline
    And the user select "Rapid Growth" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                     |
      |  Petroleum Engineers                |
      |  Operations Research Analysts       |
      |  Software Developers, Applications  |
      |  Cost Estimators                    |
      |  Logistics Engineers                |
      |  Wind Turbine Service Technicians   |
      |  Medical Equipment Repairers        |
      |  Biomedical Engineers               |
      |  Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic  |



  Scenario: The user should be able to filters the occupation search by preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Some preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                            |
      | Industrial Engineering Technicians         |
      | Photonics Technicians                      |
      | Agricultural Technicians                   |
      | Nanotechnology Engineering Technicians     |
      | Mechanical Engineering Technologists       |
      | Occupational Health and Safety Technicians |
      | Nuclear Equipment Operation Technicians    |
      | Machinists                                 |
      | Wind Turbine Service Technicians           |
      | Chemical Technicians                       |
      | Nuclear Power Reactor Operators            |
      | Forest and Conservation Technicians        |
      | Forest and Conservation Workers            |
      | Hazardous Materials Removal Workers        |
      | Electrical Engineering Technicians         |
      | Refrigeration Mechanics and Installers     |
      | Energy Auditors                            |
      | Robotics Technicians                       |
      | Electronics Engineering Technicians        |
      | Automotive Engineering Technicians         |
      | Hydroelectric Plant Technicians            |
      | Electronics Engineering Technologists      |
      | Electro-Mechanical Technicians             |
      | Hydroelectric Production Managers          |
      |  First-Line Supervisors of Agricultural Crop and Horticultural Workers  |



  Scenario: The user should be able to filters the occupation search by preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Considerable preparation" from preparation needed
    And the user select "New and Emerging" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                    |
      | Radiologists                                       |
      | Hospitalists                                       |
      | Urologists                                         |
      | Anesthesiologist Assistants                        |
      | Remote Sensing Scientists and Technologists        |
      | Acupuncturists                                     |
      | Microsystems Engineers                             |
      | Pathologists                                       |
      | Environmental Economists                           |
      | Bioinformatics Scientists                          |
      | Dermatologists                                     |
      | Preventive Medicine Physicians                     |
      | Neuropsychologists and Clinical Neuropsychologists |
      | Biostatisticians                                   |
      | Advanced Practice Psychiatric Nurses               |
      | Climate Change Analysts                            |
      | Cytotechnologists                                  |
      | Naturopathic Physicians                            |
      | Allergists and Immunologists                       |
      | Neurologists                                       |
      | Orthoptists                                        |
      | Physical Medicine and Rehabilitation Physicians    |
      | Nuclear Medicine Physicians                        |
      | Ophthalmologists                                   |
      | Sports Medicine Physicians                         |
      | Environmental Restoration Planners                 |
      | Nanosystems Engineers                              |
      | Fuel Cell Engineers                                |
      | Human Factors Engineers and Ergonomists            |
      | Molecular and Cellular Biologists                  |
      | Geneticists                                        |
      | Industrial Ecologists                              |
      | Clinical Nurse Specialists                         |
      |  Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists  |

#-------------------------- 3 

  Scenario: The user should be able to filters the occupation search by salary, career cluster and STEM discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "98190" minimum salary
    And the user select "Health Science" from career cluster
    And the user select "Science" from STEM discipline
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                 |
      | Radiologists                                    |
      | Dentists, General                               |
      | Oral and Maxillofacial Surgeons                 |
      | Optometrists                                    |
      | Hospitalists                                    |
      | Orthodontists                                   |
      | Urologists                                      |
      | Prosthodontists                                 |
      | Psychiatrists                                   |
      | Podiatrists                                     |
      | Pathologists                                    |
      | Dermatologists                                  |
      | Preventive Medicine Physicians                  |
      | Clinical Research Coordinators                  |
      | Obstetricians and Gynecologists                 |
      | Pharmacists                                     |
      | Allergists and Immunologists                    |
      | Neurologists                                    |
      | Physical Medicine and Rehabilitation Physicians |
      | Nuclear Medicine Physicians                     |
      | Pediatricians, General                          |
      | Anesthesiologists                               |
      | Ophthalmologists                                |
      | Family and General Practitioners                |
      | Surgeons                                        |
      | Sports Medicine Physicians                      |
      | Internists, General                             |
      | Nurse Anesthetists                              |
      | Nurse Practitioners                             |


  Scenario: The user should be able to filters the occupation search by salary, career cluster and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "46340" minimum salary
    And the user select "Manufacturing" from career cluster
    And the user select "Some preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                                             |
      | Industrial Engineering Technicians                                          |
      | Photonics Technicians                                                       |
      | Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic |
      | Nuclear Power Reactor Operators                                             |
      | Medical Equipment Repairers                                                 |
      | Robotics Technicians                                                        |
      | Hydroelectric Plant Technicians                                             |
      | Mechanical Engineering Technicians                                          |


  Scenario: The user should be able to filters the occupation search by salary, career cluster and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "60390" minimum salary
    And the user select "Architecture and Construction" from career cluster
    And the user select "Numerous Openings" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name        |
      | Cost Estimators        |
      | Construction Managers  |
      | Civil Engineers        |


  Scenario: The user should be able to filters the occupation search by career cluster, STEM discipline and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Human Services" from career cluster
    And the user select "Science" from STEM discipline
    And the user select "Considerable preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                      |
      | Mental Health Counselors                             |
      | Rehabilitation Counselors                            |
      | Substance Abuse and Behavioral Disorder Counselors   |
      | Healthcare Social Workers                            |
      | Marriage and Family Therapists                       |


  Scenario: The user should be able to filters the occupation search by career cluster, STEM discipline and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Business, Management and Administration" from career cluster
    And the user select "Engineering" from STEM discipline
    And the user select "Rapid Growth" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name               |
      |  Operations Research Analysts |


  Scenario: The user should be able to filters the occupation search by salary, preparation needed and outlook 
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "95900" minimum salary
    And the user select "Medium preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                                |
      | Aerospace Engineers                                            |
      | Software Developers, Systems Software                          |
      | Water Resource Specialists                                     |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Photonics Engineers                                            |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Brownfield Redevelopment Specialists and Site Managers         |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Chemical Engineers                                             |
      | Electronics Engineers, Except Computer                         |
      | Nuclear Engineers                                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |


  Scenario: The user should be able to filters the occupation search by career cluster, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Manufacturing" from career cluster
    And the user select "Some preparation" from preparation needed
    And the user select "New and Emerging" from outlook
    Then the system will display the below occupation for the selected filters
      | Occupation Name                   |
      | Photonics Technicians             |
      | Robotics Technicians              |
      | Hydroelectric Plant Technicians   |  



  Scenario: The user should be able to filters the occupation search by STEM discipline, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user select "Science" from STEM discipline
    And the user select "Considerable preparation" from preparation needed
    And the user select "Numerous Openings" from outlook
    Then the system will display the below occupation for the selected filters
      | Occupation Name                                 |
      | Radiologists                                    |
      | Hospitalists                                    |
      | Urologists                                      |
      | Pathologists                                    |
      | Dermatologists                                  |
      | Preventive Medicine Physicians                  |
      | Advanced Practice Psychiatric Nurses            |
      | Pharmacists                                     |
      | Allergists and Immunologists                    |
      | Neurologists                                    |
      | Physical Medicine and Rehabilitation Physicians |
      | Nuclear Medicine Physicians                     |
      | Medical and Health Services Managers            |
      | Ophthalmologists                                |
      | Sports Medicine Physicians                      |
      | Physical Therapists                             |
      | Clinical Nurse Specialists                      |



  Scenario: The user should be able to filters the occupation search by salary, STEM discipline and outlook
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "66670" minimum salary
    And the user select "Mathematics" from STEM discipline
    And the user select "New and Emerging" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                   |
      | Financial Quantitative Analysts   |
      | Clinical Data Managers            |
      | Water Resource Specialists        |
      | Environmental Economists          |
      | Bioinformatics Scientists         |
      | Biostatisticians                  |
      | Clinical Research Coordinators    |
      | Risk Management Specialists       |
      | Molecular and Cellular Biologists |


  Scenario: The user should be able to filters the occupation search by salary, STEM discipline and preparation needed
    Given the user from Home Page navigate to Occupations search Page 
    When the user search for "46601" minimum salary
    And the user select "Mathematics" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                |
      | Clinical Data Managers         |
      | Technical Writers              |
      | Water Resource Specialists     |
      | Clinical Research Coordinators |
      | Actuaries                      |
      | Risk Management Specialists    |


  

#-------------------------- 4 

  Scenario: The user should be able to filters the occupation search by salary, career cluster, STEM discipline and preparation needed
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "79530" minimum salary
    And the user select "Information Technology" from career cluster
    And the user select "Technology" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                  |
      | Software Developers, Systems Software            |
      | Information Technology Project Managers          |
      | Business Intelligence Analysts                   |
      | Database Administrators                          |
      | Computer Systems Analysts                        |
      | Computer Programmers                             |
      | Information Security Analysts                    |
      | Computer Network Architects                      |
      | Software Developers, Applications                |
      | Document Management Specialists                  |
      | Computer Systems Engineers/Architects            |
      | Software Quality Assurance Engineers and Testers |
      | Computer and Information Systems Managers        |
      | Database Architects                              |


  Scenario: The user should be able to filters the occupation search by salary, career cluster, STEM discipline and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "79530" minimum salary
    And the user select "Information Technology" from career cluster
    And the user select "Technology" from STEM discipline
    And the user select "Numerous Openings" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                       |
      | Software Developers, Systems Software |
      | Computer Systems Analysts             |
      | Computer Programmers                  |
      | Software Developers, Applications     |


  Scenario: The user should be able to filters the occupation search by salary, career cluster, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "89700" minimum salary
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    And the user select "Medium preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters
      | Occupation Name                                                |
      | Aerospace Engineers                                            |
      | Atmospheric and Space Scientists                               |
      | Electrical Engineers                                           |
      | Biochemical Engineers                                          |
      | Water Resource Specialists                                     |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Photonics Engineers                                            |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Geoscientists, Except Hydrologists and Geographers             |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Chemical Engineers                                             |
      | Electronics Engineers, Except Computer                         |
      | Nuclear Engineers                                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |

  Scenario: The user should be able to filters the occupation search by salary, STEM discipline, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "61130" minimum salary
    And the user select "Engineering" from STEM discipline
    And the user select "Some preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                         |
      | Photonics Technicians                   |
      | Nanotechnology Engineering Technicians  |
      | Mechanical Engineering Technologists    |
      | Nuclear Equipment Operation Technicians |
      | Electrical Engineering Technicians      |
      | Energy Auditors                         |
      | Electronics Engineering Technicians     |
      | Electronics Engineering Technologists   |
      | Hydroelectric Production Managers       |


  Scenario: The user should be able to filters the occupation search by career cluster, STEM discipline, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Transportation, Distribution and Logistics" from career cluster
    And the user select "Engineering" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                 |
      |  Industrial Safety and Health Engineers  |


  #-------------------------- 5 

  Scenario: The user should be able to filters the occupation search by salary, career cluster, STEM discipline, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "95900" minimum salary
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    And the user select "Engineering" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    And the user select "Green Job" from outlook
    Then the system will display the below occupation for the selected filters

      | Occupation Name                                                |
      | Aerospace Engineers                                            |
      | Water Resource Specialists                                     |
      | Biofuels/Biodiesel Technology and Product Development Managers |
      | Photonics Engineers                                            |
      | Mechatronics Engineers                                         |
      | Wind Energy Engineers                                          |
      | Solar Energy Systems Engineers                                 |
      | Validation Engineers                                           |
      | Chemical Engineers                                             |
      | Electronics Engineers, Except Computer                         |
      | Nuclear Engineers                                              |
      | Energy Engineers                                               |
      | Manufacturing Engineers                                        |
      | Robotics Engineers                                             |


  Scenario Outline: The user should be able to filters the occupation search by salary, career cluster, STEM discipline, preparation needed and outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "95900" minimum salary
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    And the user select "Engineering" from STEM discipline
    And the user select "Medium preparation" from preparation needed
    And the user select "New and Emerging" from outlook
    And the user search for an occupation by "<Occupation Name>"
    Then the result will display the "<Occupation Name>" for the selected filters

  Examples: 
    | Occupation Name         |
    | Photonics Engineers     |
    | Mechatronics Engineers  |
    | Wind Energy Engineers   |
    | Validation Engineers    |
    | Energy Engineers        |
    | Manufacturing Engineers |
    | Robotics Engineers      |





  