Feature: The user should be able to filter the Occupations search result by Career Cluster 

  @smoke_test
  Scenario: The system should provide Career Cluster as drop-down 
    When the user from Home Page navigate to Occupations search Page
    Then the Career Cluster drop-down would be displayed 
        """
        - select one or more -
        Agriculture, Food and Natural Resources
        Health Science
        Science, Technology, Engineering and Mathematics
        Manufacturing
        Information Technology
        Human Services
        Education and Training
        Arts, Audio/Video Technology and Communications
        Architecture and Construction
        Transportation, Distribution and Logistics
        Law, Public Safety, Corrections and Security
        Finance
        Business, Management and Administration
        Government and Public Administration
        Hospitality and Tourism
        """
  
  @smoke_test
  Scenario: The user should be able to reset the career cluster filters to default
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Agriculture, Food and Natural Resources" from career cluster
    And the user select "Architecture and Construction" from career cluster
    
    Then the "Agriculture, Food and Natural Resources" filter would be selected from career cluster
    And the "Architecture and Construction" filter would be selected from career cluster 
    
    When the user select the career cluster reset button
    Then the career cluster should be cleared

  @smooke_test
  Scenario: The user should be able to select the same career cluster filter after closing it
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Agriculture, Food and Natural Resources" from career cluster
    And click on x to close it
    Then the user select "Agriculture, Food and Natural Resources" from career cluster 
    And the "Agriculture, Food and Natural Resources" should be selected
    
  @regression
  Scenario: The system should provide "Agriculture, Food and Natural Resources" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Geological Sample Test Technicians
        Soil and Water Conservationists
        Aquacultural Managers
        Soil and Plant Scientists
        Service Unit Operators, Oil, Gas, and Mining
        Geophysical Data Technicians
        Farm and Home Management Advisors
        First-Line Supervisors of Animal Husbandry and Animal Care Workers
        Animal Breeders
        Animal Scientists
        Agricultural Sciences Teachers, Postsecondary
        Occupational Health and Safety Technicians
        Cartographers and Photogrammetrists
        First-Line Supervisors of Agricultural Crop and Horticultural Workers
        Precision Agriculture Technicians
        Natural Sciences Managers
        Range Managers
        Zoologists and Wildlife Biologists
        Fishers and Related Fishing Workers
        Fish and Game Wardens
        Fallers
        Environmental Science and Protection Technicians, Including Health
        Environmental Engineering Technicians
        Forest and Conservation Technicians
        Forest and Conservation Workers
        Water and Wastewater Treatment Plant and System Operators
        Food Scientists and Technologists
        Veterinary Assistants and Laboratory Animal Caretakers
        Farm and Ranch Managers
        Foresters
        Environmental Compliance Inspectors
        First-Line Supervisors of Aquacultural Workers
        Veterinary Technologists and Technicians
        Nursery and Greenhouse Managers
        Environmental Engineers
        Veterinarians
        Occupational Health and Safety Specialists
        """

  Scenario: The system should provide "Health Science" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Health Science" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Medical Transcriptionists
        Radiologists
        Medical and Clinical Laboratory Technologists
        Counseling Psychologists
        Audiologists
        Dentists, General
        Oral and Maxillofacial Surgeons
        Optometrists
        Diagnostic Medical Sonographers
        Hospitalists
        Orthodontists
        Urologists
        Registered Nurses
        Dental Assistants
        Nurse Midwives
        Ophthalmic Medical Technologists
        Anesthesiologist Assistants
        Prosthodontists
        Psychiatrists
        Recreational Therapists
        Podiatrists
        Cardiovascular Technologists and Technicians
        Psychiatric Aides
        Nursing Assistants
        Chiropractors
        Acupuncturists
        Clinical Data Managers
        Medical and Clinical Laboratory Technicians
        Radiologic Technologists
        Speech-Language Pathologists
        Pathologists
        Cytogenetic Technologists
        Occupational Therapists
        Histotechnologists and Histologic Technicians
        Physical Therapist Assistants
        Nuclear Medicine Technologists
        Dermatologists
        Licensed Practical and Licensed Vocational Nurses
        Medical Records and Health Information Technicians
        Preventive Medicine Physicians
        Occupational Therapy Aides
        Neuropsychologists and Clinical Neuropsychologists
        Clinical Research Coordinators
        Athletic Trainers
        Obstetricians and Gynecologists
        Health Educators
        Advanced Practice Psychiatric Nurses
        Home Health Aides
        Pharmacists
        Physician Assistants
        Neurodiagnostic Technologists
        Cytotechnologists
        Naturopathic Physicians
        Ophthalmic Laboratory Technicians
        Allergists and Immunologists
        Mental Health and Substance Abuse Social Workers
        Neurologists
        Epidemiologists
        Radiation Therapists
        Orthoptists
        Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists
        Physical Medicine and Rehabilitation Physicians
        Mathematical Technicians
        Dental Laboratory Technicians
        Nuclear Medicine Physicians
        Biologists
        Medical Assistants
        Medical Scientists, Except Epidemiologists
        Community Health Workers
        Respiratory Therapists
        Pediatricians, General
        Ophthalmic Medical Technicians
        Anesthesiologists
        Informatics Nurse Specialists
        Orthotists and Prosthetists
        Physical Therapist Aides
        Opticians, Dispensing
        Ophthalmologists
        Psychiatric Technicians
        Radiologic Technicians
        Family and General Practitioners
        Surgeons
        Sports Medicine Physicians
        Clinical Psychologists
        Magnetic Resonance Imaging Technologists
        Midwives
        Dental Hygienists
        Physical Therapists
        Pharmacy Aides
        Respiratory Therapy Technicians
        Genetic Counselors
        Acute Care Nurses
        Occupational Therapy Assistants
        Hearing Aid Specialists
        Dietetic Technicians
        Orderlies
        Medical Equipment Preparers
        Speech-Language Pathology Assistants
        Endoscopy Technicians
        Dietitians and Nutritionists
        Internists, General
        Surgical Technologists
        Pharmacy Technicians
        Biomedical Engineers
        Critical Care Nurses
        Clinical Nurse Specialists
        Nurse Anesthetists
        Nurse Practitioners
        """

  Scenario: The system should provide "Science, Technology, Engineering and Mathematics" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Geographic Information Systems Technicians
        Aerospace Engineers
        Marine Engineers
        Architectural and Engineering Managers
        Physicists
        Civil Drafters
        Bioinformatics Technicians
        Remote Sensing Technicians
        Petroleum Engineers
        Electromechanical Engineering Technologists
        Agricultural Technicians
        Electrical Engineering Technologists
        Manufacturing Engineering Technologists
        Remote Sensing Scientists and Technologists
        Mapping Technicians
        Microsystems Engineers
        Nanotechnology Engineering Technologists
        Nanotechnology Engineering Technicians
        Nuclear Monitoring Technicians
        Chemists
        Mechanical Engineering Technologists
        Atmospheric and Space Scientists
        Geodetic Surveyors
        Mathematicians
        Electrical Engineers
        Technical Writers
        Biochemical Engineers
        Statisticians
        Astronomers
        Non-Destructive Testing Specialists
        Materials Scientists
        Nuclear Equipment Operation Technicians
        Water Resource Specialists
        Environmental Economists
        Bioinformatics Scientists
        Biofuels/Biodiesel Technology and Product Development Managers
        Hydrologists
        Electrical Drafters
        Biostatisticians
        Biochemists and Biophysicists
        Biological Technicians
        Product Safety Engineers
        Logistics Engineers
        Agricultural Engineers
        Wind Turbine Service Technicians
        Photonics Engineers
        Park Naturalists
        Surveying Technicians
        Mechatronics Engineers
        Wind Energy Engineers
        Chemical Technicians
        Marine Architects
        Computer Hardware Engineers
        Geoscientists, Except Hydrologists and Geographers
        Electrical Engineering Technicians
        Quality Control Systems Managers
        Archeologists
        Automotive Engineers
        Quality Control Analysts
        Survey Researchers
        Food Science Technicians
        Architectural Drafters
        Industrial Engineering Technologists
        Anthropologists
        Environmental Restoration Planners
        Electronic Drafters
        Electronics Engineering Technicians
        Microbiologists
        Radio Frequency Identification Device Specialists
        Nanosystems Engineers
        Solar Energy Systems Engineers
        Automotive Engineering Technicians
        Fuel Cell Technicians
        Transportation Engineers
        Electronics Engineering Technologists
        Validation Engineers
        Fuel Cell Engineers
        Electro-Mechanical Technicians
        Geospatial Information Scientists and Technologists
        Chemical Engineers
        Electronics Engineers, Except Computer
        Water/Wastewater Engineers
        Fire-Prevention and Protection Engineers
        Industrial Engineers
        Human Factors Engineers and Ergonomists
        Materials Engineers
        Mechanical Engineers
        Mining and Geological Engineers, Including Mining Safety Engineers
        Nuclear Engineers
        Energy Engineers
        Manufacturing Engineers
        Robotics Engineers
        Molecular and Cellular Biologists
        Geneticists
        Industrial Ecologists
        """
  
  Scenario: The system should provide "Manufacturing" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Manufacturing" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Industrial Engineering Technicians
        Photonics Technicians
        Electromechanical Equipment Assemblers
        Chemical Plant and System Operators
        Methane/Landfill Gas Generation System Technicians
        Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic
        Machinists
        Medical Appliance Technicians
        Nuclear Power Reactor Operators
        Medical Equipment Repairers
        Robotics Technicians
        Chemical Equipment Operators and Tenders
        Hydroelectric Plant Technicians
        Mechanical Engineering Technicians
        """

  Scenario: The system should provide "Information Technology" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Information Technology" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Computer and Information Research Scientists
        Software Developers, Systems Software
        Information Technology Project Managers
        Business Intelligence Analysts
        Computer Network Support Specialists
        Database Administrators
        Telecommunications Engineering Specialists
        Computer Systems Analysts
        Web Administrators
        Data Warehousing Specialists
        Computer Programmers
        Information Security Analysts
        Computer Network Architects
        Software Developers, Applications
        Document Management Specialists
        Computer Systems Engineers/Architects
        Computer User Support Specialists
        Software Quality Assurance Engineers and Testers
        Video Game Designers
        Computer and Information Systems Managers
        Web Developers
        Database Architects
        Network and Computer Systems Administrators
        """

  Scenario: The system should provide "Human Services" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Human Services" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Massage Therapists
        Industrial-Organizational Psychologists
        Mental Health Counselors
        Rehabilitation Counselors
        Substance Abuse and Behavioral Disorder Counselors
        Healthcare Social Workers
        Marriage and Family Therapists
        """

  Scenario: The system should provide "Education and Training" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Education and Training" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Mathematical Science Teachers, Postsecondary
        Environmental Science Teachers, Postsecondary
        Computer Science Teachers, Postsecondary
        Chemistry Teachers, Postsecondary
        Physics Teachers, Postsecondary
        Psychology Teachers, Postsecondary
        Graduate Teaching Assistants
        Nursing Instructors and Teachers, Postsecondary
        Engineering Teachers, Postsecondary
        Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary
        School Psychologists
        Biological Science Teachers, Postsecondary
        Forestry and Conservation Science Teachers, Postsecondary
        Health Specialties Teachers, Postsecondary
        """

  Scenario: The system should provide "Arts, Audio/Video Technology and Communications" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Graphic Designers
        Commercial and Industrial Designers
        Multimedia Artists and Animators
        """

  Scenario: The system should provide "Architecture and Construction" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Architecture and Construction" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Civil Engineering Technicians
        Cost Estimators
        Mechanical Drafters
        Hazardous Materials Removal Workers
        Refrigeration Mechanics and Installers
        Surveyors
        Construction Managers
        Civil Engineers
        """

  Scenario: The system should provide "Transportation, Distribution and Logistics" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Ship Engineers
        Aviation Inspectors
        Transportation Planners
        Aircraft Mechanics and Service Technicians
        Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation
        Aerospace Engineering and Operations Technicians
        Industrial Safety and Health Engineers
        """

  Scenario: The system should provide "Law, Public Safety, Corrections and Security" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Fire Investigators
        Emergency Medical Technicians and Paramedics
        Municipal Fire Fighting and Prevention Supervisors
        Security Management Specialists
        Forensic Science Technicians
        """

  Scenario: The system should provide "Finance" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Finance" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Financial Quantitative Analysts
        Actuaries
        Risk Management Specialists
        """

  Scenario: The system should provide "Business, Management and Administration" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Business, Management and Administration" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Auditors
        Computer Operators
        Biomass Power Plant Managers
        Operations Research Analysts
        Administrative Services Managers
        Medical and Health Services Managers
        Accountants
        Brownfield Redevelopment Specialists and Site Managers
        Medical Secretaries
        Energy Auditors
        Biofuels Production Managers
        Hydroelectric Production Managers
        """

  Scenario: The system should provide "Government and Public Administration
" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Government and Public Administration" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Coroners
        Climate Change Analysts
        """

  Scenario: The system should provide "Hospitality and Tourism" filter for Career Cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Hospitality and Tourism" from career cluster
    Then the system will display the below occupations name for the selected career cluster 
        """
        Museum Technicians and Conservators
        """


  Scenario Outline: The user should be able to search for "Agriculture, Food and Natural Resources" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Agriculture, Food and Natural Resources" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster
 
    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    Examples: 
      | Occupation Name                    |
      | Zoologists and Wildlife Biologists  |
      | Fishers and Related Fishing Workers |
      | Fish and Game Wardens               |
      | Fallers                             |

        
        

  Scenario Outline: The user should be able to search for "Health Science" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Health Science" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name  |
        | Orthodontists     |
        | Urologists        |
        | Registered Nurses |
        | Dental Assistants |

  
  Scenario Outline: The user should be able to search for "Science, Technology, Engineering and Mathematics" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Technology, Engineering and Mathematics" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name       |
        | Mathematicians        |
        | Electrical Engineers  |
        | Technical Writers     |
        | Biochemical Engineers |


  Scenario Outline: The user should be able to search for "Manufacturing" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Manufacturing" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                   |
        | Medical Appliance Technicians     |
        | Nuclear Power Reactor Operators   |
        | Medical Equipment Repairers       |
        | Hydroelectric Plant Technicians   |


  Scenario Outline: The user should be able to search for "Information Technology" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Information Technology" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                           |
        | Software Developers, Systems Software     |
        | Information Technology Project Managers   |
        | Business Intelligence Analysts            |


  Scenario Outline: The user should be able to search for "Human Services" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Human Services" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name           |
        | Mental Health Counselors  |
        | Rehabilitation Counselors |
        | Healthcare Social Workers |


  Scenario Outline: The user should be able to search for "Education and Training" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Education and Training" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                       |
        | Chemistry Teachers, Postsecondary     |
        | Physics Teachers, Postsecondary       |
        | Psychology Teachers, Postsecondary    |


  Scenario Outline: The user should be able to search for "Arts, Audio/Video Technology and Communications" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Arts, Audio/Video Technology and Communications" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                       |
        | Commercial and Industrial Designers   |
        | Multimedia Artists and Animators      |


  Scenario Outline: The user should be able to search for "Architecture and Construction" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Architecture and Construction" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name       |
        | Surveyors             |
        | Construction Managers |
        | Civil Engineers       |


  Scenario Outline: The user should be able to search for "Transportation, Distribution and Logistics" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Transportation, Distribution and Logistics" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                                   |
        | Aircraft Mechanics and Service Technicians        |
        | Aerospace Engineering and Operations Technicians  |
        | Industrial Safety and Health Engineers            |


  Scenario Outline: The user should be able to search for "Law, Public Safety, Corrections and Security" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Law, Public Safety, Corrections and Security" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                   |
        | Security Management Specialists   |
        | Forensic Science Technicians      |


  Scenario Outline: The user should be able to search for "Finance" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Finance" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                   |
        | Financial Quantitative Analysts   |
        | Risk Management Specialists       |


  Scenario Outline: The user should be able to search for "Business, Management and Administration" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Business, Management and Administration" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name                   |
        | Biomass Power Plant Managers      |
        | Operations Research Analysts      |
        | Administrative Services Managers  |



  Scenario Outline: The user should be able to search for "Government and Public Administration" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Government and Public Administration" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Hospitality and Tourism" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name           |
        | Coroners                  |
        | Climate Change Analysts   |



  Scenario Outline: The user should be able to search for "Hospitality and Tourism" occupations from career cluster
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Hospitality and Tourism" from career cluster
    And the user search for an occupation by "<Occupation Name>"
    Then the system will display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Agriculture, Food and Natural Resources" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Health Science" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster 

    When the user select the career cluster reset button
    And the user select "Science, Technology, Engineering and Mathematics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Manufacturing" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Information Technology" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Human Services" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Education and Training" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Arts, Audio/Video Technology and Communications" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Architecture and Construction" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Transportation, Distribution and Logistics" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Law, Public Safety, Corrections and Security" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Finance" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Business, Management and Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

    When the user select the career cluster reset button
    And the user select "Government and Public Administration" from career cluster
    Then the system will not display the "<Occupation Name>" for the selected career cluster

  Examples:
        | Occupation Name |
        | Museum Technicians and Conservators |


  
  
        
        
        
        
        
        
        
        
        
        
        
        
        
        

    

