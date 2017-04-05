Feature: The user should be able to Register only when providing all required information

	Background:
		Given the user from Home Page navigate to Sign up Page

 Scenario: The system should allow the user to register if the user provides all required information 
  	When the user provides all required information
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t1@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

   Then the system should allow the user to complete the registration

 @smoke_test
 Scenario: The system should display the user name after completed the registration
    When the user provides all required information to register and login
      | key              | Value           |
      | First name       | Jeff            |
      | Last name        | Dell            |
      | Email address    | signup_t2@gmail.com |
      | Birth Month      | June            |
      | Birth Day        | 25              |
      | Birth Year       | 2000            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

   Then the system should displaying the user name on the top right corner
   And the user should be able to logout 


  Scenario: The system should NOT allow the user to register if the user does not provide the 'First name' 
  	 When the user do not provide the 'First name'   
  		| key					     | Value				   |
      | Last name        | TestLast        |
      | Email address    | signup_t3@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Last name' 
  	 When the user do not provide the 'Last name'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Email address    | signup_t4@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration



  Scenario: The system should NOT allow the user to register if the user does not provide the 'Email address' 
  	 When the user do not provide the 'Email address'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Birth Month' 
  	 When the user do not provide the 'Birth Month'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t5@gmail.com |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Birth Day ' 
  	 When the user do not provide the 'Birth Day '   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t6@gmail.com |
      | Birth Month      | January         |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Birth Year' 
  	 When the user do not provide the 'Birth Year'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t7@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Password' 
  	 When the user do not provide the 'Password'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t8@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not provide the 'Confirm Password' 
  	 When the user do not provide the 'Confirm Password'   
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t9@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | TOS CheckBox     | True            |

    Then the system should not allow the user to complete the registration


  Scenario: The system should NOT allow the user to register if the user does not agree to the 'ToS' 
  	 When the user do not agreed to the 'ToS'  
  		| key					     | Value				   |
  		| First name       | TestFirst 		   |
      | Last name        | TestLast        |
      | Email address    | signup_t10@gmail.com |
      | Birth Month      | January         |
      | Birth Day        | 20              |
      | Birth Year       | 1995            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |

    Then the system should not allow the user to complete the registration


  Scenario: The system should not accept already existing email address and should through an error
    When the user try to use the email address that been used before to register
      | key              | Value           |
      | First name       | Ben             |
      | Last name        | Dell            |
      | Email address    | signup_t11@gmail.com |
      | Birth Month      | June            |
      | Birth Day        | 25              |
      | Birth Year       | 2000            |
      | Password         | Test123456      |
      | Confirm Password | Test123456      |
      | TOS CheckBox     | True            |

   Then the system should notify the user that the email address been used 


 Scenario: The user should be able to navigate to the Home Page if decided do not sign up
   Then the system should display Home Page icon


 Scenario: The system should display that 'all fields are required'
   Then the system should display "all fields are required" on the SignUp Page




  