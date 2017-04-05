Feature: The user with an account should be able to save Tests data

  Background: The user with an account 
    Given the user navigate to Apply Page using belove info.
        | key              | Value             |
        | First name       | Jem               |
        | Last name        | Dell              |
        | Email address    | apply_t@gmail.com |
        | Birth Month      | June              |
        | Birth Day        | 22                |
        | Birth Year       | 2001              |
        | Password         | Test123456        |
        | Confirm Password | Test123456        |
        | TOS CheckBox     | True              |
        
    And the user select View Application
    And the user click on "Tests" link at Application page

  @smoke_test
  Scenario: the system should provide below info under Tests
    When the user delete all Test data record
    Then the system will display below information under Tests section   
      | Tests data      |
      | Tests           |
      | Previous        |
      | Next            |
      | Test            |
      | SAT             |
      | ACT             |
      | AP              |
      | Test date       |
      | Score           |
      | Save            |
      | Previous        |
      |                 |
      | Next            |


  @smoke_test
  Scenario: the system should provide subject drop dpwn list for SAT Test
    When the user select "SAT" test unser Application Tests
    Then the user will have below options to choose under subject  
      | subject options                     |
      | Evidence-Based Reading and Writing  |
      | Math                                |

    When the user select "ACT" test unser Application Tests
    Then the user will have below options to choose under subject  
      | subject options   |
      | English           |   
      | Reading           |
      | Science           |
      | Writing           | 

    When the user select "AP" test unser Application Tests
    Then the user will have below options to choose under subject  
      | subject options           |
      | AP Capstone               |
      | Arts                      | 
      | English                   |
      | History & Social Science  |
      | Math & Computer Science   | 
      | Sciences                  |
      | World Languages & Culture |

    When the user select "AP Capstone" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options    |
      | AP Research       |
      | AP Seminar        | 


    When the user select "Arts" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options            |
      | AP Art History            |
      | AP Music                  |
      | AP Studio Art: 2-D Design |
      | AP Studio Art: 3-D Design |
      | AP Studio Art: Drawing    |

    When the user select "English" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options                        |
      | AP English Language and Composition   |
      | AP English Literature and Composition |
      

    When the user select "History & Social Science" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options                           |
      | AP Comparative Government and Politics   |
      | AP European History                      |
      | AP Human Geography                       |
      | AP Macroeconomics                        |
      | AP Microeconomics                        |
      | AP Psychology                            |
      | AP United States Government and Politics |
      | AP United States History                 |
      | AP World History                         |

    When the user select "Math & Computer Science" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options                 |
      | AP Calculus AB                 |
      | AP Calculus BC                 |
      | AP Computer Science A          |
      | AP Computer Science Principles |
      | AP Statistics                  |

    When the user select "Sciences" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options                          |
      | AP Biology                              |
      | AP Chemistry                            |
      | AP Environmental Science                |
      | AP Physics C: Electricity and Magnetism |
      | AP Physics C: Mechanics                 |
      | AP Physics 1: Algebra-Based             |
      | AP Physics 2: Algebra-Based             |

    When the user select "World Languages & Culture" subject unser Application Tests
    Then the user will have below options to choose under course  
      | course options                    |
      | AP Chinese Language and Culture   |
      | AP French Language and Culture    |
      | AP German Language and Culture    |
      | AP Italian Language and Culture   |
      | AP Japanese Language and Culture  |
      | AP Latin                          |
      | AP Spanish Language and Culture   |
      | AP Spanish Literature and Culture |
      
      
      

  @smoke_test
  Scenario: the Save button should be disable until the user enter all required fields
    Then the Save button would be disable 


  @regression
  Scenario: the user should be to enter, save, edit and delete the Test data
    When the user delete all Test data record
    And the user enter the Test data based on below info
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | 06/2013                             |
      | Score           | 200                                 |
      
         
    Then the Save button will be enable
    And the user will lose the Test data if navigate to any page before saving the data

    When the user enter the Test data based on below info
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | 06/2013                             |
      | Score           | 200                                 |

    And the user save the data 
    Then the system will save the Test data and display the below info even the user navigate to any page and return 
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | 06/2013                             |
      | Score           | 200                                 |
    
    When the user select Edit action 
    Then the Test data will be displayed in edit mode
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | June 2013                           |
      | Score           | 200                                 |
    

    When the user edit the Test data based on below info
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | 06/2017                             |
      | Score           | 800                                 |

    Then the system will save and display the new Test data
      | key             | Value                               |
      | Test            | SAT                                 |
      | Subject         | Evidence-Based Reading and Writing  |
      | Course          |                                     |
      | Test date       | 06/2017                             |
      | Score           | 800                                 |

    When the user select Delete action 
    Then the Test data has been deleted
    And the user should be able to logout 


  Scenario: the user should be to enter ACT Test data
    Given the user delete all Test data record
    When the user enter the Test data based on below info
      | key       | Value   |
      | Test      | ACT     |
      | Subject   | Writing |
      | Course    |         |
      | Test date | 10/2013 |
      | Score     | 36      |

    And the user save the data 
    Then the system will save the Test data and display the below info even the user navigate to any page and return 
      | key       | Value   |
      | Test      | ACT     |
      | Subject   | Writing |
      | Course    |         |
      | Test date | 10/2013 |
      | Score     | 36      |


  Scenario: the user should be to enter AP Test data
    Given the user delete all Test data record
    When the user enter the Test data based on below info
      | key       | Value      |
      | Test      | AP         |
      | Subject   | Sciences   |
      | Course    | AP Biology |
      | Test date | 08/2013    |
      | Score     | 5          |

    And the user save the data 
    Then the system will save the Test data and display the below info even the user navigate to any page and return 
      | key       | Value      |
      | Test      | AP         |
      | Subject   | Sciences   |
      | Course    | AP Biology |
      | Test date | 08/2013    |
      | Score     | 5          |

    


  