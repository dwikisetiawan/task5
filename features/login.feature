Feature: Login

  Scenario: Successful Login with Valid Credentials
    Given i am on the Jubelio login page
    When i enters a valid email and password
    And clicks on the login button
    Then i should be redirected to the dashboard