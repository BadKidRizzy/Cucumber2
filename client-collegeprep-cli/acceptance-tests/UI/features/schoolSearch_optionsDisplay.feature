@smoke_test
Feature: The system display the filters options and search results

  Scenario: The search table results should have header School Name, Notes, Location, Tuition, Undergrads and Acceptance
    When the user from Home Page navigate to School search Page
    Then the system will display table header name
	| header name    |
      | School Name    |
      | Notes  	     |
      | Location 	     |		
      | Tuition        |
      | Undergrads     |
      | Acceptance     |


  Scenario: The system should provide search filters  
    When the user from Home Page navigate to School search Page
    Then the system will display search filters
	    | Filters                     |
	    | Reset				|
      | School Type                 |
      | Public                      |
      | Private                     |
      | Reset				|
      | Award                       |
      | Certificate                 |
      | Associate's Degree          |
      | Bachelor's Degree           |
      | Advanced Degree             |
      | Reset				|
      | Total School Size           |
      | Small (less than 5,000)     |
      | Medium (5,000 - 20,000)     |
      | Large (greater than 20,000) |
      | Reset				|
      | Location                    |
      | Region                      |
      | State                       |
      | Zip                         |
      | Reset				|
      | Tuition                     |
      | —                           |
      | Reset				|
      | Campus Setting              |
      | City                        |
      | Suburban                    |
      | Town                        |
      | Rural                       |
      | Reset			      |
      | Special Mission             |
      | HBCU                        |
      | Hispanic-Serving            |
      | Tribal                      |
      | Religious Affiliation       |
      | Single Sex : Male           |
      | Single Sex : Female         |


  Scenario: The search table results should ascending sort the School Name by default 
    Given the user from Home Page navigate to School search Page
    Then the system will display the School Name in ascending sort - check just 2 pages


    Scenario: The user should be able to sort ascending and descending by School Name
      Given the user from Home Page navigate to School search Page
      When the user sort by School Name
      Then the system will display the School Name in ascending sort - check just 2 pages
      When the user sort by School Name
      Then the system will display the School Name in descending sort - check just 2 pages


    Scenario: The user should be able to sort ascending and descending by Location
      Given the user from Home Page navigate to School search Page
      When the user sort by Location
      Then the system will display the Location in ascending sort - check just 2 pages
      When the user sort by Location
      Then the system will display the Location in descending sort - check just 2 pages


    Scenario: The user should be able to sort ascending and descending by Tuition
      Given the user from Home Page navigate to School search Page
      When the user sort by Tuition
      Then the system will display the Tuition in ascending sort - check just 2 pages
      When the user sort by Tuition
      Then the system will display the Tuition in descending sort - check just 2 pages

  
    Scenario: The user should be able to sort ascending and descending by Undergrads
      Given the user from Home Page navigate to School search Page
      When the user sort by Undergrads
      Then the system will display the Undergrads in ascending sort - check just 2 pages
      When the user sort by Undergrads
      Then the system will display the Undergrads in descending sort - check just 2 pages


    Scenario: The user should be able to sort ascending and descending by Acceptance
      Given the user from Home Page navigate to School search Page
      When the user sort by Acceptance
      Then the system will display the Acceptance in ascending sort - check just 2 pages
      When the user sort by Acceptance
      Then the system will display the Acceptance in descending sort - check just 2 pages


    Scenario: The user should be able to reset the filters to default
      Given the user from Home Page navigate to School search Page
      When the user search for the university by "San Francisco State University"
      And the user sort by School Name
      And the user select public
      And the user select bachelor
      And the user select large
      And the user select "Far West" region
      And the user type the minimum "16000" for tuition
      And the user type the maximum "34000" for tuition
      And the user select city
      And the user select Hispanic-serving 
      Then the exact matching school by "San Francisco State University" will be at the top of the search result

      When the user select the reset button
      Then the system will reset School Type filters to default
      And the system will reset Award filters to default
      And the system will reset School Size filters to default 
      And the system will reset Location filters to default 
      And the system will reset Tuition filters to default 
      And the system will reset Campus Setting filters to default 
      And the system will reset Special Mission filters to default 
      And the system will reset search box to default 
      And the system will reset sort ascending and descending to default 


    Scenario: The user should be able to reset the filters to default
      Given the user from Home Page navigate to School search Page
      When the user sort by Location
      And the user select private
      And the user select advanced
      And the user select small
      And the user select the state and choose "Alabama" form drop-down
      And the user type the minimum "16000" for tuition
      And the user type the maximum "34000" for tuition
      And the user select town
      And the user select HBCU
      And the user select the reset button

      Then the system will reset School Type filters to default
      And the system will reset Award filters to default
      And the system will reset School Size filters to default 
      And the system will reset Location filters to default 
      And the system will reset Tuition filters to default 
      And the system will reset Campus Setting filters to default 
      And the system will reset Special Mission filters to default 
      And the system will reset search box to default 
      And the system will reset sort ascending and descending to default


    Scenario: The user should be able to reset the filters to default
      Given the user from Home Page navigate to School search Page
      When the user sort by Tuition
      And the user sort by Tuition
      And the user select private
      And the user select advanced
      And the user select small
      And the user select Zip and entry the "20120"
      And the user type the minimum "16000" for tuition
      And the user type the maximum "34000" for tuition
      And the user select rural
      And the user select male
      And the user select the reset button

      Then the system will reset School Type filters to default
      And the system will reset Award filters to default
      And the system will reset School Size filters to default 
      And the system will reset Location filters to default 
      And the system will reset Tuition filters to default 
      And the system will reset Campus Setting filters to default 
      And the system will reset Special Mission filters to default 
      And the system will reset search box to default 
      And the system will reset sort ascending and descending to default 


    Scenario: The user should be able to reset the filters to default
      Given the user from Home Page navigate to School search Page
      When the user sort by Undergrads
      And the user select private
      And the user select advanced
      And the user select small
      And the user select Zip and entry the "20120"
      And the user type the minimum "16000" for tuition
      And the user type the maximum "34000" for tuition
      And the user select rural
      And the user select male
      And the user select the reset button

      Then the system will reset School Type filters to default
      And the system will reset Award filters to default
      And the system will reset School Size filters to default 
      And the system will reset Location filters to default 
      And the system will reset Tuition filters to default 
      And the system will reset Campus Setting filters to default 
      And the system will reset Special Mission filters to default 
      And the system will reset search box to default 
      And the system will reset sort ascending and descending to default   

  
    Scenario: The user should be able to reset the filters to default
      Given the user from Home Page navigate to School search Page
      When the user sort by Acceptance
      And the user select private
      And the user select advanced
      And the user select small
      And the user select Zip and entry the "20120"
      And the user type the minimum "16000" for tuition
      And the user type the maximum "34000" for tuition
      And the user select rural
      And the user select male
      And the user select the reset button

      Then the system will reset School Type filters to default
      And the system will reset Award filters to default
      And the system will reset School Size filters to default 
      And the system will reset Location filters to default 
      And the system will reset Tuition filters to default 
      And the system will reset Campus Setting filters to default 
      And the system will reset Special Mission filters to default 
      And the system will reset search box to default 
      And the system will reset sort ascending and descending to default 


