Feature: The user should be able to filter the search result by preparation needed

  @smoke_test
  Scenario: The system should provide Some, Medium, Considerable preparation filters and a reset for preparation needed
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Some preparation" from preparation needed
    Then the "Some preparation" filter would be selected from preparation needed

    When the user select "Medium preparation" from preparation needed
    Then the "Medium preparation" filter would be selected from preparation needed

    When the user select "Considerable preparation" from preparation needed
    Then the "Some preparation" filter would be selected from preparation needed

    When the user select the preparation needed reset button
    Then the preparation needed filters should be unselected

  @regression
  Scenario: The system should provide same name for Some, Medium, Considerable preparation filters when hover over or select that filter 
    Given the user from Home Page navigate to Occupations search Page
    When the user select "Some preparation" from preparation needed
    #Then the "Some preparation" should display under the search bar

    When the user select the preparation needed reset button
    And the user select "Medium preparation" from preparation needed
    Then the "Medium preparation" should display under the search bar

    When the user select the preparation needed reset button
    And the user select "Considerable preparation" from preparation needed
    Then the "Considerable preparation" should display under the search bar

    
  @regression
  Scenario: The system should provide "Some preparation" filter for preparation needed
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Some preparation" from preparation needed
    Then the system will display the below occupations name for the selected preparation needed
        """
        Medical Transcriptionists
        Industrial Engineering Technicians
        Massage Therapists
        Diagnostic Medical Sonographers
        Civil Drafters
        Registered Nurses
        Civil Engineering Technicians
        Photonics Technicians
        Dental Assistants
        Agricultural Technicians
        Ophthalmic Medical Technologists
        Ship Engineers
        Fire Investigators
        Cardiovascular Technologists and Technicians
        Mapping Technicians
        Telecommunications Engineering Specialists
        First-Line Supervisors of Animal Husbandry and Animal Care Workers
        Animal Breeders
        Web Administrators
        Nanotechnology Engineering Technicians
        Nuclear Monitoring Technicians
        Aviation Inspectors
        Medical and Clinical Laboratory Technicians
        Radiologic Technologists
        Computer Operators
        Mechanical Engineering Technologists
        Emergency Medical Technicians and Paramedics
        Municipal Fire Fighting and Prevention Supervisors
        Occupational Health and Safety Technicians
        Histotechnologists and Histologic Technicians
        Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic
        Nuclear Equipment Operation Technicians
        Physical Therapist Assistants
        Nuclear Medicine Technologists
        Licensed Practical and Licensed Vocational Nurses
        Medical Records and Health Information Technicians
        Machinists
        Occupational Therapy Aides
        Electrical Drafters
        First-Line Supervisors of Agricultural Crop and Horticultural Workers
        Coroners
        Neurodiagnostic Technologists
        Aircraft Mechanics and Service Technicians
        Mechanical Drafters
        Medical Appliance Technicians
        Radiation Therapists
        Wind Turbine Service Technicians
        Surveying Technicians
        Administrative Services Managers
        Medical Assistants
        Chemical Technicians
        Nuclear Power Reactor Operators
        Respiratory Therapists
        Forest and Conservation Technicians
        Forest and Conservation Workers
        Ophthalmic Medical Technicians
        Water and Wastewater Treatment Plant and System Operators
        Hazardous Materials Removal Workers
        Computer User Support Specialists
        Electrical Engineering Technicians
        Opticians, Dispensing
        Psychiatric Technicians
        Radiologic Technicians
        Veterinary Assistants and Laboratory Animal Caretakers
        Refrigeration Mechanics and Installers
        Medical Equipment Repairers
        Medical Secretaries
        Energy Auditors
        Quality Control Analysts
        Magnetic Resonance Imaging Technologists
        Dental Hygienists
        Robotics Technicians
        Food Science Technicians
        Respiratory Therapy Technicians
        Acute Care Nurses
        Electronic Drafters
        Web Developers
        Electronics Engineering Technicians
        Occupational Therapy Assistants
        Hearing Aid Specialists
        Automotive Engineering Technicians
        Speech-Language Pathology Assistants
        Endoscopy Technicians
        Hydroelectric Plant Technicians
        Surgical Technologists
        Electronics Engineering Technologists
        Pharmacy Technicians
        Mechanical Engineering Technicians
        Electro-Mechanical Technicians
        Veterinary Technologists and Technicians
        Nursery and Greenhouse Managers
        Hydroelectric Production Managers
        Critical Care Nurses
        """

  Scenario: The system should provide "Medium preparation" filter for preparation needed
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Medium preparation" from preparation needed
    Then the system will display the below occupations name for the selected preparation needed
        """
        Geological Sample Test Technicians
        Soil and Water Conservationists
        Geographic Information Systems Technicians
        Aerospace Engineers
        Medical and Clinical Laboratory Technologists
        Marine Engineers
        Software Developers, Systems Software
        Bioinformatics Technicians
        Aquacultural Managers
        Information Technology Project Managers
        Remote Sensing Technicians
        Petroleum Engineers
        Graphic Designers
        Business Intelligence Analysts
        Electromechanical Engineering Technologists
        Computer Network Support Specialists
        Electrical Engineering Technologists
        Recreational Therapists
        Geophysical Data Technicians
        Database Administrators
        Manufacturing Engineering Technologists
        Computer Systems Analysts
        Clinical Data Managers
        Auditors
        Computer Programmers
        Chemists
        Transportation Planners
        Atmospheric and Space Scientists
        Biomass Power Plant Managers
        Information Security Analysts
        Geodetic Surveyors
        Electrical Engineers
        Technical Writers
        Biochemical Engineers
        Cytogenetic Technologists
        Computer Network Architects
        Cartographers and Photogrammetrists
        Water Resource Specialists
        Software Developers, Applications
        Biofuels/Biodiesel Technology and Product Development Managers
        Hydrologists
        Commercial and Industrial Designers
        Cost Estimators
        Clinical Research Coordinators
        Precision Agriculture Technicians
        Health Educators
        Biological Technicians
        Document Management Specialists
        Product Safety Engineers
        Museum Technicians and Conservators
        Actuaries
        Computer Systems Engineers/Architects
        Range Managers
        Logistics Engineers
        Agricultural Engineers
        Photonics Engineers
        Mathematical Technicians
        Park Naturalists
        Fish and Game Wardens
        Mechatronics Engineers
        Wind Energy Engineers
        Security Management Specialists
        Marine Architects
        Community Health Workers
        Environmental Science and Protection Technicians, Including Health
        Environmental Engineering Technicians
        Informatics Nurse Specialists
        Computer Hardware Engineers
        Geoscientists, Except Hydrologists and Geographers
        Quality Control Systems Managers
        Forensic Science Technicians
        Food Scientists and Technologists
        Farm and Ranch Managers
        Accountants
        Software Quality Assurance Engineers and Testers
        Foresters
        Automotive Engineers
        Risk Management Specialists
        Brownfield Redevelopment Specialists and Site Managers
        Environmental Compliance Inspectors
        Midwives
        Architectural Drafters
        Industrial Engineering Technologists
        Multimedia Artists and Animators
        Video Game Designers
        Surveyors
        Computer and Information Systems Managers
        Aerospace Engineering and Operations Technicians
        Database Architects
        Radio Frequency Identification Device Specialists
        Solar Energy Systems Engineers
        First-Line Supervisors of Aquacultural Workers
        Transportation Engineers
        Validation Engineers
        Biofuels Production Managers
        Construction Managers
        Network and Computer Systems Administrators
        Geospatial Information Scientists and Technologists
        Biomedical Engineers
        Chemical Engineers
        Civil Engineers
        Electronics Engineers, Except Computer
        Water/Wastewater Engineers
        Industrial Safety and Health Engineers
        Fire-Prevention and Protection Engineers
        Industrial Engineers
        Materials Engineers
        Mechanical Engineers
        Mining and Geological Engineers, Including Mining Safety Engineers
        Nuclear Engineers
        Energy Engineers
        Manufacturing Engineers
        Robotics Engineers
        Occupational Health and Safety Specialists
        """

  Scenario: The system should provide "Considerable preparation" filter for preparation needed
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Considerable preparation" from preparation needed
    Then the system will display the below occupations name for the selected preparation needed
        """
        Radiologists
        Counseling Psychologists
        Computer and Information Research Scientists
        Audiologists
        Dentists, General
        Oral and Maxillofacial Surgeons
        Optometrists
        Architectural and Engineering Managers
        Physicists
        Hospitalists
        Orthodontists
        Mathematical Science Teachers, Postsecondary
        Soil and Plant Scientists
        Urologists
        Nurse Midwives
        Anesthesiologist Assistants
        Prosthodontists
        Psychiatrists
        Farm and Home Management Advisors
        Podiatrists
        Remote Sensing Scientists and Technologists
        Chiropractors
        Acupuncturists
        Microsystems Engineers
        Speech-Language Pathologists
        Pathologists
        Operations Research Analysts
        Mathematicians
        Animal Scientists
        Statisticians
        Agricultural Sciences Teachers, Postsecondary
        Occupational Therapists
        Astronomers
        Environmental Science Teachers, Postsecondary
        Materials Scientists
        Environmental Economists
        Bioinformatics Scientists
        Computer Science Teachers, Postsecondary
        Dermatologists
        Preventive Medicine Physicians
        Neuropsychologists and Clinical Neuropsychologists
        Biostatisticians
        Biochemists and Biophysicists
        Athletic Trainers
        Obstetricians and Gynecologists
        Chemistry Teachers, Postsecondary
        Advanced Practice Psychiatric Nurses
        Climate Change Analysts
        Industrial-Organizational Psychologists
        Pharmacists
        Natural Sciences Managers
        Physician Assistants
        Physics Teachers, Postsecondary
        Mental Health Counselors
        Cytotechnologists
        Naturopathic Physicians
        Psychology Teachers, Postsecondary
        Graduate Teaching Assistants
        Allergists and Immunologists
        Mental Health and Substance Abuse Social Workers
        Neurologists
        Zoologists and Wildlife Biologists
        Epidemiologists
        Nursing Instructors and Teachers, Postsecondary
        Orthoptists
        Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists
        Physical Medicine and Rehabilitation Physicians
        Nuclear Medicine Physicians
        Engineering Teachers, Postsecondary
        Biologists
        Rehabilitation Counselors
        Medical and Health Services Managers
        Medical Scientists, Except Epidemiologists
        Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary
        Pediatricians, General
        Substance Abuse and Behavioral Disorder Counselors
        Anesthesiologists
        School Psychologists
        Biological Science Teachers, Postsecondary
        Orthotists and Prosthetists
        Ophthalmologists
        Archeologists
        Family and General Practitioners
        Surgeons
        Sports Medicine Physicians
        Clinical Psychologists
        Survey Researchers
        Physical Therapists
        Healthcare Social Workers
        Genetic Counselors
        Anthropologists
        Environmental Restoration Planners
        Microbiologists
        Forestry and Conservation Science Teachers, Postsecondary
        Nanosystems Engineers
        Dietitians and Nutritionists
        Marriage and Family Therapists
        Internists, General
        Fuel Cell Engineers
        Environmental Engineers
        Human Factors Engineers and Ergonomists
        Molecular and Cellular Biologists
        Geneticists
        Industrial Ecologists
        Health Specialties Teachers, Postsecondary
        Veterinarians
        Clinical Nurse Specialists
        Nurse Anesthetists
        Nurse Practitioners
        """

  Scenario Outline: The user should be able to filter the search by "Some preparation"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Some preparation" from preparation needed
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected preparation needed

    When the user select everything but "Some preparation" from preparation needed
    Then the result will not display the "<Occupation Name>" for the selected preparation needed
    
    Examples: 
      | Occupation Name                      |
      | Nuclear Power Reactor Operators       |
      | Forest and Conservation Technicians   |
      | Forest and Conservation Workers       |
      | Ophthalmic Medical Technicians        |      
      | Hazardous Materials Removal Workers   |
      | Computer User Support Specialists     |
      | Electrical Engineering Technicians    |


  Scenario Outline: The user should be able to filter the search by "Medium preparation"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Medium preparation" from preparation needed
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected preparation needed

    When the user select everything but "Medium preparation" from preparation needed
    Then the result will not display the "<Occupation Name>" for the selected preparation needed
    
    Examples: 
      | Occupation Name      |
      | Mechanical Engineers  |
      | Validation Engineers  |
      | Chemical Engineers    |
      | Construction Managers |
      | Biomedical Engineers  |

  Scenario Outline: The user should be able to filter the search by "Considerable preparation"
    Given the user from Home Page navigate to Occupations search Page
    When the user just select "Considerable preparation" from preparation needed
    And the user search for an occupation by "<Occupation Name>"
    Then the result will just display the "<Occupation Name>" for the selected preparation needed

    When the user select everything but "Considerable preparation" from preparation needed
    Then the result will not display the "<Occupation Name>" for the selected preparation needed
    
    Examples:
        | Occupation Name         |
        | Nurse Anesthetists       |
        | Environmental Engineers  |
        | Fuel Cell Engineers      |
        | Industrial Ecologists    |
        | Nurse Practitioners      |



 