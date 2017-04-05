Feature: The user should be able to filter the search result by salary 

  @smoke_test
  Scenario: The user should be able to reset the salary filters to default
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "50000" minimum salary
    Then the salary filter would be displayed "$50,000"
    
    When the user select the salary reset button
    Then the salary text box should be cleared

  @regression
  Scenario: The user should be able to search for minimum amount salary 
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "250000" minimum salary
    Then the result will only show jobs that offers at least "250000"    


  Scenario Outline: The user should be able to filter the search by salary and occupation name
    Given the user from Home Page navigate to Occupations search Page
    When the user search for "50000" minimum salary
    And the user search for an occupation by "<Full name>"
    Then the result will only show occupation(s) that offers at least "50000" by "<Full name>"
    
  Examples: 
    | Full name                |
    | Accountants              |
    | Actuaries                |
    | Biochemical Engineers    |
    | Chiropractors            |


  Scenario: The user should be able to filter the search by salary
    Given the user from Home Page navigate to Occupations search Page
    #When the user search for "197700" minimum salary
    Then the system will display the below major occupation for the selected salary
        | Major name                                                                                        | salary |
        | Geological Sample Test Technicians                                                                | 55610  |
        | Soil and Water Conservationists                                                                   | 61110  |
        | Medical Transcriptionists                                                                         | 34890  |
        | Radiologists                                                                                      | 291500 |
        | Geographic Information Systems Technicians                                                        | 85240  |
        | Aerospace Engineers                                                                               | 107830 |
        | Medical and Clinical Laboratory Technologists                                                     | 60520  |
        | Industrial Engineering Technicians                                                                | 53780  |
        | Counseling Psychologists                                                                          | 70580  |
        | Computer and Information Research Scientists                                                      | 110620 |
        | Marine Engineers                                                                                  | 93110  |
        | Audiologists                                                                                      | 74890  |
        | Dentists, General                                                                                 | 163240 |
        | Oral and Maxillofacial Surgeons                                                                   | 216440 |
        | Optometrists                                                                                      | 109810 |
        | Massage Therapists                                                                                | 40350  |
        | Architectural and Engineering Managers                                                            | 133240 |
        | Physicists                                                                                        | 111580 |
        | Diagnostic Medical Sonographers                                                                   | 68970  |
        | Civil Drafters                                                                                    | 50710  |
        | Software Developers, Systems Software                                                             | 105570 |
        | Hospitalists                                                                                      | 200050 |
        | Orthodontists                                                                                     | 243120 |
        | Bioinformatics Technicians                                                                        | 42700  |
        | Aquacultural Managers                                                                             | 64170  |
        | Mathematical Science Teachers, Postsecondary                                                      | 67170  |
        | Soil and Plant Scientists                                                                         | 60050  |
        | Information Technology Project Managers                                                           | 85240  |
        | Remote Sensing Technicians                                                                        | 45300  |
        | Petroleum Engineers                                                                               | 129990 |
        | Graphic Designers                                                                                 | 46900  |
        | Urologists                                                                                        | 301425 |
        | Registered Nurses                                                                                 | 67490  |
        | Business Intelligence Analysts                                                                    | 85240  |
        | Civil Engineering Technicians                                                                     | 49260  |
        | Photonics Technicians                                                                             | 61260  |
        | Dental Assistants                                                                                 | 35980  |
        | Electromechanical Engineering Technologists                                                       | 61260  |
        | Agricultural Technicians                                                                          | 36480  |
        | Computer Network Support Specialists                                                              | 62250  |
        | Service Unit Operators, Oil, Gas, and Mining                                                      | 45000  |
        | Nurse Midwives                                                                                    | 92510  |
        | Electrical Engineering Technologists                                                              | 61260  |
        | Ophthalmic Medical Technologists                                                                  | 41260  |
        | Ship Engineers                                                                                    | 72870  |
        | Anesthesiologist Assistants                                                                       | 98180  |
        | Prosthodontists                                                                                   | 119740 |
        | Psychiatrists                                                                                     | 190054 |
        | Recreational Therapists                                                                           | 45890  |
        | Geophysical Data Technicians                                                                      | 55610  |
        | Database Administrators                                                                           | 81710  |
        | Farm and Home Management Advisors                                                                 | 49190  |
        | Manufacturing Engineering Technologists                                                           | 61260  |
        | Fire Investigators                                                                                | 56730  |
        | Podiatrists                                                                                       | 119340 |
        | Remote Sensing Scientists and Technologists                                                       | 97130  |
        | Cardiovascular Technologists and Technicians                                                      | 54880  |
        | Mapping Technicians                                                                               | 42010  |
        | Telecommunications Engineering Specialists                                                        | 100240 |
        | Psychiatric Aides                                                                                 | 26190  |
        | Nursing Assistants                                                                                | 25710  |
        | Computer Systems Analysts                                                                         | 85800  |
        | First-Line Supervisors of Animal Husbandry and Animal Care Workers                                | 45340  |
        | Animal Breeders                                                                                   | 39380  |
        | Chiropractors                                                                                     | 64440  |
        | Electromechanical Equipment Assemblers                                                            | 33580  |
        | Web Administrators                                                                                | 85240  |
        | Acupuncturists                                                                                    | 74710  |
        | Financial Quantitative Analysts                                                                   | 66670  |
        | Data Warehousing Specialists                                                                      | 85240  |
        | Microsystems Engineers                                                                            | 95900  |
        | Nanotechnology Engineering Technologists                                                          | 61260  |
        | Nanotechnology Engineering Technicians                                                            | 61260  |
        | Chemical Plant and System Operators                                                               | 59320  |
        | Methane/Landfill Gas Generation System Technicians                                                | 55540  |
        | Clinical Data Managers                                                                            | 80110  |
        | Nuclear Monitoring Technicians                                                                    | 80260  |
        | Aviation Inspectors                                                                               | 70820  |
        | Auditors                                                                                          | 67190  |
        | Computer Programmers                                                                              | 79530  |
        | Medical and Clinical Laboratory Technicians                                                       | 38970  |
        | Radiologic Technologists                                                                          | 56670  |
        | Chemists                                                                                          | 71260  |
        | Speech-Language Pathologists                                                                      | 73410  |
        | Computer Operators                                                                                | 40420  |
        | Mechanical Engineering Technologists                                                              | 61260  |
        | Emergency Medical Technicians and Paramedics                                                      | 31980  |
        | Transportation Planners                                                                           | 76380  |
        | Pathologists                                                                                      | 195586 |
        | Atmospheric and Space Scientists                                                                  | 89820  |
        | Biomass Power Plant Managers                                                                      | 93940  |
        | Information Security Analysts                                                                     | 90120  |
        | Geodetic Surveyors                                                                                | 58020  |
        | Operations Research Analysts                                                                      | 78630  |
        | Mathematicians                                                                                    | 111110 |
        | Municipal Fire Fighting and Prevention Supervisors                                                | 72230  |
        | Electrical Engineers                                                                              | 93010  |
        | Technical Writers                                                                                 | 70240  |
        | Biochemical Engineers                                                                             | 93330  |
        | Animal Scientists                                                                                 | 73400  |
        | Cytogenetic Technologists                                                                         | 58640  |
        | Computer Network Architects                                                                       | 94000  |
        | Statisticians                                                                                     | 79570  |
        | Agricultural Sciences Teachers, Postsecondary                                                     | 90780  |
        | Occupational Therapists                                                                           | 80150  |
        | Astronomers                                                                                       | 104100 |
        | Environmental Science Teachers, Postsecondary                                                     | 78770  |
        | Non-Destructive Testing Specialists                                                               | 61260  |
        | Occupational Health and Safety Technicians                                                        | 48070  |
        | Materials Scientists                                                                              | 91000  |
        | Histotechnologists and Histologic Technicians                                                     | 60520  |
        | Computer Numerically Controlled Machine Tool Programmers, Metal and Plastic                       | 48990  |
        | Nuclear Equipment Operation Technicians                                                           | 80260  |
        | Cartographers and Photogrammetrists                                                               | 61880  |
        | Water Resource Specialists                                                                        | 120160 |
        | Physical Therapist Assistants                                                                     | 55170  |
        | Environmental Economists                                                                          | 99180  |
        | Software Developers, Applications                                                                 | 98260  |
        | Bioinformatics Scientists                                                                         | 75150  |
        | Nuclear Medicine Technologists                                                                    | 73360  |
        | Computer Science Teachers, Postsecondary                                                          | 74840  |
        | Biofuels/Biodiesel Technology and Product Development Managers                                    | 132800 |
        | Dermatologists                                                                                    | 293610 |
        | Licensed Practical and Licensed Vocational Nurses                                                 | 43170  |
        | Medical Records and Health Information Technicians                                                | 37110  |
        | Preventive Medicine Physicians                                                                    | 197700 |
        | Hydrologists                                                                                      | 79550  |
        | Commercial and Industrial Designers                                                               | 67130  |
        | Machinists                                                                                        | 40550  |
        | Occupational Therapy Aides                                                                        | 27800  |
        | Electrical Drafters                                                                               | 59520  |
        | First-Line Supervisors of Agricultural Crop and Horticultural Workers                             | 45340  |
        | Cost Estimators                                                                                   | 60390  |
        | Neuropsychologists and Clinical Neuropsychologists                                                | 94590  |
        | Biostatisticians                                                                                  | 80110  |
        | Biochemists and Biophysicists                                                                     | 82150  |
        | Clinical Research Coordinators                                                                    | 120160 |
        | Athletic Trainers                                                                                 | 44670  |
        | Coroners                                                                                          | 65640  |
        | Precision Agriculture Technicians                                                                 | 45300  |
        | Obstetricians and Gynecologists                                                                   | 234888 |
        | Chemistry Teachers, Postsecondary                                                                 | 75060  |
        | Health Educators                                                                                  | 51960  |
        | Advanced Practice Psychiatric Nurses                                                              | 67490  |
        | Climate Change Analysts                                                                           | 67460  |
        | Biological Technicians                                                                            | 41650  |
        | Document Management Specialists                                                                   | 85240  |
        | Product Safety Engineers                                                                          | 84600  |
        | Home Health Aides                                                                                 | 21920  |
        | Industrial-Organizational Psychologists                                                           | 77350  |
        | Museum Technicians and Conservators                                                               | 40340  |
        | Actuaries                                                                                         | 97070  |
        | Pharmacists                                                                                       | 121500 |
        | Computer Systems Engineers/Architects                                                             | 85240  |
        | Natural Sciences Managers                                                                         | 120160 |
        | Physician Assistants                                                                              | 98180  |
        | Physics Teachers, Postsecondary                                                                   | 82840  |
        | Neurodiagnostic Technologists                                                                     | 41260  |
        | Aircraft Mechanics and Service Technicians                                                        | 58370  |
        | Mechanical Drafters                                                                               | 53520  |
        | Mental Health Counselors                                                                          | 41880  |
        | Cytotechnologists                                                                                 | 60520  |
        | Naturopathic Physicians                                                                           | 74710  |
        | Psychology Teachers, Postsecondary                                                                | 70260  |
        | Graduate Teaching Assistants                                                                      | 30810  |
        | Medical Appliance Technicians                                                                     | 34890  |
        | Ophthalmic Laboratory Technicians                                                                 | 29860  |
        | Range Managers                                                                                    | 61110  |
        | Allergists and Immunologists                                                                      | 197700 |
        | Mental Health and Substance Abuse Social Workers                                                  | 42170  |
        | Neurologists                                                                                      | 220795 |
        | Logistics Engineers                                                                               | 74260  |
        | Agricultural Engineers                                                                            | 75090  |
        | Zoologists and Wildlife Biologists                                                                | 59680  |
        | Epidemiologists                                                                                   | 69450  |
        | Radiation Therapists                                                                              | 80220  |
        | Nursing Instructors and Teachers, Postsecondary                                                   | 67480  |
        | Wind Turbine Service Technicians                                                                  | 51050  |
        | Photonics Engineers                                                                               | 95900  |
        | Fishers and Related Fishing Workers                                                               | 28100  |
        | Orthoptists                                                                                       | 74710  |
        | Low Vision Therapists, Orientation and Mobility Specialists, and Vision Rehabilitation Therapists | 80150  |
        | Physical Medicine and Rehabilitation Physicians                                                   | 235000 |
        | Mathematical Technicians                                                                          | 46600  |
        | Park Naturalists                                                                                  | 61110  |
        | Dental Laboratory Technicians                                                                     | 37190  |
        | Surveying Technicians                                                                             | 42010  |
        | Nuclear Medicine Physicians                                                                       | 290639 |
        | Fish and Game Wardens                                                                             | 52780  |
        | Engineering Teachers, Postsecondary                                                               | 95060  |
        | Fallers                                                                                           | 36400  |
        | Mechatronics Engineers                                                                            | 95900  |
        | Wind Energy Engineers                                                                             | 95900  |
        | Administrative Services Managers                                                                  | 86110  |
        | Biologists                                                                                        | 52369  |
        | Rehabilitation Counselors                                                                         | 34390  |
        | Transportation Vehicle, Equipment and Systems Inspectors, Except Aviation                         | 70820  |
        | Security Management Specialists                                                                   | 68170  |
        | Medical Assistants                                                                                | 30590  |
        | Medical and Health Services Managers                                                              | 94500  |
        | Medical Scientists, Except Epidemiologists                                                        | 82240  |
        | Chemical Technicians                                                                              | 44660  |
        | Marine Architects                                                                                 | 93110  |
        | Community Health Workers                                                                          | 36300  |
        | Nuclear Power Reactor Operators                                                                   | 88560  |
        | Atmospheric, Earth, Marine, and Space Sciences Teachers, Postsecondary                            | 83150  |
        | Respiratory Therapists                                                                            | 57790  |
        | Environmental Science and Protection Technicians, Including Health                                | 43030  |
        | Environmental Engineering Technicians                                                             | 48650  |
        | Forest and Conservation Technicians                                                               | 35430  |
        | Forest and Conservation Workers                                                                   | 26190  |
        | Pediatricians, General                                                                            | 170300 |
        | Ophthalmic Medical Technicians                                                                    | 35350  |
        | Substance Abuse and Behavioral Disorder Counselors                                                | 39980  |
        | Anesthesiologists                                                                                 | 294811 |
        | School Psychologists                                                                              | 70580  |
        | Water and Wastewater Treatment Plant and System Operators                                         | 44790  |
        | Informatics Nurse Specialists                                                                     | 85800  |
        | Hazardous Materials Removal Workers                                                               | 39690  |
        | Computer User Support Specialists                                                                 | 48620  |
        | Biological Science Teachers, Postsecondary                                                        | 75320  |
        | Computer Hardware Engineers                                                                       | 111730 |
        | Geoscientists, Except Hydrologists and Geographers                                                | 89700  |
        | Orthotists and Prosthetists                                                                       | 64430  |
        | Electrical Engineering Technicians                                                                | 61130  |
        | Physical Therapist Aides                                                                          | 25120  |
        | Opticians, Dispensing                                                                             | 34840  |
        | Ophthalmologists                                                                                  | 190729 |
        | Quality Control Systems Managers                                                                  | 93940  |
        | Psychiatric Technicians                                                                           | 31140  |
        | Radiologic Technicians                                                                            | 41260  |
        | Forensic Science Technicians                                                                      | 56320  |
        | Food Scientists and Technologists                                                                 | 65840  |
        | Veterinary Assistants and Laboratory Animal Caretakers                                            | 24360  |
        | Farm and Ranch Managers                                                                           | 64170  |
        | Accountants                                                                                       | 67190  |
        | Software Quality Assurance Engineers and Testers                                                  | 85240  |
        | Archeologists                                                                                     | 61220  |
        | Family and General Practitioners                                                                  | 184390 |
        | Foresters                                                                                         | 58230  |
        | Refrigeration Mechanics and Installers                                                            | 45110  |
        | Medical Equipment Repairers                                                                       | 46340  |
        | Automotive Engineers                                                                              | 83590  |
        | Surgeons                                                                                          | 273922 |
        | Risk Management Specialists                                                                       | 66670  |
        | Brownfield Redevelopment Specialists and Site Managers                                            | 104850 |
        | Medical Secretaries                                                                               | 33040  |
        | Energy Auditors                                                                                   | 68170  |
        | Quality Control Analysts                                                                          | 45300  |
        | Sports Medicine Physicians                                                                        | 185112 |
        | Environmental Compliance Inspectors                                                               | 65640  |
        | Clinical Psychologists                                                                            | 70580  |
        | Magnetic Resonance Imaging Technologists                                                          | 67720  |
        | Midwives                                                                                          | 48270  |
        | Dental Hygienists                                                                                 | 72330  |
        | Survey Researchers                                                                                | 53920  |
        | Robotics Technicians                                                                              | 53340  |
        | Physical Therapists                                                                               | 84020  |
        | Pharmacy Aides                                                                                    | 24450  |
        | Food Science Technicians                                                                          | 36480  |
        | Architectural Drafters                                                                            | 50710  |
        | Industrial Engineering Technologists                                                              | 61260  |
        | Multimedia Artists and Animators                                                                  | 63970  |
        | Respiratory Therapy Technicians                                                                   | 48490  |
        | Healthcare Social Workers                                                                         | 52380  |
        | Video Game Designers                                                                              | 85240  |
        | Surveyors                                                                                         | 58020  |
        | Computer and Information Systems Managers                                                         | 131600 |
        | Genetic Counselors                                                                                | 72090  |
        | Anthropologists                                                                                   | 61220  |
        | Aerospace Engineering and Operations Technicians                                                  | 66180  |
        | Chemical Equipment Operators and Tenders                                                          | 47220  |
        | Acute Care Nurses                                                                                 | 67490  |
        | Environmental Restoration Planners                                                                | 67460  |
        | Electronic Drafters                                                                               | 59520  |
        | Web Developers                                                                                    | 64970  |
        | Electronics Engineering Technicians                                                               | 61130  |
        | Occupational Therapy Assistants                                                                   | 57870  |
        | Microbiologists                                                                                   | 67550  |
        | Forestry and Conservation Science Teachers, Postsecondary                                         | 88270  |
        | Hearing Aid Specialists                                                                           | 49600  |
        | Database Architects                                                                               | 85240  |
        | Radio Frequency Identification Device Specialists                                                 | 98270  |
        | Nanosystems Engineers                                                                             | 95900  |
        | Solar Energy Systems Engineers                                                                    | 95900  |
        | Automotive Engineering Technicians                                                                | 53910  |
        | Fuel Cell Technicians                                                                             | 61260  |
        | Dietetic Technicians                                                                              | 26040  |
        | Orderlies                                                                                         | 25580  |
        | Medical Equipment Preparers                                                                       | 33330  |
        | Speech-Language Pathology Assistants                                                              | 35780  |
        | Endoscopy Technicians                                                                             | 35780  |
        | First-Line Supervisors of Aquacultural Workers                                                    | 45340  |
        | Hydroelectric Plant Technicians                                                                   | 55540  |
        | Dietitians and Nutritionists                                                                      | 57910  |
        | Transportation Engineers                                                                          | 82220  |
        | Marriage and Family Therapists                                                                    | 48600  |
        | Internists, General                                                                               | 169508 |
        | Surgical Technologists                                                                            | 44330  |
        | Electronics Engineering Technologists                                                             | 61260  |
        | Validation Engineers                                                                              | 95900  |
        | Fuel Cell Engineers                                                                               | 83590  |
        | Pharmacy Technicians                                                                              | 30410  |
        | Mechanical Engineering Technicians                                                                | 53910  |
        | Electro-Mechanical Technicians                                                                    | 53340  |
        | Veterinary Technologists and Technicians                                                          | 31800  |
        | Nursery and Greenhouse Managers                                                                   | 64170  |
        | Biofuels Production Managers                                                                      | 93940  |
        | Hydroelectric Production Managers                                                                 | 93940  |
        | Construction Managers                                                                             | 87400  |
        | Network and Computer Systems Administrators                                                       | 77810  |
        | Geospatial Information Scientists and Technologists                                               | 85240  |
        | Biomedical Engineers                                                                              | 86220  |
        | Chemical Engineers                                                                                | 97360  |
        | Civil Engineers                                                                                   | 82220  |
        | Electronics Engineers, Except Computer                                                            | 98270  |
        | Environmental Engineers                                                                           | 84560  |
        | Water/Wastewater Engineers                                                                        | 84560  |
        | Industrial Safety and Health Engineers                                                            | 84600  |
        | Fire-Prevention and Protection Engineers                                                          | 84600  |
        | Industrial Engineers                                                                              | 83470  |
        | Human Factors Engineers and Ergonomists                                                           | 83470  |
        | Materials Engineers                                                                               | 91310  |
        | Mechanical Engineers                                                                              | 83590  |
        | Mining and Geological Engineers, Including Mining Safety Engineers                                | 94040  |
        | Nuclear Engineers                                                                                 | 102950 |
        | Energy Engineers                                                                                  | 95900  |
        | Manufacturing Engineers                                                                           | 95900  |
        | Robotics Engineers                                                                                | 95900  |
        | Molecular and Cellular Biologists                                                                 | 75150  |
        | Geneticists                                                                                       | 75150  |
        | Industrial Ecologists                                                                             | 67460  |
        | Health Specialties Teachers, Postsecondary                                                        | 90840  |
        | Veterinarians                                                                                     | 88490  |
        | Critical Care Nurses                                                                              | 67490  |
        | Clinical Nurse Specialists                                                                        | 67490  |
        | Nurse Anesthetists                                                                                | 157140 |
        | Nurse Practitioners                                                                               | 98190  |
        | Occupational Health and Safety Specialists                                                        | 70210  |

