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

  Scenario: the game remembers my name
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
    And I press "START"
    And I press "PLAY!"
    Then I should see "Guillaume"

  Scenario: Choosing a RPS type of game
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
    And I press "START"
    And I choose "RPS"
    And I press "PLAY!"
    Then I should see the image "hand_rock.jpg"
    But I should not see the image "hand_spock.jpg"

  Scenario: Choosing a RPSSL type of game
    Given I am on the homepage
    When I fill in "name" with "Guillaume"
    And I press "START"
    And I choose "RPSSL"
    And I press "PLAY!"
    Then I should see the image "hand_rock.jpg"
    And I should see the image "hand_spock.jpg"