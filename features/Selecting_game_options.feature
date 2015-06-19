Feature: Selecting game options
  As a player
  So that I can play the game that I want
  I would like to be able to choose between RPS and RPSSL

  Scenario: Choosing any type of game
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
      And I press "START"
      And I press "PLAY!"
    Then I should be on the gameplay page
      And I should see "Choose your weapon"

  Scenario: Choosing a RPS type of game
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
      And I press "START"
      And I check "Rock Paper Scissors" within "type"
      And I press "PLAY!"
    Then I should see "Rock"
      But I should not see "Spock"