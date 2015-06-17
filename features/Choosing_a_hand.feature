Feature: Choosing a hand
  As a player
  So that I can play the game
  I would like to be able to select my hand for the fight

  Scenario: On the gameplay page
    Given I am on the gameplay page
    When I press "Scissors"
    Then I should be on the results page