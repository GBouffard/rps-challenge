Feature: Choosing a hand
  As a player
  So that I can play the game
  I would like to be able to select my hand for the fight

  Scenario: Going to the results page when I made my choice
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
      And I press "START"
      And I press "PLAY!"
      And I press "Scissors"
    Then I should be on the results page
