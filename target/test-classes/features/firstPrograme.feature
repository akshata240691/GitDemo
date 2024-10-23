
Feature: Application Login

 Background: 
   Given setup the entries in database 
   When launch the browser from config variables 
   And hit the home page url of banking site 
   
  @RegressionTest 
   Scenario: Admin Page default login
  
   Given User is on NetBanking Landing page 
   When User login into application with "admin" and password "123"
   Then Home Page is displayed
   And Cards are displayed

#Reusable
   @RegressionTest 
   Scenario: User Page default login
  
   Given User is on NetBanking Landing page 
   When User login into application with "user" and password "123"
   Then Home Page is displayed
   And Cards are displayed 
    
    @SmokeTest @RegressionTest 
  Scenario Outline: User Page default login
  
    Given User is on NetBanking Landing page 
    When User login into application with "<username>" and password "<Password>"
    Then Home Page is displayed
    And Cards are displayed 
    
    Examples: 
    |username | Password |
    |debituser| hello12  |
    |Credituser| hello23 |
    
    @SmokeTest
  Scenario: User Page default Sign up 
  
   Given User is on Practice Landing page 
   When User Sign up into application 
   |rahul|
   |shetty|
   |contact@gmail.com|
   |34567888|
   Then Home Page is displayed
   And Cards are displayed 
    