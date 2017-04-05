Feature: The user should be able to filter the search result by STEM discipline 

  @smoke_test
  Scenario: The system should provide science, technology, engineering, mathematics filters and a reset for STEM-discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science" from STEM discipline
    Then the "Science" filter would be selected from STEM-discipline
    
    When the user select "Technology" from STEM discipline
    Then the "Technology" filter would be selected from STEM-discipline
    
    When the user select "Engineering" from STEM discipline
    Then the "Engineering" filter would be selected from STEM-discipline
    
    When the user select "Mathematics" from STEM discipline
    Then the "Mathematics" filter would be selected from STEM-discipline
    
    When the user select "multi-disciplinary" from STEM discipline
    Then the "multi-disciplinary" filter would be selected from STEM-discipline
    
    When the user select the STEM reset button
    Then the science, technology, engineering, mathematics, and multi-disciplinary filters should be unchecked

  @regression
  Scenario: The system should provide "Science" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Science" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Soil and Water Conservationists
        Medical Transcriptionists
        Radiologists
        Medical and Clinical Laboratory Technologists
        Industrial Engineering Technicians
        Counseling Psychologists
        Computer and Information Research Scientists
        Audiologists
        Dentists, General
        Oral and Maxillofacial Surgeons
        Optometrists
        Massage Therapists
        Architectural and Engineering Managers
        Physicists
        Diagnostic Medical Sonographers
        Hospitalists
        Orthodontists
        Bioinformatics Technicians
        Remote Sensing Technicians
        Urologists
        Registered Nurses
        Business Intelligence Analysts
        Dental Assistants
        Nurse Midwives
        Ophthalmic Medical Technologists
        Anesthesiologist Assistants
        Prosthodontists
        Psychiatrists
        Recreational Therapists
        Fire Investigators
        Podiatrists
        Cardiovascular Technologists and Technicians
        Psychiatric Aides
        Nursing Assistants
        Chiropractors
        Acupuncturists
        Data Warehousing Specialists
        Chemical Plant and System Operators
        Clinical Data Managers
        Nuclear Monitoring Technicians
        Computer Programmers
        Medical and Clinical Laboratory Technicians
        Radiologic Technologists
        Chemists
        Speech-Language Pathologists
        Emergency Medical Technicians and Paramedics
        Pathologists
        Atmospheric and Space Scientists
        Technical Writers
        Biochemical Engineers
        Cytogenetic Technologists
        Statisticians
        Occupational Therapists
        Astronomers
        Environmental Science Teachers, Postsecondary
        Occupational Health and Safety Technicians
        Materials Scientists
        Histotechnologists and Histologic Technicians
        Nuclear Equipment Operation Technicians
        Water Resource Specialists
        Physical Therapist Assistants
        Software Developers, Applications
        Bioinformatics Scientists
        Nuclear Medicine Technologists
        Dermatologists
        Licensed Practical and Licensed Vocational Nurses
        Medical Records and Health Information Technicians
        Preventive Medicine Physicians
        Hydrologists
        Occupational Therapy Aides
        Biostatisticians
        Biochemists and Biophysicists
        Clinical Research Coordinators
        Athletic Trainers
        Coroners
        Precision Agriculture Technicians
        Obstetricians and Gynecologists
        Chemistry Teachers, Postsecondary
        Health Educators
        Advanced Practice Psychiatric Nurses
        Climate Change Analysts
        Biological Technicians
        Home Health Aides
        Pharmacists
        Natural Sciences Managers
        Physician Assistants
        Physics Teachers, Postsecondary
        Neurodiagnostic Technologists
        Mental Health Counselors
        Cytotechnologists
        Naturopathic Physicians
        Psychology Teachers, Postsecondary
        Graduate Teaching Assistants
        Medical Appliance Technicians
        Ophthalmic Laboratory Technicians
        Range Managers
        Allergists and Immunologists
        Mental Health and Substance Abuse Social Workers
        Neurologists
        Zoologists and Wildlife Biologists
        Epidemiologists
        Radiation Therapists
        Nursing Instructors and Teachers, Postsecondary
        Fishers and Related Fishing Workers
        Orthoptists
        Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists
        Physical Medicine and Rehabilitation Physicians
        Park Naturalists
        Dental Laboratory Technicians
        Nuclear Medicine Physicians
        Fish and Game Wardens
        Engineering Teachers, Postsecondary
        Fallers
        Administrative Services Managers
        Biologists
        Rehabilitation Counselors
        Security Management Specialists
        Medical Assistants
        Medical and Health Services Managers
        Medical Scientists, Except Epidemiologists
        Chemical Technicians
        Community Health Workers
        Nuclear Power Reactor Operators
        Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary
        Respiratory Therapists
        Environmental Science and Protection Technicians, Including Health
        Forest and Conservation Technicians
        Forest and Conservation Workers
        Pediatricians, General
        Ophthalmic Medical Technicians
        Substance Abuse and Behavioral Disorder Counselors
        Anesthesiologists
        School Psychologists
        Informatics Nurse Specialists
        Computer User Support Specialists
        Biological Science Teachers, Postsecondary
        Geoscientists, Except Hydrologists and Geographers
        Orthotists and Prosthetists
        Physical Therapist Aides
        Opticians, Dispensing
        Ophthalmologists
        Psychiatric Technicians
        Radiologic Technicians
        Forensic Science Technicians
        Veterinary Assistants and Laboratory Animal Caretakers
        Archeologists
        Family and General Practitioners
        Foresters
        Surgeons
        Medical Secretaries
        Quality Control Analysts
        Sports Medicine Physicians
        Environmental Compliance Inspectors
        Clinical Psychologists
        Magnetic Resonance Imaging Technologists
        Midwives
        Dental Hygienists
        Physical Therapists
        Pharmacy Aides
        Respiratory Therapy Technicians
        Healthcare Social Workers
        Genetic Counselors
        Chemical Equipment Operators and Tenders
        Acute Care Nurses
        Environmental Restoration Planners
        Occupational Therapy Assistants
        Microbiologists
        Forestry and Conservation Science Teachers, Postsecondary
        Hearing Aid Specialists
        Database Architects
        Dietetic Technicians
        Orderlies
        Medical Equipment Preparers
        Speech-Language Pathology Assistants
        Endoscopy Technicians
        First-Line Supervisors of Aquacultural Workers
        Hydroelectric Plant Technicians
        Dietitians and Nutritionists
        Marriage and Family Therapists
        Internists, General
        Surgical Technologists
        Pharmacy Technicians
        Veterinary Technologists and Technicians
        Molecular and Cellular Biologists
        Geneticists
        Industrial Ecologists
        Health Specialties Teachers, Postsecondary
        Veterinarians
        Critical Care Nurses
        Clinical Nurse Specialists
        Nurse Anesthetists
        Nurse Practitioners
        Occupational Health and Safety Specialists
        """

  Scenario: The system should provide "Technology" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Technology" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Geographic Information Systems Technicians
        Computer and Information Research Scientists
        Software Developers, Systems Software
        Information Technology Project Managers
        Graphic Designers
        Business Intelligence Analysts
        Computer Network Support Specialists
        Database Administrators
        Telecommunications Engineering Specialists
        Computer Systems Analysts
        Web Administrators
        Data Warehousing Specialists
        Computer Programmers
        Computer Operators
        Information Security Analysts
        Technical Writers
        Computer Network Architects
        Software Developers, Applications
        Computer Science Teachers, Postsecondary
        Document Management Specialists
        Computer Systems Engineers/Architects
        Graduate Teaching Assistants
        Security Management Specialists
        Informatics Nurse Specialists
        Computer User Support Specialists
        Software Quality Assurance Engineers and Testers
        Multimedia Artists and Animators
        Computer and Information Systems Managers
        Web Developers
        Database Architects
        Network and Computer Systems Administrators
        Geospatial Information Scientists and Technologists
        """

  Scenario: The system should provide "Engineering" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Engineering" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Geological Sample Test Technicians
        Aerospace Engineers
        Industrial Engineering Technicians
        Marine Engineers
        Architectural and Engineering Managers
        Physicists
        Civil Drafters
        Software Developers, Systems Software
        Petroleum Engineers
        Civil Engineering Technicians
        Photonics Technicians
        Electromechanical Engineering Technologists
        Service Unit Operators, Oil, Gas, and Mining
        Electrical Engineering Technologists
        Ship Engineers
        Geophysical Data Technicians
        Manufacturing Engineering Technologists
        Fire Investigators
        Mapping Technicians
        Telecommunications Engineering Specialists
        Electromechanical Equipment Assemblers
        Microsystems Engineers
        Nanotechnology Engineering Technologists
        Nanotechnology Engineering Technicians
        Methane/Landfill Gas Generation System Technicians
        Aviation Inspectors
        Computer Programmers
        Mechanical Engineering Technologists
        Biomass Power Plant Managers
        Geodetic Surveyors
        Operations Research Analysts
        Municipal Fire Fighting and Prevention Supervisors
        Electrical Engineers
        Technical Writers
        Biochemical Engineers
        Non-Destructive Testing Specialists
        Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic
        Nuclear Equipment Operation Technicians
        Cartographers and Photogrammetrists
        Water Resource Specialists
        Software Developers, Applications
        Biofuels/Biodiesel Technology and Product Development Managers
        Commercial and Industrial Designers
        Machinists
        Electrical Drafters
        Cost Estimators
        Clinical Research Coordinators
        Product Safety Engineers
        Natural Sciences Managers
        Aircraft Mechanics and Service Technicians
        Mechanical Drafters
        Graduate Teaching Assistants
        Logistics Engineers
        Agricultural Engineers
        Wind Turbine Service Technicians
        Photonics Engineers
        Surveying Technicians
        Engineering Teachers, Postsecondary
        Mechatronics Engineers
        Wind Energy Engineers
        Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation
        Marine Architects
        Environmental Engineering Technicians
        Water and Wastewater Treatment Plant and System Operators
        Hazardous Materials Removal Workers
        Computer Hardware Engineers
        Electrical Engineering Technicians
        Quality Control Systems Managers
        Refrigeration Mechanics and Installers
        Medical Equipment Repairers
        Automotive Engineers
        Brownfield Redevelopment Specialists and Site Managers
        Energy Auditors
        Robotics Technicians
        Architectural Drafters
        Industrial Engineering Technologists
        Surveyors
        Aerospace Engineering and Operations Technicians
        Electronic Drafters
        Electronics Engineering Technicians
        Radio Frequency Identification Device Specialists
        Nanosystems Engineers
        Solar Energy Systems Engineers
        Automotive Engineering Technicians
        Fuel Cell Technicians
        Transportation Engineers
        Electronics Engineering Technologists
        Validation Engineers
        Fuel Cell Engineers
        Mechanical Engineering Technicians
        Electro-Mechanical Technicians
        Biofuels Production Managers
        Hydroelectric Production Managers
        Construction Managers
        Biomedical Engineers
        Chemical Engineers
        Civil Engineers
        Electronics Engineers, Except Computer
        Environmental Engineers
        Water/Wastewater Engineers
        Industrial Safety and Health Engineers
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
        Occupational Health and Safety Specialists
        """

  Scenario: The system should provide "Mathematics" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Mathematics" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Mathematical Science Teachers, Postsecondary
        Financial Quantitative Analysts
        Clinical Data Managers
        Mathematicians
        Technical Writers
        Statisticians
        Water Resource Specialists
        Environmental Economists
        Bioinformatics Scientists
        Biostatisticians
        Clinical Research Coordinators
        Actuaries
        Natural Sciences Managers
        Graduate Teaching Assistants
        Mathematical Technicians
        Risk Management Specialists
        Survey Researchers
        Molecular and Cellular Biologists
        """

  Scenario: The system should provide "Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Counseling Psychologists
        Information Technology Project Managers
        Business Intelligence Analysts
        Remote Sensing Scientists and Technologists
        Web Administrators
        Data Warehousing Specialists
        Auditors
        Transportation Planners
        Technical Writers
        Water Resource Specialists
        Bioinformatics Scientists
        Neuropsychologists and Clinical Neuropsychologists
        Biochemists and Biophysicists
        Clinical Research Coordinators
        Climate Change Analysts
        Industrial-Organizational Psychologists
        Natural Sciences Managers
        Graduate Teaching Assistants
        Zoologists and Wildlife Biologists
        Medical Scientists, Except Epidemiologists
        Biological Science Teachers, Postsecondary
        Geoscientists, Except Hydrologists and Geographers
        Accountants
        Video Game Designers
        Anthropologists
        Environmental Restoration Planners
        Database Architects
        Dietetic Technicians
        Dietitians and Nutritionists
        Geospatial Information Scientists and Technologists
        Molecular and Cellular Biologists
        """


Scenario: The system should provide "Science, Engineering" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Engineering" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Architectural and Engineering Managers
        Physicists
        Fire Investigators
        Biochemical Engineers
        Engineering Teachers, Postsecondary
        Occupational Health and Safety Specialists
        Industrial Engineering Technicians
        Nuclear Equipment Operation Technicians
        """


  Scenario: The system should provide "Science, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Multi-interdisciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Counseling Psychologists
        Biochemists and Biophysicists
        Climate Change Analysts
        Zoologists and Wildlife Biologists
        Medical Scientists, Except Epidemiologists
        Biological Science Teachers, Postsecondary
        Geoscientists, Except Hydrologists and Geographers
        Environmental Restoration Planners
        Dietetic Technicians
        Dietitians and Nutritionists
        """
        

  Scenario: The system should provide "Science, Technology" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Technology" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Computer and Information Research Scientists
        Security Management Specialists
        Informatics Nurse Specialists
        Computer User Support Specialists
        """


  Scenario: The system should provide "Technology, Engineering" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Technology, Engineering" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Software Developers, Systems Software
        Telecommunications Engineering Specialists
        """


  Scenario: The system should provide "Technology, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Technology, Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Information Technology Project Managers
        Web Administrators
        Geospatial Information Scientists and Technologists
        """
  

  Scenario: The system should provide "Science, Math" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Math" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Clinical Data Managers
        Statisticians
        Biostatisticians
        """
  

  Scenario: The system should provide "Science, Technology, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Technology, Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Business Intelligence Analysts
        Data Warehousing Specialists
        Database Architects
        """


  Scenario: The system should provide "Science, Technology, Engineering" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Technology, Engineering" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Computer Programmers
        Software Developers, Applications
        """


  Scenario: The system should provide "Mathematics, Science, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Mathematics, Science, Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Bioinformatics Scientists
        Molecular and Cellular Biologists
        """


  Scenario: The system should provide "Science, Mathematics, Engineering, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Mathematics, Engineering, Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Water Resource Specialists
        Clinical Research Coordinators
        Natural Sciences Managers
        """


  Scenario: The system should provide "Science, Mathematics, Engineering, Technology, Multi-disciplinary" filter for STEM Discipline
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Science, Mathematics, Engineering, Technology, Multi-disciplinary" from STEM discipline
    Then the system will display the below occupations name for the selected STEM discipline
        """
        Technical Writers
        Graduate Teaching Assistants
        """  


  Scenario Outline: The user should be able to filter the search by science
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "science" from STEM discipline
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected STEM discipline

    When the user select everything but "science" from STEM discipline
    Then the result will not display the "<Occupation Name>" for the selected STEM discipline
    
    Examples: 
      | Occupation Name         |
      | Acupuncturists           |
      | Biologists               |
      | Clinical Psychologists   |
      | Epidemiologists          |


  Scenario Outline: The user should be able to filter the search by technology
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "technology" from STEM discipline
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected STEM discipline

    When the user select everything but "technology" from STEM discipline
    Then the result will not display the "<Occupation Name>" for the selected STEM discipline
    
    Examples: 
        | Occupation Name                        |
        | Computer Network Support Specialists    |
        | Graphic Designers                       |
        | Computer Operators                      |


  Scenario Outline: The user should be able to filter the search by engineering
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "engineering" from STEM discipline
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected STEM discipline

    When the user select everything but "engineering" from STEM discipline
    Then the result will not display the "<Occupation Name>" for the selected STEM discipline
    
    Examples:
        | Occupation Name                 |
        | Aerospace Engineers              |
        | Civil Drafters                   |
        | Electrical Drafters              |


  Scenario Outline: The user should be able to filter the search by mathematics
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "mathematics" from STEM discipline
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected STEM discipline

    When the user select everything but "mathematics" from STEM discipline
    Then the result will not display the "<Occupation Name>" for the selected STEM discipline
    
    Examples: 
        | Occupation Name               |
        | Actuaries                      |
        | Environmental Economists       |
        | Mathematical Technicians       |


  Scenario Outline: The user should be able to filter the search by multi-disciplinary
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "multi-disciplinary" from STEM discipline
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected STEM discipline

    When the user select everything but "multi-disciplinary" from STEM discipline
    Then the result will not display the "<Occupation Name>" for the selected STEM discipline
    
    Examples:
        | Occupation Name               |
        | Accountants                    |
        | Video Game Designers           |
        | Anthropologists                |
        

    

