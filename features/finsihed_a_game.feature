Feature: Finished a game
  As a player
  So that I can play another game or do other things
  I would like to be able to select different destinations after a game has finished

  Scenario: On the results page
    Given I am on the results page
    When I follow "Back to the Homepage"
    Then I should be on the homepage