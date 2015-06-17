Feature: Finished a game
  As a player
  So that I can play another game or do other things
  I would like to be able to select different destinations after a game has finished

  Scenario: Going back to the homepage
    Given I am on the results page
    When I follow "Back to the Homepage"
    Then I should be on the homepage

  Scenario: Chosing another type of game
    Given I am on the results page
    When I follow "Choose a type of game"
    Then I should be on the options page