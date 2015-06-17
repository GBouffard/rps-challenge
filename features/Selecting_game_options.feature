Feature: Selecting game options
  As a player
  So that I can play the game that I want
  I would like to be able to choose between RPS and RPSSL

  Scenario: Choosing a RPS or a RPSSL type of game
    Given I am on the options page
    When I choose "RPS" within "type"
    And I press "PLAY!"
    Then I should be on the gameplay page
    And I should see "Choose your weapon"