Feature: The user should be able to filter the search result by outlook

  @smoke_test
  Scenario: The system should provide some filters and a reset for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Green Job" from outlook
    Then the "Green Job" filter would be selected from outlook

    When the user select "New and Emerging" from outlook
    Then the "New and Emerging" filter would be selected from outlook

    When the user select "Numerous Openings" from outlook
    Then the "Numerous Openings" filter would be selected from outlook

    When the user select "Rapid Growth" from outlook
    Then the "Rapid Growth" filter would be selected from outlook

    When the user select the outlook reset button
    Then the outlook filters should be unselected
    
  @regression
  Scenario: The system should provide "Green Job" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Green Job" from outlook
    Then the system will display the below occupations name for the selected outlook
        """
        Geological Sample Test Technicians
        Soil and Water Conservationists
        Geographic Information Systems Technicians
        Aerospace Engineers
        Industrial Engineering Technicians
        Architectural and Engineering Managers
        Software Developers, Systems Software
        Soil and Plant Scientists
        Remote Sensing Technicians
        Photonics Technicians
        Electromechanical Engineering Technologists
        Agricultural Technicians
        Service Unit Operators, Oil, Gas, and Mining
        Electrical Engineering Technologists
        Geophysical Data Technicians
        Farm and Home Management Advisors
        Manufacturing Engineering Technologists
        Remote Sensing Scientists and Technologists
        Financial Quantitative Analysts
        Microsystems Engineers
        Nanotechnology Engineering Technologists
        Nanotechnology Engineering Technicians
        Chemical Plant and System Operators
        Methane/Landfill Gas Generation System Technicians
        Chemists
        Mechanical Engineering Technologists
        Transportation Planners
        Atmospheric and Space Scientists
        Biomass Power Plant Managers
        Electrical Engineers
        Biochemical Engineers
        Occupational Health and Safety Technicians
        Materials Scientists
        Nuclear Equipment Operation Technicians
        Water Resource Specialists
        Environmental Economists
        Biofuels/Biodiesel Technology and Product Development Managers
        Hydrologists
        Commercial and Industrial Designers
        Machinists
        First-Line Supervisors of Agricultural Crop and Horticultural Workers
        Precision Agriculture Technicians
        Climate Change Analysts
        Natural Sciences Managers
        Logistics Engineers
        Zoologists and Wildlife Biologists
        Wind Turbine Service Technicians
        Photonics Engineers
        Fish and Game Wardens
        Mechatronics Engineers
        Wind Energy Engineers
        Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation
        Chemical Technicians
        Nuclear Power Reactor Operators
        Environmental Science and Protection Technicians, Including Health
        Environmental Engineering Technicians
        Forest and Conservation Technicians
        Forest and Conservation Workers
        Hazardous Materials Removal Workers
        Geoscientists, Except Hydrologists and Geographers
        Electrical Engineering Technicians
        Farm and Ranch Managers
        Refrigeration Mechanics and Installers
        Automotive Engineers
        Risk Management Specialists
        Brownfield Redevelopment Specialists and Site Managers
        Energy Auditors
        Robotics Technicians
        Architectural Drafters
        Industrial Engineering Technologists
        Chemical Equipment Operators and Tenders
        Environmental Restoration Planners
        Electronics Engineering Technicians
        Nanosystems Engineers
        Solar Energy Systems Engineers
        Automotive Engineering Technicians
        Fuel Cell Technicians
        Hydroelectric Plant Technicians
        Transportation Engineers
        Electronics Engineering Technologists
        Validation Engineers
        Fuel Cell Engineers
        Electro-Mechanical Technicians
        Biofuels Production Managers
        Hydroelectric Production Managers
        Construction Managers
        Geospatial Information Scientists and Technologists
        Chemical Engineers
        Civil Engineers
        Electronics Engineers, Except Computer
        Environmental Engineers
        Water/Wastewater Engineers
        Industrial Safety and Health Engineers
        Industrial Engineers
        Mechanical Engineers
        Nuclear Engineers
        Energy Engineers
        Manufacturing Engineers
        Robotics Engineers
        Industrial Ecologists
        Occupational Health and Safety Specialists
        """

  Scenario: The system should provide "New and Emerging" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "New and Emerging" from outlook
    Then the system will display the below occupations name for the selected outlook
        """
        Radiologists
        Geographic Information Systems Technicians
        Hospitalists
        Bioinformatics Technicians
        Information Technology Project Managers
        Remote Sensing Technicians
        Urologists
        Business Intelligence Analysts
        Photonics Technicians
        Electromechanical Engineering Technologists
        Electrical Engineering Technologists
        Ophthalmic Medical Technologists
        Anesthesiologist Assistants
        Manufacturing Engineering Technologists
        Remote Sensing Scientists and Technologists
        Telecommunications Engineering Specialists
        Web Administrators
        Acupuncturists
        Financial Quantitative Analysts
        Data Warehousing Specialists
        Microsystems Engineers
        Nanotechnology Engineering Technologists
        Nanotechnology Engineering Technicians
        Methane/Landfill Gas Generation System Technicians
        Clinical Data Managers
        Mechanical Engineering Technologists
        Transportation Planners
        Pathologists
        Biomass Power Plant Managers
        Geodetic Surveyors
        Biochemical Engineers
        Cytogenetic Technologists
        Non-Destructive Testing Specialists
        Histotechnologists and Histologic Technicians
        Water Resource Specialists
        Environmental Economists
        Bioinformatics Scientists
        Biofuels/Biodiesel Technology and Product Development Managers
        Dermatologists
        Preventive Medicine Physicians
        Neuropsychologists and Clinical Neuropsychologists
        Biostatisticians
        Clinical Research Coordinators
        Precision Agriculture Technicians
        Advanced Practice Psychiatric Nurses
        Climate Change Analysts
        Document Management Specialists
        Computer Systems Engineers/Architects
        Neurodiagnostic Technologists
        Cytotechnologists
        Naturopathic Physicians
        Allergists and Immunologists
        Neurologists
        Logistics Engineers
        Photonics Engineers
        Orthoptists
        Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists
        Physical Medicine and Rehabilitation Physicians
        Nuclear Medicine Physicians
        Mechatronics Engineers
        Wind Energy Engineers
        Security Management Specialists
        Informatics Nurse Specialists
        Ophthalmologists
        Quality Control Systems Managers
        Software Quality Assurance Engineers and Testers
        Automotive Engineers
        Risk Management Specialists
        Brownfield Redevelopment Specialists and Site Managers
        Energy Auditors
        Quality Control Analysts
        Sports Medicine Physicians
        Midwives
        Robotics Technicians
        Industrial Engineering Technologists
        Video Game Designers
        Acute Care Nurses
        Environmental Restoration Planners
        Database Architects
        Radio Frequency Identification Device Specialists
        Nanosystems Engineers
        Solar Energy Systems Engineers
        Automotive Engineering Technicians
        Fuel Cell Technicians
        Speech-Language Pathology Assistants
        Endoscopy Technicians
        Hydroelectric Plant Technicians
        Transportation Engineers
        Electronics Engineering Technologists
        Validation Engineers
        Fuel Cell Engineers
        Biofuels Production Managers
        Hydroelectric Production Managers
        Geospatial Information Scientists and Technologists
        Water/Wastewater Engineers
        Human Factors Engineers and Ergonomists
        Energy Engineers
        Manufacturing Engineers
        Robotics Engineers
        Molecular and Cellular Biologists
        Geneticists
        Industrial Ecologists
        Critical Care Nurses
        Clinical Nurse Specialists
        """

  Scenario: The system should provide "Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Numerous Openings" from outlook
    Then the system will display the below occupations name for the selected outlook
        """
        Radiologists
        Software Developers, Systems Software
        Hospitalists
        Aquacultural Managers
        Urologists
        Registered Nurses
        Dental Assistants
        Nursing Assistants
        Computer Systems Analysts
        Auditors
        Computer Programmers
        Emergency Medical Technicians and Paramedics
        Pathologists
        Software Developers, Applications
        Dermatologists
        Licensed Practical and Licensed Vocational Nurses
        Preventive Medicine Physicians
        Machinists
        Cost Estimators
        Advanced Practice Psychiatric Nurses
        Home Health Aides
        Pharmacists
        Allergists and Immunologists
        Neurologists
        Physical Medicine and Rehabilitation Physicians
        Nuclear Medicine Physicians
        Security Management Specialists
        Medical Assistants
        Medical and Health Services Managers
        Informatics Nurse Specialists
        Computer User Support Specialists
        Ophthalmologists
        Farm and Ranch Managers
        Accountants
        Refrigeration Mechanics and Installers
        Brownfield Redevelopment Specialists and Site Managers
        Medical Secretaries
        Energy Auditors
        Sports Medicine Physicians
        Dental Hygienists
        Physical Therapists
        Acute Care Nurses
        Transportation Engineers
        Pharmacy Technicians
        Nursery and Greenhouse Managers
        Construction Managers
        Network and Computer Systems Administrators
        Civil Engineers
        Critical Care Nurses
        Clinical Nurse Specialists
        """

  Scenario: The system should provide "Rapid Growth" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Rapid Growth" from outlook
    Then the system will display the below occupations name for the selected outlook
        """
        Audiologists
        Optometrists
        Massage Therapists
        Diagnostic Medical Sonographers
        Petroleum Engineers
        Dental Assistants
        Nurse Midwives
        Ophthalmic Medical Technologists
        Anesthesiologist Assistants
        Podiatrists
        Cardiovascular Technologists and Technicians
        Computer Systems Analysts
        Clinical Data Managers
        Medical and Clinical Laboratory Technicians
        Emergency Medical Technicians and Paramedics
        Information Security Analysts
        Operations Research Analysts
        Mathematicians
        Statisticians
        Occupational Therapists
        Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic
        Physical Therapist Assistants
        Software Developers, Applications
        Licensed Practical and Licensed Vocational Nurses
        Medical Records and Health Information Technicians
        Occupational Therapy Aides
        Cost Estimators
        Biostatisticians
        Home Health Aides
        Industrial-Organizational Psychologists
        Actuaries
        Physician Assistants
        Neurodiagnostic Technologists
        Mental Health Counselors
        Mental Health and Substance Abuse Social Workers
        Logistics Engineers
        Radiation Therapists
        Nursing Instructors and Teachers, Postsecondary
        Wind Turbine Service Technicians
        Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists
        Medical Assistants
        Medical and Health Services Managers
        Community Health Workers
        Ophthalmic Medical Technicians
        Substance Abuse and Behavioral Disorder Counselors
        Anesthesiologists
        Informatics Nurse Specialists
        Orthotists and Prosthetists
        Physical Therapist Aides
        Opticians, Dispensing
        Radiologic Technicians
        Medical Equipment Repairers
        Surgeons
        Medical Secretaries
        Magnetic Resonance Imaging Technologists
        Dental Hygienists
        Physical Therapists
        Healthcare Social Workers
        Genetic Counselors
        Occupational Therapy Assistants
        Hearing Aid Specialists
        Marriage and Family Therapists
        Surgical Technologists
        Veterinary Technologists and Technicians
        Biomedical Engineers
        Health Specialties Teachers, Postsecondary
        Nurse Anesthetists
        Nurse Practitioners
        """


  Scenario Outline: The system should provide "New and Emerging, Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>"
    And the user select "New and Emerging" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Numerous Openings" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging, Numerous Openings" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook

  Examples: 
      | Occupation Name                                        |
      | Radiologists                                            |
      | Hospitalists                                            |
      | Urologists                                              |
      | Pathologists                                            |
      | Dermatologists                                          |
      | Preventive Medicine Physicians                          |
      | Advanced Practice Psychiatric Nurses                    |
      | Allergists and Immunologists                            |
      | Neurologists                                            |
      | Physical Medicine and Rehabilitation Physicians         |
      | Nuclear Medicine Physicians                             |
      | Security Management Specialists                         |
      | Ophthalmologists                                        |
      | Sports Medicine Physicians                              |
      | Acute Care Nurses                                       |
      | Critical Care Nurses                                    |
      | Clinical Nurse Specialists                              |        

  
  Scenario Outline: The system should provide "Rapid Growth, Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>"
    And the user select "Rapid Growth" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Numerous Openings" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "Rapid Growth, Numerous Openings" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook

  Examples: 
      | Occupation Name                                    |
      | Dental Assistants                                   |
      | Computer Systems Analysts                           |
      | Emergency Medical Technicians and Paramedics        |
      | Software Developers, Applications                   |
      | Licensed Practical and Licensed Vocational Nurses   |
      | Cost Estimators                                     |
      | Home Health Aides                                   |
      | Medical Assistants                                  |
      | Medical and Health Services Managers                |
      | Medical Secretaries                                 |
      | Dental Hygienists                                   |
      | Physical Therapists                                 |
        

  Scenario Outline: The system should provide "New and Emerging, Rapid Growth" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>"
    And the user select "Rapid Growth" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "New and Emerging" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging, Rapid Growth" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook

    Examples: 
      | Occupation Name                    |
      | Ophthalmic Medical Technologists    |
      | Anesthesiologist Assistants         |
      | Clinical Data Managers              |
      | Biostatisticians                    |
      | Neurodiagnostic Technologists       |
      | Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists |


  Scenario Outline: The system should provide "New and Emerging, Rapid Growth, Green Job" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>"
    And the user select "Rapid Growth" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "New and Emerging" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Green Job" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging, Rapid Growth, Green Job" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook

    Examples: 
      | Occupation Name                    |
      | Logistics Engineers                 |

  Scenario Outline: The system should provide "New and Emerging, Rapid Growth, Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>" 
    And the user select "New and Emerging" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Rapid Growth" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Numerous Openings" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging, Rapid Growth, Numerous Openings" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook
        
    Examples: 
      | Occupation Name                |    
      | Informatics Nurse Specialists   |


  Scenario Outline: The system should provide "New and Emerging, Numerous Openings, Green Job" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user search for an occupation by "<Occupation Name>"
    And the user select "New and Emerging" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Numerous Openings" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select "Green Job" from outlook
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging, Numerous Openings, Green Job" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook

  Examples: 
      | Occupation Name                                        |
      | Brownfield Redevelopment Specialists and Site Managers  |
      | Energy Auditors                                         |
      | Transportation Engineers                                |
      
        

  Scenario Outline: The user should be able to filter the search by "Green Job"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Green Job" from outlook
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "Green Job" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook
    
    Examples: 
      | Occupation Name                    |
      | Aerospace Engineers                 |
      | Environmental Engineers             |
      | Fish and Game Wardens               |
      | Chemical Plant and System Operators |      
        

  Scenario Outline: The user should be able to filter the search by "New and Emerging"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "New and Emerging" from outlook
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "New and Emerging" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook
    
    Examples: 
      | Occupation Name                     |
      | Clinical Research Coordinators       |
      | Bioinformatics Technicians           |
      | Document Management Specialists      |
      | Web Administrators                   |
           

  Scenario Outline: The user should be able to filter the search by "Numerous Openings"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Numerous Openings" from outlook
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "Numerous Openings" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook
    
    Examples:
        | Occupation Name      |
        | Aquacultural Managers |
        | Registered Nurses     |
        | Accountants           |
        | Nursing Assistants    |
        


