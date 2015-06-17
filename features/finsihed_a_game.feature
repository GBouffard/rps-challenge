Feature: Finished a game
  As a player that just finished a game
  So that I can play another game or select other options
  I would like to be able to click a choice of buttons that can lead me to my destinations

  Scenario: Going back to the homepage
    Given I am on the results page
    When I follow "Back to the Homepage"
    Then I should be on the homepage

  Scenario: Chosing another type of game
    Given I am on the results page
    When I follow "Choose a type of game"
    Then I should be on the options page

  Scenario: Play again that type of game
    Given I am on the results page
    When I follow "Play again!"
    Then I should be on the gameplay page