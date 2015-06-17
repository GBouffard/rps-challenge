Feature: Registering for the game
  As a player
  So that I can start playing an awesome game
  I would like to register before starting the game

  Scenario: Entering my name to play
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
    And I press "START"
    Then I should be on the options page
    And I should see "Hello Guillaume!"