Scenario Outline: The user should be able to filter the search by "Rapid Growth"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Rapid Growth" from outlook
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected outlook

    When the user select everything but "Rapid Growth" from outlook
    Then the result will not display the "<Occupation Name>" for the selected outlook
    
    Examples: 
      | Occupation Name            |
      | Nurse Midwives              |
      | Community Health Workers    |
      | Statisticians               |
      | Physician Assistants        |      
      

        
   Scenario Outline: The system should provide "New and Emerging, Rapid Growth, Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user select "New and Emerging, Rapid Growth, Numerous Openings" from outlook
    Then the "<Occupation Name>" for the selected outlook will display at the top of the search result
        
    Examples: 
      | Occupation Name                |    
      | Informatics Nurse Specialists   |


  Scenario Outline: The system should provide "Rapid Growth, Numerous Openings" filter for outlook
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Rapid Growth, Numerous Openings" from outlook
    Then the "<Occupation Name>" for the selected outlook will display at the top of the search result

  Examples: 
      | Occupation Name                                    |
      | Dental Assistants                                   |
      | Computer Systems Analysts                           |
      | Emergency Medical Technicians and Paramedics        |
      | Software Developers, Applications                   |
      | Licensed Practical and Licensed Vocational Nurses   |
      | Cost Estimators                                     |
      | Home Health Aides                                   |
      | Medical Assistants                                  |
      | Medical and Health Services Managers                |
      | Medical Secretaries                                 |
      | Dental Hygienists                                   |
      | Physical Therapists                                 |
 