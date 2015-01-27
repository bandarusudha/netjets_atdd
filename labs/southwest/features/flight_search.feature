Feature: Looking for flight times

  Scenario: Looking for a one way flight
    When I search for a one-way flight
    Then I get the available flights for that one way trip
  
  Sceanrio: Looking for a rounds trip flight
  
  Sceanrio: Looking for a multi-city flight
