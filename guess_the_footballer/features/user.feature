Feature: New User
  In order to play the game
  Visitors to the site
  Should be prompted to provide a username

  Scenario: First Use
    Given I go to the home page
    Then I should be prompted to supply a username
		And there should be a text field
		When I submit the username "footballing_legend"
		Then a new user should be created with that username
		Then I should be forwarded to the biography page
