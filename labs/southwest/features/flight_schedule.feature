Feature: Flight Scedules

  Sceanrio: Looking up the daily schedule
    When I look up the daily flight schedule between two cities
    Then I get the daily flight schedule between those cities for that day
    And I get the daily flight schedule between those cities for the previous day
    And I get the daily flight schedule between those cities for the next day
  
  Scenario: Looking up the weekly schedule
    When I look up the weekly flight schedule between two cities
    Then I get the weekly flight schedule between those cities
    And I can get the weekly flight schedule between those cities for at least the next 6 weeks
