Feature: After playing a game
  As a player who just finished a game
  So that I can play another game or select other options
  I would like to be presented with a choice of links to go to after a game.

  Scenario: Going back to the homepage
    Given I am on the homepage
      When I fill in "name" with "Guillaume"
      And I press "START"
      And I press "PLAY!"
      And I press "Rock"
      And I follow "Back to the Homepage"
    Then I should be on the homepage

  Scenario: Chosing another type of game
    Given I am on the homepage
      When I fill in "name" with "Guillaume"
      And I press "START"
      And I press "PLAY!"
      And I press "Paper"
      And I follow "Choose a type of game"
    Then I should be on the options page

  Scenario: Play again that type of game
    Given I am on the homepage
      When I fill in "name" with "Guillaume"
      And I press "START"
      And I press "PLAY!"
      And I press "Scissors"
      And I follow "Play again!"
    Then I should be on the gameplay page
