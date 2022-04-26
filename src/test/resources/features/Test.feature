Feature: A client interact with the mobile application

  Scenario Outline: The user starts the application and log in to the app.
    Given The app and layout is loaded correctly
    When The user goes to the Sign In page
    And The user send: <dni>
    Then Login page is displayed

    @Demo
    Examples:
      | dni    |
      |37516796|
